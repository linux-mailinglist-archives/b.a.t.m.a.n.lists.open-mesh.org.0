Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C3D1E0FBB
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 15:46:02 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 644DC8064F;
	Mon, 25 May 2020 15:46:01 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4832C80244
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 15:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1590414357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fUz/nOCCQwAlGxK00AJb11xNG9ATe2ITKAnFJXbJmMM=;
	b=m9soo7pFDDmDVWpz36tOx9gz4TyYQoyv6Vqy95MPZAdYYx95aoIq0E0n7NE6bTYTLfgMkd
	rsJd3+BJmXs5l1VqkHpM5zunCz0YCROv8mLb5d7xeYigN8RWo2fG/LY2Z1ZkCH1yuOgddM
	ZTbBwsi8H1hGaPTtZr/K1l9VpqZQa5w=
From: Sven Eckelmann <sven@narfation.org>
To: Daniel Ghansah <smartwires@gmail.com>
Subject: Re: Network stops passing traffic randomly
Date: Mon, 25 May 2020 15:45:55 +0200
Message-ID: <2230073.iNTqy5gN2v@bentobox>
In-Reply-To: <CAL3ir7+RWLrYOzjNQh1VwiKg1sxSgHZMwwqx=9xSfXFnFjE_KQ@mail.gmail.com>
References: <20200525083512.832.13419@diktynna.open-mesh.org> <32459667.Id32LJz2i1@bentobox> <CAL3ir7+RWLrYOzjNQh1VwiKg1sxSgHZMwwqx=9xSfXFnFjE_KQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart10397467.7FXaOZt9hp"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590414358;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=fUz/nOCCQwAlGxK00AJb11xNG9ATe2ITKAnFJXbJmMM=;
	b=l+JEQpkYdFkZiLvLFpKp8/xwa0UjwTgEmnmtRflu0kHAwvxEg6P5WP/eW0CLXA8M+AOd7j
	fm2v8G5OegMVgCSqRyADRALy241uesutcp99IOmGyWSVVTJxi32RC0et0t0pB/vfEWPFxL
	xPkm5mCRp9Lr6321Xu4yBCopdDSzqBs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590414358; a=rsa-sha256;
	cv=none;
	b=PY46meXkdzuLftTikjuy4sJdQoCNU1+GIbrUJ6s9FPqmJpu3lPtJrhPioIOuqclWwBEVZK
	Q7KV3XUi4kmW3DdcFlq6EImcYdHZ3JmusgTbRiN96kc4hAZC8vh1kE+e8xSRRm5hsRdQqG
	5X7VEnXgqM5lY8i+GySMwXRWEUTz6fE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=m9soo7pF;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: BESMG6BF5MQ6E4XM4P6GTIGYFKRHRDRG
X-Message-ID-Hash: BESMG6BF5MQ6E4XM4P6GTIGYFKRHRDRG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BESMG6BF5MQ6E4XM4P6GTIGYFKRHRDRG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart10397467.7FXaOZt9hp
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 25 May 2020 15:19:22 CEST Daniel Ghansah wrote:
> [B.A.T.M.A.N. adv openwrt-2018.1-5, MainIF/MAC: mesh0/e8:5b:b7:00:10:73

Just noticed another thing - why is your revision of batman-adv so low? The 
OpenWrt 18.06.x version of batman-adv is already at 2018.1-11.

Kind regards,
	Sven
--nextPart10397467.7FXaOZt9hp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7LzBMACgkQXYcKB8Em
e0YQjg//dyyplxEg3sM5wLmKMI6+kBZxggOopGHnph4WB90yGODeHpl98ZPPX+qt
+K47amdttirl1jeFLCNMS3Wj89FPOzekseRJJxOIe3gLUEcHcmCG46308nvFS7pi
GMECcMGHsOS3R/kJRBBwsEz0kCy6hbOPzTKpRw/L2mkQ/ClGwAXhW9EETwGuS/M/
o3Mqqy4PkEPQxNhIFaFXMrPNXgB4EO9T/ywMwax99JKYguyEjgTLDxGc7QWUwHL6
89660sH9OUNXxhsZwE8UaPcAe6kPgyoDL8ry1EQAw17iEXPPoc1aHjaEI4OGJJhK
BRXLDmLiGuHQk1m09ZvubU8iA5m5DxziqpNex4KHYYxGATX4DcMNvRyAPCDM5wVs
PYluoNe5xvU2fFFGmb6Kp+eUFwjLYq4oaHchs7SbBKplFxJlvgczBClKpR5nD0jW
WMSY/+dCmM7x2kI4eh0yK2O8s9S7wiz8ZdsMUvVvFOdqQ9KyOlZiD63dXlM7gbWv
PdT9f5c8BlUDVW7vO+tfbIYbxisSPDSY0XRg4JKk8XJN36y/FsAfvaBg+ljfCX5M
F4WOqa7QhZasvWOqrnyD5PeiHrVYP7kLhek7dSlhaRMlFoXWxCPAzc1wh526AtOx
iWLi26vJFr1V+pKCNZc8wunYxxJTxxU62z0Y77reMEgxciCDpuc=
=pTKv
-----END PGP SIGNATURE-----

--nextPart10397467.7FXaOZt9hp--


