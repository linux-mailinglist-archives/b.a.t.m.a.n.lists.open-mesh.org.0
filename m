Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF2126616E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 16:44:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0D8C180803;
	Fri, 11 Sep 2020 16:44:18 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 012668061E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 16:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1599835455;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LklRZbSC2P8saUmzF3uScGNuIfAt8FQ3ZNORjktC8cI=;
	b=J1z1XakUc+LlU/7rJbLNYYWN2sSxdCHl+OH/i5Bwt6p/AwCLri1rLqbhgyBaib8NDM4CSY
	v1TA4XcqKiChBMY/eAmJu47hGU1nB00SUgW96CkGPxPlU5A5SwbVCsWvq1cbvGLGKikqEz
	2YVrfZb7QMV9BeYvnM1v/PBT5sme3t0=
From: Sven Eckelmann <sven@narfation.org>
To: Alessandro Bolletta <abolletta@netter.io>
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
Date: Fri, 11 Sep 2020 16:44:12 +0200
Message-ID: <1727935.Via860KpMA@sven-edge>
In-Reply-To: <CADJ1cURdGjW=q91qFw8vCBs38pAPnBp9=e5qS1WgzV7w06Onwg@mail.gmail.com>
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com> <4337705.76P5Ur0oAU@sven-edge> <CADJ1cURdGjW=q91qFw8vCBs38pAPnBp9=e5qS1WgzV7w06Onwg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2061105.moFrvGhGHW"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599835456;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=LklRZbSC2P8saUmzF3uScGNuIfAt8FQ3ZNORjktC8cI=;
	b=YbPucQdX5g+0cGTjcrMGmo4/eGp//7BBV0ZI23+h6P9nVkFwCD6yekmiytC9jkvRpqi4c6
	yc2NLUc0GfvS6l5t+KAsB/zlWfZWvm+LdFuJyjl9PCJA2Luw2kZct2bJGDDFatndfKVx+L
	jrj4hnOwaUePoz5V8flb0eYvAJq5jr0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599835456; a=rsa-sha256;
	cv=none;
	b=rywvE+MemwBSmLNwjBY50Mva/7zavdRf21j97gg00iyRiURJvmNhZx4hmDUhJcgdw3sfWY
	MWqzf460ESqMFqS4WNaGjsvZBkeCac2s/TVgiQfZOTSQa2CHkeQ+Xfb9apIsKdbfWdZ+tx
	WiTWFl8AAfsYU9IxluYtbHNGjCOaju0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=J1z1XakU;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: JKGSYGFYUK5WOR63K3USIEOUFPEVFSMI
X-Message-ID-Hash: JKGSYGFYUK5WOR63K3USIEOUFPEVFSMI
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JKGSYGFYUK5WOR63K3USIEOUFPEVFSMI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2061105.moFrvGhGHW
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 11 September 2020 16:42:52 CEST Alessandro Bolletta wrote:
> I'm sorry for being not so clear in my statements. You can read my
> last "refactored" mail, which is easier to understand:
> 
> Should I must only rely to the related 802.1q interface (eg. bat0.1)

I already fail to parse this first sentence. I will not continue with this 
discussion.

Kind regards,
	Sven
--nextPart2061105.moFrvGhGHW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9bjTwACgkQXYcKB8Em
e0Zp1g/8CyLg9vHDCQnxnPsEDqMg3owbi5p+IAvI8/c14sqy9ZNnTguCBnBbRxhY
a7wHGqghKM8DcF9FZr4z/K2pBjiSx9tZ5nprVsysosVKOHhNKvNSscVIc2h/cNys
dlayLCdqShbkT/mYzreO8PIr65Eps4i1cVnfA2pfnHjop2O7OHR7OEDe4/58lMFM
LKqx83onLVlZM0E8wg90ITeGupOwS7yuEnJ86tLJ4Gx932te+y3bWj3SWM/2vjP1
6ehkpjFWQ8VT5OjxPvTFKgbD4QSPrg2w0H7/R9lBjK9YavAKbTT+jeKlJReVHuiW
SBTpQ2K6qORpuRlU9Tbb8hcDaMQgjxKjAkbEz+U+YsnKFOAUOudB8opAOAHKN76F
GzvTy1Y2fYMT68EGVSSwUTmYxFBQ+1wiyrVS266tGMppBT4S/rUAKJzepwUhaMzs
bBGrCvY8Sg0LqLVDoBdis51r7941tASua1LdsCqjHJTko92bd6eN/0PqP9TslfS+
2a1BaX4hzN3P6qES6L1t7Bkgdw+p3qV1Lsi5IzF741cvXiIlJezF4c7vkBVGsYrA
MLXVMmwQ9GIkGVvAbdXaMl3/JN72NuMueuUqRh+Yyfh+tvPPdclFddSFcbTowx0B
KumpAN9h5CG08AZ3TNY/lAENuhg41OR97cnDiK+9UA0kgqCVxtw=
=cANi
-----END PGP SIGNATURE-----

--nextPart2061105.moFrvGhGHW--


