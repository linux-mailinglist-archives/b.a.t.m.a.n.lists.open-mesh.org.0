Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1072E5037B2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Apr 2022 19:17:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E831582E45;
	Sat, 16 Apr 2022 19:17:40 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E005380815
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Apr 2022 19:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1650129457;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Qw1mKsidiZh7zX9GTZDv2VTLILvJx/jt9m9Y5J1eJZA=;
	b=sSr0wuPd48j8OYwPJhmjXh2e+QPZYWQdqaGO1kXbZhmanbPd3XXtwGMXnS1Q2tWQCrkbXJ
	ykiGTsZx8+VrNbMbGft4qHuZ3SNruimd+Q0A8sRXZDrTsIIwbDUNtII7Xvry8YF2Lt0BMI
	9ic3Tjfbed3frclmt28g1KzbdlA5dMA=
From: Sven Eckelmann <sven@narfation.org>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] batman-adv: Don't skb_split skbuffs with frag_list
Date: Sat, 16 Apr 2022 19:17:28 +0200
Message-ID: <2248548.8ZbxvZVH5L@sven-l14>
In-Reply-To: <YlrQ306LD4luXaeJ@lunn.ch>
References: <20220416122434.33061-1-sven@narfation.org> <YlrQ306LD4luXaeJ@lunn.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2522755.ti4BlJHqdv"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650129458; a=rsa-sha256;
	cv=none;
	b=vzU6junr7zmMFFwy+oV9GoFX0vkKVEAWH4WYSawi7d2V0ximvxBP4GbzrGwR8TcTzLZ/CV
	2BDponpI8by8BeangVcpP64aS5omC8BsWgkE4vI+jfb866UHdY4upvz2LU1zcRWjWS9OcI
	pNewRxuwhpHCG8QNGsqyXcdefkLh8Jw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=sSr0wuPd;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650129458;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Qw1mKsidiZh7zX9GTZDv2VTLILvJx/jt9m9Y5J1eJZA=;
	b=mDY3kSGk3A2dQO/s8awdHuEOIAlD0u90tNim0rD3LFcmxGFHwbM3HqUeSTWoeYdZeck2/r
	UsnepWnpVqfeN25irg1VCY9Z/Ny9O2OSVUaUGqzhaQ2N0K7RdQy9g1heJyd2jN8XmJvz0e
	lxQAn1Zz/M9g1xAbgMAGQsu2l7kcsYg=
Message-ID-Hash: T67XM3EFZ2FCLMUNCJANBI3KAKYJCKXS
X-Message-ID-Hash: T67XM3EFZ2FCLMUNCJANBI3KAKYJCKXS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/T67XM3EFZ2FCLMUNCJANBI3KAKYJCKXS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2522755.ti4BlJHqdv
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>, Felix Kaechele <felix@kaechele.ca>
Subject: Re: [PATCH] batman-adv: Don't skb_split skbuffs with frag_list
Date: Sat, 16 Apr 2022 19:17:28 +0200
Message-ID: <2248548.8ZbxvZVH5L@sven-l14>
In-Reply-To: <YlrQ306LD4luXaeJ@lunn.ch>
References: <20220416122434.33061-1-sven@narfation.org> <YlrQ306LD4luXaeJ@lunn.ch>

On Saturday, 16 April 2022 16:21:19 CEST Andrew Lunn wrote:
> This is not an area of the kernel i'm very familiar with. But i'm
> wondering, is this a BATMAN specific problem, or a generic problem?
> Should the fix be in BATMAN, or the core?

I understand what you mean. But let me cite two places which required to 
operate on parts of the frag lists:

	/* If we need update frag list, we are in troubles.
	 * Certainly, it is possible to add an offset to skb data,
	 * but taking into account that pulling is expected to
	 * be very rare operation, it is worth to fight against
	 * further bloating skb head and crucify ourselves here instead.
	 * Pure masohism, indeed. 8)8)
	 */

	/* Misery. We are in troubles, going to mincer fragments... */


And since I cannot reproduce this here at the moment, I've decided not to 
start with that.

Kind regards,
	Sven
--nextPart2522755.ti4BlJHqdv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmJa+igACgkQXYcKB8Em
e0bpChAAu6doJp7yrVAf1DbnknxZLGXMfAghVjP7oQ5Kiv3lZh2iIxmO3JtOLGk3
fzAEa5i43SPU+Kim56yWUPlTmOgdquWt+ERmaoilVBsmpsu3EaJKtPj5QPm/KYqp
gumCkBQ0oVPDw2h7cuAKzGZVVA/wqzObvLNVw9sxPDZIof3ThgcSGNg+PwqxFwPw
7m+citm0qCbrlPvyWWXDvG1jZmtLafJ1C7nxKMIyO9cGBE5BmHDbBZSXgA8IMeOg
YiSg0tI7dJ49nHMLyag8exbrAjZfpLMY6jZcZ/dLEnNwIMqYpwEZnxMd3I7Gnpg2
R/54XQWGmNVrJa7Jh8xZlfxWHUh46Tv7HlWpDCVnaCDl1jZ8np7eVAeyckbyn1Qb
q5pxt5mSopucojD7RtTDqSmOR2Q/2HOA0y3uNAsSUhdj4UwCRo3l94i8FXqfn2UZ
jtTboJlhfnG7tvEchW+6ORdt5uMBgiT50NdWT54qBgyPapoMOD+mEU7Tq5blKI4r
MxZ5+F2djsZvnecRKfT74sLV4GNE6N+ttxqA9VLyfHaxIIkRQHlWAj2LmRaiyVkt
Ut/q9t3QIao3biVjqZ+LcP3iBo5hpw0gsmZfckU6cc3UBbR9DaAwWKbOPzm+pVXM
z4hmIcagxXQbB5kQzv7FqMFmlpNmVKOJ/smYe3q4xeQQ47ltets=
=uxkg
-----END PGP SIGNATURE-----

--nextPart2522755.ti4BlJHqdv--


