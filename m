Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0502948CD76
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jan 2022 22:11:56 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E278A83E5D;
	Wed, 12 Jan 2022 22:11:54 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 34E1D802D2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jan 2022 22:11:53 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: alfred: allow startup without network interface
Date: Wed, 12 Jan 2022 22:11:48 +0100
Message-ID: <1799242.Gl11JrvVGs@rousseau>
In-Reply-To: <10410848.OOsao9LFFs@rousseau>
References: <10410848.OOsao9LFFs@rousseau>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5759643.jAoCkZTbRQ"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642021913; a=rsa-sha256;
	cv=none;
	b=mnixux1KjJXmKftTZn8F7gBhAlz1xg6TGcpRzyj+Fg32C3CLcSx5+DnFz2xqQ2rSMvGfbf
	a/TWHtvZGrbXXq9nMoJglzPVRekNbr5ciAiun7hlSbk/P2hVzBbRVaKj4gXQWm4epmF/PG
	6PJS6CD6ixBCvv92QoKxmz5CKDFgZ3E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642021913;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UJJU3krlfB7lKFstElsyMwTenjtar7j3hDo2/dt7/4s=;
	b=G/5Ki3wKtgqfKkVzEaFuPO4VAx1BZI2kTV3JUdFAxexTyIOH9Y2WkcCvVNZVosxumItKQR
	pMosL+a0JJ4IbDO+rRf0D42C6rGSCYJOoCMs6m5Ajv0svVuZnA+GYuEkwkFSwrlwCT8rXE
	lklrIhswAIxYYMpqvm2U0vW88JBi/Ao=
Message-ID-Hash: QEQULPRB5A6P7AXOIFN4WBUXJOSGLBP6
X-Message-ID-Hash: QEQULPRB5A6P7AXOIFN4WBUXJOSGLBP6
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QEQULPRB5A6P7AXOIFN4WBUXJOSGLBP6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart5759643.jAoCkZTbRQ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: alfred: allow startup without network interface
Date: Wed, 12 Jan 2022 22:11:48 +0100
Message-ID: <1799242.Gl11JrvVGs@rousseau>
In-Reply-To: <10410848.OOsao9LFFs@rousseau>
References: <10410848.OOsao9LFFs@rousseau>

On Wednesday, 12 January 2022 22:02:58 CET Marek Lindner wrote:
> To allow for these additional use cases and keep the current behavior, the
> interface command line parameter shall accept 'none' as interface name
> (similar to the batman-adv interface).

Forgot to mention that these patches build upon master and:

* alfred: Avoid large send buffer for fixed size IPC commands
* alfred: Simplify calculation of fixed size IPC TLV length

Cheers,
Marek

--nextPart5759643.jAoCkZTbRQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmHfRBQACgkQU1VOj+62
HMASZwf/UBOZitHr0CI2P/adkaw8DtCi/4X3geEk9zSjm6vtbft/650O0pe/aKHI
8beCjnR3B1v/wy2L4HkrKB2Xn6OSezgSPPWHcD8si9U+6MAKWR7meDFNVIXBW8xg
ZzOqu6DazhD8SaVDG7hHwkG1deaWe8YDa7JPNtuiWnkcCX+mojHxY/7uDV10ORzc
s/YQHTNMknG2WFwAaMdnK9Riy5K0Ary/0Joz26Vih78unrja6ANxpmA3eIvI/oGy
wONtwSewt97o7e7dA+EMh3fFvFdfNFoSJWvNYtVXodQ2WBVch4kXpBF3RxFZAczZ
3crym3f6CUsU4qyh/0DNwEwyUNeNpg==
=7x9N
-----END PGP SIGNATURE-----

--nextPart5759643.jAoCkZTbRQ--


