Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D65EB3972C6
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  1 Jun 2021 13:49:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A95FE80815;
	Tue,  1 Jun 2021 13:49:06 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A204180302
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  1 Jun 2021 13:49:03 +0200 (CEST)
Received: from prime.localnet (p200300c597130de0acca9100f03fa09c.dip0.t-ipconnect.de [IPv6:2003:c5:9713:de0:acca:9100:f03f:a09c])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 37B1D17401C;
	Tue,  1 Jun 2021 13:49:03 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: irc update
Date: Tue, 01 Jun 2021 13:49:02 +0200
Message-ID: <1780221.LRIVs05ek3@prime>
In-Reply-To: <03d08eeb-a314-1fbb-aafd-1461826feaad@aiyionpri.me>
References: <03d08eeb-a314-1fbb-aafd-1461826feaad@aiyionpri.me>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3515367.95OOGIM4RP"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622548143; a=rsa-sha256;
	cv=none;
	b=ZDQBYZXIQ7P6W2k91sPJBUWXCAhPTh9VRNmc7YJzEjbXb+X4Fa8pEJScdNjKKtO9noroQG
	6PWa/9L+OLMppalO6O865Onk5/oht2y9BQolAsVpIkAHYh60UskKKoA1bIz1bz5UJZ1eyp
	ocPf9TJmZEXcuS2X0xx/AcVD0fJweHc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622548143;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m6AadKE44UNFG5gP8pG6S3mrbroptF0weaLNB+v8fwY=;
	b=UF2GpYnERI+kVIKgv1fwzqAbB73pH0/2axJvQpTRXARr6DMsRHiXlghQduBDxW6GgFVp6h
	aYuY5KPvwonxFVw3+d+nbkI5pZzIDw1ZKdix60GqGTVimQpuISpRBaFivW64+9Gm/OJ3Xv
	dZkg+2V0NJCzbNR+nZrNBFiX3X4yxNs=
Message-ID-Hash: KNXGWQ76ZFTFVRCXDRLHAOBDZ4332A3D
X-Message-ID-Hash: KNXGWQ76ZFTFVRCXDRLHAOBDZ4332A3D
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "Aiyion.Prime" <batman@aiyionpri.me>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KNXGWQ76ZFTFVRCXDRLHAOBDZ4332A3D/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3515367.95OOGIM4RP
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Aiyion,

it's a good idea, if we migrate we will announce it here and on our website on 
open-mesh.org as well. We have not made a decision yet.

Cheers,
      Simon

On Tuesday, June 1, 2021 1:35:42 PM CEST Aiyion.Prime wrote:
> Hey there;
> I just dropped my freenode connection for good and wanted to ask,
> whether it'd be possible to announce via mail, if and where #batman
> migrates?
> 
> Thanks in advance,
> Aiyion


--nextPart3515367.95OOGIM4RP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAmC2Hq4ACgkQoSvjmEKS
nqGhRQ/+N7iDHKf9Yjg8Nvif0n5aB5IqZE7Q2BpYMVtHwxvm0lImd7m3VrBWKCeF
mSQIWExPsyEzprfTeZfI66/UzGahDbyTqqyzqU/k4PdPd/er78cMVBXxoNvV7YYM
nIxCfq/84KZW2HT7ZqwkrpkGaO6wansYT/ticdCs0dNH1sM6vbJ/JyQ2NikDhCZV
0X2bzK5YDG6niYSm16ECLLL4IqNkY7zDEEyJBmlUofI8y5qlLc0hpKVsjDwrefxL
8F0tlAHldZ9U7IGkJhsiHwxT3Lh5CJMDUrLpYKbTmmcGhLz3GULSspMvCnr6tO4R
k+iGtiEqWCpaxfGtb9lNf8Xh27SXv5eOJKCeKzPXYiXKvkvY0QSlnMiVuBalDRtS
HxnCHBHLFvKnfBoqbhigJdljbUo9znlO8PLh09iUv6v9IVZY4DamF3qCeo0X2GL7
bXpboDaJrh2GXGte+OHH3n5OGD44MK4vp5foBXxkTlZE8AiqjPacgJpkeySMDHI3
RgN/a9QjOmpO/CI1fiwebcqfrImAYqh8NzWlUSFaYaEQ0X061vM+5SucIb/vXfUE
Vv5dutwK1xg9tl+V6/W5jq5AU020ijqvHH3LRr8Avn85EyJE2md2cCMG4MF4lXgj
YhF37yBSRNexOKkjc7yQxEDNMkbyl+vByriCTR2YAy7GwwAEMH4=
=86xw
-----END PGP SIGNATURE-----

--nextPart3515367.95OOGIM4RP--


