Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A435A48CD80
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jan 2022 22:14:25 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9F73283E68;
	Wed, 12 Jan 2022 22:14:24 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BBAA783E4F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jan 2022 22:14:21 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 4/4] alfred: introduce 'server status' IPC call
Date: Wed, 12 Jan 2022 22:14:15 +0100
Message-ID: <4305571.4q7vW2cpkv@rousseau>
In-Reply-To: <3214693.Z0pQRKLR2l@sven-l14>
References: <3748133.vRqKQLy7FI@rousseau> <20220102113136.470299-4-mareklindner@neomailbox.ch> <3214693.Z0pQRKLR2l@sven-l14>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1666924.J7kI1vASPN"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642022061; a=rsa-sha256;
	cv=none;
	b=O4OOSiQgJwUideI4+pMAxCAO0MiHo/c8zrZGaBIX/QoFgLV9PUFcugBljTGtMIZkWDfxbQ
	QUqQAoMHy3a9oFF45PL/QqyDEwHSfkJOQXUva5SjLV0x8JgsF8qOj96DdzenLQ7jmm/vIw
	phzjFmao8U5qnqFY2ELR+w+UfZ/xrBM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642022061;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=q4ZStzo5i5GfPquJBDDqPDvBraPkdwGPXVpM91zqiBU=;
	b=crDHpzVdjulGlbYRjOB5kQEoAKEZG7lfD4Ggpv0gVGozLhA7HeLT1PHi7z0Yr4O67+qvh4
	XSlJZ8VyzrszPW3IDmuyOAoYaqVjSSXwfU2NlutmM45GshzWs7zBYFMP3vCsqRicD9ZluZ
	qeQoWCVTc+71DmFM5fjoLzXCUl/28Tw=
Message-ID-Hash: 5QZNR34SCLZH7P3EVFYP6MH5J6TV3TSL
X-Message-ID-Hash: 5QZNR34SCLZH7P3EVFYP6MH5J6TV3TSL
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5QZNR34SCLZH7P3EVFYP6MH5J6TV3TSL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1666924.J7kI1vASPN
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 4/4] alfred: introduce 'server status' IPC call
Date: Wed, 12 Jan 2022 22:14:15 +0100
Message-ID: <4305571.4q7vW2cpkv@rousseau>
In-Reply-To: <3214693.Z0pQRKLR2l@sven-l14>
References: <3748133.vRqKQLy7FI@rousseau> <20220102113136.470299-4-mareklindner@neomailbox.ch> <3214693.Z0pQRKLR2l@sven-l14>

On Sunday, 2 January 2022 15:43:37 CET Sven Eckelmann wrote:
> @Simon, would you prefer to have a global "status" message (which cannot be
> extended in the future) or separate "GET" queries for the existing commands:
> 
> * ALFRED_MODESWITCH -> ALFRED_GET_MODE
> * ALFRED_CHANGE_INTERFACE -> ALFRED_GET_INTERFACES
> * ALFRED_CHANGE_BAT_IFACE -> ALFRED_GET_BAT_IFACE

Another option would be to work with TLVs inside a single server status 
request. This would minimize the number of added packet definitions and retain 
future extensibility.

Cheers,
Marek

--nextPart1666924.J7kI1vASPN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmHfRKgACgkQU1VOj+62
HMBbqwgAuPJgAEZZ/j7jRvBbOeDNK96krIhmiBBhMDL8nTMXsfJlD/+A6K96Kg05
Hh0SoWwjBXuw54CL3hBFWsKr29MRazND80/XRzLwY1jJaVnB/y3FIVJ4B3pzgA2b
bELwCQdUUfOBlsGBhXXPB6UyDMEzGbmFlY/g3aZRuO2PS87h91LgE4UEGvaE9GyM
fD1UmiTTAVtbtw1ZBY+merlQu9Fzb5tYdeDn+mz382hZ4Ul/Eyz77kn9WHtiOzw8
rqbSKogwtyuZjS4KetqjFuSrE3gW6zJWbBFqGbblVlmJHcYn+GQ0u+ve/D2znsbj
xQt3inNbHnKanGH78v+MLmLJ74KJ3Q==
=2Vye
-----END PGP SIGNATURE-----

--nextPart1666924.J7kI1vASPN--


