Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BE6380E0A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 14 May 2021 18:18:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 33EA980088;
	Fri, 14 May 2021 18:18:29 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E0B9384083
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 14 May 2021 18:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1621009106;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RBDO1TmWMZe1SxkAJK/mU9/TwHFLWku07uT/3SABEuk=;
	b=Y9XUsopOe5+AYoYcSNxBjySuUbLlVS3rq0LjjpX8C/KfSOcfamAZtu/m5M0JbqmoWFMs+r
	AenjuLDc2AASR0rSmQ+2eXFnibqw5HCJqsd1HG+qrWb0ATGEj9TGVOGbMl8vCt5MS586MK
	E6VxVIiF8BxN/+mS69dcsWf3f7Z1hqw=
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v3 0/4] batctl: Add JSON debug commands
Date: Fri, 14 May 2021 18:18:21 +0200
Message-ID: <23505348.pnZsyTnv5I@sven-desktop>
In-Reply-To: <20210513142812.1707215-1-asarmanow@gmail.com>
References: <20210513142812.1707215-1-asarmanow@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4421445.FzZahCnmo4"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1621009106; a=rsa-sha256;
	cv=none;
	b=h838TEZH5RvQCoeHG0tXBy/vDjQ/AeNbXlvf6zDrbj2VtNpIVwt82hZrs6uqR6i44I9DMs
	9yV610IZzMBc/0NUM7xIrNd1B89AoWVAW7PlPI9Pay2pfhETVHg0hDfajHF2niRbFJAAQn
	KgWDPXqGAVV3pXXv6Ka1DOPtXSaeHbY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Y9XUsopO;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1621009106;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=RBDO1TmWMZe1SxkAJK/mU9/TwHFLWku07uT/3SABEuk=;
	b=2aUw4f52OE2tBlGjeFmqpqEpYTM76fGgkYnwwcxGoZhWOhX4aGVmNIVmgNLR9IAptrGOiF
	j5IzKolNdZvlTt+SH/NR3640ITs4iXFZz4W98ROItt//hmfll8e2VtS5QCY6Um7+BWKKOr
	QgIdw40/RZvAxctapijBZ1CItVcrkQY=
Message-ID-Hash: NDLIIZB2U6O37B4S6F7JPAD7QSW5D3P5
X-Message-ID-Hash: NDLIIZB2U6O37B4S6F7JPAD7QSW5D3P5
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NDLIIZB2U6O37B4S6F7JPAD7QSW5D3P5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4421445.FzZahCnmo4
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org, sw@simonwunderlich.de
Subject: Re: [PATCH v3 0/4] batctl: Add JSON debug commands
Date: Fri, 14 May 2021 18:18:21 +0200
Message-ID: <23505348.pnZsyTnv5I@sven-desktop>
In-Reply-To: <20210513142812.1707215-1-asarmanow@gmail.com>
References: <20210513142812.1707215-1-asarmanow@gmail.com>

On Thursday, 13 May 2021 16:28:08 CEST Alexander Sarmanow wrote:
> Following JSON debug commands will be added: originators_json,
> neighbors_json, translocal_json, transglobal_json.

Seems like this patchset is full of duplicated code which would have belonged 
as shared code in an earlier patch.

At the same time, a lot of functionality (batadv genl query commands) is 
missing - even stuff which was present in an earlier version of the patchset.

Kind regards,
	Sven
--nextPart4421445.FzZahCnmo4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCeos0ACgkQXYcKB8Em
e0ZSGRAAvM1qLSukY4jNUKnyYAwmyubbFEskRZoZmJo7QPGrkrh7mGUIirSh3bNO
JqA198L+DUqWOcA4Ue4CfH1CeazUHzmjdzQIWVsKlsPyQRvKFdVGoq1tS4dNOM/z
BLuYotfGuixuv9vK7kS2EHfByzToPgSzgkwe+GEW+hvnk7S60ryMuyphLnqThFe9
lSRL6CtRxPFfBgwPD4Pu2jk3H16L5Gp1QFzEpFkggG2NqefVtKBu4GxPv19S1LUv
yyqJcWM4AUVcoeaRxh5h1V2VklZvHNhyptuS6VwN7ocdng9rzjL6e0RaoscUoQ0U
18sdKhP1rD2kfbCj7D4hfhdz70DxKucx7ULR4GCPxOF6+WxDRKYS7ZnJH8X81fvm
dJnbadXAYmBLwKsYZhm6POC9gRKi5hSlkWaqG3sM44haDR4sWgjCr6BimvwSOvK+
DoHbOd0sLXQKAGdQ8cLFsnMUjvdKc9P/lQ99XoyhfdDGpXQq8f1l0qfcPZMfM10N
YQarzbokHBMSIXvRSSnPOeR2olx/ZXii3diZQco0w5gDXyjiM8mwJSEN3ZiMbHme
1OpM5v6IpfdpoL79fwk4ho0hq2uZTNG7BoQXv072pWPgSrkXBcCUV7RO2RSZgiSu
jMrA77O7hDAAgaeGk4xdzw2oYRGmvq4a8n18X7qrAuDFOTpBn0s=
=zUr0
-----END PGP SIGNATURE-----

--nextPart4421445.FzZahCnmo4--


