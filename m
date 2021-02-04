Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0114330ED90
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Feb 2021 08:41:41 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D5E7A83AFF;
	Thu,  4 Feb 2021 08:41:39 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E01D480421
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Feb 2021 08:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1612424496;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=G8fxAye0RXSpCFcWu/4DcBtwUbbvF2pEmgEMXyW4YF0=;
	b=NwRKlCjBe/IY00raVpJA0mkhgDftqrONbBgXDjL71YHyTk6oNzq8DUxB3d3afbHRGa6RjW
	K943sfAqJLSxewW80ahBmbCraLw4s9Mgxw8f524PSJL6gRmK4i1QZOz5F3P51VF75c2roQ
	qQrdj0Q2HASk3szVjtXGvZcK5vJMZus=
From: Sven Eckelmann <sven@narfation.org>
To: Simon Wunderlich <sw@simonwunderlich.de>, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 1/4] batman-adv: Start new development cycle
Date: Thu, 04 Feb 2021 08:41:24 +0100
Message-ID: <2833533.ujcMDckppk@ripper>
In-Reply-To: <20210203163302.13e8a2a7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210202174037.7081-1-sw@simonwunderlich.de> <20210202174037.7081-2-sw@simonwunderlich.de> <20210203163302.13e8a2a7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3413650.uM9juBY1BO"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612424497; a=rsa-sha256;
	cv=none;
	b=Ic40+PrWcaox/yWPwn4FaMXy1+QNLmONQJXWIeo3F0AbI2qhuQ6O2FbuKN7/7hjsl73i2a
	+TuZq9fcHGa6NLK31vrkz8au8aCwEiJ9FGs5k7+jHvpxObaETAgcoGyuv5sXyt0LdAvW4I
	oyOkRmKPQF3SM+27JqamDbKw4kI5m1M=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=NwRKlCjB;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612424497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=G8fxAye0RXSpCFcWu/4DcBtwUbbvF2pEmgEMXyW4YF0=;
	b=P7yubtM7iC6+OGfm2IrKHfCrgq6frNLP6Zjn0n6KWbpfH8+Z0fv857mKHlTspteLDYcLto
	NEkr3QNlaPBG0qsyy3crx+4VQh74h+heKfM6CWlVKVCgzhqv0U54/zcCO1eF/tjoVl7tZO
	lLlQ50Y2LGEYQbDAWUdDH2PPWhBHz10=
Message-ID-Hash: ZEDCIG5BEJEBMVPREABJXUBZIPE2XL4Q
X-Message-ID-Hash: ZEDCIG5BEJEBMVPREABJXUBZIPE2XL4Q
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZEDCIG5BEJEBMVPREABJXUBZIPE2XL4Q/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3413650.uM9juBY1BO
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Simon Wunderlich <sw@simonwunderlich.de>, b.a.t.m.a.n@lists.open-mesh.org
Cc: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH 1/4] batman-adv: Start new development cycle
Date: Thu, 04 Feb 2021 08:41:24 +0100
Message-ID: <2833533.ujcMDckppk@ripper>
In-Reply-To: <20210203163302.13e8a2a7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210202174037.7081-1-sw@simonwunderlich.de> <20210202174037.7081-2-sw@simonwunderlich.de> <20210203163302.13e8a2a7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>

On Thursday, 4 February 2021 01:33:02 CET Jakub Kicinski wrote:
[...]
> For just comment adjustments and the sizeof() change?

The process is basically:

1. update the version information for a development period
2. queue up whatever comes in during that time
3. send it to netdev for net-next when it seems to be ready

The first step is not influenced by the 2.+3. step. So the development 
effort is not reflected in the version number.

Kind regards,
	Sven
--nextPart3413650.uM9juBY1BO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmAbpSQACgkQXYcKB8Em
e0aJQA/6A1TAaQ5N2HfD9Y0+CLbPpq7IREDN0a7qQiX8AIbFkaC9MQa8szAY/BEt
y0n4g7umhcBs+RT78lgqocXQc7HWDjeVwM5EFqR3FaAH6fWpDOtOTSsiNIP66QIe
97JeoZaZrchTIC5we6gG2NTlQqzj2Al0AzWpFq9UR+UPKHhrT7CHr7lZ8Qx1tZPU
fkVIPDr2cdK0Z5WoPf+cVo6EsBdPHNqBtU3pNnJ/BwWJgHGM2ABQMMfLWJMmVtvs
koiulH8k3dfrcHDxbaIzma2pwyB3JqZ8OKqPq4cpQ8b1QIvzLndrXVICBKv2wXfK
RVUZwfO4cLT1RuC1FnXUWJRpIcyrirmCxvUXz27SeMOD8SyMke2l3PhaU9Nz6G7P
pSPcZmLTofjVDByZ2NzZrMzneKCEj4z5kW1TvSXqzTBwsVyiWnW96SayE2txGaVE
pLwcCK4larojhyg6zAF1WoeOVPz8zZd9IRXrfQ/0tVD2UzZKJv5x//y5cVV0PvDM
ydPwlq2hJo6rrXG7L0ES5l0oaGEumf0aOLnkguxCNki3p04wuifGWtGq35pTh30c
Moe/4DslMD+H5s0y14UFDP+Kelda2TvMRB7attN2QhoOkPbi+q2Qh4scqOqlL3vr
N3PCY67t5DccynMz9YevRYt6KsFpkksu0r9ONrRgRhCvPJGyv/8=
=4QMF
-----END PGP SIGNATURE-----

--nextPart3413650.uM9juBY1BO--


