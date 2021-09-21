Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B70413520
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 21 Sep 2021 16:16:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6ABF680C02;
	Tue, 21 Sep 2021 16:16:35 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 64BEB8040E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 21 Sep 2021 16:16:32 +0200 (CEST)
Received: from prime.localnet (p200300C5971d7AC0eaaa17E709c42CBc.dip0.t-ipconnect.de [IPv6:2003:c5:971d:7ac0:eaaa:17e7:9c4:2cbc])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id DA5B9FC4CC;
	Tue, 21 Sep 2021 16:16:31 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>, "Edmisten, Brian" <Brian.Edmisten@viasat.com>
Subject: Re: Bonding Alternating
Date: Tue, 21 Sep 2021 16:16:27 +0200
Message-ID: <4948508.lctyQggAPn@prime>
In-Reply-To: <7e8fe0e7bf7b42baac350b20f2a0846a@viasat.com>
References: <8679334.VDzE56WMh6@prime> <2528179.d2XtbQqvsD@prime> <7e8fe0e7bf7b42baac350b20f2a0846a@viasat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2521225.qI6e1uoXLY"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1632233792;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MOnndXAOdP19rrjUojtg9lZCYvoLqyz4PY/TGMwYU+E=;
	b=WGNjV2YNvTgSoGioiNRr3/nGYRLVIHrPkXS3dL3YHlYXcqGQvZJcMSwKsL2loq7uV+urso
	r3EV04TQy5aK2FY9khfGEmcIFiG/+kepMYyt4R8FuXYkrRLg0puOXEL/kpc8lP7ax00AlQ
	cbkIz5A0LT6f4Q5vf6UgTA88xoWCEVM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1632233792; a=rsa-sha256;
	cv=none;
	b=sSw++qVQTc1DcbPI/Q0UegRjCs4+e3p8AZWT0N7DinmFXbtN9wHc85wrrFrsBBP0E3/LBr
	w+KKAWF5rvnMITP0pVHIdoFmEYwFS84taGI6VUE9KRQP5fHw6d24nZZGpb26SDyjf65dGk
	lrAFBO6D7a/VkH3eFKzVYDUosVUUZyU=
Message-ID-Hash: ZU2FOWHH4KELXM3KM5L5DJILYSZQ35PM
X-Message-ID-Hash: ZU2FOWHH4KELXM3KM5L5DJILYSZQ35PM
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZU2FOWHH4KELXM3KM5L5DJILYSZQ35PM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2521225.qI6e1uoXLY
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Simon Wunderlich <sw@simonwunderlich.de>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>, "Edmisten, Brian" <Brian.Edmisten@viasat.com>
Subject: Re: Bonding Alternating
Date: Tue, 21 Sep 2021 16:16:27 +0200
Message-ID: <4948508.lctyQggAPn@prime>
In-Reply-To: <7e8fe0e7bf7b42baac350b20f2a0846a@viasat.com>
References: <8679334.VDzE56WMh6@prime> <2528179.d2XtbQqvsD@prime> <7e8fe0e7bf7b42baac350b20f2a0846a@viasat.com>

Hi Brian,

I've checked it out and can confirm your issues. The bonding code as currently 
implemented is trying to use a different router from each routing table towards 
the same originator[1]. However, with 1-hop Ethernet links those routers are 
always the same in all the routing tables. With WiFi that would be a bit 
different (I've commented out the WiFi penalty check), but even then it only 
alternates between two of the three interfaces.

At this point I don't have a straight forward fix for this. Will you use three 
Ethernet devices in your later deployment, or will those be WiFi interfaces? 
Also, would it be useful for you to consider bonding/teams interfaces of the 
Linux kernel to bond the link, and give that to batman-adv?

Cheers,
       Simon

[1] https://www.open-mesh.org/projects/batman-adv/wiki/Network-wide-multi-link-optimization

On Wednesday, September 15, 2021 4:58:58 PM CEST Edmisten, Brian wrote:
> Simon,
> 
> Thank you. I appreciate you looking at this.
> 
> Regards,
> Brian Edmisten
> 
> -----Original Message-----
> From: Simon Wunderlich [mailto:sw@simonwunderlich.de]
> Sent: Wednesday, September 15, 2021 12:26 AM
> To: b.a.t.m.a.n@lists.open-mesh.org; Edmisten, Brian
> <Brian.Edmisten@viasat.com>
> Subject: Re: Bonding Alternating
> 
> Hi Brian,
> 
> hmm, I see. I will try to set up this scenario over the next few days and
> let you know. I haven't used bonding for quite a while now, but I also don't
> think that we had changes in the code which would break it.
> 
> Anyway, will test and let you know.
> 
> Cheers,
>       Simon
> 
> On Tuesday, September 14, 2021 6:57:37 PM CEST Edmisten, Brian wrote:
> > Simon,
> > 
> > I did check again.  batctl bonding responds with enabled.
> > 
> > Cheers,
> > Brian Edmisten


--nextPart2521225.qI6e1uoXLY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAmFJ6TsACgkQoSvjmEKS
nqExtw/8DvoXN+S5a4m2vpXkRItdbkmNlOCmkOVyrK4T8WaA/zbGZM9+HmObaNtu
cR7QtBhJmXI9bTrKMQJ5jiq/ivh7NbIbP/hGbYT9UAvzIKHgbB1cqGHXaCxcJzG2
rZe6GH4651QtEE5sMIgSVLzhNqb0q+V8IwuwIGcz2ns0L6lub8mGyKWQ8/od+Gfv
HbFNspwo/hhYn1rvbSqfvg+w3PWEhDoIHbGrxJZZBXd5iA9RNHKq2idks8kVA9S3
QXhp5WPllhMmko5sXLjHTEPHu81p2vdSpdkYzJQqK+whqjMwiLnqIEDxGh/UPvy8
5OlvL+iFHxHCPlAxbpkPYPkTmE+MWhUhBMjkI7ah+5a9KnFmI7GnweHRY3pFM078
mIZVLlYMpOxgW9z3PXtc01r/quH94Y/wIHZnWsrZHvqD8HAr/2N16rz/vdnhMqBr
OonlMQ+5LTeRkRUUXe8/KARB+tO00e5jouYzpaB4A6Yr9UimoUahIXHHRNosCVPw
AcQMfAiv73tIjDsvCzFJdbS8gh3UtfUSAoPz1rrJpeaSHziA/4lvizRPxuOEif+W
eGN955jG9HCg36LjLUbn8qHv/wJ6YpFvznDee+2LN9x0KtK0g/vIyDBaDwdaGJTx
TBei3621y4J3UdNg2jROSmq4isEwsTL3qVn/l6R/aTFBkWJLgJ0=
=X8x0
-----END PGP SIGNATURE-----

--nextPart2521225.qI6e1uoXLY--


