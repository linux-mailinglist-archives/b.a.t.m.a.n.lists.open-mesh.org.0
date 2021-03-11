Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E04336C99
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Mar 2021 07:56:48 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A5A7D809BA;
	Thu, 11 Mar 2021 07:56:47 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E2E878026B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 11 Mar 2021 07:56:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1615445803;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ooPcxDI1T1oj0INouzVT6HtuXHVUINu5xq4g6Fkxjr0=;
	b=GUSyqytgUlaJSMqK/nETM+Lqdshn5H0Y85fOdy0Tnx58fdCEMY+C3072+M9CqueFNZ0Zg6
	BOaouxky/TmJT1pXW17sPr4vjzMB2Qz2BmkE3OZYiMXiB9Zlt9JIcFumPV1Slz5/p5vuEa
	6Lwvp49PHr+n4Bu2mm3Y/7yTpJs6YKw=
From: Sven Eckelmann <sven@narfation.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH] batman-adv: Use netif_rx_any_context().
Date: Thu, 11 Mar 2021 07:56:33 +0100
Message-ID: <2086855.pniE3fA9pN@ripper>
In-Reply-To: <20210310174919.5iwcumc2gozapw5c@linutronix.de>
References: <20210213170204.3092113-1-bigeasy@linutronix.de> <10903423.uF0vj5h9zV@sven-edge> <20210310174919.5iwcumc2gozapw5c@linutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3305807.9h0JGQIaLG"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1615445804; a=rsa-sha256;
	cv=none;
	b=ZWdjI8mDpOZ7urg/WGaPFIeSENJ1AYg/iJxTzwJDdcSz+eineUeBaclARE3aswHFqN4Gsn
	ojMGnXwdWy+Y0d+bA3QBmmLGlQRhBVO+QPn5bmMEErS+VePxRZRLI511GjlyWg0UwoXIeR
	gk6Mv6W4B8LMcG70UHpi/Wdni0Vhw5A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=GUSyqytg;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1615445804;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ooPcxDI1T1oj0INouzVT6HtuXHVUINu5xq4g6Fkxjr0=;
	b=n7s9qCjh5bXULzqZYNJ+KaArUNplrGNj6TRx5CaGdIUGKkV/wOzeSYBGQ94YimnzUykZ8n
	YiPXLtfW74cfmXDivTVLG0Sjprk+V8QnNugwWluD15XYFJ7pGTHw2jv2QEtViyRoYzjp8x
	1kehHLqTsraxYX3Aooe2AlIcB2szAsE=
Message-ID-Hash: KO2WUQMXANJ3KSIODO2MW6VZPRFCXBWA
X-Message-ID-Hash: KO2WUQMXANJ3KSIODO2MW6VZPRFCXBWA
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, Thomas Gleixner <tglx@linutronix.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KO2WUQMXANJ3KSIODO2MW6VZPRFCXBWA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3305807.9h0JGQIaLG
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH] batman-adv: Use netif_rx_any_context().
Date: Thu, 11 Mar 2021 07:56:33 +0100
Message-ID: <2086855.pniE3fA9pN@ripper>
In-Reply-To: <20210310174919.5iwcumc2gozapw5c@linutronix.de>
References: <20210213170204.3092113-1-bigeasy@linutronix.de> <10903423.uF0vj5h9zV@sven-edge> <20210310174919.5iwcumc2gozapw5c@linutronix.de>

On Wednesday, 10 March 2021 18:49:19 CET Sebastian Andrzej Siewior wrote:
> On 2021-02-13 18:10:29 [+0100], Sven Eckelmann wrote:
> > Thanks, queued up
> 
> Thank you for that but I don't see it in -next as of today. Did
> something go wrong?

It is still queued up but not yet forwarded to net-next because it is the only 
patch at the moment.

Kind regards,
	Sven
--nextPart3305807.9h0JGQIaLG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmBJvyEACgkQXYcKB8Em
e0b20w/+MAx9wWcvQTI0fWP21mE5+W0p5rI9cKw0ugCf+h9mA41HU8duLwQQ6O5G
lgWUQh7b84446YDIlIPCppNv5rSQVQETRazyJIHQIPyYmkq4BTUFB5a7u2ykCeXK
npfJ6ElmG0B7e2pjbhfI+d/n+cUF43BzlDXXNqXZsnEyYm2AoAonUvzPO2F3HHab
Zir0DtD09PkZLppckaIDDFsUoPTbpc9ItXR+Bxg6enRq4Y8l0uiPAP4BBVvi2k21
9owrfVdQXUKky1KDDic7Yp62B/9MK+aYStvoMdp4dF93ZN0oPCebBfJVs3wCzKfQ
Zi1I/XTAcr1C8s3hBj6HtWdeWtL+2SH2qaizbrOieKs+YJtcHtYnh+T4XepuHmRa
YSpSgaYFOwXYVhbiAsLWVRLCl/ifpfUOORgvIEIxuokP7UNSAxRsSM3m2vQG8Qzg
XdURZAWw1hivDFC7MC40Y0htjp6qUEP/e90J92Dmw/oAXY6BFABXDd1cESpfSStP
VWrx7SlRoFvW48eAmZRLRPyST9lXM9Nj3oshWsChXA0/3Z7eHXEyxpWmrLS7SR3g
tJfYioGljxldMXBNV9hjsZ/axe6954FpNZTR7NkT3X/JhBCTy8u5DiJ1MZlknkB6
qR/2MxBCEHpcgxhTFzJnTzLC1ULh32E9P2qK3xUcT4gRwdeZDvQ=
=lbVm
-----END PGP SIGNATURE-----

--nextPart3305807.9h0JGQIaLG--


