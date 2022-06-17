Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FC354F354
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jun 2022 10:45:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 27B85809F7;
	Fri, 17 Jun 2022 10:45:55 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A306480398
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Jun 2022 10:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1655455551;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FiQPw0G53VGkZ0OcYLcj7gdxsnICrhYEkriWiDtHreI=;
	b=aVCEqtUoxuDTsRIlMwRccDIeOOfd56mBpFdZvOxLkX51FlXjIKoEfVNJtAgY9QaBFZ5fpQ
	Tn3PN1sLiJocF9G2AuqV414jU21YT6tc/kSK+JBew9HeAGT8iR9o6Is7s0S7Y8l1k2lZz6
	1BTuHMzBxbPXiKEY/BYOsw8n53vyKmw=
From: Sven Eckelmann <sven@narfation.org>
To: cchien@creonexsystems.com
Subject: Re: Question about batman for ARM
Date: Fri, 17 Jun 2022 10:45:48 +0200
Message-ID: <3826484.QQW5a1qdB9@ripper>
In-Reply-To: <049201d88226$14ca9ae0$3e5fd0a0$@creonexsystems.com>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <03ca01d86c61$6781b190$368514b0$@creonexsystems.com> <049201d88226$14ca9ae0$3e5fd0a0$@creonexsystems.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart28061830.WxQH19I5H7"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1655455551; a=rsa-sha256;
	cv=none;
	b=i/G3iXefE05nSFCaJNoFj/mlfHHZ6BYgfEmDfIBMrUbkmlWgAXWCgelkT7idl4BXh0gCCu
	5g1TgRk52ZlNjTS/SVDTwBpKrHGKg285/cPCUF5HEpIGB+72iChVQlkphO0XnYwBFCE1rr
	a63ZvUxr0MJ8NvapUCP++/RHGur7A0Q=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=aVCEqtUo;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1655455551;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=FiQPw0G53VGkZ0OcYLcj7gdxsnICrhYEkriWiDtHreI=;
	b=Af340cs8J6wq7uM5wFv3pqufic+i9hAMLKUMuDPj86NbgJTo/4RkY4/CoOq5MbuUI6Toby
	6miap+nfM+xixhF2ZiDjJLnDb4s79N9QPhBxrG5R4UhzxQmr/HCPPQ7gCBuxQFHJbXDVow
	M6DqjnnkDJFgbpsp0+FJINh2cx5YQTI=
Message-ID-Hash: WH6NODSY33IJXHY67CSQLDFVAOUALMLM
X-Message-ID-Hash: WH6NODSY33IJXHY67CSQLDFVAOUALMLM
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WH6NODSY33IJXHY67CSQLDFVAOUALMLM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart28061830.WxQH19I5H7
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: cchien@creonexsystems.com
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Question about batman for ARM
Date: Fri, 17 Jun 2022 10:45:48 +0200
Message-ID: <3826484.QQW5a1qdB9@ripper>
In-Reply-To: <049201d88226$14ca9ae0$3e5fd0a0$@creonexsystems.com>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <03ca01d86c61$6781b190$368514b0$@creonexsystems.com> <049201d88226$14ca9ae0$3e5fd0a0$@creonexsystems.com>

On Friday, 17 June 2022 10:41:46 CEST cchien@creonexsystems.com wrote:
[...]
> We would like to use batman with a custom radio and are trying to figure out what part of the source code we may need to modify to allow batman to work with a custom radio.
> Custom radio means that the radio is not a commercial radio, such as wi-fi or Bluetooth.

batman-adv (especially with the B.A.T.M.A.N. IV algo) only requires that the 
device itself can transport ethernet frames (with proper unicast and broadcast 
behavior). If you need something else then you either need a virtual interface 
which does the translation from $whatever to ethernet (and back) - or you need 
to reimplement the B.A.T.M.A.N. IV/V algorithms yourself.

Kind regards,
	Sven
--nextPart28061830.WxQH19I5H7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmKsPzwACgkQXYcKB8Em
e0YJiA/+N7SuPuxSwnnsH4cXFtIpfH2xuSrs1777A56CsY/XZsqFYCaknf2cx0a4
XSNHbRF48Pd+tjJlhuSTeQfdV+y2RRbVQHImcorgLBcL4M0Z2aBG768lyf5DOl3l
jGMcby9aUmoL7GQciHrDsU2c6NhhHZRbLeHDoCNPnUUsg4ipGPLaQ5KoYHLe+9vf
mQNXa/EmRqhxU4L7qolCQDeOURi2ueykpj2bpdlw1avVQL6zFo7X9my1t5tPOJLr
gcEqpEshTeBrj1qIDsFEiobQQknOsPpBQGa08X4Zrv7W/qqA6R54gDKtHQDQvedb
/iykv1DIJVHMNwMcnKahfYTV7LjK7d+YJNP+b5I7zuLcJY7G6muPgMh2nuRAqUxJ
W6OBGKDFrv6k3R6O99zGDsX9gA+bg/0fp/W3zJ3jb2DhJr1+yAqg2mTZw9BHz3Aw
Xhhga28D6dc5ymgvzF5740s/dKEcJ0gZJe880/3VsbHjxtDoYXBE+wTtizQ14HrI
N7tECkY+z3mQ0QucGn5vRoLz9giQe+sQ+UrooTIFY1cQ4bjY24sjRuk4R202JQ/h
9FxHRLorpEXe4XNEYu9lilIhm6xCqQ0JVQ66r2o81zd/Vbh5ATkF22GSRzxOCnyw
eigMbnzLAB7ssw2AsY7IoeZydmTMDCZ0vB7TqFoXRxJvVg1WMNg=
=t3J6
-----END PGP SIGNATURE-----

--nextPart28061830.WxQH19I5H7--


