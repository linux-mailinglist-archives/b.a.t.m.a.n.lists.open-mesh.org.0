Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6F120A29D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 18:07:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DCC0280FD7;
	Thu, 25 Jun 2020 18:07:22 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5C292803EA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 18:07:19 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: bits 10 to 15 in OGM packets
Date: Thu, 25 Jun 2020 18:07:06 +0200
Message-ID: <7188050.BR6Q5mCKq5@rousseau>
In-Reply-To: <CADhofF-z2bM0GxO=CeSuj3hBcBB6q8-jTwN7BFuh4SQ8EY17Sw@mail.gmail.com>
References: <CADhofF8ExwW+kYPDTX1W4ZZz_6gs3zEvzu_7oe1WrkP3-+fpiQ@mail.gmail.com> <1752987.3nn1Mqi339@bentobox> <CADhofF-z2bM0GxO=CeSuj3hBcBB6q8-jTwN7BFuh4SQ8EY17Sw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5359080.GD0J52WWrY"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593101239;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bE0b07os4uvWsCdE1g14frXH5708reeR5eryx4GD7rQ=;
	b=PBIWeuyemPLHuZU3MZkneOMIWpRd4gvdMGivjL+YmJd+Y8pTHgrqwHJ7fnY3biBXUNNyoE
	FegpMJdTF6eFUe6PSXHqBbacc341JDF7FE8pyDZZjUeEj1XqMYvSujg5PQosS3hlw/MhX/
	9JZchQaKHlU59iYldrrgskA79m2kFQY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593101239; a=rsa-sha256;
	cv=none;
	b=LlWjUk8AfN0i0Udy4QwTfUPszeHHCZ8Mh7gI3NZLpxSklMxI5/8F4/8IlyjfQuXaLmtJl9
	ysGK+biYjutvTSqjlwwAaXj2gdsBeKo2jYWIrYnH6p0zwOsTKwt0k2LBp3AWG8/nXQQ8YB
	fHBP0jCBi8Duk0uW7Q5ef6b4hgmDF+c=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
Message-ID-Hash: P5XC26XYX6NXOORAOS4WZWLJEILSFGZ4
X-Message-ID-Hash: P5XC26XYX6NXOORAOS4WZWLJEILSFGZ4
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Rahul Bothra <rrbothra@gmail.com>, Tom Henderson <tomh@tomh.org>, tahiliani.nitk@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/P5XC26XYX6NXOORAOS4WZWLJEILSFGZ4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart5359080.GD0J52WWrY
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 25 June 2020 17:16:16 CEST Rahul Bothra wrote:
> Thanks, is there a published documentation / memo for B.A.T.M.A.N. V
> currently present in the kernel tree?

https://www.open-mesh.org/projects/batman-adv/wiki/BATMAN_V

Kind regards,
Marek Lindner

--nextPart5359080.GD0J52WWrY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl70y6oACgkQU1VOj+62
HMCGkgf/TRh8hiyHa0/Kmdv3t5ENRBUrsbehvQZTcaalxyjK1lB0JpTpsUuvPJe8
vwsKJ5K9y1R+bkxNRzLXYy617DgZlS43uSNCET1sEWq1tc7MZ3YZg+fT9qYteuSi
2QrD/pBm3YCW7PdJFWCuHTnaT+4yPwLfMaKGhGXZ8Ml3S4cCgERkP+0V594SWxZE
5IT88ARLNKycYAqBCJV9reumDKjNKF1AH219qxC7cuYY+xgqspghb2j+KdritgBz
EJy8fTK7ZdjXkOme26uJ2BXazBZ2CXYXARhrWHNkdovGpSQYV9778Yh9kC3/IwiA
pnMCPqjrdr4gcBmzk5QQ3EUGHk1mrg==
=2/r8
-----END PGP SIGNATURE-----

--nextPart5359080.GD0J52WWrY--


