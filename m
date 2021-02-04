Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B687C30EDCE
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Feb 2021 08:54:44 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5B03E83AF8;
	Thu,  4 Feb 2021 08:54:43 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id AE488803D8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Feb 2021 08:54:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1612425279;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6LFSJ7hPs/+x69XDL8Dkhthryw46ar40UZkpUsbgM+4=;
	b=QCc2ezau4Tpj9OFt10cQvGE5LhZwJ9BKxQYJMXMGRqOl610Aq1Wtm6tz1j0LU2iDNUZpbI
	eZFYggzcHBdghNp3+tnjBG1r5qGLH9Dk72rAYDbVIXlhdqI7LQCqKPl7ZUZ0ijEYh91VMv
	XNaQOCiZDnYP4pKoQd3jIv32OZ1sMxM=
From: Sven Eckelmann <sven@narfation.org>
To: Simon Wunderlich <sw@simonwunderlich.de>, Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH 2/4] batman-adv: Update copyright years for 2021
Date: Thu, 04 Feb 2021 08:54:33 +0100
Message-ID: <3636307.aAJz7UTs6F@ripper>
In-Reply-To: <20210203163506.4b4dbff0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210202174037.7081-1-sw@simonwunderlich.de> <20210202174037.7081-3-sw@simonwunderlich.de> <20210203163506.4b4dbff0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2733018.9YGKfJurXy"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612425279; a=rsa-sha256;
	cv=none;
	b=2Vr/WodKsTgNdLKkvwFk5Z1p+3venaRsEWRKcDWcrGLkenSmNazUyn3wR9Fe2kyssd807W
	wz2B2rpd0MXt3rc56bLUzleA/0TajlODUTG+JjOblgh1I4MgVQYaJhYk08Wyiv5ynfg6n5
	xrlcYQo0/XHnKVIfQULHP0D4eWp3qjI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=QCc2ezau;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612425279;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=6LFSJ7hPs/+x69XDL8Dkhthryw46ar40UZkpUsbgM+4=;
	b=eX1vdAK/6DdprhutR7IYzSCJOenE4QfvKj1GYaReh3rohRJlejPnOvuRnO3x9rusbB/DwZ
	95VTSDL99idwixeCa+mkhb4NcifbIcnafxJcE8C6kVVTqLNY0LF/1PowVn3IpTYR4lxfJV
	vkAcxEdudS7pF38T1Tj6KQZDmABbrho=
Message-ID-Hash: 44THMGWFTYIIVGPX3CAWMYNLFANSOPKJ
X-Message-ID-Hash: 44THMGWFTYIIVGPX3CAWMYNLFANSOPKJ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/44THMGWFTYIIVGPX3CAWMYNLFANSOPKJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2733018.9YGKfJurXy
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Simon Wunderlich <sw@simonwunderlich.de>, Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 2/4] batman-adv: Update copyright years for 2021
Date: Thu, 04 Feb 2021 08:54:33 +0100
Message-ID: <3636307.aAJz7UTs6F@ripper>
In-Reply-To: <20210203163506.4b4dbff0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210202174037.7081-1-sw@simonwunderlich.de> <20210202174037.7081-3-sw@simonwunderlich.de> <20210203163506.4b4dbff0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>

On Thursday, 4 February 2021 01:35:06 CET Jakub Kicinski wrote:
[...]
> Is this how copyright works? I'm not a layer, but I thought it was
> supposed to reflect changes done to given file in a given year.

<irony>Because we all know that the first thing a person is doing when 
submitting a change is to update the copyright year.</irony>

So we have either the option to:

* not update it at all (as in many kernel sources)
* don't have it listed explicitly (as seen in other kernel sources)
* update it once a year

I personally like to have a simple solution so I don't have to deal with this 
kind of details while doing interesting things. The current "solution"
was to handle the copyright notices year for the whole project as one entity - 
once per year and then ignore it for the rest of the year.

And I would also prefer not to start a discussion about the differences 
between the inalienable German Urheberrecht, pre 1989 anglo-american 
copyright, post 1989 anglo american copyright and other copyright like laws.

Kind regards,
	Sven


--nextPart2733018.9YGKfJurXy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmAbqDkACgkQXYcKB8Em
e0Yzhg/8C3UCwdVrki9UaPjFtfuSZz3l3/9o473xkvDgc0BvE+bHsPz+St2Zwdb9
pCSrGYfk+3iGJMxUXruIQikS+khBDfDk14r+vgLzDfCSZbIsFlPU0B84VbVdmkVL
KpIf8fmBKzQ7JXNnzT3xYt99Tp0lTHAK/yMvNI7uLWTzzcOkA6uM7i1Ci4d/i4dB
z1zzcfkmMYHS4/Oq2RGCrTT0tchZgaL7mHUBUaxUnXQOJLseqvgwr+x8woPZvnN/
EAXMJlmpmNmHVIGroQWkxmqSsTOsXSol7IhjA6n1yl5XrPnM8jLl5IAV32nBtkzb
5DmcBvfbycwnCNFGJN5Me07B+n86K1XO3lud9xDEj/5JHByhs+fmkxjGR/b0yhzL
yHdvJtecth3PoKvYcIOtp0TGQmsuh3R1N6rqUdKra0TP9DF+xS8N9sRZvKWmc6CI
HcdSrd9p7NQ0DNb/uq520w8lyhIsKN+iNbT5IWnUWecrGKSFcj/LIqRj9gYSISmI
5cNTIBzNKfyzGWbDsk0RUwHUGePxhMqslcsLmhN2seWzaG8au/y7DMI7qEkI+Kxd
Zrdj53Ko7w42AQ+8BoyfVbtnyKoOksyZAQKjomgqCwHdUlFJgxfmbgf1xlQNoEkl
Fr8Mn6qHDUlhUS1ZffrDWJ5w8fNBcG7dBvAoMl9qv7i2X9TJXro=
=Xh1S
-----END PGP SIGNATURE-----

--nextPart2733018.9YGKfJurXy--


