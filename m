Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCBE140491
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jan 2020 08:45:06 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CE77B8065D;
	Fri, 17 Jan 2020 08:44:56 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id DE0028016F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Jan 2020 08:44:50 +0100 (CET)
Received: from prime.localnet
 (p200300C5974BB100ED4CDFF33842B2BF.dip0.t-ipconnect.de
 [IPv6:2003:c5:974b:b100:ed4c:dff3:3842:b2bf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 42C8D6205C;
 Fri, 17 Jan 2020 08:44:50 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re:
Date: Fri, 17 Jan 2020 08:44:49 +0100
Message-ID: <2587871.AsJD0l72uE@prime>
In-Reply-To: <mailman.6.1579205674.8101.b.a.t.m.a.n@lists.open-mesh.org>
References: <mailman.6.1579205674.8101.b.a.t.m.a.n@lists.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart10894538.rmToC6h1BE";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579247091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DX4Vo1QXVJAgA7NIHw5zGz07wHDxDqvEYsOWEjxIGSg=;
 b=4KJxHkmhoTprv1GmHkE68lpGEw8I+fY38rvMGT0MZqLhQbGzDpEa+mOC3X+FQMScr39qup
 3wtIUjwMHyLCGQpW+5NpF5J08hvvcU4dYyAOoyma+BzrcI+22yokIByez3WTP+424ldA0e
 5e6m/VQF1KJFb+yv1YxxvSF5WmEyaVs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579247091; a=rsa-sha256; cv=none;
 b=QKx96aonxPigsy9pwsVsZ/no1Azgldb6LmW8orKCXKrtpyOLCIOWSwIUKYxsdyFH+fQ8MP
 z7gplWP8koxeu5GmHYqotUl5EIMMiQ1ARLatnM2apCP5L2Hr6Wbxrhh8o7emg4hd+7EVbV
 +U/J3OP7vnbXoexreYtj3T8B8BF8dso=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of sw@simonwunderlich.de designates
 2001:4d88:2000:24::c0de as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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
Cc: "Martin, Jeremy J CIV USARMY CCDC C5ISR \(USA\) via B.A.T.M.A.N"
 <b.a.t.m.a.n@lists.open-mesh.org>, "Martin,
 Jeremy J CIV USARMY CCDC C5ISR \(USA\)" <jeremy.j.martin33.civ@mail.mil>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart10894538.rmToC6h1BE
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jeremy,

On Thursday, January 16, 2020 9:06:50 PM CET Martin, Jeremy J CIV USARMY CCDC 
C5ISR (USA) via B.A.T.M.A.N wrote:
> My/My Teams intent is to have 4 radios in total, 2 on one pc and two on
> another. Our plan is to have Batman take care of the switching between
> which radio to use in order to transmit data between these two PC's. One
> radio is high frequency radio (60 Ghz) and the other would be a lower
> frequency radio and the idea is to have batman switch between these radios
> once the higher frequency radio is dropping between a certain TQ.

BATMAN will switch by default when one link has a better TQ (towards the final 
destination) than the other link, so I believe this should happen by default.

> My
> primary questions regarding this scenario would be, 1) Are there specific
> standards the radio chipsets would need to support in order for them to
> work in this scenario?. 

Normally you would want IBSS mode or 802.11s mode work. BATMAN can also work 
in AP/Sta mode, although the packet loss counting may be biased since 
broadcast handling works a bit different than in IBSS/11s. But for point-to-
point links it might just work.

> 2) Would Batman-adv be adequate enough to be able
> to handle a 1Gb/s data transmission and be able to swap accordingly to the
> lower frequency radio?

If your radio and CPU are powerful enough, batman-adv is able to handle it, 
yes.

Cheers,
      Simon
--nextPart10894538.rmToC6h1BE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl4hZfEACgkQoSvjmEKS
nqFv/hAApCEYdfxWJkmq0KhfaDHOvKNRpc0OsdowiIZHKQfu/JSnFMv5UOj0rpAK
T289oxyhGrAGg1UG8EsnjN1emPlacEo50c7uf7CRN3RJW5pHdK4ueKQske9gs0Jx
0lnxHDHLfRynFjtDqIk1/FkMh7i9vbLq+9b/yNYE3FbbfChTn0qyxfN98AF636mt
YVPnKWL9HGdZK7O1knTR1wAFWp10KPL+U8wcu27pGs6JjZK3IW1G5Pnk7pu2lopQ
J78BjPS/YJqRpf9sqkN4RVUfB78JW7ooC+LIo4QJgymfDsNEKtjnOwyyMin1HXo+
79QG7H5kkGwyW6yEDziROvQ1D4+yDjluLF+WHUhzLaisxGwIK82QJy/ZnY2DB8TM
zHdaI8sdAXsQ2jmIJuzZuCjU4FfSoEyzd4txD5qGgCZZfSO9TqSyJPsagKmaLGlX
wODnWe6wPkpOTbK00nyVe5ppz+kue3SbSThx2EnmKHbVCajPP8+mek7VooK/tGJn
WKcGdGyiNYy6Du5wgrKmLxugJH9EvcWACxQg8Y0Biyp1bDj3GoIzoyxOlwqt3Dc4
PpdasDtBIjC1XeX51JrUfWG0Xq8tLiJkWcyMpuoVyvqzSF8bem/XC3cMRVYzqKcd
JJ/+0V0b/mE14B0SuzkycjSS75MZfP7pNwClpq1+QmfS2rmeaK4=
=3NvB
-----END PGP SIGNATURE-----

--nextPart10894538.rmToC6h1BE--



