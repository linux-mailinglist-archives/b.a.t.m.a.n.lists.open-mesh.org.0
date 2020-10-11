Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA4C28A6B9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 11 Oct 2020 11:48:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 952D38061C;
	Sun, 11 Oct 2020 11:48:48 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id AFCE48038A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 11 Oct 2020 11:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1602409725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zAgoZXIdx3vQ4AFH8JuFsBKD/aKPk9Pq7cq78qGpxzA=;
	b=YPVsYrCZRDHxuN0umPjku1CMxpUmJA7N79y+9oQ5oUZpbvpor0xG9yEpV+E23fxefm9Z0x
	/V9Ct0GIFY1DJXnXCjnJ8t6I5MmWLKyuJBdiYPJvrEWWxr3pGKTqFI2dqqmQzIlx6O265l
	j9i7r7+vn48y+K/xpQp15zfcB+P48zM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 1/2] batman-adv: Prepare infrastructure for newlink settings
Date: Sun, 11 Oct 2020 11:48:41 +0200
Message-ID: <5766158.W2Ztyaally@sven-edge>
In-Reply-To: <20201011093909.297580-1-sven@narfation.org>
References: <20201011093909.297580-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart178047619.hTMiTNJcI3"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1602409726; a=rsa-sha256;
	cv=none;
	b=PB/hy2+hrErWm99GUIgb26UzUsAkvOOYEepgWXzfUJZuP9PuIKqvmInjgjkLu31vB85q3z
	tJ+5BIUWFCMH/gxYnliy5xHRl3eDy+saGa/RL2AfGlqpISOeTpPWXNvq8DrVkbwh/VNp7P
	KZd1AFVuWbpfI3bdiE06xe6Ctc6VjqQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=YPVsYrCZ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1602409726;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=zAgoZXIdx3vQ4AFH8JuFsBKD/aKPk9Pq7cq78qGpxzA=;
	b=wZMbSPKyFsigSRZEgcp9NpBCKf9PAgQEWfbhfZJ5zolKQ0PbSk//XU9aOsBE7kFwlp4bZl
	YDjv+7r2Gzj69hYpyTf3KQ1Vkxm80EiRZQniJd/FjYSX8Cl72/UJWEdrR9gZkmAp4J1Q95
	tizK0ZPyW7ZftQsywIG+ZcLtwJC/RhQ=
Message-ID-Hash: ZLVTTDAE5K5ZJACL3ROSXEXBPYGTNSJK
X-Message-ID-Hash: ZLVTTDAE5K5ZJACL3ROSXEXBPYGTNSJK
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Annika Wickert <annika.wickert@exaring.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZLVTTDAE5K5ZJACL3ROSXEXBPYGTNSJK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart178047619.hTMiTNJcI3
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

just noticed a build problem with some older kernels.

On Sunday, 11 October 2020 11:39:08 CEST Sven Eckelmann wrote:
> +#define batadv_softif_validate(__tb, __data, __extack) \
> +       batadv_softif_validate(__tb, __data)
> +
> +#define batadv_softif_newlink(__src_net, __dev, __tb, __data, __extack) \
> +       batadv_softif_newlink(__src_net, __dev, __tb, __data)
> +

Seems like the compat code has to be changed slightly because the __extack was 
not introduced at the same time for all callbacks. These both must not be 
handled in the compat code for 4.13 and newer.

Kind regards,
	Sven
--nextPart178047619.hTMiTNJcI3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl+C1PkACgkQXYcKB8Em
e0bSxg/+MaEP8MskCrOfKxldRxl16u2tKvjY+E+1kICzVNDuLd4HvcFZowpBwAj9
MyMkABp1B9PBJyATw0Sskv53mYepwgXQgHLP/7I0YAEyQ4LnQ1YeWU4sjzYGuSKG
ieDgaPbJvYBdCWuNShN4cfHRytXYbBPjlGuz/0vbH9Rvgof3wDrygbBeBl3120v9
UncUfWQb2NsE/unS7Q8deu42+WWwSLE8+2VL+GAXLYvLwWCAypegolqQV6x8GSPn
BH6oA7Ek/YG0SThX5uS+TAJ3AmQUjPV0UQg5NmpRH0fDxc7za6c4aqO11UFGOR73
bBUSivd+0iLFvNIP/HxPJI9y7+p3yhBasJiHcSrFz8oOEMdp7oNxD0vrBju9ADkG
dMOVUyF7RE+lB9PpojABp5f6KKEpfWwbj4XMiQsZe1kX8Ln5/OWi6GjOnnR3MXB1
Jw2wZlmNIrRD8TH8+1twaOjAzSprjkZT3F9hB923XBV2j7UPhMzsdpYoltBpxoXw
jrQSyZ4ZqmPp7VYV4UFIFhjV+/yPDyyLjuEMZmaOSXqPToSqOS5odmMUTcdiyy2N
WB1Jbf840f4OlV7Yw7S8lrwm1SWTWzRxtMsn2Irfst5caikC8p8ArdczYL/tpwY+
F1F8PuizRWBGBMqFfd8KU6ScuFUCUMsL4CMg0Y9N1WtyMZ0GQgg=
=6y5k
-----END PGP SIGNATURE-----

--nextPart178047619.hTMiTNJcI3--


