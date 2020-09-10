Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 07836264232
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 10 Sep 2020 11:34:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E67178070B;
	Thu, 10 Sep 2020 11:34:27 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id AC12D806CC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 10 Sep 2020 11:34:25 +0200 (CEST)
Received: from prime.localnet (p4fd5757f.dip0.t-ipconnect.de [79.213.117.127])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 6B3356206B;
	Thu, 10 Sep 2020 11:34:25 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH maint v2 3/4] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from mesh
Date: Thu, 10 Sep 2020 11:34:24 +0200
Message-ID: <1876602.pz3MLid8rM@prime>
In-Reply-To: <20200909145357.GB2391@otheros>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue> <2973088.WcO1NEu1zB@prime> <20200909145357.GB2391@otheros>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart15385405.xT5Lyqm7BY"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599730465;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7amgPhVMMKHjeeZc4JlPh1n5Y99PAHRVl3T6xOWkkJg=;
	b=ha8j4lJr4QHktg8NGB/phfT8TKuD+2t5/OGD6MuCeVND/084sNj416gxjDrlVQ6cAoIqAY
	muqVvOsWODzDMmSnp7St32IXG+RaArkEc3sOHbw6Du/6uxmRnQWEESJlUxaWlapz/beXo9
	bUGYj13GXtfzeZwnSV3r+sdBYx8uTxA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599730465; a=rsa-sha256;
	cv=none;
	b=yf/gHbHW7srDaE32OTI7gibMnuwv9wjSy2ykASrBvnc4bR5+OqCclCyoVBocwvr+Fn81fx
	ASUx3K5SsM8NVscT4JYf+ArxXKvJGUEs+DxBDYrnno905ssoR7MEGf5vWAglYu21/65udO
	3GD0pOqfpTWyB7BjAIAkGSy/AIuiAYM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: ZSHNRP3RO3RQO42YJVHOWDO5V7YCUT3Y
X-Message-ID-Hash: ZSHNRP3RO3RQO42YJVHOWDO5V7YCUT3Y
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZSHNRP3RO3RQO42YJVHOWDO5V7YCUT3Y/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart15385405.xT5Lyqm7BY
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday, September 9, 2020 4:53:57 PM CEST Linus L=FCssing wrote:
> The 3rd one should be different. Note that "is_bcast" is not the same as
> is_broadcast_ether_addr(ethhdr->h_dest). The former refers to the
> batman-adv packet header, while the latter refers to the
> destination MAC of the inner ethernet header.

Oh right, one is is_multicast() and the other one is_broadcast().

This part definitely needs either some comment or, even better, split into=
=20
multiple conditions checks or a helper function which makes it clear.

I've stared on this for a couple of minutes, but we should be able to revie=
w=20
that kind of code faster. Maybe it's just me, but I think this can be=20
improved. :P

Cheers,
       Simon

--nextPart15385405.xT5Lyqm7BY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl9Z8yAACgkQoSvjmEKS
nqGqXg//T0qCOBhh1njNw6xxMC0RSnTE2DhY68Yp1RHsQ+Di3m5JVqwBcL/Mnlp/
uj35/tA7ZAtSq4YscEYcyA29A/qnhvuEcVmqLOee8w75xAHA86ynVnFk28NYSMlB
L7c/Y/HXMuI1Kbh+Q5gDe5b+gOX1d4Pij4/tA/tKLStIK2eN3XoXAuhEQ9kavwWO
lIUJEC2/Hc2r7GyXSze3zc470kWKRvogCcuTxElUtlblG5n64AwigSdae8KI4GXi
XN0A7UAIwC2jO0rbQoFX7ONZbeRMdMk6Qhl4onodaUuVl8v00VmaACqi97OHFdtx
evGFqOBsC6tJum4h1GNwaYDwcTtQrKbPl67RZozYKMpFDDut8T929Hb6J6jDJjC9
ftmCkK3H2vwlfHhSCHSXCDSv5Wl8uR26VNC4lcRzhPbEoxuA4pIdoenjaK6ntApc
F6Bqyy0qzxi7HSsIhF/1Bh5DSWK/VXqf4Z9sNoOnwV1W+5Q4eQuh8UZMFMrAtgTc
xlRMnp0OzUmu0nm51LV3kNvjYX9WVhJsrnkYSxBTpaUxFhTbZBjykAni1hNL9+JW
E3hWKSl4hQ2OdUC8BUX52fB4rOiK1hNbzFZcIzYqvf/Xo7XsVK5R9zzNprXken73
BOy8CQu21CNEQykqPSENv60qZWkoa4wFkb2r6Ft0OePHQF4NoKs=
=ucY9
-----END PGP SIGNATURE-----

--nextPart15385405.xT5Lyqm7BY--


