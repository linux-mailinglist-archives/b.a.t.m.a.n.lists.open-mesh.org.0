Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DED963BA0D0
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  2 Jul 2021 15:00:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B31ED81242;
	Fri,  2 Jul 2021 15:00:04 +0200 (CEST)
Received: from mail3-162.sinamail.sina.com.cn (mail3-162.sinamail.sina.com.cn [202.108.3.162])
	by diktynna.open-mesh.org (Postfix) with SMTP id 017F180737
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  2 Jul 2021 14:54:38 +0200 (CEST)
Received: from unknown (HELO localhost.localdomain)([222.130.247.133])
	by sina.com (172.16.97.27) with ESMTP
	id 60DF0B4400017EC3; Fri, 2 Jul 2021 20:49:11 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 50343049283335
From: Hillf Danton <hdanton@sina.com>
To: syzbot <syzbot+610ec0671f51e838436e@syzkaller.appspotmail.com>
Subject: Re: [syzbot] BUG: sleeping function called from invalid context in crypto_drop_spawn (2)
Date: Fri,  2 Jul 2021 20:49:03 +0800
Message-Id: <20210702124903.144-1-hdanton@sina.com>
In-Reply-To: <000000000000c9257305c61c742c@google.com>
References: <000000000000c9257305c61c742c@google.com>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1625230480;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T8m0t0bwQ6HHnhHBSeuQrjboFQ/hr9flGnSAjfVBPMI=;
	b=Zj3lSEgdn6f47BheU40xe0hthZLhfFa6V3T/b864SNLjv2Wn8LwNB0yrcHhe0/RrMSP0/4
	J6KstZPLDFfPa8FoHSeYsKcRgBYnmnktAbfq79m8EmQaHhLET9AFCpI8NoMVpE4iNxry/G
	js/b/keTje5mPnsAR5skqF0/MWjhu9s=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1625230480; a=rsa-sha256;
	cv=none;
	b=ur3DQ75SrhsDTwiDarGehDY2MwwMzQWqentK2QzeoJzeBADcM60/PUn9dFgmbZxOfMsYkW
	EpgHH1J0Rc6EBWSSBJtUko4Zt3Ytk5RKIRnkwWnWzkLOVmPsoxKpZNkcFOr9pqJywpXxaB
	454pXiGXImljCZYePQC/oVU9XRlLdbs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of hdanton@sina.com designates 202.108.3.162 as permitted sender) smtp.mailfrom=hdanton@sina.com
Content-Transfer-Encoding: quoted-printable
X-MailFrom: hdanton@sina.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: CIZ3LRXBTK2IUTUWQAHWERA6GBTNZ4C6
X-Message-ID-Hash: CIZ3LRXBTK2IUTUWQAHWERA6GBTNZ4C6
X-Mailman-Approved-At: Fri, 02 Jul 2021 13:00:00 +0200
CC: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, netdev@vger.kernel.org, Hillf Danton <hdanton@sina.com>, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CIZ3LRXBTK2IUTUWQAHWERA6GBTNZ4C6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, 01 Jul 2021 21:33:24 -0700
>syzbot found the following issue on:
>
>HEAD commit:    d6765985 Revert "be2net: disable bh with spin_lock in be=
_p..
>git tree:       net
>console output: https://syzkaller.appspot.com/x/log.txt?x=3D1555a0d83000=
00
>kernel config:  https://syzkaller.appspot.com/x/.config?x=3D7ca96a2d153c=
74b0
>dashboard link: https://syzkaller.appspot.com/bug?extid=3D610ec0671f51e8=
38436e
>
>Unfortunately, I don't have any reproducer for this issue yet.
>
>IMPORTANT: if you fix the issue, please add the following tag to the com=
mit:
>Reported-by: syzbot+610ec0671f51e838436e@syzkaller.appspotmail.com
>
>BUG: sleeping function called from invalid context at kernel/locking/rws=
em.c:1405
>in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 1180, name: kwork=
er/u4:6
>4 locks held by kworker/u4:6/1180:
> #0: ffff88802897e138 ((wq_completion)bat_events){+.+.}-{0:0}, at: arch_=
atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
> #0: ffff88802897e138 ((wq_completion)bat_events){+.+.}-{0:0}, at: atomi=
c64_set include/asm-generic/atomic-instrumented.h:856 [inline]
> #0: ffff88802897e138 ((wq_completion)bat_events){+.+.}-{0:0}, at: atomi=
c_long_set include/asm-generic/atomic-long.h:41 [inline]
> #0: ffff88802897e138 ((wq_completion)bat_events){+.+.}-{0:0}, at: set_w=
ork_data kernel/workqueue.c:617 [inline]
> #0: ffff88802897e138 ((wq_completion)bat_events){+.+.}-{0:0}, at: set_w=
ork_pool_and_clear_pending kernel/workqueue.c:644 [inline]
> #0: ffff88802897e138 ((wq_completion)bat_events){+.+.}-{0:0}, at: proce=
ss_one_work+0x871/0x1600 kernel/workqueue.c:2247
> #1: ffffc90004ecfda8 ((work_completion)(&(&bat_priv->nc.work)->work)){+=
.+.}-{0:0}, at: process_one_work+0x8a5/0x1600 kernel/workqueue.c:2251
> #2: ffffffff8bf79620 (rcu_read_lock){....}-{1:2}, at: batadv_nc_process=
_nc_paths.part.0+0xb1/0x3b0 net/batman-adv/network-coding.c:680
> #3: ffffffff8bf79500 (rcu_callback){....}-{0:0}, at: rcu_do_batch kerne=
l/rcu/tree.c:2547 [inline]
> #3: ffffffff8bf79500 (rcu_callback){....}-{0:0}, at: rcu_core+0x737/0x1=
3b0 kernel/rcu/tree.c:2793
>Preemption disabled at:
>[<0000000000000000>] 0x0
>CPU: 1 PID: 1180 Comm: kworker/u4:6 Not tainted 5.13.0-rc6-syzkaller #0
>Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS =
Google 01/01/2011
>Workqueue: bat_events batadv_nc_worker
>Call Trace:
> <IRQ>
> __dump_stack lib/dump_stack.c:79 [inline]
> dump_stack+0x141/0x1d7 lib/dump_stack.c:120
> ___might_sleep.cold+0x1f1/0x237 kernel/sched/core.c:8337
> down_write+0x6e/0x150 kernel/locking/rwsem.c:1405
> crypto_drop_spawn crypto/algapi.c:709 [inline]
> crypto_drop_spawn+0x4b/0x2b0 crypto/algapi.c:704
> crypto_drop_aead include/crypto/internal/aead.h:90 [inline]
> pcrypt_free+0x15/0x80 crypto/pcrypt.c:206
> crypto_free_instance crypto/algapi.c:68 [inline]
> crypto_destroy_instance+0x7a/0xc0 crypto/algapi.c:76
> crypto_alg_put crypto/internal.h:108 [inline]
> crypto_alg_put crypto/internal.h:105 [inline]
> crypto_mod_put+0xd3/0x100 crypto/api.c:45
> crypto_destroy_tfm crypto/api.c:573 [inline]
> crypto_destroy_tfm+0xdb/0x240 crypto/api.c:561
> crypto_free_aead include/crypto/aead.h:193 [inline]
> tipc_aead_free+0x398/0x660 net/tipc/crypto.c:422
> rcu_do_batch kernel/rcu/tree.c:2558 [inline]
> rcu_core+0x7ab/0x13b0 kernel/rcu/tree.c:2793
> __do_softirq+0x29b/0x9f6 kernel/softirq.c:559
> invoke_softirq kernel/softirq.c:433 [inline]
> __irq_exit_rcu+0x136/0x200 kernel/softirq.c:637
> irq_exit_rcu+0x5/0x20 kernel/softirq.c:649
> sysvec_apic_timer_interrupt+0x93/0xc0 arch/x86/kernel/apic/apic.c:1100
> </IRQ>
> asm_sysvec_apic_timer_interrupt+0x12/0x20 arch/x86/include/asm/idtentry=
.h:647
>RIP: 0010:check_preemption_disabled+0x2a/0x150 lib/smp_processor_id.c:16
>Code: 41 56 41 55 49 89 f5 41 54 55 48 89 fd 53 0f 1f 44 00 00 65 44 8b =
25 1d 7a ea 76 65 8b 1d 6e d4 ea 76 81 e3 ff ff ff 7f 31 ff <89> de 0f 1f=
 44 00 00 85 db 74 11 0f 1f 44 00 00 44 89 e0 5b 5d 41
>RSP: 0018:ffffc90004ecfbd8 EFLAGS: 00000246
>RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000000
>RDX: ffff888017ed3880 RSI: ffffffff89c2e880 RDI: 0000000000000000
>RBP: ffffffff89c2e8c0 R08: 0000000000000000 R09: 0000000000000000
>R10: ffffffff88b6951d R11: 0000000000000000 R12: 0000000000000001
>R13: ffffffff89c2e880 R14: ffff88803029cc00 R15: 000000000000001f
> rcu_dynticks_curr_cpu_in_eqs kernel/rcu/tree.c:325 [inline]
> rcu_is_watching+0xe/0xc0 kernel/rcu/tree.c:1168
> rcu_read_unlock include/linux/rcupdate.h:707 [inline]
> batadv_nc_process_nc_paths.part.0+0x304/0x3b0 net/batman-adv/network-co=
ding.c:695
> batadv_nc_process_nc_paths net/batman-adv/network-coding.c:675 [inline]
> batadv_nc_worker+0xb90/0xe50 net/batman-adv/network-coding.c:731
> process_one_work+0x98d/0x1600 kernel/workqueue.c:2276
> worker_thread+0x64c/0x1120 kernel/workqueue.c:2422
> kthread+0x3b1/0x4a0 kernel/kthread.c:313
> ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294

In a bid to fix the reported BUG, move freeing aead to workqueue to
avoid scheduling on the softint stack.

+++ x/net/tipc/crypto.c
@@ -399,13 +399,9 @@ static inline void tipc_aead_put(struct
 		call_rcu(&aead->rcu, tipc_aead_free);
 }
=20
-/**
- * tipc_aead_free - Release AEAD key incl. all the TFMs in the list
- * @rp: rcu head pointer
- */
-static void tipc_aead_free(struct rcu_head *rp)
+static void tipc_aead_free_workfn(struct work_struct *w)
 {
-	struct tipc_aead *aead =3D container_of(rp, struct tipc_aead, rcu);
+	struct tipc_aead *aead =3D container_of(w, struct tipc_aead, free_work)=
;
 	struct tipc_tfm *tfm_entry, *head, *tmp;
=20
 	if (aead->cloned) {
@@ -428,6 +424,18 @@ static void tipc_aead_free(struct rcu_he
 	kfree(aead);
 }
=20
+/**
+ * tipc_aead_free - Release AEAD key incl. all the TFMs in the list
+ * @rp: rcu head pointer
+ */
+static void tipc_aead_free(struct rcu_head *r)
+{
+	struct tipc_aead *aead =3D container_of(r, struct tipc_aead, rcu);
+
+	INIT_WORK(&aead->free_work, tipc_aead_free_workfn);
+	queue_work(system_unbound_wq, &aead->free_work);
+}
+
 static int tipc_aead_users(struct tipc_aead __rcu *aead)
 {
 	struct tipc_aead *tmp;
