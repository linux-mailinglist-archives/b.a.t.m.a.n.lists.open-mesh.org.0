Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C04931E5B1E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2020 10:46:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9368E80844;
	Thu, 28 May 2020 10:46:17 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 720268003B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2020 10:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1590655574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4s2abSRCYVXJU6MhhadKiBkzrfCQ6fPyLyo/TcTKD/M=;
	b=gZ6oE4n1DXEulUe+/zredMJiJtFoVLaVzhcjid1o9td7Q3ff1Hud8ykvc8JrWg3CZqB5cX
	sRMM+LXfx+dCzDdRtRGj5mPn7QdDdnd9YIoUHrvqy2XOWI8LRX85klSrsqOpPVqsHgn47C
	aWDK5K+TOgDhAQXpHCsx3ZfXEd5Y+hE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Network stops passing traffic randomly
Date: Thu, 28 May 2020 10:46:11 +0200
Message-ID: <1604470.nNDi8NNFrI@bentobox>
In-Reply-To: <20200528010507.832.61370@diktynna.open-mesh.org>
References: <32459667.Id32LJz2i1@bentobox> <20200528010507.832.61370@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9250599.HfWGjZVVKN"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590655574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=4s2abSRCYVXJU6MhhadKiBkzrfCQ6fPyLyo/TcTKD/M=;
	b=cNOeFt+qKAOUN1fGmv+DORNbP3StFHlTk+sGEJ52+lzwFyqSLbApXzmRVP05qVfxzxsb5p
	vyR2ERb8WHuiXEJDQjFXNmShOGnDipE9wOtZ+0iCNxUe0v9idv7LwPMQhz85H+yJFs7XF9
	qXf8GRDLj/E+a6aje0jR4CI1uLGPAAk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590655574; a=rsa-sha256;
	cv=none;
	b=aOQ6P2eYemrIx5rSR+UUrr3r0iMwV7+1YVsfDmlLlhAQ2u6YRVz4lhhW04zc3ZfuFgVPVd
	RYWZ2SMd4u3FCYsiLup1eFwf9jAcQ5yyZ8l0pPXZhGMzTnaa3DyUcD8NCORDUbWmjRJUYT
	5hbWlNERFWY2ycWE0eOIVnky5PYOsBk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=gZ6oE4n1;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: EJXMATVAQZ3QBNMWYDY6DDNVWQGZPQOK
X-Message-ID-Hash: EJXMATVAQZ3QBNMWYDY6DDNVWQGZPQOK
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: smartwires@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EJXMATVAQZ3QBNMWYDY6DDNVWQGZPQOK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart9250599.HfWGjZVVKN
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 28 May 2020 03:05:07 CEST smartwires@gmail.com wrote:
> When the problem occurs I have no access to the non-gateway node, with it is working I can do a ping

You said before that the ping on the underlying device (mesh0) is not working 
when this problem is observed. I would therefore propose to contact the 
developers of the driver for the underlying device to figure out why it is no 
longer able to transport unicast frames.

Kind regards,
	Sven
--nextPart9250599.HfWGjZVVKN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7PelMACgkQXYcKB8Em
e0Yx8BAApxMm66PnVDS2x21RXtJRjpm3W6V3EOVU0XH+LemOMAjKxi6eGx1jYfVH
+gx1E4HXKYhnhj/dWPoOPOWfn+Wm8Jheu2y+KuyO5dtY9WB2A0kYnga+rSS3URni
XjQBa4T5Yayyq71d35sAghrJhc4/vZl+uOfofRO2PLtCsy3UY/xdnLP3skKQ52r/
grfciQOBsFLq+U3qcxdrZNCZvgZl/vJti732PXQQ8P3oUXpw+v7Z3IFbFc5BBwP5
4Rt2YO/M+zIBNPWecENNBvURrg71DVCexKLGDoEM/dOOPmVqvPN+BDPXz0Kgtnmy
G/UH32kj3KlcN42Vxi/3eHgUHUFQUnpx7Ss+VMxxWESC/98rnqnmujoJ/0mYQaAG
/1UQ6BBakLDl+B7wTepspMIRoBPhlOaL2NKiJxS4YFfAeiU2xDzzDVslIQ4pdG9G
zXx4Mq3hgQIVjVseMQRjew6FMiwZ23+phYISBy+aZg5+i+RHr0mZ/LgJ68vwOEdx
u7Wq1tpXpzNn7N3PRlp40x55hPCoLDkChCWq8pDCnKycSSxYPFF+KqFAiWH7u6h1
IkpemlKs5ltMEQGMNiwyh48lZilSwodSeoqrOYBMTep2aou3+J/dXL5Sx7vBcZ0T
Xnqq7gTEj8FJHB7lfvylsOpY13rji5+jP4JH0Rd39aMET3SxSBM=
=2ild
-----END PGP SIGNATURE-----

--nextPart9250599.HfWGjZVVKN--


