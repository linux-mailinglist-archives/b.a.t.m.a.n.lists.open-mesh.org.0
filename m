Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8FA34FBF1
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 31 Mar 2021 10:52:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C65068273A;
	Wed, 31 Mar 2021 10:52:44 +0200 (CEST)
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id ED2978022D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Mar 2021 17:01:20 +0200 (CEST)
Received: by mail-pf1-x42e.google.com with SMTP id h3so12315198pfr.12
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Mar 2021 08:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aIIhZH7MEe4emdWSnxRXrt2i6gVhMrPoGfFDilIz73w=;
        b=desaCWlpymXZF2C2RzEsDfZ2b7i0/DZxG1Xg8u0WwaQ7wG19wt/J3/tljLcHcFkpuC
         Q+kh6ErgCJYsAtD+7RM9+daiMxg56uSvybIonRhORb5A37aw47qxIaacMab44wrgG5h/
         c7mVRuMWgT46WSToNiizqAg1z9+umIqFopcZh+NUnaEJerpi7OCYU3Uc5zxZBPZFiG+A
         GbJTTcfjOwuRY11sZkmSdczUMG9tiVBK9Lg8BE/sbBCM+WsI7lFf4fBGGCqk9BupEglw
         wCThkRzqR3e22mIqkZUwFKKs1vtNRt+NwT08Be2FFuze3nzs6MnxYw/1GolhC1AZOYW1
         G+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aIIhZH7MEe4emdWSnxRXrt2i6gVhMrPoGfFDilIz73w=;
        b=VNUmfPACqhqRkGJnoG8YZNGH29stiFEMIIUxypX7C/yTxcmhqjLUefw3tNdaO2frW3
         CZQnpcsvfPmO4rvwCdOZGCEUoAr2UQkU7qEF2/uIgoS0R8REMlDcyjjtV7DDQjEiy5TD
         sjbhKhfW6x55dK6QQNLAP3Umux6ydpsSZSN4JLImT6YQutFhNsNPS0CxsjPL4ReseAXd
         D6iIO3g/oTDQb6TW5mTdYR+Brt1urU6l+NwKA9edu2vE6i7mUZVATb/6hpsDVrGeACjN
         NjZnA1YLVPT0bR3tQOGvzyFq02uWes0eF5+jQy/aq3FrxRQvqm65kwgJL/Q/Ca7C1zZ4
         +/qA==
X-Gm-Message-State: AOAM530kJygx1Kgr5/X5ktd0QhofhxnHhyiY8locN7SIeFpwyGjkQZvS
	KTAjAzA81zHYRA/dAxqWVxf04KI1CQ6Mpw==
X-Google-Smtp-Source: ABdhPJwV3sCo5WWG4iadqwdExPE23HtvV5WWaQLhxi1uqK2e1hLcxg/G93jwGe37N0QaxEy0ryL//w==
X-Received: by 2002:a62:687:0:b029:1fb:2382:57b0 with SMTP id 129-20020a6206870000b02901fb238257b0mr1243247pfg.10.1617116478374;
        Tue, 30 Mar 2021 08:01:18 -0700 (PDT)
Received: from [192.168.0.4] ([49.173.165.50])
        by smtp.gmail.com with ESMTPSA id 22sm3116399pjl.31.2021.03.30.08.01.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 08:01:17 -0700 (PDT)
Subject: Re: [PATCH net-next v3 7/7] mld: add mc_lock for protecting
 per-interface mld data
To: Eric Dumazet <eric.dumazet@gmail.com>, netdev@vger.kernel.org,
 davem@davemloft.net, kuba@kernel.org
References: <20210325161657.10517-1-ap420073@gmail.com>
 <20210325161657.10517-8-ap420073@gmail.com>
 <fd460c2b-b974-db00-5097-4af08f12c670@gmail.com>
 <d3e101bb-14d2-4d91-6bc1-fbb766d69422@gmail.com>
From: Taehee Yoo <ap420073@gmail.com>
Message-ID: <08f0a57c-8cad-2f62-0ba2-1bc6c6caad58@gmail.com>
Date: Wed, 31 Mar 2021 00:01:12 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d3e101bb-14d2-4d91-6bc1-fbb766d69422@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=desaCWlp;
	spf=pass (diktynna.open-mesh.org: domain of ap420073@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ap420073@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617116481; a=rsa-sha256;
	cv=none;
	b=ln160o4JSzvWk6Afc8qj8dHHyvUel5D7p14GT/fZ9Hu65pirs2ksC250qt1H5+9Ky+Z1K4
	/jIutMxL9PRJsdZPQlWiikndRA8Xgr8kNfMNaABkfOW57NQW0LWa8Jb7tOwSc9PICnE8Q1
	ghcZ+EGjQSDsrilicLDlf4Rq/FGHsvM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617116481;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=aIIhZH7MEe4emdWSnxRXrt2i6gVhMrPoGfFDilIz73w=;
	b=jx7bnqxHRiKIBYiVfS07MKVFgiDnhS8ehQYjOQILSYB4SsZ3IaGaB5jwGrNM/LgdKiV3yh
	nJxl4H/2TK81FvfdOFl6VSI/t2LkG4F98tXd/t9mxj9/YJKVC5FK9JAxyQGJLfFWBuMrFK
	BKH1kGVKTYaucWPMWps4Kf5yEeR53Rw=
X-MailFrom: ap420073@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: DAY37ICXYSEUGNY2GEWSMRPADK2CVF6I
X-Message-ID-Hash: DAY37ICXYSEUGNY2GEWSMRPADK2CVF6I
X-Mailman-Approved-At: Wed, 31 Mar 2021 08:52:42 +0200
CC: jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DAY37ICXYSEUGNY2GEWSMRPADK2CVF6I/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 3/30/21 9:24 PM, Eric Dumazet wrote:
 >
 >
 > On 3/30/21 1:59 PM, Eric Dumazet wrote:
 >>
 >>
 >> On 3/25/21 5:16 PM, Taehee Yoo wrote:
 >>> The purpose of this lock is to avoid a bottleneck in the query/report
 >>> event handler logic.
 >>>
 >>> By previous patches, almost all mld data is protected by RTNL.
 >>> So, the query and report event handler, which is data path logic
 >>> acquires RTNL too. Therefore if a lot of query and report events
 >>> are received, it uses RTNL for a long time.
 >>> So it makes the control-plane bottleneck because of using RTNL.
 >>> In order to avoid this bottleneck, mc_lock is added.
 >>>
 >>> mc_lock protect only per-interface mld data and per-interface mld
 >>> data is used in the query/report event handler logic.
 >>> So, no longer rtnl_lock is needed in the query/report event handler 
logic.
 >>> Therefore bottleneck will be disappeared by mc_lock.
 >>>
 >>
 >> What testsuite have you run exactly to validate this monster patch ?
 >>

I've been using an application, which calls setsockopt() with the below 
options.
IPV6_ADD_MEMBERSHIP
IPV6_DROP_MEMBERSHIP
MCAST_JOIN_SOURCE_GROUP
MCAST_LEAVE_SOURCE_GROUP
MCAST_BLOCK_SOURCE
MCAST_UNBLOCK_SOURCE
MCAST_MSFILTER
And checks out  /proc/net/mcfilter6 and /proc/net/igmp6.

 >> Have you used CONFIG_LOCKDEP=y / CONFIG_DEBUG_ATOMIC_SLEEP=y ?
 >>

Yes, I'm using both configs.

 >>> Suggested-by: Cong Wang <xiyou.wangcong@gmail.com>
 >>> Signed-off-by: Taehee Yoo <ap420073@gmail.com>
 >>
 >> [...]
 >>
 >>>   /*
 >>> - *	device multicast group del
 >>> + * device multicast group del
 >>>    */
 >>>   int __ipv6_dev_mc_dec(struct inet6_dev *idev, const struct 
in6_addr *addr)
 >>>   {
 >>> @@ -943,8 +967,9 @@ int __ipv6_dev_mc_dec(struct inet6_dev *idev, 
const struct in6_addr *addr)
 >>>
 >>>   	ASSERT_RTNL();
 >>>
 >>> +	mutex_lock(&idev->mc_lock);
 >>>   	for (map = &idev->mc_list;
 >>> -	     (ma = rtnl_dereference(*map));
 >>> +	     (ma = mc_dereference(*map, idev));
 >>>   	     map = &ma->next) {
 >>>   		if (ipv6_addr_equal(&ma->mca_addr, addr)) {
 >>>   			if (--ma->mca_users == 0) {
 >>
 >> This can be called with rcu_bh held, thus :
 >>
 >> BUG: sleeping function called from invalid context at 
kernel/locking/mutex.c:928
 >> in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 4624, name: 
kworker/1:2
 >> 4 locks held by kworker/1:2/4624:
 >>   #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, 
at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 >>   #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, 
at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
 >>   #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, 
at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
 >>   #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, 
at: set_work_data kernel/workqueue.c:616 [inline]
 >>   #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, 
at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
 >>   #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, 
at: process_one_work+0x871/0x1600 kernel/workqueue.c:2246
 >>   #1: ffffc90009adfda8 ((addr_chk_work).work){+.+.}-{0:0}, at: 
process_one_work+0x8a5/0x1600 kernel/workqueue.c:2250
 >>   #2: ffffffff8d66d328 (rtnl_mutex){+.+.}-{3:3}, at: 
addrconf_verify_work+0xa/0x20 net/ipv6/addrconf.c:4572
 >>   #3: ffffffff8bf74300 (rcu_read_lock_bh){....}-{1:2}, at: 
addrconf_verify_rtnl+0x2b/0x1150 net/ipv6/addrconf.c:4459
 >> Preemption disabled at:
 >> [<ffffffff87b39f41>] local_bh_disable include/linux/bottom_half.h:19 
[inline]
 >> [<ffffffff87b39f41>] rcu_read_lock_bh include/linux/rcupdate.h:727 
[inline]
 >> [<ffffffff87b39f41>] addrconf_verify_rtnl+0x41/0x1150 
net/ipv6/addrconf.c:4461
 >> CPU: 1 PID: 4624 Comm: kworker/1:2 Not tainted 5.12.0-rc4-syzkaller #0
 >> Hardware name: Google Google Compute Engine/Google Compute Engine, 
BIOS Google 01/01/2011
 >> Workqueue: ipv6_addrconf addrconf_verify_work
 >> Call Trace:
 >>   __dump_stack lib/dump_stack.c:79 [inline]
 >>   dump_stack+0x141/0x1d7 lib/dump_stack.c:120
 >>   ___might_sleep.cold+0x1f1/0x237 kernel/sched/core.c:8328
 >>   __mutex_lock_common kernel/locking/mutex.c:928 [inline]
 >>   __mutex_lock+0xa9/0x1120 kernel/locking/mutex.c:1096
 >>   __ipv6_dev_mc_dec+0x5f/0x340 net/ipv6/mcast.c:970
 >>   addrconf_leave_solict net/ipv6/addrconf.c:2182 [inline]
 >>   addrconf_leave_solict net/ipv6/addrconf.c:2174 [inline]
 >>   __ipv6_ifa_notify+0x5b6/0xa90 net/ipv6/addrconf.c:6077
 >>   ipv6_ifa_notify net/ipv6/addrconf.c:6100 [inline]
 >>   ipv6_del_addr+0x463/0xae0 net/ipv6/addrconf.c:1294
 >>   addrconf_verify_rtnl+0xd59/0x1150 net/ipv6/addrconf.c:4488
 >>   addrconf_verify_work+0xf/0x20 net/ipv6/addrconf.c:4573
 >>   process_one_work+0x98d/0x1600 kernel/workqueue.c:2275
 >>   worker_thread+0x64c/0x1120 kernel/workqueue.c:2421
 >>   kthread+0x3b1/0x4a0 kernel/kthread.c:292
 >>   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
 >>
 >
 > I will test this fix:

Thanks a lot!

 >
 > diff --git a/net/ipv6/addrconf.c b/net/ipv6/addrconf.c
 > index 
120073ffb666b18678e3145d91dac59fa865a592..8f3883f4cb4a15a0749b8f0fe00061e483ea26ca 
100644
 > --- a/net/ipv6/addrconf.c
 > +++ b/net/ipv6/addrconf.c
 > @@ -4485,7 +4485,9 @@ static void addrconf_verify_rtnl(void)
 >                              age >= ifp->valid_lft) {
 >                                  spin_unlock(&ifp->lock);
 >                                  in6_ifa_hold(ifp);
 > +                               rcu_read_unlock_bh();
 >                                  ipv6_del_addr(ifp);
 > +                               rcu_read_lock_bh();
 >                                  goto restart;
 >                          } else if (ifp->prefered_lft == 
INFINITY_LIFE_TIME) {
 >                                  spin_unlock(&ifp->lock);
 >
