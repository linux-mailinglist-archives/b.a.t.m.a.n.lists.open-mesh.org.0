Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DF31E0F57
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 15:22:48 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9C99D816B8;
	Mon, 25 May 2020 15:22:47 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DA83A80170
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 15:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1590412963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vlFvFKBabilxmmmze7EGP5uYAVo85GEMxL9PeLUN0c0=;
	b=B9YKHMpSYAw8PDMZX/bsyGTxZRpH1b3EasW4Ev/uMXSX17G2JBoUI9EYUfNOh+iqv3z1HQ
	GvUg2fOx+lEyK4DwnfJ9XXhfUFU2y8qyaZXgaJtX4S0B7siO57ZFGytTXIZsbz6gAlOQiC
	Sn7lvwW0P77zbgc/9Lqe1+yswi8nr8M=
From: Sven Eckelmann <sven@narfation.org>
To: Daniel Ghansah <smartwires@gmail.com>
Subject: Re: Network stops passing traffic randomly
Date: Mon, 25 May 2020 15:22:35 +0200
Message-ID: <2567784.gV1U3syDZD@bentobox>
In-Reply-To: <CAL3ir7+RWLrYOzjNQh1VwiKg1sxSgHZMwwqx=9xSfXFnFjE_KQ@mail.gmail.com>
References: <20200525083512.832.13419@diktynna.open-mesh.org> <32459667.Id32LJz2i1@bentobox> <CAL3ir7+RWLrYOzjNQh1VwiKg1sxSgHZMwwqx=9xSfXFnFjE_KQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3978634.na8LbQeXfl"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590412964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=vlFvFKBabilxmmmze7EGP5uYAVo85GEMxL9PeLUN0c0=;
	b=dofQciHbmaSJRFU6SYizeTiNCDW+gaai+VOVr8CEaRLnspi2ks7LkprQb+UBTAzeJ8+9fA
	FhRCEwtJgwe/AAImoedcNxIPZDWmXECvzqcZQtSDGlSi2DJ3fyxevdN+fqyPGWBudXAP4H
	TrEJOMHWHjG14g6KXtZI9/SGXGSbdHw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590412964; a=rsa-sha256;
	cv=none;
	b=MGsXwC6UKByGrPzfDonKZA6oSSFOPgi68oZLpnjNNa5gcdXt2gHrNbswrLTB2bjoVfX8B6
	K3qWDumxNwxxkV0E+uXtdHtXNVpenTa/zYxm+yrWSdTL5X+1L4uGhPwm7sCEXtydWTJ5wY
	0fhc4KwbPGcpq0HWzG+14J0FoSvfyEo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=B9YKHMpS;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: YKMH4ZX5B5ODXZHPJBNIRBWVJ4QID5DF
X-Message-ID-Hash: YKMH4ZX5B5ODXZHPJBNIRBWVJ4QID5DF
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YKMH4ZX5B5ODXZHPJBNIRBWVJ4QID5DF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3978634.na8LbQeXfl
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 25 May 2020 15:19:22 CEST Daniel Ghansah wrote:
> Hi Sven,
> Yes I did ping via the IP, there is no response, I am using IPV4

Ok, when your underlying layer (mesh0) is not working then you should not 
expect batman-adv to work.


Btw. the `batctl dc` output doesn't look like your tested the IPv4 ping
on mesh0 but on bat0 - not what I've asked for.

Kind regards,
	Sven
--nextPart3978634.na8LbQeXfl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7LxpsACgkQXYcKB8Em
e0Y0yhAAlTYTug2ywa55d7AFRBnJuITswGs6JdiDNRfMpflk5Er/tOsV2smHyAgk
dlOzKBZ8mjYWGx0WgTuho6f72RCBamb2hR+8554R8AVMhJgsVkfKQ2apdB/GqYF9
HMPSClzIYPUvIkQv37FocLht/c7MkNlHFumMnyz3VDPYFcbZnrKA9QKRMutXGSoX
6+ei4mSqd7ArVwoDJdkSkdSaaASAGCa1HBzniXqIfRohdvPv4jSYnl4spZPTWVhD
lznaRpkrX4hRZOiUUSuTy+c/W85MVDYNxopqoon8MB90AvQt0Uvbhpx+nGLZHuoV
LwIlJQ3eNFNj0BMD/RliC22wqJwK9OAMd10mIMpchXPe0h5VaXNWXIsLbXbtOlf/
W/5OuK4IiZ8c3ZV5aheCcGVWi0YStdQ/Y2ylGmloQSqKNcPNY9ISDopo5COaj3uQ
2uiUs8Li7VcHV5ixZw5GSKmzcTz27wNGRf4t7Un4/EMgUqsAW8jPN+L9W7d74PaH
N16rZl5lGG4pHGAUidFzvDhVyKDMAMpCBumXa64Q7gQrDq4YuOSwaS9A3Kcc8RrM
MC++Tlcf6MAUt9kry/gNV32csiERwLZyiB3a97yYDciww9h45S5J52WxLQNvVMWd
SNxEgvUHgtQjmWZd29W1QvYon5BC/w0VbMYmW3kq0fpBXzBTTjA=
=RCLK
-----END PGP SIGNATURE-----

--nextPart3978634.na8LbQeXfl--


