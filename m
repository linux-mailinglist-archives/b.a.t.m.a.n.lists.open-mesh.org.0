Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7F326111D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Sep 2020 14:12:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7B8AD80669;
	Tue,  8 Sep 2020 14:12:13 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F1919800FC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Sep 2020 14:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1599567129;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xH3EkC0yV36Fp70JBcHbNd+8gfjzbf2q2O2pb2+kzeQ=;
	b=zgb22lCa5CXo330u0uXGYxuxXyU5rqzmMnvBz0/1wsVpLO5F4tBQ0CPrbfoqAayjr3am8J
	LTl7G6jwk4+4qrTxxC2VmtczpOgepukPehKfiYXyl0yRmpmeikkpSujOZZA94L0tUCgO9w
	sMtCzcNfy2ZKXG7R64DfS0LlGEgxsoc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: alfred/batman issue
Date: Tue, 08 Sep 2020 14:12:06 +0200
Message-ID: <4723062.gsoOXRqoEn@ripper>
In-Reply-To: <CANKYHpe825qzeW9g7HbrHcacsO36x0=W_nRBCGKy_UfybvL7gw@mail.gmail.com>
References: <CANKYHpe825qzeW9g7HbrHcacsO36x0=W_nRBCGKy_UfybvL7gw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1657020.gspWTsGk6h"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599567130;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=xH3EkC0yV36Fp70JBcHbNd+8gfjzbf2q2O2pb2+kzeQ=;
	b=0NBOZo6s+uYGAiXAC/CTIo4w5QbdyCzBj44imxWot3iZDBXKo/BmQKBVLbqh6lGGS2uKTB
	LmAulSBsHv+aYQHRBowN3HP/vro7gK8BLVVAa9XCng9raYlb0NTDG8DbyYCndh/wrhqH/e
	qTj3IFj2IuSTnx6vOTTbTXeoz055dfE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599567130; a=rsa-sha256;
	cv=none;
	b=Ye16hsJlYUsJlSeks9GRnEIjtFkaBklaP+2iHfe3P8ELGQQWGj7D23waNHPOQfDkpPb+uL
	O5JCQTO1E5a+KYULDhY0jXBHNOugYrS83fCTpAcZhHnPXex9HypcYJbB8o4AJZStZ/w2XV
	RA5ZWuoMB6DP87YhLkcsVH70Lq2spYc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=zgb22lCa;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: EF2L2VG2GXEKIXX42DQSOUMRONBU23XG
X-Message-ID-Hash: EF2L2VG2GXEKIXX42DQSOUMRONBU23XG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Oguzhan Kayhan <oguzhan@kayhan.name.tr>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EF2L2VG2GXEKIXX42DQSOUMRONBU23XG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1657020.gspWTsGk6h
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 8 September 2020 14:04:11 CEST Oguzhan Kayhan wrote:
> I set up a batman mesh network between 3 nodes..all running
> B.A.T.M.A.N. adv openwrt-2018.4-0 on batman V protocol.
> And also installed alfred which version 2016.5

There is no B.A.T.M.A.N. V support in batadv-vis [1] (and also not alfred).

Kind regards,
	Sven

[1] https://www.open-mesh.org/issues/251
--nextPart1657020.gspWTsGk6h
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9XdRYACgkQXYcKB8Em
e0bORhAA0V3ITDIqbudLOuVGq0YU63AmslefyHtAoIaKpXmQov06Ud+mqSz+XlUO
sEPsy97d/d2k9XLyo19osFPvFPTTICuieJQwUSCU3X9VZ7pmjpjGD1FHQrYjgaRJ
S2r8WhRVmaSLgWssIwRU9kurT7wfoWzJVQH4lYcNKaML5SsM2v6PmiZkb6rgF8LI
L9eQIfOm91ABorAj6riaNVQ0rP8zFsYMbAp8VThydulbk2ePo67NYokQvu9WHwAQ
5KS0sFuEbn5qwyHTkhsy/ZRhz+r/rcJOmRlke68Q0BvclZ/JZ0sP5VXm22pHm/Ey
hUU6VvQL3r4FzrQtxURbQEWw5lDSm2LBmW/4NH0BVa3iTVMsqI+mli4RLzfdb//N
i3VFlqGSVUDNBWOMISxMVuy7dsRx7emo9+8bRgcCtb+kHOzDiLeo4M2QlZkVpNCM
TRhi987pjzVzr5sFtUNgqQWmQSoWnnYgf2IQfid/7kiYsb6gfWkNqrbqqem2IheE
wzlGAHFpt3UxXt3XtdIsB4G1jrJrdqXdEb4sjbaMelhCbLmLazVP2xCmdbddQE89
m2TaIQbv/jldyuBGrZrF9AV+ybn2lOFtnu1wvIOPQvUK7uNd9TG7kNqsUrAKSAvc
7p3SH4KPM06VbUbbdf8Nh2pLzjxSILy6AcrcSuIKoXrI95gITj4=
=OX0n
-----END PGP SIGNATURE-----

--nextPart1657020.gspWTsGk6h--


