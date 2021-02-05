Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F64531060B
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  5 Feb 2021 08:47:46 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BD4BC8142D;
	Fri,  5 Feb 2021 08:47:44 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D37C6803A0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  5 Feb 2021 08:47:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1612511261;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NY/OHLmGEhTKLYIQvD2W3iTCrAS4oS+QNMhd0T0lkUA=;
	b=nJ6tr4cN3klUZizZOlUCBVI1QljYZiNC+uMKw+Uju7OsIHIs9aGsxtYwMVbsCqshoW4uvP
	vtM1+Vsqbtp/R5CkiX2nHUJ6M7hfH9rBrIzx6DKFVdD8e4EvrPvxuWcdk9CWaxWSxyAcY0
	BDuLEBPlIDlwRpUsTUBukLNv0d9Eqls=
From: Sven Eckelmann <sven@narfation.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH 2/4] batman-adv: Update copyright years for 2021
Date: Fri, 05 Feb 2021 08:47:38 +0100
Message-ID: <4678664.8dpOeDNDtA@ripper>
In-Reply-To: <20210204115836.4f66e1c8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210202174037.7081-1-sw@simonwunderlich.de> <3636307.aAJz7UTs6F@ripper> <20210204115836.4f66e1c8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4981605.MO7qgpoJSq"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612511261;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=NY/OHLmGEhTKLYIQvD2W3iTCrAS4oS+QNMhd0T0lkUA=;
	b=T6zQlrniS4JTkjs890npN+0H8AzcQvLIzHJkH0WC9MqbKi2s1zDBWy0RYhm7ZeSgSeLj3q
	dCfJt1tntO/GxjJ7u84ax16eS3cwkvSnZPtEXPTpi5g8wmd3T8B7M8VTHUSa8AazSvbf0L
	LmwD3hbDzyj3LkBTffjCyI1ovd5z0SI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612511262; a=rsa-sha256;
	cv=none;
	b=lWc382DA6ZCFg4DdoWZOU2GgbkphMd0Tk84Er8X4ZUgyQKgcPoTHdHdcxdSXw/YGP7n6wQ
	Ad8MCDpT3Ff4j0oSJpmxwd9P/JS72BAGxdMfSMw4awdVdk3YLA+DSPOPUD6rcTw7TRsvsP
	2oB+LHDawH/j+IAgkv+AbH3LAYiFa2k=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nJ6tr4cN;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 65P5EGNUWVBMO4KE2DDGRTRJP2EQ7I6G
X-Message-ID-Hash: 65P5EGNUWVBMO4KE2DDGRTRJP2EQ7I6G
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/65P5EGNUWVBMO4KE2DDGRTRJP2EQ7I6G/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4981605.MO7qgpoJSq
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Simon Wunderlich <sw@simonwunderlich.de>, davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 2/4] batman-adv: Update copyright years for 2021
Date: Fri, 05 Feb 2021 08:47:38 +0100
Message-ID: <4678664.8dpOeDNDtA@ripper>
In-Reply-To: <20210204115836.4f66e1c8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210202174037.7081-1-sw@simonwunderlich.de> <3636307.aAJz7UTs6F@ripper> <20210204115836.4f66e1c8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>

On Thursday, 4 February 2021 20:58:36 CET Jakub Kicinski wrote:
> Back when I was working for a vendor I had a script which used git to
> find files touched in current year and then a bit of sed to update the
> dates. Instead of running your current script every Jan, you can run
> that one every Dec.

Just as an additional anecdote: Just had the situation that a vendor 
complained that the user visible copyright notice was still 2020 for a project 
published in 2021 but developed and tested 2020 (and thus tagged + packaged in 
2020).

Now to something more relevant: what do you think about dropping the copyright 
year [1]?

Kind regards,
	Sven

[1] https://reuse.software/faq/#years-copyright


--nextPart4981605.MO7qgpoJSq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmAc+BoACgkQXYcKB8Em
e0YNDA/+Nw44yDv7M7vmOZufXsViF7g4fnHI7veE1xwU043DWUmEX3k/I8Yb4Fd8
H/QQWCYpkh+RyRj9s0JQ6Ji1dZSnSr93sqE9Wy0yoBN69vLynwe0KNKg+t8NMGo9
9WqvSz11XEZlfLRhzvu9B/rvmOfoDLyahnyzIGJK81hWYZVHUlo7JUs71+Lspe9y
QV3FVc1AxTfevP0zm8t7Be5ltD1oHHxmvN9eAcg0myODXKF0DyMzkQ/ksaooIxNR
m29OkGJ4BgWgHsVGzanW59aULt33vA4i8teuDEqNBOaI9AJLPsrO/SUEXqRTaXGH
hu9Phmr4TZrS2EfjghbONnyDT65aJCfIpLg102FqzWKXEdpGKapJFTnbz2PY1wds
GAQbozAHRW7WmBFLOe+617rjrpqVF+CBJNZ0LCTXOctpiD2GMeVlxPiczhthLDU8
4SpoTIb2Hgjvta/QcSNJNaSsNCGxbdn7uVQJI48m83ne+RxMxPyakESJMFNvKWj6
B0Dlis5W2y0V63DDkIL3NQU1V7Jf1gmNnhuSYk8DsXsWJ45hrhHkTO1vKlRMmV8t
X9xrErO8V17zDovGNgtMdpNcMTiuKnkLcc2RnazR26gH3Ro/f3ldq+8XjYduzlQr
74T6js8h/LNuZtvRFeKehwPaKOF4wlRq5I5El6JosOdwHHUVV9s=
=Gonv
-----END PGP SIGNATURE-----

--nextPart4981605.MO7qgpoJSq--


