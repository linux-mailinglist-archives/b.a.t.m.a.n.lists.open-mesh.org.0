Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E211E1362
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 19:27:43 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3C95681DD4;
	Mon, 25 May 2020 19:27:42 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 375B580145
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 19:27:39 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Batman-adv packet retranslation
Date: Mon, 25 May 2020 19:27:32 +0200
Message-ID: <7073983.9WrHQ1J9Fu@rousseau>
In-Reply-To: <CAOVt3fGODcxuZAigHuHSgPED5Y67kB2NV2encCyDz4qMFy7gyQ@mail.gmail.com>
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com> <10714145.5AxrDinkzN@rousseau> <CAOVt3fGODcxuZAigHuHSgPED5Y67kB2NV2encCyDz4qMFy7gyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2583158.ocIN8Hk9gp"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590427659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8r+xwdPmDqMmd6ynojmZ2ZSJRAXCq53oiNNTcCB/9V4=;
	b=IBXGlpp3gQO0rB+Hgzkkl6lB5V4OwtUR4Xt2Fqm9uxPtW1RHG7RFcin4UgSWtYwYvN2kh7
	K878V7JqaPMRWF8U5eveqqVsmBuEfR2Uu6jULUxeVEM2rgmZRTJwLg84/nmOc8NhUEmz0y
	hr31Yzuab/2WzHfsBgr80vv6PhE2eL0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590427659; a=rsa-sha256;
	cv=none;
	b=ipAF3JPjnTXZfhaGOmSpdmuF1bR3q8ERlZv6KE2OgOEcJf1YmwqEeYDAdZDlmdbY/115O2
	kq0/YJqN/ZAdxdQ/bfgblNPY96+3IqnlnZa4ZhxoLQ/y6IJr1BlyPHXjIVzte+g12pPnJi
	m8BL06y5Se1kYeZNDooKuOifOUJedwI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
Message-ID-Hash: JS5PM7KOKT3QOZJMXMVAORAQC3CDIBSO
X-Message-ID-Hash: JS5PM7KOKT3QOZJMXMVAORAQC3CDIBSO
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JS5PM7KOKT3QOZJMXMVAORAQC3CDIBSO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2583158.ocIN8Hk9gp
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 25 May 2020 19:21:50 CEST Alexey Ermakov wrote:
> > I am surprised you still are configuring a throughput override of
> > 100kbit/s. What's the idea behind this configuration ?
> 
> I have two channels between nodes (actually more, but this doesn't matter
> now) 1) Radio modem, connects as follows:
>    NODE1(eth0)<-->modem(radio)<-->(radio)modem<-->(eth0)NODE2
> eth0 interface have 100mbit/s speed and batman detects it as 100mbit/s.
> radio has 145kbit/s, and actual speed of this channel is 145kbit/s
> 
> 2) eth1 Ethernet channel. Speed of this channel is 100mbit/s
>    NODE1(eth1)<---->(eth1)NODE2
> 
> Now make a test:
> 1) Set up eth0 modem channel
> 2) Disconnect eth1 channel
> 3) Turn on nodes - batman saw eth0 channel between nodes and detected
> speed 100mbit/s (because speed between node and modem is 100mbit/s, as
> I understand)
> 4) plug eth1 cable in - At this moment I expect batman switch to eth1
> channel because it has real 100mbit/s speed. But batman doesn't
> switch, because it detects eth0 as 100mbit/s too.
> Therefore I override throughput of eth0, actually batman detects
> incorrect speed on eth0.

If you have to configure the throughput manually why not configure the link with 
something like 5mbit/s instead of 100kbit/s ? Batman-adv does not care that 
this throughput is not exact. All that matters is provide input to the 
algorithm to allow batman-adv to make smart choices.

Kind regards,
Marek Lindner

--nextPart2583158.ocIN8Hk9gp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl7MAAQACgkQU1VOj+62
HMBs6Qf/XXUiwnMu6XzAlsd2ls/ydp35yL/J6Mov4rQhAg97YBJFtl/ryil3o2cX
dHWnAGQUfyftavPkM2r2c3iNZnytzdh/Pq5+7qCQVq6wVmb0+ZSEu3h4SotnFpPe
kAlk4+b2o1WbopnxKNhmKgnthQ2BO4TDx3aG41FftPQvXyKwkl+2VoHG6TGBa5AY
ugW0tJtn5oZIwILNDMIvGKNQln/ZnkeVYwhstPDaxTxNxWgCy3ESs3dz8+mN3xmk
LbRtsYRCK1SYaQFBxfJ2VSlqg4r2wk2cTMeNxUTlmWmcHC09vSJZ1WzxpUlfRhhe
AxHzxAyt1lqgLrPehhzG+vOSUa8uEw==
=12fU
-----END PGP SIGNATURE-----

--nextPart2583158.ocIN8Hk9gp--


