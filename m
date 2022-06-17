Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDBF54F891
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jun 2022 15:53:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BD28C82367;
	Fri, 17 Jun 2022 15:53:10 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1B22A80574
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Jun 2022 15:53:08 +0200 (CEST)
Received: from prime.localnet (p200300FA27087d0047Da43EAC765fEbc.dip0.t-ipconnect.de [IPv6:2003:fa:2708:7d00:47da:43ea:c765:febc])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id C7C98FA22B;
	Fri, 17 Jun 2022 15:53:07 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: cchien@creonexsystems.com, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Question about batman for ARM
Date: Fri, 17 Jun 2022 15:53:07 +0200
Message-ID: <2037952.ni6AN7iZ1R@prime>
In-Reply-To: <3826484.QQW5a1qdB9@ripper>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <049201d88226$14ca9ae0$3e5fd0a0$@creonexsystems.com> <3826484.QQW5a1qdB9@ripper>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5140804.hIKb1v7LjU"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1655473988; a=rsa-sha256;
	cv=none;
	b=2KuNpiU5NKbqMHiEaxnBWbji9YySy+tujVXTF6GeAoa3ow7iMj01rsyaBmbK7Q1ggSl9Nq
	CPPzeiwougRwUlRphR6DaIf2vxJZPxXOfLVMdyD8oAhZb1XzyiAnVMedA0T00yO6wnGuNV
	hhZfErt3WRmAgx9QESqXIOBI8FraEtQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1655473988;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=AYoNTGpAq0wP+jhWTJm6CHBDzYq9fkTCXN+CFBnMDrk=;
	b=0/mOSkcVsQ06MWeOMNp5bW6/m1j7QpAdjroIKth7pvDlwZhUDF4IA9FIH7Ybbh2xXEaFZO
	u2hnxdLABEDOIxyoRq0YRQ+8BsaqwkLaaxgbA+Tcio6o2OiK2AVIWrpI0t2WJ0rbPhkciq
	07PrTVLF/oAWYvamGmQQFZmPohkNb/Y=
Message-ID-Hash: Q6OTBYTIIIZVASRS5IRV5QHZDFO57AIN
X-Message-ID-Hash: Q6OTBYTIIIZVASRS5IRV5QHZDFO57AIN
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Q6OTBYTIIIZVASRS5IRV5QHZDFO57AIN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart5140804.hIKb1v7LjU
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Simon Wunderlich <sw@simonwunderlich.de>
To: cchien@creonexsystems.com, b.a.t.m.a.n@lists.open-mesh.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, Sven Eckelmann <sven@narfation.org>
Subject: Re: Question about batman for ARM
Date: Fri, 17 Jun 2022 15:53:07 +0200
Message-ID: <2037952.ni6AN7iZ1R@prime>
In-Reply-To: <3826484.QQW5a1qdB9@ripper>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <049201d88226$14ca9ae0$3e5fd0a0$@creonexsystems.com> <3826484.QQW5a1qdB9@ripper>

On Friday, June 17, 2022 10:45:48 AM CEST Sven Eckelmann wrote:
> On Friday, 17 June 2022 10:41:46 CEST cchien@creonexsystems.com wrote:
> [...]
> 
> > We would like to use batman with a custom radio and are trying to figure
> > out what part of the source code we may need to modify to allow batman to
> > work with a custom radio. Custom radio means that the radio is not a
> > commercial radio, such as wi-fi or Bluetooth.
> batman-adv (especially with the B.A.T.M.A.N. IV algo) only requires that the
> device itself can transport ethernet frames (with proper unicast and
> broadcast behavior). If you need something else then you either need a
> virtual interface which does the translation from $whatever to ethernet
> (and back) - or you need to reimplement the B.A.T.M.A.N. IV/V algorithms
> yourself.

In other words, if your radio comes up as a regular Ethernet interface in 
Linux (like WiFi, for example), then you can easily run batman-adv on top of 
it. If that's not the case, then you can write a driver to present a (virtual) 
interface to the system like Sven suggested.

Cheers,
       Simon
--nextPart5140804.hIKb1v7LjU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAmKsh0MACgkQoSvjmEKS
nqGDXA/+MRM2h8LJxvMWqJe1hWsXSHI/njOZnTQGxV+49lODzZ3QhyrmfuJLP87P
bVmdOTwzCleenBalVvtUm2WwJli2PEVKp1xeYUf6PF4b+e69sot1w1xEty/gCYYu
bge+DlaBJwEMHu/AQYlOAp2rl50gqTRNZN286w2b+WdmCVaVLTkbpHsAvuaeC76h
R7PlSzg9kVV+hc8+CiR+sdb+8xTAUCI3ATygDkFzGa+AXIjbaoc2FBpv/T/Aq0lE
2XBxauqvAlyPr3gFpEKkmuZtTDhWjkWtBtNjWC7UR+4NURurp6dU79T9b0JVD+h+
UGotBDdMmswsKoy8pus64CAebYOD9X/cqVmpQhcBwbh3NuAZtbSPXpbO9T2BPAvW
7o6FI5k5zXbao+10ZbxXv2EjrHPGoctlEUyaMxAbIxAYnr82OHNIday9+xNjUbc0
49ieUF1JiUzyvLDtKk9yBCQEExgEpaN6XnHjpMm/b4905PSEu5wlOOFp7Zd9fuM8
h9ud8JnXVg8mfV2Y9KQ4IBr9T/463+tVrMsfQvxRrJ3y2UBqjkfR2//x0NRUoksM
qV9H/q4ggV6WydkmTtdOr1Zm9DxTHLx0sj5rPH1/MSADoWTUkc3Oya3wajY2Mw64
haDpu971M3PYPVaaLqDQsMYJbXSDFOxHwEtNa7LO4yL2jtsY6B8=
=7eZX
-----END PGP SIGNATURE-----

--nextPart5140804.hIKb1v7LjU--


