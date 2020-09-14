Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E812694E5
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Sep 2020 20:31:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CEE2C80038;
	Mon, 14 Sep 2020 20:31:42 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D2FD280199
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 20:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1600108299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Pxe+RhylOdtm/hrd/f4GwvO1CCN0Rvr+Rrz/vGXA3e4=;
	b=aTXjJYDD07vNKXKYs/YHpeAJZjWtafcSisF/285uhqgPUjGUuedsjZGzsSy+6HOd5P1qWA
	jSagfddTQsa4mil2UZx1ljP1g+RZiSjpa9jIaZ7zVkMyR5xO/VLaSrWVHsXWesYKMdeacj
	BbbgzU8k5HgqS94FML/GM2Aw3rx5dTI=
From: Sven Eckelmann <sven@narfation.org>
To: sw@simonwunderlich.de
Subject: Re: [PATCH maint v3 0/3] batman-adv: mcast: BLA fixes
Date: Mon, 14 Sep 2020 20:31:36 +0200
Message-ID: <4867508.Jzi3jyfnBD@sven-edge>
In-Reply-To: <20200914012136.5278-1-linus.luessing@c0d3.blue>
References: <20200914012136.5278-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart50007341.Ki6HtkqDGC"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600108299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Pxe+RhylOdtm/hrd/f4GwvO1CCN0Rvr+Rrz/vGXA3e4=;
	b=jbYoSCeqiNZxCElnhboOBk8hAFcjnA4sPy72WP8Cbe7+I6W3y81o8ELzSDO4ugsyGE9/LF
	UZAEdxNoxrTkkRr9AUHCCygZzvBd4unnee08AmR83JEbSSvor6TKsZ3ahv+dHN5Xw8f0Y5
	0U6WSHLv8dvxM/CmOTvWt90ItMHr2oA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600108299; a=rsa-sha256;
	cv=none;
	b=HTUy2kUZnW8RqlXcw1EP1dmL63NPa3qYK+0lYxCksURzRsaDwaspzb6Z7c1f/bXNkwLOLG
	jM/DatoijvT7XCG/8g7a+WB+k0OXlnY1lZinFWaDZCyPUE79XjTrTjrY9bPLpwAkw9glhz
	HwSDLsfiuMEQFFLFwZYX079qb8lZMj4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=aTXjJYDD;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: L2NMWLI3MSASI7PV4MFZU3XJKYBQSLZD
X-Message-ID-Hash: L2NMWLI3MSASI7PV4MFZU3XJKYBQSLZD
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/L2NMWLI3MSASI7PV4MFZU3XJKYBQSLZD/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart50007341.Ki6HtkqDGC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday, 14 September 2020 03:21:33 CEST Linus L=FCssing wrote:
[....]
> Changelog v3:
> * removed 1/4, as it was already applied
> * renamed title (excluded TT, as already applied)

@Simon, do you have some remaining complains/suggestions? I would like to g=
et=20
it queued up in batadv/net soon - so it can be send to netdev (and Torvalds=
)=20
before v5.9 is released.

Kind regards,
	Sven

--nextPart50007341.Ki6HtkqDGC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9ftwgACgkQXYcKB8Em
e0aNKA/5AezgDh3N1Tlj0y6878BsBzE90zPgcHwurxSONmF5RT8v90h4eeYlh1cR
0bl64ilWe3NAPfHamkfEdOiIPdAyHVmMf3qxg6RDthoB0cG4HbKYr2J4ysGxkd/e
8GRIuoLa4svKTFgBmQYZfTHay9dgurp0BCpbO7PCuG1eqFhOiIy5WtxOx274HJxg
5Q3a/9gI6dt34g1kRS/emP/4ZsN1mI9HM278U2yPAGAdZtJFDDvvsLgbT5XbG7/l
YMdTAwARrrZ/xuMWy/i0VrK88wFlKPPKL5jXp5nU2ITIihH5AVi3yts4cc2JfhBh
TMry7GEfygdSJpeBUtUVraTVR3JGJ78J+uJjz7jU+bcCRCPdNJcojG0e4ILQRW6O
2eZa1BC1Ks4l2fugXDWXv7jUUVwmsXk9myAaBDxEp3UnHUejFjrzfVtIvbNyofzu
F6g5emUuOTgJIYN7Da4aocv+JGmpI5D3O4YBOefsek3AhgZUdmYAOUL1V883tyxF
Flwe/ds1ez6KsiiA0wduJcWqY+G0T4Y3zBiifsqroErWFmH1sZOBjxQbCCstn1WD
jPjF6yyIY7cpQUGQiifOXTYvNLEsWdzoRrxgpS2evEeRnzBRNPsihpCPXamsk6Eu
9WvuW6OymPNS3qbGqaVR4H1kHdc4VlAyyM3zWLJ8C0AygwnUqic=
=6IN6
-----END PGP SIGNATURE-----

--nextPart50007341.Ki6HtkqDGC--


