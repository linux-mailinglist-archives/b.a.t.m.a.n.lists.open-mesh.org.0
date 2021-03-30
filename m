Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0DE34FBEC
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 31 Mar 2021 10:52:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 315A58272C;
	Wed, 31 Mar 2021 10:52:44 +0200 (CEST)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 88D3080551
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Mar 2021 05:41:49 +0200 (CEST)
Received: by mail-pl1-x631.google.com with SMTP id y2so5434417plg.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 29 Mar 2021 20:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=H20z6a01zOabARj7KiXuuTGakHQ2bTsJGwnuUxgVOds=;
        b=izfuPkuLj7M5nKqR3ojCclqJI8bk2PZG2t0mHF6Ov0y+4gfr24SqeZMjftG+PhUpKr
         7D4ltGvR//clSXRIuVNP2kFu7YlhXfvgO23XwNXlHOkzlh998MZHSeU9DJu99+/BQGGz
         BUf0LIxuit++v/yr4ch+VLR3jyvmeaCF4OH/63qABaquPLQyxiTR2duXINObW9fUjTSl
         aNkvj2vYKFiXE+QrQCrhTsFiX6x937/pm+5A8/T1Ns6RDK4cFBpw6xR4HJVo1pi7NSic
         K8mem/nGVfVN3vODpJncgxXLDpKrStuDBoSYnCrl5DrxbPWggqEjyqB/YjMm5BG0vpMI
         3sGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=H20z6a01zOabARj7KiXuuTGakHQ2bTsJGwnuUxgVOds=;
        b=fyn0E091fJfnajjmLddqeBH5LeMIEzo5BZDiDAtahOPbTxqAkP5dOc9f7tp/SpFEHy
         bV0fFHXhbWTJDYcQJILGz2MP32dl+guZNl0+F/C0nv5wedhqQT/hfJWUQjhYGd/TMtZG
         ZEYjfjskL9VwJ3zmm/fAsQbSVlXKzeyUgb4j11j14tkVDDIhBAdDxh17VN/tZT5chrM/
         N8ZcnA4FsuZJ1X70Mj+xpv4MLo6QUtMn6YwXYHI/OWfuUyq2Y+mRIh6sKxezANy5xn/5
         y897lhr7QUSdnDSL67rMd7HsOvnuipvm6cmFvYjMLgQi10D4yUIqxD2zLOr/DB3KKMUI
         1VUg==
X-Gm-Message-State: AOAM533iKbfXLWOMhW5VtICS2rmeWKRYRrVdFqjExEjCxDB8890vQcyU
	roorzORLC5iEp0ODskWAteY=
X-Google-Smtp-Source: ABdhPJzpOZewSVE8JN8OFoK2cyL25/7ric2zwhIPaplUwu3jxy1vp2OKyzRVvuPGKeiaEmfQ+s1sLQ==
X-Received: by 2002:a17:90a:9b18:: with SMTP id f24mr2195723pjp.96.1617075707803;
        Mon, 29 Mar 2021 20:41:47 -0700 (PDT)
Received: from kakao-entui-MacBookPro.local ([49.173.165.50])
        by smtp.gmail.com with ESMTPSA id s12sm17812830pgj.70.2021.03.29.20.41.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 20:41:47 -0700 (PDT)
Subject: Re: [PATCH net-next v3 5/7] mld: convert ifmcaddr6 to RCU
To: Eric Dumazet <eric.dumazet@gmail.com>, netdev@vger.kernel.org,
 davem@davemloft.net, kuba@kernel.org
References: <20210325161657.10517-1-ap420073@gmail.com>
 <20210325161657.10517-6-ap420073@gmail.com>
 <6262890a-7789-e3dd-aa04-58e5e06499dc@gmail.com>
From: Taehee Yoo <ap420073@gmail.com>
Message-ID: <f054971d-8be0-92ba-009b-9681e08f841c@gmail.com>
Date: Tue, 30 Mar 2021 12:41:40 +0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <6262890a-7789-e3dd-aa04-58e5e06499dc@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: ko
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=izfuPkuL;
	spf=pass (diktynna.open-mesh.org: domain of ap420073@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ap420073@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617075709; a=rsa-sha256;
	cv=none;
	b=OR3Ay/kz0M6mC51H3txGN3kvRcfdLey9Zt1+TdgMuKddA/q/r4kXYIgFasmyHhFzqtUtMk
	mCUQL830PGAXOFe+RDaCKN8iHxSZkeq0R+L7+chbU2k8nZ+OOtO8Dgn/5AfFEjnDmcIeKw
	1rutqH+waJiYLyN9U3HkcpESzWVjlIw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617075709;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=H20z6a01zOabARj7KiXuuTGakHQ2bTsJGwnuUxgVOds=;
	b=De1IAQL7ksGEx5PVCkl63uoE0on6BCCx7eFH2EXh2GEdtl1YDGYECnFzkR+r3y33t8cbRt
	zcr7/rcBAcrm8zrK+OpYR6lf6wh5lGvO3Uqs4qKUUDt1PadiAu8y3sojzzu7qsdo+69+kf
	CWn9yzNWERglDIRRVQuf7rnCKfIVock=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: ap420073@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: D7PD7KDHAAGS4BWIANUL3LXM7Y5I4JDF
X-Message-ID-Hash: D7PD7KDHAAGS4BWIANUL3LXM7Y5I4JDF
X-Mailman-Approved-At: Wed, 31 Mar 2021 08:52:42 +0200
CC: jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, xiyou.wangcong@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/D7PD7KDHAAGS4BWIANUL3LXM7Y5I4JDF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 2021. 3. 30. =EC=98=A4=EC=A0=84 4:56, Eric Dumazet wrote:
 >
 >

Hi Eric,
Thank you for the review!

 > On 3/25/21 5:16 PM, Taehee Yoo wrote:
 >> The ifmcaddr6 has been protected by inet6_dev->lock(rwlock) so that
 >> the critical section is atomic context. In order to switch this conte=
xt,
 >> changing locking is needed. The ifmcaddr6 actually already protected =
by
 >> RTNL So if it's converted to use RCU, its control path context can be
 >> switched to sleepable.
 >>
 >
 > I do not really understand the changelog.
 >
 > You wanted to convert from RCU to RTNL, right ?

The purpose of this is to use both RCU and RTNL.
In the control path, ifmcaddr6 is protected by RTNL
(setsockopt_needs_rtnl() in the do_ipv6_setsockopt())
And in the data path, ifmcaddr6 will be protected by RCU.

But ifmcaddr6 is already protected by RTNL in the control path.
So, this patch is to convert ifmcaddr6 to RCU only for datapath.
Therefore, by this patch, ifmcaddr6 will be protected by both RTNL and RC=
U.

I'm so sorry for this strange changelog.

 >
 > Also :
 >
 >> @@ -571,13 +573,9 @@ int ip6_mc_msfget(struct sock *sk, struct=20
group_filter *gsf,
 >>   	if (!ipv6_addr_is_multicast(group))
 >>   		return -EINVAL;
 >>
 >> -	rcu_read_lock();
 >> -	idev =3D ip6_mc_find_dev_rcu(net, group, gsf->gf_interface);
 >> -
 >> -	if (!idev) {
 >> -		rcu_read_unlock();
 >> +	idev =3D ip6_mc_find_dev_rtnl(net, group, gsf->gf_interface);
 >> +	if (!idev)
 >>   		return -ENODEV;
 >> -	}
 >>
 >
 > I do not see RTNL being acquired before entering ip6_mc_msfget()
 >

Thank you so much for catching this.
I will send a patch to fix this problem!

Thanks a lot!
Taehee Yoo
