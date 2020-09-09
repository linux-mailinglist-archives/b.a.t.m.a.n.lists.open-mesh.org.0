Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C74DB262E2C
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Sep 2020 13:50:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id ABB9A807CA;
	Wed,  9 Sep 2020 13:50:39 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D584180386
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Sep 2020 13:50:37 +0200 (CEST)
Received: from prime.localnet (p4fd577c7.dip0.t-ipconnect.de [79.213.119.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 9C4146206B;
	Wed,  9 Sep 2020 13:50:37 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH maint v2 1/4] batman-adv: mcast/TT: fix wrongly dropped or rerouted packets
Date: Wed, 09 Sep 2020 13:50:37 +0200
Message-ID: <1657805.LVLZ2NAnD4@prime>
In-Reply-To: <20200904182803.8428-2-linus.luessing@c0d3.blue>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue> <20200904182803.8428-2-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2572932.bRomXxpJkB"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599652237;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=w54aD9nf07VU0kane1pRXPC3JdZPe8ahHObsst5UYfw=;
	b=sKFG4tx5QoxxRlTV7nyOp5YMQp08QDMIy7t1CsiTwVulNRX9XcIcZXhIhjbn7FJljjUDr/
	J6nrVtdhwy98eqjY2cHupJIrtbh6VyePMVctxKwGHjHMMdjWgTb2paRjvdIUdyjk66F8Kx
	u4KgEGS5im8XQlpw/P2LCdaxlR+/6S8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599652237; a=rsa-sha256;
	cv=none;
	b=dhexq/qx73/hJeK4b4fegQaTiJW2nOjeAKjfM/gfgwrN/JbByUHnoTmxCRdwERbwDdG5U0
	JHZyWE0b8gaC/ff41QqPexBczfadNw0yWJ5Wqg7sHHJd6nAgVh+q746b0btmEIqH/E/KQQ
	vp5mnSstV7gs6OmSkLS7UvUhOqVOtjU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: KRLS2DHQYRJUOC4Z6WDWIZNLF55HJALR
X-Message-ID-Hash: KRLS2DHQYRJUOC4Z6WDWIZNLF55HJALR
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KRLS2DHQYRJUOC4Z6WDWIZNLF55HJALR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2572932.bRomXxpJkB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday, September 4, 2020 8:28:00 PM CEST Linus L=FCssing wrote:
> The unicast packet rerouting code makes several assumptions. For
> instance it assumes that there is always exactly one destination in the
> TT. This breaks for multicast frames in a unicast packets in several ways:
>=20
> For one thing if there is actually no TT entry and the destination node
> was selected due to the multicast tvlv flags it announced. Then an
> intermediate node will wrongly drop the packet.
>=20
> For another thing if there is a TT entry but the TTVN of this entry is
> newer than the originally addressed destination node: Then the
> intermediate node will wrongly redirect the packet, leading to
> duplicated multicast packets at a multicast listener and missing
> packets at other multicast listeners or multicast routers.
>=20
> Fixing this by not applying the unicast packet rerouting to batman-adv
> unicast packets with a multicast payload. We are not able to detect a
> roaming multicast listener at the moment and will just continue to send
> the multicast frame to both the new and old destination for a while in
> case of such a roaming multicast listener.
>=20
> Fixes: cea194d90b11 ("batman-adv: improved client announcement mechanism")
> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>

Acked-by: Simon Wunderlich <sw@simonwunderlich.de>


--nextPart2572932.bRomXxpJkB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl9YwY0ACgkQoSvjmEKS
nqGM2w/+MeHlxptvgs4bQp3Hlez3xyevGFh/CV6ntSIhPP6Y7m89UgG+EdzmNUmm
36YtacWGd/3sKktG2LsHNUrvXQI/NS+u7o9ttFvND6on2npfru/WRl3H7Rinaat0
g4l9kaLcutxzRdqivVqxVfmwJxBWoRZtNI3B4PonVen59XiUiVEoWJPkvM8rGYrJ
nOF1WziOUkFhsGyeCLL7btqsQUJQkwN7oj2pQa/kdv91CTVvVEsBxZxHdkl32SKR
97Du7i+Bkw5c2mC00CZVql2g5KzusfO4haFDj3ds9h5FXi/c62t6L/jztuLGR+5g
cUDPKcumfyTScM26F5OHFeusTdz7bAeeO91JYf6PpXjJoW9rHwHCI7orUN5w+00O
B7VBHScjWXiKynFGwR/oq+XYlKrX+CuStyZD5TiMon/knTRQuJUvRqfwcDlMfKr8
SZNoVXfszHW0jG+H9kU8pO77z0HoV98ID+rZ1pxBXxwd2IgT+qWWIDP8mhpLXJdi
BMVKAPu8kVRLtJPtkx7u8dEl7k7H6xf6zdabpOB2M79i8YEOnIicaj8leUoP3jgv
enKcP3x5zMWkJoIuQmMH0KeuGWKIjpRNvAKBVP2GdVi74uYoj008KlcRa8veX2jR
s+ihuSPvgZdvIZ00Vy7wE7iUMomMBBFvA/hFUKAFABIrwUO1QU8=
=UdUR
-----END PGP SIGNATURE-----

--nextPart2572932.bRomXxpJkB--


