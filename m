Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 413942610A5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Sep 2020 13:28:47 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 10909804B4;
	Tue,  8 Sep 2020 13:28:46 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4BB2180290
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Sep 2020 13:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1599564523;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kvzMG4Sn4AAQaUFzSUF21uH7RnQ6jdaZKk3XDy41eFM=;
	b=OXFPBFiJFc67ilbFrPqxwcjcJksB3u6sAFZMDOl/SpGOdvaZ/doj8FItwX974+2qK5brNG
	hvwaE3igsbWMxcJotSwXt8ovb5bGX7EXbLXQrXJqm3wqc1OwD5LvM2E5XpqBL+aBrYhs+k
	LdScsW9KZYZBcf7RNfFvJHAWAa3N5Cc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Running multiple batman-adv namespaces on the same broadcast domain
Date: Tue, 08 Sep 2020 13:28:36 +0200
Message-ID: <17582207.Wjj8Q8S2kB@ripper>
In-Reply-To: <CADJ1cUTq=Bpj9SQdS5Y6aXKcPR9XqkxKn_Sj5sRMmN1R=qX_2g@mail.gmail.com>
References: <CADJ1cUTq=Bpj9SQdS5Y6aXKcPR9XqkxKn_Sj5sRMmN1R=qX_2g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart26226944.1ARZ2byAtU"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599564524;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=kvzMG4Sn4AAQaUFzSUF21uH7RnQ6jdaZKk3XDy41eFM=;
	b=WWkEpavLctz5UTp5GuIfBh4Es+j6MNRZNzOltZ9IJtrXSG7a25ARYRKVyKC6d8gV0fJzhX
	3+zpYMar05G3Mt+KbRdrVjjV4Sku6poS6PXe/GxEUexsiql27ZzpU1uQz15+1dngRBaO4U
	wA1GHbR3l5dMwKeT5b4jxny48gllhNQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599564524; a=rsa-sha256;
	cv=none;
	b=0xx+nL9JX+qo6EIXOokAlBDOX42Il09zL+gbEIskigzCCH+42n4p/gapJDqRZ0wqVKrDrv
	hf4Zk9Civgecwnf25tXLWMCZMRfchMg126NOVI8q+mQ2A5N3CGl/Yi1mh2mAI88FkRyjmr
	tUCmGL5RUauumbqo3VZyZND6eSXCcno=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=OXFPBFiJ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: FJ4BCJ4QK5TD4BLGZ7IMDJ6CSZPGKGZ5
X-Message-ID-Hash: FJ4BCJ4QK5TD4BLGZ7IMDJ6CSZPGKGZ5
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Alessandro Bolletta <abolletta@netter.io>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FJ4BCJ4QK5TD4BLGZ7IMDJ6CSZPGKGZ5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart26226944.1ARZ2byAtU
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 8 September 2020 13:23:32 CEST Alessandro Bolletta wrote:
> i'm trying to reproduce a PoC where i'm running multiple batman-adv
> instances(eg. bat0, bat1, batX) on the same broadcast domain.
[...]
> Is this kind of scenario supported?

No, you need something which implements separation of top of ethernet to avoid 
that bat0/bat1/.../batX see each other. E.g. VLAN, VXLAN, ...

Kind regards,
	Sven
--nextPart26226944.1ARZ2byAtU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9XauQACgkQXYcKB8Em
e0YNxhAApu6US6Ma5JjrP/tfSIwruPY/AHPI4/j3LGUaLvO1cQZjtf0D93RxYmV2
2vI+r0oV1YFcHA0s4xcrDWMg2JME1an8ypE2cGt0IFv07PKZ5jSgQqxe6t6ysWya
TaOnPGPD7u/Ly08mLFJQ4f7aBeHm4DckoIoJnQVb8x8TvBXis4p3LlKI/DEJJ3GU
WE57G4Z/opwJDI4+9mqX4yKqbwVBNfE+Y2VtuStmDnvITwVqBx1B2PvgWtsbEo5t
g6bwwStJONoyqkYoq1dPln4+8y4xf7QcIZWmJ6xBubq3Tzt/wsELfyMQs0QvUdJJ
3n/oxrmbYEBHTDprEn7zZkuNS+kzS57W+bvzjUtzjQIAJ1vs2D0D5E2M1YVtCkYX
o8hnAI9nUQTUNrB9x9C1YYQyautgD3qzuEmMN5BspOSOO03xV64Kdk1D3L8xSPM0
yl3yndM+LA9HrURjJ4kGQQCN/DdIEvlY1oH1uPAL0zVewLVAgJgyxlPRW22QuHhL
IaXgLVaUgdfOuQS1ziUOPUbZl7sgtY0G1yQcVaBuQu4VieOL2IBP88Zp0gxlEnd5
RXOgftKEXPKqLT0ksPP/eZuDxHAkEwCb3CGyaQaCU8DCcsgbR+O3MDnvKpYlsRqt
rHNZsSmEoA/b01238qZH69aR+r6adcex2BNFQVYQazMna33SqmI=
=sr9s
-----END PGP SIGNATURE-----

--nextPart26226944.1ARZ2byAtU--


