Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B1503359BCA
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 Apr 2021 12:17:41 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 72F8180760;
	Fri,  9 Apr 2021 12:17:40 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2145080631
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 Apr 2021 12:17:38 +0200 (CEST)
Received: from prime.localnet (p200300c59710b0e084fe3cba916d2c95.dip0.t-ipconnect.de [IPv6:2003:c5:9710:b0e0:84fe:3cba:916d:2c95])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 4ED1717401E;
	Fri,  9 Apr 2021 12:17:37 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Problems with Multiple Interfaces
Date: Fri, 09 Apr 2021 12:17:36 +0200
Message-ID: <3542676.qYy7ulQ77K@prime>
In-Reply-To: <20210408055629.1234.95039@diktynna.open-mesh.org>
References: <20210408055629.1234.95039@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3270888.Hg29SZht4R"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617963458; a=rsa-sha256;
	cv=none;
	b=acKa++x++JYfp4jZAD6iXdylBKu3DT4zKGAhr+8RwmcErT/ZHeHDxaz37D+OdQPOlOOOWa
	1TKyF3YLbkK4gh7KuzOX3clfM71HfN4mgdyDU1ipqdnARD6EcJ8TVy4EK+REHY4rqEWt/f
	p0ArYSeMkQWiv35E8rrhERTlveuvTNs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617963458;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=E/eFEVqPqnFqOLrTRg7/71cdDf8iOdrDLu6xoCLxN/I=;
	b=oe+wn3bPceUz4PCn6nN2gzp8y3/X5JXJ5GFB6Ismlu3OHvRj5xgKPOlHxH0MEJPsDl61sv
	cmZ15hRCGc9SEpJn30kwcA8kwpGhJHie58aYrSBrfftTBcMOmX6Tm8Bw+lEi3vrZHGXtYm
	Bho8sR//YO8+HNrrfK6++HUkMF7UCV4=
Message-ID-Hash: 7CRZ3FXEQBW64UZ3Y2QT2FSMFOJWGHNJ
X-Message-ID-Hash: 7CRZ3FXEQBW64UZ3Y2QT2FSMFOJWGHNJ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: joe@careyhome.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7CRZ3FXEQBW64UZ3Y2QT2FSMFOJWGHNJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3270888.Hg29SZht4R
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, April 8, 2021 7:56:29 AM CEST joe@careyhome.org wrote:
> Hi Everybody,
> 
> I'm running BATMAN v 2019.2 with ath10k on OpenWRT.  The particular router
> I'm using has two interfaces, 2.4 GHz and 5GHz.  With each router using
> single interface (e.g. 2.4 GHz), it works fine.  When I add a second
> interface (e.g. 5GHz), it sometimes hangs.
> 
> I know that BATMAN is expected to alternate between the two interfaces, but
> that doesn't seem to be working.  As you probably know, using two
> interfaces should dramatically improve throughput if you need to make a hop
> through another mesh node.
> 
> To verify this is the problem, I did a test where I ran three routers,  2.4G
> <> Dual (2.4G & 5G) <> 5G.  I would try to ping between the two routers
> that were using just a single interface.  Obviously, that must hop through
> the dual radio router.  The dual radio router has both interfaces on the
> bat0 master, and batctl reports they're both active.
> 
> The system would sometimes lose link, although batctl would report getting
> neighbor messages.  Even using the batctl ping function doesn't get
> through.  I can see traffic flowing on both the 2.4 GHz and 5GHz
> interfaces.
> 
> I'm happy to provide lots of configuration detail, but I thought I'd start
> with a high level description in case this is a known problem.
> 
> Any assistance is appreciated.  Thank you,
> 
> --Joe

Hi Joe,

I'd expect your setup to work. Could you try to run "batctl ping" between the 
nodes, maybe also on the intermediate links? If you see that it's failing too, 
could you set up some IPv4 addresses (or use IPv6 link local addresses) on 
your ad-hoc/mesh interfaces, and try to ping to the next hop? I suspect that 
something is off with the wifi driver, i.e. broadcasts are still working but 
unicast pings are dropped. 

Cheers,
        Simon
--nextPart3270888.Hg29SZht4R
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAmBwKcAACgkQoSvjmEKS
nqEV+hAAw748ottQmw4bObubfFb0aQmJiAFIKB9Oku7ecSdq7TjneybS//ZysCrW
+HSoqlXl3i8bclnHQ5Y7nJICK6imakfk8rvs3v2DploNdyuXJblR8W7tfJ6Haona
SSDFfkCjPEkIXBvI4pQF0PEW82J42vnXNAZnHsa1lEbeJqHtJKFkvj5cbz4Y1VVf
UWWlHnw+xDUOrIepiOD8Z3trYDsKYscp766PZ3hZ6E8c8xPvyQNyFEZu5t0Sgb7k
r6xW7z9KRfifvxlNh++pW4QKR6irxBzfvOeCpgRDekLR5sUU+LygGBvgf1UIVTXP
4M5wcS88YqG8SfRPFfZsTfHc2ZfpUrG7jFG889gdPAU+ge1hW9viE7kFGantDj7k
8l7aT5fYV6pN06pBjXgPC+xNTf7tK5uL0FuvHC+Nc95KdiCrsOzrYSbivEBujHXe
scNqVFUjzyt3xbHb0CkHBfHxuNUG4hB6NsCLbxXL+xT7jZ7V/lOh4utUIoX8yE4L
lts3x3e2why3iqQKPQ7yDvVMlds/0r9LPx1tIMtlyBkEginBtEHKgpSQCSZdrWEP
aHYjm/tmvbiaedKKYIXe20xt0XCMbxHwAoXjk+OKIjaagHd0EqTkNX2AYMO0/Mi6
UUpdqeyPVDj+ZOUyYzHbwg7MfU05oaf9OpHoOhzL+pmhrewHuyg=
=nQ4K
-----END PGP SIGNATURE-----

--nextPart3270888.Hg29SZht4R--


