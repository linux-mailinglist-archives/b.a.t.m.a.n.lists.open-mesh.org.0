Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B565615257
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  1 Nov 2022 20:32:57 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 89D208170F;
	Tue,  1 Nov 2022 20:32:56 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 129618132F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  1 Nov 2022 20:32:52 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1667331173;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=lzf0/MBMELQqlhlBp7c9+Tj0M16zj25vnpND1saTW2c=;
	b=xR9/mW7DOXnoWJIMIQ1F9KPOPxwUohpot+QMkvnQ73QlWmnTT3CUv+Wuz7sJC1eDxd910f
	27B67JqqTeMWJP4kTQYqN1dnYZcHe3TVMLwzDT/7qL9bFG7zIaK5v9OE8gXSVmFwaKHoaG
	jw2ArCdjKH5nuOrtln+N0s50Zz6E6yE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=hewghl38;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1667331173; a=rsa-sha256;
	cv=none;
	b=H5rIXeUDtVw2WVSZV9R3OVuYDOwUS+f99bK2yjuZBdSyDyw2bsUDe4ZJWhbevT7UvX6+rY
	KpxPsGWuNR+65Kx0l9RdU4Oo/HJTkoeYvB8Z1xiqIVqlm6YppH4pZ/yEeeFgBm7E6FEqh6
	K4Mk9I/VB4t6SrwbRQA4vWV8hFe0do0=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1667331171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lzf0/MBMELQqlhlBp7c9+Tj0M16zj25vnpND1saTW2c=;
	b=hewghl38E8fRZgoJ5dWlC9+eXjYACkSUdA6aeVIFuWDxmOzVEKqfHF27phScd3G9hBp1wF
	6K0bvO1kcuthqV//T5Posts9WyLgdQGWRpUmQQBqB0IxNHS9g9WIKXawpBtAZTrycPw9rf
	crYX5/iypjWt1pSPEIe+slEtumnl7Pw=
From: Sven Eckelmann <sven@narfation.org>
To: cchien@creonexsystems.com
Subject: Re: Question about batman for ARM
Date: Tue, 01 Nov 2022 20:32:48 +0100
Message-ID: <2368065.5ID8ZXoMCK@ripper>
In-Reply-To: <01ba01d8ee22$bc00d6e0$340284a0$@creonexsystems.com>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <20961862.b4RiU9qLUR@ripper> <01ba01d8ee22$bc00d6e0$340284a0$@creonexsystems.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2092444.bCxPy3x5Xm"; micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: NUT6JCW4AE333MFIBCDSAIMCY3KINVVI
X-Message-ID-Hash: NUT6JCW4AE333MFIBCDSAIMCY3KINVVI
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NUT6JCW4AE333MFIBCDSAIMCY3KINVVI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2092444.bCxPy3x5Xm
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: cchien@creonexsystems.com
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Question about batman for ARM
Date: Tue, 01 Nov 2022 20:32:48 +0100
Message-ID: <2368065.5ID8ZXoMCK@ripper>
In-Reply-To: <01ba01d8ee22$bc00d6e0$340284a0$@creonexsystems.com>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <20961862.b4RiU9qLUR@ripper> <01ba01d8ee22$bc00d6e0$340284a0$@creonexsystems.com>

On Tuesday, 1 November 2022 19:49:54 CET cchien@creonexsystems.com wrote:
> We are now looking into getting BATMAN working on a Zynq-7000 Xilinx FPGA.
> This FPGA hosts dual-arm A9 cores. We have successfully loaded up Ubuntu on
> this platform and it is running
> Linux version 4.19.0-xilinx-v2019.2 (oe-user@oe-host) (gcc version 8.2.0
> (GCC))

I don't know what this should be. It is not an ubuntu kernel (more like an 
openembedded kernel). So you might have to get in contact with whoever 
provided you with this kernel and ask them how to build externel kernel 
modules against this kernel. They hopefully have some linux-headers package 
which you can install and then build some kernel modules against it.

And if it is openembedded (with yocto) then you can either try to update
these recipes (which are using ancient batman-adv versions):

https://github.com/jhaws1982/meta-batman

Or simply enable CONFIG_BATMAN_ADV (and related symbols) in your kernel 
configuration which you are using to build this kernel. It will not be
the most recent batman-adv version but better than nothing.

Kind regards,
	Sven

--nextPart2092444.bCxPy3x5Xm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmNhdGAACgkQXYcKB8Em
e0bRGxAAgTp8SS2FDvAhYkCZaNsGvf960QrzwzJlgi/QUU6hGIKMgC+2tgG/Rrjf
fBduDVbOnVOCz1r6XqMNuXn2pEVAaYyf2iSP/rmL23jGLHKle32pscsrAEJCRI7s
31SXA833tK22fAAAGTKwFBOJb1b7yByT0RZ31zA7tCts4lMxdLmAEwT12QgnNDLz
BX103w3eTPtXqQZ/GTpUZREfVq0FCt/UJJ+XTT8PWVypHwtVbEBfv9tJeZiwbw3i
qQcigcnIe/CpumJqowKRVyWMtmHlN7vIeHoeNDDYyYCBqfrX1KUJ36sFVli4UqFb
AG0uCIaXOi+EyuGE4Y9j36BewHckMmQgw6moTpm+ZGj+svLylDVqasiJbe69jO2+
SJX31LObWwpHneju1DKZtTdtAW2WdUjAoRH5PnGvtKFcK6cNgTFdlCAzuhLIJd1F
kmi2bPVV20rpH65s7MdPELiQ68YEpV+KRV22NVI1wqU/YZe3JrxGlOc+YO31xzB1
dq6452aTHqztRs0uNxxpTdF/s11dOjkD2uHwAm3ZY5ICo8qyEVkhVw9QL9NGmm6C
WG7ft2+nyUpTZO4c6ZLPxF0q4oQm7LStBVc9/JcO4KJhP9RgILUOMe8Lgc5jLipx
GAOCTbqsfrYJbsyZn6a121mBg4TsFuicq0j9yaIcoGWX1vnV3wA=
=+u7h
-----END PGP SIGNATURE-----

--nextPart2092444.bCxPy3x5Xm--


