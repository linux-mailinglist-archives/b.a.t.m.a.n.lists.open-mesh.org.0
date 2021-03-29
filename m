Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7354534D8A7
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 29 Mar 2021 21:56:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 30DFB804C3;
	Mon, 29 Mar 2021 21:56:38 +0200 (CEST)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 63F1680054
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 29 Mar 2021 21:56:36 +0200 (CEST)
Received: by mail-wm1-x32c.google.com with SMTP id b2-20020a7bc2420000b029010be1081172so7253923wmj.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 29 Mar 2021 12:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MQBrb4YVkXVVUdNQVIYjRBD1ELh8gLe+l+iTh/6ZeHE=;
        b=apoBR01O0o2kiwhvAkciBfD7GZFv1B/yax9UQcmq8NLg7THJXp9CqywQmRY0GATMB8
         2pN66eybFsOGXRE5+Au+grXwApxl8fjIJSMtONFCmGjAf1Nv2+ki6LLABqPWZzgiSET6
         bTllyR8Zc81quWkKoo2E4zphFgY1NWZfD/IERlV6jNEbWU7yKf6LLxkzYYRKWM+oRmGw
         vaalZARYxt85174gBzFKUBe0gvnQcoN+roAFMsPVbON0q6eoAie9Q//Zgr+xjLXNHadu
         DVH7vezu4UgnyXOUQhwaJQ3r6M5xMFPrvkzIc7WTnSdpx6IshSgwMZBTmfzg24F2pwot
         Zk9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MQBrb4YVkXVVUdNQVIYjRBD1ELh8gLe+l+iTh/6ZeHE=;
        b=stxvDROZgk5XXKBPDgvM4aOIVSFn+GyfKpHcDEZOqV+P1NnXmhu59HBLDb/2wJCeJg
         T5TOjHThzYZnDM2d7EM12rwVzkMqSRHU2DVvIPAaxW86jW4uyRlv9cU+iPgMdRuxLEdr
         K0j3WgZ1IdwiL8fApfatNpvYy0D/3+/Za02lEVtG5noRq3eZXqI2Grm1fnzHHj+jY8N/
         xB2bRx2AQLznmU0Yy1Hhp2lzvzpdoQc16Jc93yMQDPiU9U6SKfwkgS5M1tGbtPSMNeR5
         3yBpQwZprk7xsMYUGvORcki/1+lYHKE4ZMI0dl8yd7uqhH43r2uTc6pxJz/yeExzR7cy
         Za4A==
X-Gm-Message-State: AOAM531KQWLGpUdbGZ0kgFMAXBOWfoxExK6Ok9aE5nxWKVJdh+JnJZCc
	uh1fpW2rz10bsNcRmcihsNr+Bf1Ufu0=
X-Google-Smtp-Source: ABdhPJzaPyymGOXg3cichgFoBPMx6tnYRHhCJYXcLD4ZgPv84qLD+ONtlhrSVvSSIa0vQXYxzmbxjw==
X-Received: by 2002:a1c:3d8a:: with SMTP id k132mr590836wma.71.1617047795554;
        Mon, 29 Mar 2021 12:56:35 -0700 (PDT)
Received: from [192.168.1.101] ([37.173.175.207])
        by smtp.gmail.com with ESMTPSA id f2sm457550wmp.20.2021.03.29.12.56.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 12:56:35 -0700 (PDT)
Subject: Re: [PATCH net-next v3 5/7] mld: convert ifmcaddr6 to RCU
To: Taehee Yoo <ap420073@gmail.com>, netdev@vger.kernel.org,
 davem@davemloft.net, kuba@kernel.org
References: <20210325161657.10517-1-ap420073@gmail.com>
 <20210325161657.10517-6-ap420073@gmail.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <6262890a-7789-e3dd-aa04-58e5e06499dc@gmail.com>
Date: Mon, 29 Mar 2021 21:56:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210325161657.10517-6-ap420073@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=apoBR01O;
	spf=pass (diktynna.open-mesh.org: domain of ericdumazet@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=ericdumazet@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617047796; a=rsa-sha256;
	cv=none;
	b=3Xpef0uxwsJMH6fc14LocqAROezbg3vdT5CGzEjHdlUFh+uZhi4pkJpOzpHrlYdpoMwGNo
	P56MhFlwBVE6KDLf7RG7OMMzkSxJq1YvCiWXKIRTX2jn2SEvZOOJfkK5kzhCm+B1R3E0qI
	Ae9QN+AGWe3RGddbx1fCeLCfavP2wXI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617047796;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=MQBrb4YVkXVVUdNQVIYjRBD1ELh8gLe+l+iTh/6ZeHE=;
	b=BSuXTjAeviSut97l69VLP6EViY1hKxVKYz9RqZ6qy87mZC3jl0WprdTplUb7m+S9GsBMa2
	smvjJBpDwfSFsG+3+FsObMMnFSiAVW7Vgp1ATVZC4GA3m2icx5UohkIBl8IJLyDy/5fZfH
	7f48nrjUuat6S1PJ36D0pjTirtk2xUk=
Message-ID-Hash: PED2JD6NQS54VW5BBC5BXPYUBBFFBIZO
X-Message-ID-Hash: PED2JD6NQS54VW5BBC5BXPYUBBFFBIZO
X-MailFrom: eric.dumazet@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PED2JD6NQS54VW5BBC5BXPYUBBFFBIZO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 3/25/21 5:16 PM, Taehee Yoo wrote:
> The ifmcaddr6 has been protected by inet6_dev->lock(rwlock) so that
> the critical section is atomic context. In order to switch this context,
> changing locking is needed. The ifmcaddr6 actually already protected by
> RTNL So if it's converted to use RCU, its control path context can be
> switched to sleepable.
>

I do not really understand the changelog.

You wanted to convert from RCU to RTNL, right ?

Also :

> @@ -571,13 +573,9 @@ int ip6_mc_msfget(struct sock *sk, struct group_filter *gsf,
>  	if (!ipv6_addr_is_multicast(group))
>  		return -EINVAL;
>  
> -	rcu_read_lock();
> -	idev = ip6_mc_find_dev_rcu(net, group, gsf->gf_interface);
> -
> -	if (!idev) {
> -		rcu_read_unlock();
> +	idev = ip6_mc_find_dev_rtnl(net, group, gsf->gf_interface);
> +	if (!idev)
>  		return -ENODEV;
> -	}
>  

I do not see RTNL being acquired before entering ip6_mc_msfget()

