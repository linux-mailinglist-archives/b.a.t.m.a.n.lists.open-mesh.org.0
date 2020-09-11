Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE93265F21
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 14:01:16 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A21588068F;
	Fri, 11 Sep 2020 14:01:15 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CA1DE80199
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 14:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1599825671;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OOgFSk9mqW+WJqH0fuIvbAhUCxxX3Lv6OzG+O/FvmNo=;
	b=xw7IA3hEpOeB+sWylkEBUhu4yQWzOF5RR8GY4cTuLAFdfDV7z1DtNdEhIJoIm9GdvvqtCf
	rHfz6sIg9u0lkY3g6cxUVGymBxefaeC3o8fVxTOAITqQJAakFDEJanden0G5EgHOTc4/Wp
	ZwsW6nsbpcZ3q7HhdF1TOaZK1YDcJPc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
Date: Fri, 11 Sep 2020 14:01:02 +0200
Message-ID: <2850909.jKhAPPOaAE@ripper>
In-Reply-To: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com>
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart13196327.JHk6ruZ3ot"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599825671;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=OOgFSk9mqW+WJqH0fuIvbAhUCxxX3Lv6OzG+O/FvmNo=;
	b=iXzGbMsMrSuomO3Xq2fT0/LTy7kbtV4AUykEoHXL94uVoU2KrrTK9hqVzSHj6m5cYZVmVY
	XFWuos2pTLE5erx7wmtkuJn/77Jh1TwFLbvCXQpjIhRZuoUg28pfGQUGizM6GpmeAeQyqk
	7AZfDJEOEPGV4YSdSbHekiIrCxJwS6c=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599825671; a=rsa-sha256;
	cv=none;
	b=OQXcHZjwp9AOsqG1mhxhbZ3qeAxc6XeO4HWSCWNEKr2RXAfDoehEuC11zliQfvPMwbwgPt
	C8FiCVIgA3qeuINKyZQtOdDJwGnxzdbLFgtJYm78l2Ml5Ayqrb44ooB/Jl3Ftk5irMofJx
	XeJorgUdM8QjZ0yc5f0TLvtce/Ic3sc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=xw7IA3hE;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: K3RQMTZUKYWBRP6L56HKGL2DPCBQBYK5
X-Message-ID-Hash: K3RQMTZUKYWBRP6L56HKGL2DPCBQBYK5
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Alessandro Bolletta <abolletta@netter.io>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/K3RQMTZUKYWBRP6L56HKGL2DPCBQBYK5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart13196327.JHk6ruZ3ot
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 11 September 2020 12:48:52 CEST Alessandro Bolletta wrote:
> if I pass tagged ethernet traffic inside a bat0 interface (without
> creating an alias that uses the linux vlan stack for transparent
> tagging), is this being allowed by batman-adv?

Not since batman-adv was made VLAN aware.

Kind regards,
	Sven
--nextPart13196327.JHk6ruZ3ot
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9bZv4ACgkQXYcKB8Em
e0YrhBAAw3rlsWjMOrJgkUWYsUWgicf2MpSVdLAvwua4tDTbY2GfgQ9kT1kuKqRo
Q4Z9rRx4dX9cq9N4j5GLdsyaBUpbiiTqMVZAD5No5C4vRWf8KPz1Gii+1UMS0aD/
oqeCzMNscGlJKmX81SAtbsMtffyoo3sJ+aS8ypl9aU8pfgpLCxLEwuKjRFbxmKGk
qw0ta0p0UYb5SbLBFIGdaLiJbmZ2jIv3dnbQIFUfQZuXapQtOFJXjO7jCU5B1Ga0
UaGaUEKxQzINvMXZwGtZrs+3yPqLAS2RXh8LhzbE/Y5U9C6m84ZBy80pYrAgT3KJ
vQ/k+r5e+IMvZu18CNTenF7QQPc+ame2sCubsNMJJI6roLV3JHx8yx6eq0QyAly6
btTLtyR2R9lnpiVq7JYJv/K6cGEmJc3PVpMtfPG2uYgTUtQBFcd19ON2Sqk4bwIj
9bNGY5JyQG8dtU82oX2Z1z86BJRsoj0JR8LrToTa073PLrfFXesNPlExwy5Cc/G4
kTJb0kzhP+r9PYVYE6i7pAgQNbYTmn/wPQy0AKWmd0q6BiFI+72NxXKrVbnpbltO
yEHzMGgS22xzMJKRzNOdIJUcpon7FnXeGetOo+r8d16pNJ4Cc5ul+pGiB7133aRa
fkgXqjEdzw9SoLb4nTf00vf/TuRCDcjLpV46QuttPevSXDN+a+Q=
=5+jS
-----END PGP SIGNATURE-----

--nextPart13196327.JHk6ruZ3ot--


