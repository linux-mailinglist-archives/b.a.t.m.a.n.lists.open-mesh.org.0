Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DF5155A15
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 Feb 2020 15:52:00 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 2365580280;
	Fri,  7 Feb 2020 15:51:56 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id 4DBC4800DE
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 Feb 2020 15:51:52 +0100 (CET)
Received: from prime.localnet
 (p200300C5970BB600893AD11B4D6E2C20.dip0.t-ipconnect.de
 [IPv6:2003:c5:970b:b600:893a:d11b:4d6e:2c20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id B2E7962055;
 Fri,  7 Feb 2020 15:51:51 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org, srn@coolheads.com
Subject: Re: can't find logged information
Date: Fri, 07 Feb 2020 15:51:51 +0100
Message-ID: <2835529.L2OpFjvxA2@prime>
In-Reply-To: <501bc34b-2c77-a12a-6cb0-c49903eb420b@coolheads.com>
References: <501bc34b-2c77-a12a-6cb0-c49903eb420b@coolheads.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart175678385.NXxptrSSgk";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581087112;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Z22oGiFrv8QKxWvCyjXzVJlOuPlqkFgj6zflw+T3E7Y=;
 b=Qr2jYQALRpNJe/TgyhO9VDp6BzzNbxsPNh0C/N0wD+16H3zJqLrEE4pxvFV2KBgiE3aT72
 LwITr5NvMKZcD1K0dDIlWYO4ZfHofF5o0FnZC51Fv4G2q4azzRQ+l2bkAoz1wMKyJZZm+3
 +pXn+te4Xo0PlVQMBXl0MnyObykfQGI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581087112; a=rsa-sha256; cv=none;
 b=r4caHLJgQVqNOVbWTX20A1VV0LKXRG0ewkvfwPt6tZQFJkVVPfjYJ9Hkv0OuuyYZMCZn8m
 o09uXY5hWjiFdRlp3bBBTQd+Qrckc5R/y1gjVkYfyNNnPK1r4xbaIoSVzf69U2FRyJMHun
 33H5YHxlbFYDBWxUmLLnO4Fg1nbhpPQ=
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart175678385.NXxptrSSgk
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, February 7, 2020 3:13:47 PM CET Steve Newcomb wrote:
> @rpc152:/tmp/log# echo "$(logread)" | grep batman
> Thu Feb  6 15:21:13 2020 kern.warn kernel: [174193.938445] batman_adv:
> [Deprecated]: batctl (pid 22747) Use of debugfs file "nc_nodes".
> @rpc152:/tmp/log#
> 
> 
> What have I missed?

Hi Steve,

you can use "batctl log" to retrieve the log. It will not appear in your 
logread.

When the problem happens, you can also check "iw wlan0 station dump" and other 
debug files (batctl n for neighbors) to find out if the WiFi layer is still 
working. It wouldn't be the first time that actually the WiFi chip or driver 
has a problem, not batman-adv.

Cheers,
      Simon
--nextPart175678385.NXxptrSSgk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl49eYcACgkQoSvjmEKS
nqGUgxAAnc/PfrInPHsdHhkWKO4klpcGjOIY9CrU4HB5gATfhJteQt01aeWE4pkc
+4vcFcqHoxvrxTOlIAouXb0xqYlPiNRRw0gOu20Zw2V0a5br5AWZZXS30RjgMd7i
SeDylaoSE1LenU9kxdGfuW7Xqoy34ddrQyG+bXAGnQcDBewavntmYS2xLdXOwJF5
9Ud6YjnHI8QX4/0TcAKnuzsWGrcjBuZVmlcpQIJHJ11FoV/4IU9aO1YbyrH3ZF8G
kNKrk+dahyP+/VdIHZ314L/q15hJxlOo1fl2fROeq7+quf7w40lT+FUVmjli3W9T
5EXInhcj2Tu1Hf6bBJkaDjcOrB3y4fxOcDujJDBvm3cBpfrNge5fKShdZbbtq2Hz
SHsIm7Hsv7eQb/Z5LFDv6A4A+MJv8tNPQYm5BJRr1Lz11iz6SKwC1JxIa64IkQSn
CbMSOol8N3TiJW1HqME6C7sVmo2IpH/1yoIFzwnUcQyk7qAMd+TxjAOqog+66sY1
NQ5vV5UGPuMdwjvvGcAcgj7QQQsqLL2JZbPacDFc0cjJMG5AcV57zxQIrFg5wZFC
XoarvZzV1QybmhFzabxKCs/2suB5mSAL5ryQjVn8+k9V/+55DDdopBDT3FW4MMCk
fV/VAjXSUZGFZdRvNix2So/rIllEdd8ZFf8ztnGZjzdldvdLg+A=
=hARB
-----END PGP SIGNATURE-----

--nextPart175678385.NXxptrSSgk--



