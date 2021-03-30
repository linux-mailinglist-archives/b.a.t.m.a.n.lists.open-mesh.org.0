Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DF834E6F9
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Mar 2021 13:59:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5AD8680831;
	Tue, 30 Mar 2021 13:59:44 +0200 (CEST)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 14B2480636
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Mar 2021 13:59:36 +0200 (CEST)
Received: by mail-wr1-x42d.google.com with SMTP id j7so16001725wrd.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Mar 2021 04:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=U/4TeLcM1UNsh9OCgocN0tnCoz1dv6AKljeqZVGsdkE=;
        b=nwTyc7QEJdlUs/TfyvLtXvJqn930gAyt7rNHkJJCsr1A6x8Sgj26LWdvwSYyy0bvIW
         t7vMfAAGkkNnq6YeV/uWjFBhdsM9/602iP5QO3QX28NtPRuc1OdMjbhm2IQMiPMdzLib
         NkHdl7Ud2tkWmlPz4SEsHf9GOMJqVatpaTe8qV7rvxtG8uHk77xdm+wQzPkVXzkmce0y
         sxe6JtQQe+0scCA1VxWjjyVvxdtpP7W8dW3Z4jqy+Dl7PjyG9va1zYQq0k1hjobowXUN
         R0e8d5ICG/MnXUaMaUFyiicFl7p53aV6FebCCwWMlncuB5URZ4K8sWoelmenq3mNBoLo
         0pVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=U/4TeLcM1UNsh9OCgocN0tnCoz1dv6AKljeqZVGsdkE=;
        b=R8cI/S6zSQqQWVrEx5s3wkNqQgNr7IHJJlIdoTUuJMuwOTqBg0vQESPF4f4NOPHXOP
         dsNztNN58+jWQ/RCiHYUlAbC4WMegvGfgjEUxR5NaWiXIpyxcGx/oENun2hc0iVpMFOx
         4PLnnQ4rD4Sq5tICTUOMcWtAkgzCrPQTGg0pePTwkpBeB/NWlYOWgnDpMJ7uJdtj7SOn
         eXFufeiSj64rKsrBckpQNEXauf9I5uUd8OwnXNC7InuYIsiwfK+A5n15CzLn/P1vQzKf
         tPRkNgBFmje6txMv7Im2yIrg+q1rX8F6ulcyOugF1I3d36HGkTphqc5yAAccDvr6/s3h
         vmaA==
X-Gm-Message-State: AOAM532NQuKaH4IqjzWu0Kyji3bmk64iQdXhqUkq+ZIwQ/91pJt9AxXt
	rTz7OHVgwsFyK1C4QRg/rZ+YUd6UOo0=
X-Google-Smtp-Source: ABdhPJy+WBqRR0bXmhglug/JD2jqX5Bsqg4lVGpV3HCUSVz3NdUFyAxn8IkLNCPuofhIS1/1avRGUA==
X-Received: by 2002:adf:dd47:: with SMTP id u7mr33765469wrm.13.1617105576189;
        Tue, 30 Mar 2021 04:59:36 -0700 (PDT)
Received: from [192.168.1.101] ([37.167.251.74])
        by smtp.gmail.com with ESMTPSA id x11sm4424978wme.9.2021.03.30.04.59.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 04:59:35 -0700 (PDT)
Subject: Re: [PATCH net-next v3 7/7] mld: add mc_lock for protecting
 per-interface mld data
To: Taehee Yoo <ap420073@gmail.com>, netdev@vger.kernel.org,
 davem@davemloft.net, kuba@kernel.org
References: <20210325161657.10517-1-ap420073@gmail.com>
 <20210325161657.10517-8-ap420073@gmail.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <fd460c2b-b974-db00-5097-4af08f12c670@gmail.com>
Date: Tue, 30 Mar 2021 13:59:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210325161657.10517-8-ap420073@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=nwTyc7QE;
	spf=pass (diktynna.open-mesh.org: domain of ericdumazet@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ericdumazet@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617105581; a=rsa-sha256;
	cv=none;
	b=v25Mg1upFFCPL9QvloJ8/2UynTmCMAocPh1C9OJshi/QKuipWFL3xJJ22GVWOJ3sHCGuJF
	NrBm12NBXTqCAx4yDluUSjPRkHMF/H2JabpU7ManELProsfE0Tj2+mdzYZG+T6lnc6jxMf
	/7GeJF3TzrU1WdLP7CFPcvcppSGQDx4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617105581;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=U/4TeLcM1UNsh9OCgocN0tnCoz1dv6AKljeqZVGsdkE=;
	b=YR1bIIBHpxamCotOeoCcROJiVtyV586JPG+zytaGNjfKOMXq1svNF2DU9GPN7AW9KxzjQc
	RsnpQxCH6KfrO4H0CZn/IOGS0PMFHqnV/2+3moHYbjyTAtuYaObELFwluww0lVV/MQq1bh
	SDumV40JMUBawAmwni7377aXkxAA8x4=
Message-ID-Hash: VEEPYRHFEZF5GATOEI75FZ23PFVHXT4M
X-Message-ID-Hash: VEEPYRHFEZF5GATOEI75FZ23PFVHXT4M
X-MailFrom: eric.dumazet@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VEEPYRHFEZF5GATOEI75FZ23PFVHXT4M/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 3/25/21 5:16 PM, Taehee Yoo wrote:
> The purpose of this lock is to avoid a bottleneck in the query/report
> event handler logic.
> 
> By previous patches, almost all mld data is protected by RTNL.
> So, the query and report event handler, which is data path logic
> acquires RTNL too. Therefore if a lot of query and report events
> are received, it uses RTNL for a long time.
> So it makes the control-plane bottleneck because of using RTNL.
> In order to avoid this bottleneck, mc_lock is added.
> 
> mc_lock protect only per-interface mld data and per-interface mld
> data is used in the query/report event handler logic.
> So, no longer rtnl_lock is needed in the query/report event handler logic.
> Therefore bottleneck will be disappeared by mc_lock.
> 

What testsuite have you run exactly to validate this monster patch ?

Have you used CONFIG_LOCKDEP=y / CONFIG_DEBUG_ATOMIC_SLEEP=y ?

> Suggested-by: Cong Wang <xiyou.wangcong@gmail.com>
> Signed-off-by: Taehee Yoo <ap420073@gmail.com>

[...]

>  /*
> - *	device multicast group del
> + * device multicast group del
>   */
>  int __ipv6_dev_mc_dec(struct inet6_dev *idev, const struct in6_addr *addr)
>  {
> @@ -943,8 +967,9 @@ int __ipv6_dev_mc_dec(struct inet6_dev *idev, const struct in6_addr *addr)
>  
>  	ASSERT_RTNL();
>  
> +	mutex_lock(&idev->mc_lock);
>  	for (map = &idev->mc_list;
> -	     (ma = rtnl_dereference(*map));
> +	     (ma = mc_dereference(*map, idev));
>  	     map = &ma->next) {
>  		if (ipv6_addr_equal(&ma->mca_addr, addr)) {
>  			if (--ma->mca_users == 0) {

This can be called with rcu_bh held, thus :

BUG: sleeping function called from invalid context at kernel/locking/mutex.c:928
in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 4624, name: kworker/1:2
4 locks held by kworker/1:2/4624:
 #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
 #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
 #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
 #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
 #0: ffff88802135d138 ((wq_completion)ipv6_addrconf){+.+.}-{0:0}, at: process_one_work+0x871/0x1600 kernel/workqueue.c:2246
 #1: ffffc90009adfda8 ((addr_chk_work).work){+.+.}-{0:0}, at: process_one_work+0x8a5/0x1600 kernel/workqueue.c:2250
 #2: ffffffff8d66d328 (rtnl_mutex){+.+.}-{3:3}, at: addrconf_verify_work+0xa/0x20 net/ipv6/addrconf.c:4572
 #3: ffffffff8bf74300 (rcu_read_lock_bh){....}-{1:2}, at: addrconf_verify_rtnl+0x2b/0x1150 net/ipv6/addrconf.c:4459
Preemption disabled at:
[<ffffffff87b39f41>] local_bh_disable include/linux/bottom_half.h:19 [inline]
[<ffffffff87b39f41>] rcu_read_lock_bh include/linux/rcupdate.h:727 [inline]
[<ffffffff87b39f41>] addrconf_verify_rtnl+0x41/0x1150 net/ipv6/addrconf.c:4461
CPU: 1 PID: 4624 Comm: kworker/1:2 Not tainted 5.12.0-rc4-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: ipv6_addrconf addrconf_verify_work
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x141/0x1d7 lib/dump_stack.c:120
 ___might_sleep.cold+0x1f1/0x237 kernel/sched/core.c:8328
 __mutex_lock_common kernel/locking/mutex.c:928 [inline]
 __mutex_lock+0xa9/0x1120 kernel/locking/mutex.c:1096
 __ipv6_dev_mc_dec+0x5f/0x340 net/ipv6/mcast.c:970
 addrconf_leave_solict net/ipv6/addrconf.c:2182 [inline]
 addrconf_leave_solict net/ipv6/addrconf.c:2174 [inline]
 __ipv6_ifa_notify+0x5b6/0xa90 net/ipv6/addrconf.c:6077
 ipv6_ifa_notify net/ipv6/addrconf.c:6100 [inline]
 ipv6_del_addr+0x463/0xae0 net/ipv6/addrconf.c:1294
 addrconf_verify_rtnl+0xd59/0x1150 net/ipv6/addrconf.c:4488
 addrconf_verify_work+0xf/0x20 net/ipv6/addrconf.c:4573
 process_one_work+0x98d/0x1600 kernel/workqueue.c:2275
 worker_thread+0x64c/0x1120 kernel/workqueue.c:2421
 kthread+0x3b1/0x4a0 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
