Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id A875214976B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 Jan 2020 20:17:52 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C8909809E6;
	Sat, 25 Jan 2020 20:17:38 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 840B380014
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 25 Jan 2020 20:17:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1579979853;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=I+7eArnkcuiW5p7SQ8ez+ynSsw3nfT/g3I6HMw4lTJM=;
 b=BRIT6ZK+GTpu8oLHT64dWkaKbdU/uE5mn8sdgbUIkDp9na7ldz0NVOdoCdgKXOh4K6ZKvG
 goLLd5EIdLXOFjOcbv2FonHJ4HhOqCfZUFcEgPHX34+BDKXHWatlZI/IM6whAS61r+kwcf
 2KLEgi/fQg9JxW8mZiixDO86NAWAqbk=
From: Sven Eckelmann <sven@narfation.org>
To: Felix Kaechele <felix@kaechele.ca>
Subject: Re: [PATCH] batman-adv: compat: Fix build on RHEL 8.1 and clones
Date: Sat, 25 Jan 2020 20:17:30 +0100
Message-ID: <3489864.0R65RLHByN@sven-edge>
In-Reply-To: <20200125180745.19517-1-felix@kaechele.ca>
References: <20200125180745.19517-1-felix@kaechele.ca>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2977529.xU4JerV332";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579979854;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=I+7eArnkcuiW5p7SQ8ez+ynSsw3nfT/g3I6HMw4lTJM=;
 b=Y1LO8fFLKk6c708YLyjV/ZeZL2/vsOCS/KtZsFpXZ+ld92BBNK1mp1YUUAURFzEyLhd0fM
 BW3D25iUeQXToErIjqmRWSSqz50W4wT3LBVTwuhGVskC9OKQqV+BcykbZF8deh2xsMb6tw
 YpOsgOxX5Ds/BLg8HDVicSQ5KiA42wQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579979854; a=rsa-sha256; cv=none;
 b=3QUzPFCgDDyDTUg5dYYdhHjFYZp0S5+b9vtEMR1JPApkodCp9LLK8DfLLjRlz310ZfKVLS
 W6+YlrtJY3wG0VujvD/VersYj6VwmdHbEqlyo322rWzjU5SLd3+kDp4dfp2Td3O9SiJv3A
 UQu4Whjescoud4TY01pyxBmSXcGRliU=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=BRIT6ZK+;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2977529.xU4JerV332
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, 25 January 2020 19:07:45 CET Felix Kaechele wrote:
> RHEL 8.1 backported some fixes from newer kernels so we need to treat it's 4.18
> kernel as if it were a newer kernel in some cases.

I am personally not really happy about supporting all kind of weird Linux 
kernel forks.

Anyway, if you really want to maintain the RHEL support (for reasonable 
versions which are based on reasonable new upstream kernels) then I would 
propose to avoid this RHEL_81. Instead it might be better to just add 
RHEL_RELEASE_VERSION + RHEL_RELEASE_CODE [1] to 
compat-include/linux/version.h. And then just use them like the backports.git 
is using them [2].

Kind regards,
	Sven

[1] https://git.kernel.org/pub/scm/linux/kernel/git/backports/backports.git/tree/backport/backport-include/linux/version.h?id=368e8c51a59629ea7d681f5b96d4f5a9f89ad1a6#n140
[2] https://git.kernel.org/pub/scm/linux/kernel/git/backports/backports.git/tree/backport/backport-include/linux/skbuff.h?id=368e8c51a59629ea7d681f5b96d4f5a9f89ad1a6#n140
--nextPart2977529.xU4JerV332
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl4slEoACgkQXYcKB8Em
e0ZsmRAAzs8AHg2qcibDj4HnMSXZ4CxA+sY42T8jJW2jhFHpeKNbrGhkvnurvguT
BC86vAVEHPU2V5ykNmbY+IorCUYGWJ3+siFp/LZB4Xp0W+zWMKv02b4OQgUvT3Yy
02UpfQbvolC4jeYyl0KKssjEy/NzSs4UN08CgatIu/kGA1vRbCTxjONW3k1EWyGG
uw+fJt1iJqzm7c7fzxkWv+LUloE781nhsLTI8YvrR0a3m9QY4ztk0BzjqgsLqbod
WSuOQDqycMGgI/jphn922r1nbI9+e7KzMGkNuut+bSTTx+8UQTtZ3uAW4+fkkIs+
u+e98T9Ejej1TUDBO3RCMeMnOdNJKm1I1k2vP8p6sS2IyRyNnz6e7bdhZJcSqeMW
7NOeFX3Z8A2OAv0IJqVSwdQRViph98mwRV4jB8UeaetLXjFa5OIoNTqQUk2oxV13
alJeCWkZHn2vv+uNpq6XyxOxQjj8FBmnyAYL6s1wPZNZ6wyOS9ZlIdVkxkEpVkYc
psanWfxM+/QXOKPUVezBNKA/j1h8pgjg0OyspyD8FU9c73h1Kl0edwQzaebuCerB
bVoVEKINu/VlX8iF8QtQPHdE+l3TM8A4HMJBWIpdKFiyHzxth4QmG2ofhVjXvQFg
22vRZcYB/OCPjJ3rR2E8Jpd3kGZmEmAF1ur82T00gsIC1tphZiU=
=yQTt
-----END PGP SIGNATURE-----

--nextPart2977529.xU4JerV332--



