Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C4421B2A4
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2020 11:48:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E410B80F63;
	Fri, 10 Jul 2020 11:48:10 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B3D3980097
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Jul 2020 11:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1594374488;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BOHYaqTfo+9AZnWjnPol2rPG71FOTxU/DkdVEwgMuLU=;
	b=o7hWZQTCzHZDxbjYPYGvpaPxGbvOd7u0IVKLhJgXhhWvyxixNaQ7kFVf3zDxm//id4cdh6
	h1q8jwxYSJAplNIwyJQ2UBnE4F5R+0A7YaKy6TrCysjYn7d+fT4Yim1Le1jmrarUG+iKbk
	TUr5kWUUkpvETNVjenlmVdnr3sATbbY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Maksim Iushchenko <maxim.yuschenko1@gmail.com>
Subject: Re: Batman-adv TTL value
Date: Fri, 10 Jul 2020 11:48:05 +0200
Message-ID: <1836851.Vk5ASu7fO2@ripper>
In-Reply-To: <CADSehqO4YiKBKQJs0KWBdefWo3D1rNgMz2buGN2aQAXyZpZzNg@mail.gmail.com>
References: <CADSehqO4YiKBKQJs0KWBdefWo3D1rNgMz2buGN2aQAXyZpZzNg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart113888128.p3AWP2ICfS"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1594374488;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BOHYaqTfo+9AZnWjnPol2rPG71FOTxU/DkdVEwgMuLU=;
	b=KB9tiNwTA/1HOi0Kwp17QbT1atGuK8j6PlUSM/d7Zz2pttuNP8hFfgY2qMAT+9cZoYxVMf
	c/Q2udMVd8j/3Foo2LDpr3taZsFmoOCuGyLKOfVbiylOvx/q1Lo4bWfXKXj4WGnPoMHhYs
	1/FsQTUOTPAw6TieNCUNnw2CLbOb60M=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1594374488; a=rsa-sha256;
	cv=none;
	b=DcLFCdz83ZuIGuOtSXGSzMbjJoeJox+O0CVDMWuo4dLCO8c3taar3t/j7JhungDoFXfOUP
	mbbiJ9CyGo7mAm1pPeFCLNr5LgFeOV3sZATA2g8khii+SV9e+fSCOYMG99THEljFKaeiq+
	HxQOCgmCXPY2gIujTuVcKrUXDh39mgs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=o7hWZQTC;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: DZNTZGI233I5PC2WNNNCCIPNLS3DV2GV
X-Message-ID-Hash: DZNTZGI233I5PC2WNNNCCIPNLS3DV2GV
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DZNTZGI233I5PC2WNNNCCIPNLS3DV2GV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart113888128.p3AWP2ICfS
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 10 July 2020 11:29:08 CEST Maksim Iushchenko wrote:
> batman-adv messages contain TTL value in batman header. So,
> 1. What is default TTL batman-adv uses?

50 [1]

> 2. Is it possible to set my own TTL value for each batman-adv packet?

No

Kind regards,
	Sven

[1] https://git.open-mesh.org/batman-adv.git/blob/921f23df8a26fa49f12f58dd8409f56e2b89e7d5:/net/batman-adv/main.h#l26
--nextPart113888128.p3AWP2ICfS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl8IOVUACgkQXYcKB8Em
e0ZOzhAAgCbA7gf4LjmAcj5EPQK/fNBu8aAekJ2bXocKNmmIlohKeGbEqBVfiRvJ
KQZTMa1CDOsIqLY3wtwZUEV8r7SBIOKTx3PZx9LpT4QYUjhIND+zLUNBgBvoCxlY
bfHimshKuzx7vG1OZ5OijFDfaTaeKDda/ecj6hPtQ7bvdaL2r1KZvjDLJtoiSzoO
tzGJ4m6tHrbSNvK+/3nCs1DMDmcDqEZWaSxiMxPs2tr7TjIPqe4rKBkAtHoVz6I8
xyOrxenj/5WdS4UG08f7hPf7YPs1SyokURm4uYHJA197VnWmv4ZUrBqk9MeEsBri
i7gwVrBhbu6ewBK5HDuwOihl8pGAHjCiIQY36mhnPeGZalvjoNgWKQcaOKzgxOt5
JNDD+YdP/8RtsAi6/X+oFdCKXn/TQ55cSjLHg/8ErXFKeq//J6CxdXAbQXvW6qbs
ynuTWi4NrQ1qPX8zC/S15LGuE4ll1QlxFhaujeGzhv3V04FXYnGUZKCnWg7vVGuO
wgF5P/+FLUcHwJ+Qx7FiTyJdMaBD/dvACuxpsOrVV4JV6643gnatjI99NzpUDLHi
p2ar6sSBkZxz0cjm9af0xUcRkrz9aSerHVfRFjlLaBcQ2cv+ybPzuNI/pqO658h4
1Ik50iakEY03EVCLuU1FrATtnQJBlfSu2b9zQblQc4TN5GTOo4M=
=8PVG
-----END PGP SIGNATURE-----

--nextPart113888128.p3AWP2ICfS--


