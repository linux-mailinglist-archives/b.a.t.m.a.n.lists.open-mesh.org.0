Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 589B01DE5BB
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 May 2020 13:43:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2172B80659;
	Fri, 22 May 2020 13:43:09 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0F99A8063A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 May 2020 13:43:06 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Batman-adv packet retranslation
Date: Fri, 22 May 2020 13:41:41 +0200
Message-ID: <14217483.HvAlGTDFyM@rousseau>
In-Reply-To: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com>
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6604068.RrEA1Lxpi4"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590147787;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=V+IVYLXkDpvy4DE5aLX93K0/7qjuQTQKujQF0rOe1Ko=;
	b=ZrRuC3r2/HIpjKE2yzutrODYQIq3WBQB6HB0yhSNzaQHX8+WFLDjmDcGZgWJJwPg5IAKxl
	lWrHcvfXSVKHFioKyEABQcJsTr2hWnBVsNqDd7wYV9TF1CPejWu67bM7tk0B/efQR1pYXM
	ipwHV854+Vju0xpi4JZulJW9vojUB/0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590147787; a=rsa-sha256;
	cv=none;
	b=cT2dyxVfGUBGvSMvXLW1w2cq7UbFFHWsVclqsqD2Ve68PQ0aeVC/W9eOorCNLAndBbiwPs
	jVmqQJWAi3MeF1q0EhKk7BKaNtAjRgzfAyvkTsXILDs5fZfIGAb3XYj2H1enMUFwIDUmhB
	RCELwsf8g/ary0UpfdXUZYZR/mLsLzc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
Message-ID-Hash: 3BG5JALLZTRGBL77SAEA7AHTMROSHQWJ
X-Message-ID-Hash: 3BG5JALLZTRGBL77SAEA7AHTMROSHQWJ
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3BG5JALLZTRGBL77SAEA7AHTMROSHQWJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart6604068.RrEA1Lxpi4
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alexey,

> There is a problem with retranslating packets in B.A.T.M.A.N. V mode.
> I have 3 stations, st1, st2 and st3 with one active network interface.
> This interface is configured so that st1 and st3 can see only st2.
> I expect that if I join these stations in a bat0 network, then station
> 2 will act as a repeater and all three stations will be visible in the
> bat0 network.
> This works fine if I selecting B.A.T.M.A.N. IV algorithm, but doesn't
> work in B.A.T.M.A.N.V.

can you please provide more information as to what does not work exactly ?
The neighbors don't find each other ? Payload traffic does not flow ? ...

Kind regards,
Marek Lindner

--nextPart6604068.RrEA1Lxpi4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl7HunUACgkQU1VOj+62
HMDl9Qf8CK9jniGVk16p7tqmfo2zIHNemGvNa1PKE0zsNJAytxwnymN6RYLjCtOB
vW98GnaF/IfVN0uZ0FRxO7D5f4Y6XhdTsRug320Xf1SHqvU1uXonC0inXLXIZd/V
0SMF94PFeaDspjolrUBMP0Wz50DfWesO49r2a+2i+SKsaFulqtfidEFkspfYki3o
zJZC+W+Gw9o6GmERAPuchlfsnw5bVT7cIBHwaXtHG7boK7c2VkxqjNRtXxEkZZjx
+Iej8nz7kZbrpbNx4JHr051L/6YLhGJhXngrXCaY4ZYGhciQUnwQuCMqGjv82q7Y
bzMoHzdCQbsj6w0+Jw0avNed2zypCg==
=IIgr
-----END PGP SIGNATURE-----

--nextPart6604068.RrEA1Lxpi4--


