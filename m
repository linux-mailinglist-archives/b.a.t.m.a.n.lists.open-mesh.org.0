Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 178BE27D7F5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 29 Sep 2020 22:22:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E993E802F5;
	Tue, 29 Sep 2020 22:22:24 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 813D980092
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Sep 2020 22:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1601410942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=p1b52u8pNTd74kdiu0EtUFje4oOhu+tzN3qYOfvT9yA=;
	b=qiAvnBNh3RWSi5hLQEpNHzvR3oeoOIZ3BNJaSNCQKD7gzax8zcs0/3XYudZLmUzIv94rgC
	b3PPFXrvY1mE4RcEMVQs7X6tkpHnLj4skHdCw8G9dUmh/S122dbnxFgrMT02Froau7NEVb
	k1sqMfzYlh0ls1SzeqUv/uFcVrumb1w=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Does batman choose DHCP server by random?
Date: Tue, 29 Sep 2020 22:22:12 +0200
Message-ID: <5095353.evS3lK4dNX@sven-edge>
In-Reply-To: <998e8a9b-e0c6-babb-0b45-5fb3fb657a32@kkk-web.de>
References: <5e4c619d-bdb1-2fa7-57cc-e5d71ea13f08@kkk-web.de> <88928628.8v8VXxemU5@ripper> <998e8a9b-e0c6-babb-0b45-5fb3fb657a32@kkk-web.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2132583.DS14mmBGYa"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601410942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=p1b52u8pNTd74kdiu0EtUFje4oOhu+tzN3qYOfvT9yA=;
	b=JQeA7IKPYK0et4e28l/BBHUYVrj3GKVt06aV5WqAyhM2af/M85B6jr/pZ9iKf+PGpZvQir
	11lZY3jiwaayo4vf+r6aE9GYdDeXKyRDeInn9lftyUA1hw8mtyBx5UEDuOD0/rhlce5UvN
	xLvtWSXKhWqx6iOmaiE3FTdqeAF23eE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601410942; a=rsa-sha256;
	cv=none;
	b=kemS7YAt+rzuJJ6nvuLBbb5oL5ptRD5B6ah6EHBzS6RaTLAU4E38mCuboiGMP/3/Rqig+2
	INW2P7T4KkiK5WOL6kSZV60NC4CuZaGXw0ZZRNi9CeS11xrJiscjadjmH5ra81vC5+DwPZ
	JHwL81OoMgAf2DCHaK9h9P9K18gmssc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=qiAvnBNh;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 2KD4U5OCYXIKA6YFN2R3N7WHNFGMZNIG
X-Message-ID-Hash: 2KD4U5OCYXIKA6YFN2R3N7WHNFGMZNIG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: MK <mailing.m1@kkk-web.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2KD4U5OCYXIKA6YFN2R3N7WHNFGMZNIG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2132583.DS14mmBGYa
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 29 September 2020 22:04:58 CEST MK wrote:
[...]
> Client:
> https://github.com/ffulm/firmware/blob/ec1d061e20557662dd8c7fc75dc603fee9bf77e0/files/etc/uci-defaults/50_freifunk-setup#L207

I think you forgot to paste the information here. It is not really relevant 
what the server sees when the gw client has to decide where the IPv4 DHCP 
Broadcast packet has to go.

Kind regards,
	Sven
--nextPart2132583.DS14mmBGYa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9zl3QACgkQXYcKB8Em
e0bolA/+LYa5uuwL79isuMldcW6EQP9dlREd0Btqs8pf/g7t+l+4hj7H6dAt65yi
y+0tlknKdPjaEvVxgZ6NFfFOt86pTn9uc6KEmoQ143I0SrRUL5kQIMjId9dznSOr
2nUSM4lYAMf0+k3lhHZECqktBb7mAeLG4LVJCgzSRpbAGMzazdsVuby3kJ7ZiPTZ
eCIh2vvJHWYXtuAxR6Wa4E7B+i9jHxs8Hmcg3rmnfS+f2zbOEhMl1elNWXEUa2UM
BDcAoQEP2qifShjh+eHIOXiprQDjKi9mGuLZxAUN5ZLQFUTIrZoAzzHCk9879HvA
6sjnAvuSFTnHASqJIH1xHb+AkgPAj/hVQca+SaHVitYnoSUDiMakCk0m+X6UhuQy
hEIY9eACHNH+2JNAaVPj+6Q6/5s39Af8xIKHir2ixmzZIRvcrYveHZXDPBVp9+Ll
lJ0ynfTzMcbXevdb9yxzs6KkopZfubRIYbXphLlpHmfBD3eCbyZYIwT/DZZiKY5A
4ywW3TEd6jlPJvPGnignzCHC2JezmtELgpgdUAITo6JmwCDu/SnTTcOA2UPgkT5Q
lBkDypTCQf2Apr0YxiNafQdOqulu2oyWD928VpHWGe+UKkV2C1tNNi14dSifos5c
ZLDpqjQdwrOEHwTsO2GpeR5RSJzU5GCaccg/vA8EFlgGkLFqxQs=
=4l3A
-----END PGP SIGNATURE-----

--nextPart2132583.DS14mmBGYa--


