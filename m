Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FF3376A3A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 May 2021 20:59:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 531CA81861;
	Fri,  7 May 2021 20:59:04 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 35F2880595
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 May 2021 20:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620413941;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uJcl8NnhdAunHEnB/SCVT1+gCA7WFSx7rdOlCa4Q3RI=;
	b=pxEm3xvewo3qJlL49RLHu8mTbTTbmuv6XOkcCHXg9DF43gs5gK8OfB0R9BOu0slRyyD+c6
	F2C3ovo4bH2/vRf2PvlVT6PatvQrsnZgGzh9VarJAuwnZMNITcIlxXUyWNGM8dVtGQ3N+V
	NDdINDwzAXyt4WM0BSbQJ7+CmlvV8IE=
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v2 2/2] batctl: Add JSON debug commands
Date: Fri, 07 May 2021 20:58:53 +0200
Message-ID: <62326514.53yIySlcTU@sven-l14>
In-Reply-To: <20210507171435.370648-1-asarmanow@gmail.com>
References: <20210507171435.370648-1-asarmanow@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1891496.0l7zDTGR7S"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620413942; a=rsa-sha256;
	cv=none;
	b=h8kX37yDyFAhBcYGjiNDnmezySncUSuJPSFjBxwovMOZOd22db6X1yx0IOfG/jfvoJ7s6a
	ayt72mgSKVpfJBmMk0guG4OtuIeND1W0Y926rHnnrCLumtDcbvLvKjSWegmOQKKTzgkvFa
	4VJ4CJ0NzwESgIeKRHr0wIswLxhQiPU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=pxEm3xve;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620413942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=uJcl8NnhdAunHEnB/SCVT1+gCA7WFSx7rdOlCa4Q3RI=;
	b=yCtauLz7rOJ0l5tx91YBIkL4ka+EGfT4t/oMiHSKy24yJWFX7adX0zfyaQkGUsU4RH+mG6
	2Fb3C9hS5YdFBqlIYVJ3jVPyMGu+OzVDtzrcD5fJq/GOHhAYU7Rmyz64hh/7GlCC6stj2h
	aGn4eLVpWwO9dJfmuGE/LGLH1TR7lKk=
Message-ID-Hash: WNNBGSKBGON3RHZBCFDOIOHTLVZL3U5J
X-Message-ID-Hash: WNNBGSKBGON3RHZBCFDOIOHTLVZL3U5J
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WNNBGSKBGON3RHZBCFDOIOHTLVZL3U5J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1891496.0l7zDTGR7S
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org, sw@simonwunderlich.de, Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v2 2/2] batctl: Add JSON debug commands
Date: Fri, 07 May 2021 20:58:53 +0200
Message-ID: <62326514.53yIySlcTU@sven-l14>
In-Reply-To: <20210507171435.370648-1-asarmanow@gmail.com>
References: <20210507171435.370648-1-asarmanow@gmail.com>

On Friday, 7 May 2021 19:14:35 CEST Alexander Sarmanow wrote:
> According to part 1 of this patch following commands will be added to
> the JSON debug: meshinfo_json, originators_json, neighbors_json,
> translocal_json, transglobal_json.

I've asked you to split this up into helper code and one commit per command. 
And also add the documentation to the manpage and README.rst in each commit 
which adds/changes a command.

Why are you only printing selected attributes and not all?

Kind regards,
	Sven

--nextPart1891496.0l7zDTGR7S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCVje0ACgkQXYcKB8Em
e0Yj5Q/9EWGKoh4MK2easOU1vdbzshG3MnfmdxabQ+M2pK2l8Jt1HLrXVnaHzicm
KXu6tNJNGPOlicFJWa47txAErUU2Wywv/5KJZoIsEMKIXNNrpFXzJHQaDPPPWgTS
ndCUoi7MOpcdjwoLsJ23Ya2agMq52Fo92JyVDOSfxGX9PtsIyZAg3z/amFxtIfm6
F8Vvel8ArcX4v8NBSc7pr4ybBdY1zHUDqNxdURCMweKGzafA3DyUfltwkp0FBqEc
tQpk/Ofjvp/cL8Qj+XGLleHnkDBApZ9wFwBk5MqU6KdAYxpz3c/HJcr96apYJYGP
JIiz5+5+oWgHGrYoJZyum6wRndu/9QfJOTLPj3GojG3nUAnpyW7n/Zn/OBK6I79l
WRF2eDmoFq7M9Tglt+YFN4q/9eoAiCQ7jiLGGRD+nF3nHKmeeFivf1uiYkcvLf1j
wvsb4aM2EVfSWYUBlvmKbNu/d13bmQh0ep6zRjBCBzVHzwp4j31sbwWL4JLuZvmN
qD7kn7lLqmFCKtDqwUnSnrh8RYTXG4ek7dhK/sgnt2Kn1w9aKMVu/nB+KlKA2bdQ
eL7i0QjcXpX7v+7CasyXtN6WKYz/anTvQitLGrU0Qn42eE3K/++sR/oWYzXJ96dR
pq0AyfJ0eKqCUsi0bR+NI8HhONlp1NUMZ8bryiPnZh0BHRS85M0=
=MaIK
-----END PGP SIGNATURE-----

--nextPart1891496.0l7zDTGR7S--


