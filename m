Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3AF50E0A7
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 Apr 2022 14:46:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5A38180E69;
	Mon, 25 Apr 2022 14:46:06 +0200 (CEST)
Received: from mail.nfschina.com (unknown [IPv6:2400:dd01:100f:2:72e2:84ff:fe10:5f45])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 789CC80292
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 Apr 2022 13:24:41 +0200 (CEST)
Received: from localhost (unknown [127.0.0.1])
	by mail.nfschina.com (Postfix) with ESMTP id 415491E80D78;
	Mon, 25 Apr 2022 19:11:26 +0800 (CST)
X-Virus-Scanned: amavisd-new at test.com
Received: from mail.nfschina.com ([127.0.0.1])
	by localhost (mail.nfschina.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YXA5B4jbnLbT; Mon, 25 Apr 2022 19:11:23 +0800 (CST)
Received: from [18.165.124.109] (unknown [101.228.255.56])
	(Authenticated sender: yuzhe@nfschina.com)
	by mail.nfschina.com (Postfix) with ESMTPA id 16C8A1E80D76;
	Mon, 25 Apr 2022 19:11:23 +0800 (CST)
Message-ID: <2822d906-6006-2530-eca8-f4c398a1357d@nfschina.com>
Date: Mon, 25 Apr 2022 19:14:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] batman-adv: remove unnecessary type castings
To: Sven Eckelmann <sven@narfation.org>
References: <3537486.13E77TLkhO@ripper>
From: yuzhe <yuzhe@nfschina.com>
In-Reply-To: <3537486.13E77TLkhO@ripper>
Content-Type: text/plain; charset=UTF-8; format=flowed
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650885882; a=rsa-sha256;
	cv=none;
	b=U4g0LEl7x9FNzidUdAdTMJTShvTCWI7wWxXuBQyLfPoyGjAvlAMWHM7jO/OX3ZX62XHvJ1
	OINOD9H/SKVGPGDbevo+f2nI2Zx/UWyFa2jwKLsBh35shGzxhXj7o4dgvBhuH+Hlaw68IK
	7kCAUs/fj4AKmTa3dACvfzfq1NpAXDA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of yuzhe@nfschina.com has no SPF policy when checking 2400:dd01:100f:2:72e2:84ff:fe10:5f45) smtp.mailfrom=yuzhe@nfschina.com;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650885882;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dXIIiP1qDTjGbAP+k8tN+Tlaq7jfzVaSeXJsCjvcOqU=;
	b=QcqW3w/OCun18rgk7HbFRkz3a0zH4CWRa8YsH41ffVOjWa7ZSlQMrt4IkOeZYxN/RPgmTk
	y6HzLWzFoU4WO58fxgkFyPFLLmUmQWyXvZqMFrpXZYfciMc0QJKEgHU04PhgTP+83T3JiP
	AjAK/rZRDnHsIV7OQGqamKX0t8SEvpo=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: yuzhe@nfschina.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: Q323HGPJKJ2DBARGWHILZ7AF7JLA7CKJ
X-Message-ID-Hash: Q323HGPJKJ2DBARGWHILZ7AF7JLA7CKJ
X-Mailman-Approved-At: Mon, 25 Apr 2022 12:46:03 +0200
CC: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, kernel-janitors@vger.kernel.org, kuba@kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, mareklindner@neomailbox.ch, netdev@vger.kernel.org, pabeni@redhat.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Q323HGPJKJ2DBARGWHILZ7AF7JLA7CKJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

thanks for your reply, we have fixed our mail server. And I'll correct an=
d resubmit my patch.

=E5=9C=A8 2022/4/22 15:55, Sven Eckelmann =E5=86=99=E9=81=93:

> Hi,
>
> we neither received your mail via the mailing list nor our private mail
> servers. It seems your mail setup is broken:
>
>      Apr 21 15:48:37 dvalin postfix/smtpd[10256]: NOQUEUE: reject: RCPT=
 from unknown[2400:dd01:100f:2:72e2:84ff:fe10:5f45]: 450 4.7.1 <ha.nfschi=
na.com>: Helo command rejected: Host not found; from=3D<yuzhe@nfschina.co=
m> to=3D<sven@narfation.org> proto=3DESMTP helo=3D<ha.nfschina.co>
>
>
> And when I test it myself, it is also not working:
>
>      $ dig @8.8.8.8 ha.nfschina.com
>
>      ; <<>> DiG 9.16.27-Debian <<>> @8.8.8.8 ha.nfschina.com
>      ; (1 server found)
>      ;; global options: +cmd
>      ;; Got answer:
>      ;; ->>HEADER<<- opcode: QUERY, status: NXDOMAIN, id: 39639
>      ;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL:=
 1
>     =20
>      ;; OPT PSEUDOSECTION:
>      ; EDNS: version: 0, flags:; udp: 512
>      ;; QUESTION SECTION:
>      ;ha.nfschina.com.               IN      A
>     =20
>      ;; AUTHORITY SECTION:
>      nfschina.com.           600     IN      SOA     dns11.hichina.com.=
 hostmaster.hichina.com. 2022011002 3600 1200 86400 600
>
>      ;; Query time: 328 msec
>      ;; SERVER: 8.8.8.8#53(8.8.8.8)
>      ;; WHEN: Fri Apr 22 09:51:56 CEST 2022
>      ;; MSG SIZE  rcvd: 105
>
>
> Please fix this before sending patches out.
>
>
> But the kernel test bot already demonstrated why this patch is not a go=
od
> idea. You can improve it and resent it but I will not accept it in this=
 form.
>
>
> Kind regards,
> 	Sven
