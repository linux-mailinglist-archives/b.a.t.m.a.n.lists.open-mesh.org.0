Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3791E40C078
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Sep 2021 09:26:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0E435810E3;
	Wed, 15 Sep 2021 09:26:26 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1BCB9809D4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Sep 2021 09:26:23 +0200 (CEST)
Received: from prime.localnet (p200300c59713c2C05FBb0Cd712dA2785.dip0.t-ipconnect.de [IPv6:2003:c5:9713:c2c0:5fbb:cd7:12da:2785])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id A903BFC4CC;
	Wed, 15 Sep 2021 09:26:22 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>, "Edmisten, Brian" <Brian.Edmisten@viasat.com>
Subject: Re: Bonding Alternating
Date: Wed, 15 Sep 2021 09:26:22 +0200
Message-ID: <2528179.d2XtbQqvsD@prime>
In-Reply-To: <711587381f3d46eeb01f77c95423a32b@viasat.com>
References: <8679334.VDzE56WMh6@prime> <3340507.qp3XP9fiM0@prime> <711587381f3d46eeb01f77c95423a32b@viasat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1886511.jppoC3O2G8"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1631690783;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Dqt19xQHAWIEDJv2+40y8scaK8Z7FG7n8q6TNL6MVQo=;
	b=zqqY6xxeFnUHjdNXSP1qrV+ivWC7/w7ihJIxx1NWvjAlh7H/xTQrukhQZFn49mcdJyyGio
	684lZpTW4CsKbqIznwW3ay78SDxx8eLlAXKiyByblW43N6B09d/LWACbMJ2zzaFMqHP67w
	KxR2ODermG/jmehVyYOadYFxGWCYAFE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1631690783; a=rsa-sha256;
	cv=none;
	b=xU/3AwD/fgYsrkldoJZvqdMhQ5DppLgxBt1rLrjyde1JvkW9+F052hE15pepmXI7ZaCIdv
	g1V8YAncaf6bnEUyivFV1HNlaRXYR3SP2MJ1O7ISOtfQgJ+mSZyCOmZoRato1jrnUMxRH/
	WlX2D2ecg1qFgPzvzOdk6Ht2Pm4EsIk=
Message-ID-Hash: ZTNK53LC77MOL5UENNJXIXILLBLBPZWM
X-Message-ID-Hash: ZTNK53LC77MOL5UENNJXIXILLBLBPZWM
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZTNK53LC77MOL5UENNJXIXILLBLBPZWM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1886511.jppoC3O2G8
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Simon Wunderlich <sw@simonwunderlich.de>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>, "Edmisten, Brian" <Brian.Edmisten@viasat.com>
Subject: Re: Bonding Alternating
Date: Wed, 15 Sep 2021 09:26:22 +0200
Message-ID: <2528179.d2XtbQqvsD@prime>
In-Reply-To: <711587381f3d46eeb01f77c95423a32b@viasat.com>
References: <8679334.VDzE56WMh6@prime> <3340507.qp3XP9fiM0@prime> <711587381f3d46eeb01f77c95423a32b@viasat.com>

Hi Brian,

hmm, I see. I will try to set up this scenario over the next few days and let 
you know. I haven't used bonding for quite a while now, but I also don't think 
that we had changes in the code which would break it.

Anyway, will test and let you know.

Cheers,
      Simon

On Tuesday, September 14, 2021 6:57:37 PM CEST Edmisten, Brian wrote:
> Simon,
> 
> I did check again.  batctl bonding responds with enabled.
> 
> Cheers,
> Brian Edmisten


--nextPart1886511.jppoC3O2G8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAmFBoB4ACgkQoSvjmEKS
nqGjPA/+ONnQhmvOULO/UhzimLT33whkMv80Iw2a60YMDcSN2aM4TGLAZR8jG/bX
AZT4tl80I5TqI61aVAUds7ybZxTpDrW7ezbG6FKOZahYF37yRdFm+el7dwwdUCMm
U+oQdKLX8aNHv5peUtORCgGiIIT4VMTqBUgSxKa0PUQUqFnUpmvPeopDBmw8NP71
AnKWFXTu8dMxRkFNiHFmVhlfSy8N7nrM27RU/W+GSAXWYARO8/QiONmVQG1A6usl
IynSIDsYUF4vbeJq0lY1hPv2+0JElxJwE4j2LQyBrjdG2FtnmiRPLOz7XYBavR9t
dq69pBNAmPNVEjdUDCsVUVZAut2jYuP2DpOvddUgtTm48pIgc/u6cbfm8uvluku8
z/OTUghyab+kQZIjk33PcHW4pHkWBi6ld2j1MQ2J7Tpb0EVOyu5UNx4ZjFgsMYrI
StRFOzvvIpn2xyB0ISVhKjpA2stmjkvQOl6I1fXKAHOjyyhMlt9Uwv4mBOq/Uwl1
vl09rT9Vn6BL227Kt38kDFXzFEl6AfUJtTwl4Gc28d/HHhruBARXfa2QPSZZ8sPA
vtxr+a+8B0f1gHrpqb7za+laNSVvmpdwYolQ8wck4UDLAFKcMkFm12/qHsoeUBIc
CddgvVIJZtSjZ6Ve0+XeP9U0MOkGm12wFTYYzSeLQEySn4djKYM=
=lIUs
-----END PGP SIGNATURE-----

--nextPart1886511.jppoC3O2G8--


