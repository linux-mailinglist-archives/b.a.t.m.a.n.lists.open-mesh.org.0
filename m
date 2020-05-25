Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D601E1233
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 17:58:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A5BF981DB2;
	Mon, 25 May 2020 17:57:59 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9008F80242
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 17:57:57 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Batman-adv packet retranslation
Date: Mon, 25 May 2020 17:57:51 +0200
Message-ID: <10714145.5AxrDinkzN@rousseau>
In-Reply-To: <CAOVt3fEbtq-9aR-p-uEhukb+sdWduay3WfZi6GpwtdVdZpe=vQ@mail.gmail.com>
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com> <4309595.MtDqpTPQ1e@rousseau> <CAOVt3fEbtq-9aR-p-uEhukb+sdWduay3WfZi6GpwtdVdZpe=vQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5278753.MBfcbxTz2i"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590422277;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Po1qHchQ0zAjSrVsL0MpPCIe2+Pem+qKItXLg4QbCzQ=;
	b=FWnp76/op03KKkLBdSuaCQnkq4jNaMfTWTedAGWkqfsDt6gM7NYMu6DGimicSAgRoG71/v
	okDW7RLFvr1Axwmi43uuhrrjYx1TwWPBDAF/l9rrzbG6/gz2oq7phlZf/ZfpF9RKEw4FPw
	UR0Bc+w1ZVrtYlWc7hHVGtllCzvKX5I=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590422277; a=rsa-sha256;
	cv=none;
	b=pfRtpytWp7XlWxwOwIHhvrD6dJHGEEHCwkQXREmrWu5EgiwfoXvWmjml1l78FTeDzgFnUW
	umH6X08MbYj2n9fRaiprpm7MbB/jb353+3qUakPeurwFAi6c0QnvQtjfDDk6yx6b0rwvlk
	e5Grb3dBycubczb1ckb3aN7fUUgZmNg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
Message-ID-Hash: AVAJLFTWFQYEU4FXN3X5F6BJELEYZ3WU
X-Message-ID-Hash: AVAJLFTWFQYEU4FXN3X5F6BJELEYZ3WU
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AVAJLFTWFQYEU4FXN3X5F6BJELEYZ3WU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart5278753.MBfcbxTz2i
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Monday, 25 May 2020 16:59:23 CEST Alexey Ermakov wrote:
> Below I provide ethernet MAC addresses, tables with throughput overrid
> to 100kbit/s and tables without output override.
> Note that in case without override batman detects throughput about
> 100mbit/s. This is not quiet correct, because as I say before, nodes
> connects to modems and throughput from node to modem is 100mbit/s, but
> actual speed of modem is 145 kbit/s=D0=B1 therefore I should set throughp=
ut
> override

I am surprised you still are configuring a throughput override of 100kbit/s=
=2E=20
What's the idea behind this configuration ?
As explained before, by configuring this low throughput value you are=20
preventing any multi-hop route detection. Is that intended ?


> Tables without throughput override:

Since the throughput is auto-detected in your setup why are you configuring=
 a=20
manual throughput override ?

Now that we see the tables where do we see what issue ? What is not working=
 as=20
per your expectation ?

Kind regards,
Marek Lindner

--nextPart5278753.MBfcbxTz2i
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl7L6v8ACgkQU1VOj+62
HMByPwf7B5nkYcomwQW0l/7VsNpqeaVkyXlPln+Lsu9y5OE28neFpymn1iY3BQVn
bxRolWMh/Ksp0anE482uE5THkL/ZEmI5Q0Z07o2sTbh2dAsz6y+X4GDUCq9WpPjs
WgceBDbd2geOBuCoz+QuPPsreUyEtsofYo4+EwZ6FwxmPtEfMhFtNJ9qf7va2z24
Y+RTcNreCEDCf6L8UYA/eZN52su26/FZqihs4qU2VgzXlPRpxd0DENblEFcf3VPp
PGXpWm9PpQWOmqC1PeKghPLSmEmsptJEcmOEmTmWXG0p0kDM8UvuiPTWS5y/bwgw
b7IhqbEaTinqyqWhe6EA5SQgBn+NYg==
=N3fR
-----END PGP SIGNATURE-----

--nextPart5278753.MBfcbxTz2i--


