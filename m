Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D82269F55
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 15 Sep 2020 09:12:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C85178083C;
	Tue, 15 Sep 2020 09:12:06 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 061F38081E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 15 Sep 2020 09:12:04 +0200 (CEST)
Received: from prime.localnet (p200300c5971ebed031fa7ec76579f51d.dip0.t-ipconnect.de [IPv6:2003:c5:971e:bed0:31fa:7ec7:6579:f51d])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id C10F96206B;
	Tue, 15 Sep 2020 09:12:03 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH maint v5 2/3] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from mesh
Date: Tue, 15 Sep 2020 09:12:03 +0200
Message-ID: <2901256.C5W9GFcDfF@prime>
In-Reply-To: <20200914195347.10505-3-linus.luessing@c0d3.blue>
References: <20200914195347.10505-1-linus.luessing@c0d3.blue> <20200914195347.10505-3-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1887178.mNFjkiFxrV"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600153924;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=aJ9C5oKRTMvJWmcrzsdJ8F8W9J24sazJ1KOWfEk3rRQ=;
	b=c/z+U0yh1UCXeef9fykzxGzdDfl1n3f98xrbMTPn1bYk7LiBAUmdLhi0TaIqHvayVF3KCE
	JUs4QnznfwqPxq2U4GdrN0fyNc6v+8R0aQQwj8EQPVPlgTYiWcm2R9XJiWAAxia43vzOfi
	qwhV8YINMAAKHytCIJNUEq4Id/NeHoQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600153924; a=rsa-sha256;
	cv=none;
	b=xOJVgf8u7xnBTNmYkrWIG6tRqSA3uwSazaUYEwIbSc1Dyuqgeh8H0QYbepr4hwkz43Xo1t
	meQom9djA6ztXtnJ1Lz1INsMA4Ift47aYH2b/DI4Y6Ilw2GiDhOdCGH9qrsxCgo99kGEQb
	BCif+tr1DAfircV9WhBWPAnpJC1eyiQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: V2CIKARBQU43JOGA5J77S7LMIO4EWWAN
X-Message-ID-Hash: V2CIKARBQU43JOGA5J77S7LMIO4EWWAN
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/V2CIKARBQU43JOGA5J77S7LMIO4EWWAN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1887178.mNFjkiFxrV
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday, September 14, 2020 9:53:46 PM CEST Linus L=FCssing wrote:
> Scenario:
> * Multicast frame send from mesh to a BLA backbone (multiple nodes
>   with their bat0 bridged together, with BLA enabled)
>=20
> Issue:
> * BLA backbone nodes receive the frame multiple times on bat0,
>   once from mesh->bat0 and once from each backbone_gw from LAN
>=20
> For unicast, a node will send only to the best backbone gateway
> according to the TQ. However for multicast we currently cannot determine
> if multiple destination nodes share the same backbone if they don't share
> the same backbone with us. So we need to keep sending the unicasts to
> all backbone gateways and let the backbone gateways decide which one
> will forward the frame. We can use the CLAIM mechanism to make this
> decision.
>=20
> One catch: The batman-adv gateway feature for DHCP packets potentially
> sends multicast packets in the same batman-adv unicast header as the
> multicast optimizations code. And we are not allowed to drop those even
> if we did not claim the source address of the sender, as for such
> packets there is only this one multicast-in-unicast packet.
>=20
> How can we distinguish the two cases?
>=20
> The gateway feature uses a batman-adv unicast 4 address header. While
> the multicast-to-unicasts feature uses a simple, 3 address batman-adv
> unicast header. So let's use this to distinguish.
>=20
> Fixes: e32470167379 ("batman-adv: check incoming packet type for bla")
> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>

Acked-by: Simon Wunderlich <sw@simonwunderlich.de>
--nextPart1887178.mNFjkiFxrV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl9gaUMACgkQoSvjmEKS
nqFepBAAhxVydYr8OEZIQYTUGgrNom7gdBmh6mK3u/Y31I4vvaxl8EZ/mMyWZrt2
d2pSmFRtl00Dgid1wRAFOyNdDQ3xbexFwHadYYVr6lrp8cCXqQOI4R4wJsZuyqL6
bG3fIM6cTee7umVLO1F0fgOoKQ8OV2hjXTQrcCKynbfFs4xImAlOz+HCETLJYD/X
HBIUiIHMlhULq2eG+dBgLP6BcfG6VyPKnheHLanicnChKdF33XrIyBLld0DqqgI+
w0iqwjBAuphhV04KPGqzSJpFo9kKQsEufFyXittYdIBqlZwT3OE2IiAgMhyPGnSN
YE8Sf+DTTQ4M8c7/c72/NkgoNIQ8X1jG7t1pLcJX/fT4yszJks0K+NeJ5xGqvG8Z
VBUXAJreRMhCK/9jEDbjNwlH9/vGSIEufMfZfttGH4iJRzhgt8GIQnkBUlIO6mjP
F27xIlT98uVIItCQ/lhOmcTlYzH3duUdq0NgQbvgc/bul8+WYW9aGfRsxRzG+X52
h0xIdMQ2pLj/gZa/qwQHRViaoPrRxxSnQ7GMqs3dsujbAnZXkjKMGKwdT4ou8aRy
a1Udn4pI97bdDoqtKLKuYE6iLe8oHbsC/Q3FthukbJM8qfUpgzjchhLZhuMA8w8H
WG/awS90+ZMe5eNFwa7cGK6Us+oERdhM6/h5M51UAEMaMk2Zooo=
=5lyE
-----END PGP SIGNATURE-----

--nextPart1887178.mNFjkiFxrV--


