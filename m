Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 30834551957
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 20 Jun 2022 14:51:04 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E05678079F;
	Mon, 20 Jun 2022 14:51:02 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8395B80158
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Jun 2022 14:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1655729459;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HbRcbV5aUAaIFds1WflK3bdor2Le/m5hTApqlq9Lig0=;
	b=fdRH4e22J5Oj+R+YMCV/lhiuwr+HjCqSrtw9cnHHERUUblsqLjQa/hk8/x3JXnZ23Mfp0K
	Picve93iA2VgkePKA8feaAjDnYxli0MaR+zee3DUau2S2LEfwmH5QsmKKYXTgD83nxYqsQ
	F8lFARupbrwzYRcQE3ALYEEIniOkPfo=
From: Sven Eckelmann <sven@narfation.org>
To: cchien@creonexsystems.com
Subject: Re: Question about batman for ARM
Date: Mon, 20 Jun 2022 14:50:54 +0200
Message-ID: <20961862.b4RiU9qLUR@ripper>
In-Reply-To: <014301d8848f$5874d0b0$095e7210$@creonexsystems.com>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <3826484.QQW5a1qdB9@ripper> <014301d8848f$5874d0b0$095e7210$@creonexsystems.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart20699880.uRv7U2kVex"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1655729459; a=rsa-sha256;
	cv=none;
	b=4KZ/Z9kpeyfSFb2okNUCpTsdFTnLq1vx5cmZfO2dbf9W4dDLgq2s0+i8NZSOClFusIqCrg
	xcyimYXn/uEvoZHRbP56ziG4KfxeM1Aj0Uz7WnVtUsdwaZpRme+6lyPfqTJSXa2V8QyOTz
	fNtyewwavFJGNNf4nZd5emmFLIkvjTw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=fdRH4e22;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1655729459;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=HbRcbV5aUAaIFds1WflK3bdor2Le/m5hTApqlq9Lig0=;
	b=ljmreHCpnk1BZpDf+flmG+wNFfSZMOWLrUbH400W6Ri9r8mcOF+AMJLfP5Odn5nRIBbtdV
	6syH5jKM2p0uNbc5JLKH+xPiqGNegly0FrpOI2qYjZmBCCE1nJgBESpYzAQdoB+y+uAeqP
	C0N/LSY+hp5kC1jieTx78P5c1Fqz31c=
Message-ID-Hash: F7A6CT3FSZVOJCWKASY4YMS5XOGXXZ4F
X-Message-ID-Hash: F7A6CT3FSZVOJCWKASY4YMS5XOGXXZ4F
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/F7A6CT3FSZVOJCWKASY4YMS5XOGXXZ4F/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart20699880.uRv7U2kVex
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: cchien@creonexsystems.com
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Question about batman for ARM
Date: Mon, 20 Jun 2022 14:50:54 +0200
Message-ID: <20961862.b4RiU9qLUR@ripper>
In-Reply-To: <014301d8848f$5874d0b0$095e7210$@creonexsystems.com>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <3826484.QQW5a1qdB9@ripper> <014301d8848f$5874d0b0$095e7210$@creonexsystems.com>

On Monday, 20 June 2022 12:20:19 CEST cchien@creonexsystems.com wrote:
> Does BATMAN ADV interfaces with the radio via the network driver or does
> BATMAN include the network driver?

As said before, it is interfacing with the generic ethernet netdev layer of 
the kernel. For example in:

* https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b890252a865efa91:/net/batman-adv/hard-interface.c#l727
* https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b890252a865efa91:/net/batman-adv/send.c#l108
* https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b890252a865efa91:/net/batman-adv/hard-interface.c#l185

There are a lot of other places when it uses the abstraction interfaces of the 
kernels for ethernet related communication.

For B.A.T.M.A.N. V, it is also trying to get throughput information via 
various generic kernel functionality:

* https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b890252a865efa91:/net/batman-adv/bat_v_elp.c#l67

There is also one detection for wifi interfaces to decide whether broadcast 
messages should be repeated or not:

* https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b890252a865efa91:/net/batman-adv/hard-interface.c#l877


> Can you provide some guidance on where the network driver or interface to
> network driver is located within BATMAN?

It is not talking directly to the driver. It is always using abstraction 
layers. Either the normal network core, ethernet or cfg80211 abstraction 
interfaces. But these don't abstract the requirement for ethernet 
compatibility away - the underlying device must provide this either directly 
or via a wrapper. Just perform a `git grep -e ETH_ -e eth_ -e ethhdr` to
see that it is build around the concept of ethernet packets.

Also things like originators and the complete translation table only works 
with ethernet addresses.

Kind regards,
	Sven
--nextPart20699880.uRv7U2kVex
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmKwbS4ACgkQXYcKB8Em
e0Zeig/8D6/qjebcv1juFxgH6K+OAFC74CXh3i2NBtfRt+P2Qdow87Hg6SXCfwxo
zqvU7KkK88RNPXb+uMBoSjLrdJs1WugUZ99aBcSa0FuifjTcJjRf5qMAmnsOZyW3
zwwxgaI8fjU8StfqSFGGCrIXz7hdQhbJTA4YCYM6EMxYB3pOXwrQWy4xxotbpKPs
9FyLpe+Gp8EflWK8vrq7qjaV7oqhaJ2AGA27iBOFKhkWVkMrHy1lC0afIgXKvajh
QTsikRPbt6Ig7GiS6AqUU3BeEAel15ytIoyAv1/5sH3vTzEXtP7yUuozGfeNZ4p+
nEJ5X/eNu7chZLUiyp+lxkG2+E+DKLED59N3r2uWkEcN/PDQXoeluuKZWmMRAUSu
7C0EW5NzfXeNXh7trXGAV4Xqyytaxyt0oh1A1TUU0e+4YOs78Uqwp8Ed/M9xSGOz
eYZk+sQ4o8czruuW4eiIQPtu3PcEOp+Z7LLY6KVKCJYTgYmIyTiHL8+5r7lc8vmb
aLG3N62+4+d9jP1Q1eFjfRuPa+Cp935WswDX2FvVtFt2eu2fAmxphNJYaitphIsI
VFLC94lCOAOkQE3Pia4M2jOR5d1j/qNbmNvqfJ/vqo4EN/rbn3DDf+TcECFQALPn
biiPHbxykaK/e0NDNAHUx+dgC7ek2HZZz3HQs3fQi2uVulnaUAo=
=4gz0
-----END PGP SIGNATURE-----

--nextPart20699880.uRv7U2kVex--


