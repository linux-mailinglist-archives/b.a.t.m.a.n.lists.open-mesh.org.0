Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E563D34E773
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Mar 2021 14:24:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B0D9582648;
	Tue, 30 Mar 2021 14:24:06 +0200 (CEST)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4822180632
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Mar 2021 14:24:04 +0200 (CEST)
Received: by mail-wm1-x336.google.com with SMTP id n11-20020a05600c4f8bb029010e5cf86347so918632wmq.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Mar 2021 05:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=t6bHlh4iN848EgwXhR/A8dHyz1llMv9ESr2FRYnonlI=;
        b=SY2n5LrgSNaVS1tMB3uh50SB2jBOt+dvJHuugwhblNmnOym3agWnZpSAK9G3spz4DR
         eVSopxpqbEe4HUcl0q6y+pkMvO3tRepo9NRj4jDqQMjOFSuTN5ct6I6zlnB94ZKSdsCr
         ggRpX6bnhQfVcPs7H7/EMuC9esI4E5x+UnSdke3qPaNxsLOpOQvvnBjl+a33ULOoT54Q
         zCCJbzl2DYR01Bpl9T8RP6FR1c9XmRoNG2OZzb8UzOSvRdkI1BKQ3aIFOxYvBBWLYd+P
         DZR+AkIlFAh+YPWcOLdco2bowNKC1/QtKcrYP8O/kDDBXO6widOusNPema3SwhPzGxgS
         3Ekg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=t6bHlh4iN848EgwXhR/A8dHyz1llMv9ESr2FRYnonlI=;
        b=gectCWr2rF8qEhYa8WuVVgQQzuVyPmCus0SBNjETMpornQPdovawu/eiy549l+jNtJ
         Bo8C039hVpoNFbRV/5LMp2YyRRWWnUt8vq900E8XQ02RL/F7u6ybzKEEfemZFMN59jMf
         KMiGFF+A6T+WG3fn2qp0cyCUjP682ElmxbhtAkqs7hL3v6AyQ0hOz7KEjQxS7Q23IlOW
         4P7eQRaJnyDUM75z6fcsTL+kaoGM3mkWP4u6Bpgm1HSUCxUbacDVp7fH7UIVo3SZYqli
         Fs2rGwH5AdDOylom6Z2SIk0CNakLVARF0li0NT0ZixSyN5ecD25UynyoAD9t9YEEB300
         h+zg==
X-Gm-Message-State: AOAM530sNkf/gT8p2ue2scf2G2CoFJz7qEBel2W32iKwvP5H/s9jqWAK
	x+ZZ69UYhJTgl8LGPwLADhEZxqSOm+o=
X-Google-Smtp-Source: ABdhPJykyIExmPNW+GMlCZmhQCmd4oSeozELPjNVugHlrPhpeTOSFqeKVTXNPID4i3Qk9bD0kF3FXw==
X-Received: by 2002:a7b:c4d1:: with SMTP id g17mr3842316wmk.101.1617107043676;
        Tue, 30 Mar 2021 05:24:03 -0700 (PDT)
Received: from [192.168.1.101] ([37.167.251.74])
        by smtp.gmail.com with ESMTPSA id m17sm35483219wrx.92.2021.03.30.05.24.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 05:24:03 -0700 (PDT)
Subject: Re: [PATCH net-next v3 7/7] mld: add mc_lock for protecting
 per-interface mld data
From: Eric Dumazet <eric.dumazet@gmail.com>
To: Taehee Yoo <ap420073@gmail.com>, netdev@vger.kernel.org,
 davem@davemloft.net, kuba@kernel.org
References: <20210325161657.10517-1-ap420073@gmail.com>
 <20210325161657.10517-8-ap420073@gmail.com>
 <fd460c2b-b974-db00-5097-4af08f12c670@gmail.com>
Message-ID: <d3e101bb-14d2-4d91-6bc1-fbb766d69422@gmail.com>
Date: Tue, 30 Mar 2021 14:24:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <fd460c2b-b974-db00-5097-4af08f12c670@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=SY2n5Lrg;
	spf=pass (diktynna.open-mesh.org: domain of ericdumazet@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=ericdumazet@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617107044; a=rsa-sha256;
	cv=none;
	b=kuDAyEEW73TxphxykC5UshGVTaVyGvCEBKzjRMMCk2Vm19gIRIF+fuGfUysT6I8A4ZD5Ib
	Rzt9NAoQBZNAFFX/SmnpFxtSbIjGy1bs77hHylNGS+UvjdTU9+iNTSKmUTWKTEJTUcwOyN
	wbknzRhS5vO91S7XhqZCT4Nc8qqmkM4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617107044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=t6bHlh4iN848EgwXhR/A8dHyz1llMv9ESr2FRYnonlI=;
	b=Trz2/1Pv6cNqkGO3xMqmKp04ta3V6mSWygR8AyDOQeZ/3X5Aq3dD6pMIMkpeFkHAOzDmAm
	cw4sIcIpSSc7vIM6nmEdKwo7s4iGEaC4TcboMH6uq2UnpFXFSqrT0GCNDzcXf3F8X4ufv+
	yRJwdSS8xTQPPgPu48MOJMQ54km+s5Q=
Message-ID-Hash: JBVQNK47KKJGEMJWTGGSSPEOYG45AEFM
X-Message-ID-Hash: JBVQNK47KKJGEMJWTGGSSPEOYG45AEFM
X-MailFrom: eric.dumazet@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JBVQNK47KKJGEMJWTGGSSPEOYG45AEFM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 3/30/21 1:59 PM, Eric Dumazet wrote:
> 
> 
> On 3/25/21 5:16 PM, Taehee Yoo wrote:
>> The purpose of this lock is to avoid a bottleneck in the query/report
>> event handler logic.
>>
>> By previous patches, almost all mld data is protected by RTNL.
>> So, the query and report event handler, which is data path logic
>> acquires RTNL too. Therefore if a lot of query and report events
>> are received, it uses RTNL for a long time.
>> So it makes the control-plane bottleneck because of using RTNL.
>> In order to avoid this bottleneck, mc_lock is added.
>>
>> mc_lock protect only per-interface mld data and per-interface mld
>> data is used in the query/report event handler logic.
>> So, no longer rtnl_lock is needed in the query/report event handler logic.
>> Therefore bottleneck will be disappeared by mc_lock.
>>
> 
> What testsuite have you run exactly to validate this monster patch ?
> 
> Have you used CONFIG_LOCKDEP=y / CONFIG_DEBUG_ATOMIC_SLEEP=y ?
> 
>> Suggested-by: Cong Wang <xiyou.wangcong@gmail.com>
>> Signed-off-by: Taehee Yoo <ap420073@gmail.com>
> 
> [...]
> 
>>  /*
>> - *	device multicast group del
>> + * device multicast group del
>>   */
>>  int __ipv6_dev_mc_dec(struct inet6_dev *idev, const struct in6_addr *addr)
>>  {
>> @@ -943,8 +967,9 @@ int __ipv6_dev_mc_dec(struct inet6_dev *idev, const struct in6_addr *addr)
>>  
>>  	ASSERT_RTNL();
>>  
>> +	mutex_lock(&idev->mc_lock);
>>  	for (map = &idev->mc_list;
>> -	     (ma = rtnl_dereference(*map));
>> +	     (ma = mc_dereference(*map, idev));
>>  	     map = &ma->next) {
>>  		if (ipv6_addr_equal(&ma->mca_addr, addr)) {
>>  			if (--ma->mca_users == 0) {
> 
> This can be called with rcu_bh held, thus :
> 
> BUG: sleeping function called from invalid context at kernel/locking/mutex.c:928
> in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 4624, name: kworker/1:2
> 4 locks held by kworker/1:2/4624:
>  #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
>  #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
>  #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
>  #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
>  #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
>  #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: process_one_work+0x871/0x1600 kernel/workqueue.c:2246
>  #1: ffffc90009adfda8 ((addr_chk_work).work){+.+.}-{0:0}, at: process_one_work+0x8a5/0x1600 kernel/workqueue.c:2250
>  #2: ffffffff8d66d328 (rtnl_mutex){+.+.}-{3:3}, at: addrconf_verify_work+0xa/0x20 net/ipv6/addrconf.c:4572
>  #3: ffffffff8bf74300 (rcu_read_lock_bh){....}-{1:2}, at: addrconf_verify_rtnl+0x2b/0x1150 net/ipv6/addrconf.c:4459
> Preemption disabled at:
> [<ffffffff87b39f41>] local_bh_disable include/linux/bottom_half.h:19 [inline]
> [<ffffffff87b39f41>] rcu_read_lock_bh include/linux/rcupdate.h:727 [inline]
> [<ffffffff87b39f41>] addrconf_verify_rtnl+0x41/0x1150 net/ipv6/addrconf.c:4461
> CPU: 1 PID: 4624 Comm: kworker/1:2 Not tainted 5.12.0-rc4-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: ipv6_addrconf addrconf_verify_work
> Call Trace:
>  __dump_stack lib/dump_stack.c:79 [inline]
>  dump_stack+0x141/0x1d7 lib/dump_stack.c:120
>  ___might_sleep.cold+0x1f1/0x237 kernel/sched/core.c:8328
>  __mutex_lock_common kernel/locking/mutex.c:928 [inline]
>  __mutex_lock+0xa9/0x1120 kernel/locking/mutex.c:1096
>  __ipv6_dev_mc_dec+0x5f/0x340 net/ipv6/mcast.c:970
>  addrconf_leave_solict net/ipv6/addrconf.c:2182 [inline]
>  addrconf_leave_solict net/ipv6/addrconf.c:2174 [inline]
>  __ipv6_ifa_notify+0x5b6/0xa90 net/ipv6/addrconf.c:6077
>  ipv6_ifa_notify net/ipv6/addrconf.c:6100 [inline]
>  ipv6_del_addr+0x463/0xae0 net/ipv6/addrconf.c:1294
>  addrconf_verify_rtnl+0xd59/0x1150 net/ipv6/addrconf.c:4488
>  addrconf_verify_work+0xf/0x20 net/ipv6/addrconf.c:4573
>  process_one_work+0x98d/0x1600 kernel/workqueue.c:2275
>  worker_thread+0x64c/0x1120 kernel/workqueue.c:2421
>  kthread+0x3b1/0x4a0 kernel/kthread.c:292
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
> 

I will test this fix:

diff --git a/net/ipv6/addrconf.c b/net/ipv6/addrconf.c
index 120073ffb666b18678e3145d91dac59fa865a592..8f3883f4cb4a15a0749b8f0fe00061e483ea26ca 100644
--- a/net/ipv6/addrconf.c
+++ b/net/ipv6/addrconf.c
@@ -4485,7 +4485,9 @@ static void addrconf_verify_rtnl(void)
                            age >= ifp->valid_lft) {
                                spin_unlock(&ifp->lock);
                                in6_ifa_hold(ifp);
+                               rcu_read_unlock_bh();
                                ipv6_del_addr(ifp);
+                               rcu_read_lock_bh();
                                goto restart;
                        } else if (ifp->prefered_lft == INFINITY_LIFE_TIME) {
                                spin_unlock(&ifp->lock);
