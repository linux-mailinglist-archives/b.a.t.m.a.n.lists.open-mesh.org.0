Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED5ECE3D2
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  7 Oct 2019 15:35:46 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C01B680670;
	Mon,  7 Oct 2019 15:35:31 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by open-mesh.org (Postfix) with ESMTPS id 476ED80046
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  7 Oct 2019 15:34:58 +0200 (CEST)
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 636482064A;
 Mon,  7 Oct 2019 13:34:55 +0000 (UTC)
Date: Mon, 7 Oct 2019 09:34:53 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Marco Elver <elver@google.com>
Subject: Re: KCSAN: data-race in find_next_bit / rcu_report_exp_cpu_mult
Message-ID: <20191007093453.2d9852ce@gandalf.local.home>
In-Reply-To: <CANpmjNNmSOagbTpffHr4=Yedckx9Rm2NuGqC9UqE+AOz5f1-ZQ@mail.gmail.com>
References: <000000000000604e8905944f211f@google.com>
 <CANpmjNNmSOagbTpffHr4=Yedckx9Rm2NuGqC9UqE+AOz5f1-ZQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 07 Oct 2019 15:35:27 +0200
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: syzbot <syzbot+134336b86f728d6e55a0@syzkaller.appspotmail.com>,
 paulmck@kernel.org, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org,
 jiangshanlai@gmail.com, josh@joshtriplett.org,
 LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org,
 mathieu.desnoyers@efficios.com, netdev@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>, syzkaller-bugs@googlegroups.com,
 davem@davemloft.net, mareklindner@neomailbox.ch
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Mon, 7 Oct 2019 12:04:16 +0200
Marco Elver <elver@google.com> wrote:

> +RCU maintainers
> This might be a data-race in RCU itself.
> 
> >
> > write to 0xffffffff85a7f140 of 8 bytes by task 7 on cpu 0:
> >   rcu_report_exp_cpu_mult+0x4f/0xa0 kernel/rcu/tree_exp.h:244

Here we have:

	raw_spin_lock_irqsave_rcu_node(rnp, flags);
	if (!(rnp->expmask & mask)) {
		raw_spin_unlock_irqrestore_rcu_node(rnp, flags);
		return;
	}
	rnp->expmask &= ~mask;
	__rcu_report_exp_rnp(rnp, wake, flags); /* Releases rnp->lock. */

> >
> > read to 0xffffffff85a7f140 of 8 bytes by task 7251 on cpu 1:
> >   _find_next_bit lib/find_bit.c:39 [inline]
> >   find_next_bit+0x57/0xe0 lib/find_bit.c:70
> >   sync_rcu_exp_select_node_cpus+0x28e/0x510 kernel/rcu/tree_exp.h:375

and here we have:


	raw_spin_unlock_irqrestore_rcu_node(rnp, flags);

	/* IPI the remaining CPUs for expedited quiescent state. */
	for_each_leaf_node_cpu_mask(rnp, cpu, rnp->expmask) {


The write to rnp->expmask is done under the rnp->lock, but on the read
side, that lock is released before the for loop. Should we have
something like:

	unsigned long expmask;
	[...]

	expmask = rnp->expmask;
	raw_spin_unlock_irqrestore_rcu_node(rnp, flags);

	/* IPI the remaining CPUs for expedited quiescent state. */
	for_each_leaf_node_cpu_mask(rnp, cpu, expmask) {

?

-- Steve
