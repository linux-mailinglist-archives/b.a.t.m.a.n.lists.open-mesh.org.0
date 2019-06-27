Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCD25879E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Jun 2019 18:50:53 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 02A638279C;
	Thu, 27 Jun 2019 18:50:50 +0200 (CEST)
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by open-mesh.org (Postfix) with ESMTPS id A0E97803C1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 18:50:46 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1C98514C823C2;
 Thu, 27 Jun 2019 09:50:44 -0700 (PDT)
Date: Thu, 27 Jun 2019 09:50:43 -0700 (PDT)
Message-Id: <20190627.095043.1607458136575294159.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 06/10] batman-adv: mcast: collect softif listeners from
 IP lists instead
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190627103938.7488-7-sw@simonwunderlich.de>
References: <20190627103938.7488-1-sw@simonwunderlich.de>
 <20190627103938.7488-7-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 27 Jun 2019 09:50:44 -0700 (PDT)
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Simon Wunderlich <sw@simonwunderlich.de>
Date: Thu, 27 Jun 2019 12:39:34 +0200

> +	in_dev = in_dev_get(dev);
> +	if (!in_dev)
> +		return 0;

Move this below the rcu_read_lock() and use __in_dev_get_rcu()
instead.

And then...

> +
> +	rcu_read_lock();
 ...
> +	rcu_read_unlock();
> +	in_dev_put(in_dev);

You can drop this in_dev_put() as well.

> +	in6_dev = in6_dev_get(dev);
> +	if (!in6_dev)
> +		return 0;
> +
> +	read_lock_bh(&in6_dev->lock);

Similarly here you can use __in6_dev_get().
