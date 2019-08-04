Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0F080B11
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 15:05:20 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 5F138823C4;
	Sun,  4 Aug 2019 15:05:17 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 4733B8065C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 15:05:15 +0200 (CEST)
Received: from sven-edge.localnet
 (p200300CA6F2191007D683EA4D59D38D5.dip0.t-ipconnect.de
 [IPv6:2003:ca:6f21:9100:7d68:3ea4:d59d:38d5])
 by dvalin.narfation.org (Postfix) with ESMTPSA id A470A1FDD3;
 Sun,  4 Aug 2019 13:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1564923915;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7wKzrFrWXT2k248DcmNWdxCLLEzNfCPv3sbjhdggGjM=;
 b=E/2WGjROK/YvodUk67VS0zLZWXmsGg63jW/uDBRbfppR0vZbIg3a5jJbR6bNZ+CXDeAy4y
 QeYWbzkB0zUQTZCFn1QZP9IgiD89+uD/Qomt4gA6cR/0gH7E+8cKUb7SX9CSpgbluB1bBD
 swgw76weIoKqt6UKM5V7rtddKa5G4NA=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: netlink error with openwrt-19.07 branch
Date: Sun, 04 Aug 2019 15:05:09 +0200
Message-ID: <7826622.ItRAI9TNZf@sven-edge>
In-Reply-To: <9e7c2d2d-0dab-f03d-1868-d8a3a59f781c@web.de>
References: <9e7c2d2d-0dab-f03d-1868-d8a3a59f781c@web.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart8647991.ULLJopCRKm";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1564923915;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7wKzrFrWXT2k248DcmNWdxCLLEzNfCPv3sbjhdggGjM=;
 b=yACVPhuLPSDdh8FcLqhIu4h1NuArgd5zYaLwSo4pux+GTjS3dru7tgffmkpIlkUOKD8CQP
 KxqskuE2EeeceINbnXn5VMFUaIjdgSmCYChLAVyygatSTN40hr4nQ65NiLKTeKkW1aKqrF
 LByo6aBHl3ePVHujieMC0enGeTAsECE=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1564923915; a=rsa-sha256; cv=none;
 b=DUik0Lfw7TAdLrwo1NP2GBporVcFSxi6Wf2+/13pQcmNpMafTKoMh+oemwJcbzHKeoDKDA
 CgNHNG6NaCIZYF8QnI0G/isCPjKo4j6PEA1ZrpDILLgmHmiSjqW61nS1i6eRZQoeniMYTs
 XwJN7lJYRCDR99+he52yatAsWCWv948=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart8647991.ULLJopCRKm
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 4 August 2019 15:03:42 CEST Moritz Warning wrote:
[...]
> Is this a known error?

https://github.com/openwrt-routing/packages/commit/b04d24313d57b80b0af67f759d855619a2fbd768

Kind regards,
	Sven


--nextPart8647991.ULLJopCRKm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl1G2AUACgkQXYcKB8Em
e0av1BAAnQNYJog+X6uqpdN7ehs0xph+Jvk4kQnRq77B7wISR3nYYuIQYm2Gfloj
MUyMychLLiYZuaNfRefM6CNNrrDPOv4nHazZNmx28J+hQMgWHbp3M8QxrRztGinL
T3KuwXLjWHoIFvZIeFXGHnjDpp94+aNKp5ZRMQL2lUw03f9C4rhPjrZmzPg8++qZ
aKgWleFYIwXbT9rtIw/fgs+/YKA9p9ds1iblV9n36dqcLTqQ+X02g2gBsmtzmLYX
90+PYla1HGEqPDAELKZ4dFMtmwqQ/cseF5/eHbNDUomREasDK5LMnoaXsJ5Zlkkd
rd0AgweTuCBSrQZxi7dG4eIxw/gFO3fM+foxpKMCMdF+NaFwXHsB9Z1oX8Atc7P/
+WOUaWdDNO2DYck2SF/xY+abH4zAEiC/lRbyDECRcDUvNuKXwRGB33sd4tf/YSFQ
oHvQK5saCQNoVqXbkRgD0XwGeqIhtE7zDC6rUSs87KkO1/QS5OyT9iD775VN57Bb
xPoRyyfa0P0/zinQcL4ElbCk1cfZCw5NT7u8gmgbcHfDi0kNkU4MYvW0yBAkt26G
CMGtFtRcO1/bz/WmX9RRr1aDGtsypHysAs7mn3i681T1OR4SBn7JKOTegx+8r7hU
QoE9dQcrw+ARJpkyKDaicG30Fs6YR0X78n6C7qm/weMmp9Ax+LM=
=lpev
-----END PGP SIGNATURE-----

--nextPart8647991.ULLJopCRKm--



