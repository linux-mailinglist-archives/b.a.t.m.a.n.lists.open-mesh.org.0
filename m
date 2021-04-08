Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 207AF358576
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  8 Apr 2021 16:00:38 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D3CEA8121A;
	Thu,  8 Apr 2021 16:00:36 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A2F018019A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Apr 2021 16:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1617890434;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9800q4a3jZV94dCABr7ji9vmTxCvZKw+duTXws58BXQ=;
	b=N6b6za+zMvKwSV6Cr0Ua2spejXDT7ABOE/aw0JXcfdlyBS+j5uAwr66lY+UgWWqVBMkHCZ
	1KnI3iudeSQJJGlK0UCNgGMmhwrusjMBFLGR1LsV8xNBpqzM+D2D5BY1KtRxg5Fx/PstDd
	DuNT7REY8n1TdqBv3P5FLoYCg8veEuE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Batman-adv On Raspberry Pi Zero
Date: Thu, 08 Apr 2021 16:00:25 +0200
Message-ID: <2330760.6cGzkY6KVC@ripper>
In-Reply-To: <20210408134330.1234.53011@diktynna.open-mesh.org>
References: <20210408134330.1234.53011@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart24306713.peh82CmNTL"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=N6b6za+z;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617890434; a=rsa-sha256;
	cv=none;
	b=HZ73ttSkxX/zG1/gfGJA25oAtqp0I3a0oVnqlhZsrT7UWIOqgGk+Z3PSOQHa50ko5+whkw
	ERp8UhnJUVpxkfrLYwfA5MIofgtW4BKuBt9Zv2jhTARdWawiZ7qqi7ZxDw2d3NlCsDA7K+
	J5POPbuQrcz/iBvROV81rBZgSPy/jvU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617890434;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=9800q4a3jZV94dCABr7ji9vmTxCvZKw+duTXws58BXQ=;
	b=co/1Ojtc3xmICSgvqb4Lgvc5CGMlNi7hfusCi+Pau6ihMFbe32ya7tuRjsffXaA3tU/XRU
	VyLKilNQODn+c1MILuWdBCHcZrIV0gusPhsHrSHsGlJkWoyzTdCwpa080s0RwEHxoadlJT
	4CT6itrAUSeEF6qWtC64Bynbz6Ear/E=
Message-ID-Hash: LLNCDNL2FJB4VUVZ7B3NIMGMBBQQXNUX
X-Message-ID-Hash: LLNCDNL2FJB4VUVZ7B3NIMGMBBQQXNUX
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: giuseppedv@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LLNCDNL2FJB4VUVZ7B3NIMGMBBQQXNUX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart24306713.peh82CmNTL
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: giuseppedv@gmail.com
Subject: Re: Batman-adv On Raspberry Pi Zero
Date: Thu, 08 Apr 2021 16:00:25 +0200
Message-ID: <2330760.6cGzkY6KVC@ripper>
In-Reply-To: <20210408134330.1234.53011@diktynna.open-mesh.org>
References: <20210408134330.1234.53011@diktynna.open-mesh.org>

On Thursday, 8 April 2021 15:43:30 CEST giuseppedv@gmail.com wrote:
>     batctl if
>     wlan0: <error reading status>
>
> Anyone experienced the same issues?

Make sure you've updated batctl to the most recent version. For example from 
Debian backports. Otherwise batctl might try to read the status information 
from sysfs - which is no longer supported by the newest batman-adv releases.

Kind regards,
	Sven
--nextPart24306713.peh82CmNTL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmBvDHkACgkQXYcKB8Em
e0aEoA/+P0mX69VFGIG4Vnnid0+4x7c3mrJzyuB7WcbG5OyyRQxyCQua9K2Z45Dz
ZQLkT8B7xOMSc2rpohxFFOBt56IhZl+Yh2r2hOL8cEUfKST0knOzO4r4YEuweqG2
SAzLFqt9PiX/FGWT35evhicatgaaLwX0XXUrNfWFNfl/h9tVCjB3BwFIczl2GVPH
icJ+4e06OCjFmsttZwgx8tiUGwL1xACUTivfPPOfRE2+0cIQDerNNX38vK04QEPp
XGU5xcEx/6Wi1QMiWLj5bka3xbJLovhom2DZiqTtz7g0zH5OOgpg04FzYvvu8PsE
bQCxQ1r2Pt3Kk+I2licBE/iveV3BZW5rZvTWsGlTnqNlEJQ8b3rgzG6kxTYCEvOy
LGGPzb/fBdSFFaUBsvChgPDx4o0V1BWe9/AI8ru+xXUShNCnI2tG/u9wfhZxgfK9
laLnSQm+JA+MHoeq1XAw4aa2uABcjcsPYYQEeS1xnNwYZUmhLdqv7NGAIlv9GzRn
VjgRxq3xrrpKhhYeQlpnX1g3NII1RGl7smmX4BnnhaU5HXV6Lnk1drcxVvxJwOsp
k6/9S4GeeFHZOk3s+sn4oFTv05jlOj2z3E2wiRAcHUWD/v2ziWsR0kmCd3U5wdzK
l1xyivrPmTeK7TXRh/Myt1ubtzGQJi7arB29waGBnsrMK3ThUUs=
=4vzJ
-----END PGP SIGNATURE-----

--nextPart24306713.peh82CmNTL--


