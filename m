Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BDA43AC78
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 Oct 2021 08:51:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 542F08279B;
	Tue, 26 Oct 2021 08:51:55 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C5360803C8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 Oct 2021 08:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1635231087;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sXZPCO+K9iz6r8Jr0Y1Mf/siG+PaXpPzZyiBwgb6O9w=;
	b=yxR4432YXVP55R6tvO9S7z0V7PS37LdEYb0R6SB3NftKxzUdLTprlerIIvTqdsvF63HsUJ
	GFpZKCGbof7ydV/7Mf/6vLVbrhBjye+5wgonKlzuVZALn5Y2qFYLM5VbKY0anjb6DuqEly
	RslbsRh6W9Q2JrouFJumUJumaDivKI4=
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH] net: batman-adv: fix error handling
Date: Tue, 26 Oct 2021 08:51:20 +0200
Message-ID: <2283323.BJRDQVktmA@ripper>
In-Reply-To: <20211025174950.1bec22fb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <2056331.oJahCzYEoq@sven-desktop> <2526100.mKikVBQdmv@sven-l14> <20211025174950.1bec22fb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1884404.dNYcoPC7rg"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635231087;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=sXZPCO+K9iz6r8Jr0Y1Mf/siG+PaXpPzZyiBwgb6O9w=;
	b=Ui7CJhPgi9CnNAw74XiyRsm1wK54+pDnsHhVQvzXdDrAVsS5d4zNBuo8avnQIXb/KVcBIt
	CvpcnXH7EaMYqe1ARsEe1lEoRACgXKRHQwgWneZx5vQngmqHXtbhuXN7cQl4GOF4APOx20
	qlPusOMHju+bP9MYC9RvgJqmFZiwAFk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yxR4432Y;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635231087; a=rsa-sha256;
	cv=none;
	b=Z37HMzKV2bmBlF6J0c3mauyILmyQoeimE4shJKPgYgpfDkF5m7dQJcdyWH6nxJ08oXXoKy
	LtgJI2r0qjXAnxLIUXMqQ7NA6epTxHLdrJg8vry4Bh7Hk5jm7ZGI8ynoxgHNJ4CXBNnWxA
	7j+QjCoI4/pppuuSiwhEqkr83QGZIBE=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: ZAAROIZ74V4MWJ2TPFBGJE55A7XRCC6J
X-Message-ID-Hash: ZAAROIZ74V4MWJ2TPFBGJE55A7XRCC6J
X-Mailman-Approved-At: Tue, 26 Oct 2021 06:51:51 +0200
CC: a@unstable.cc, davem@davemloft.net, Pavel Skripkin <paskripkin@gmail.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZAAROIZ74V4MWJ2TPFBGJE55A7XRCC6J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1884404.dNYcoPC7rg
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, Jakub Kicinski <kuba@kernel.org>
Cc: sw@simonwunderlich.de, a@unstable.cc, davem@davemloft.net, Pavel Skripkin <paskripkin@gmail.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com
Subject: Re: [PATCH] net: batman-adv: fix error handling
Date: Tue, 26 Oct 2021 08:51:20 +0200
Message-ID: <2283323.BJRDQVktmA@ripper>
In-Reply-To: <20211025174950.1bec22fb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <2056331.oJahCzYEoq@sven-desktop> <2526100.mKikVBQdmv@sven-l14> <20211025174950.1bec22fb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>

On Tuesday, 26 October 2021 02:49:50 CEST Jakub Kicinski wrote:
[...]
> > Acked-by: Sven Eckelmann <sven@narfation.org>
> 
> FWIW I'm marking this as "Awaiting upstream" in netdev patchwork,
> please LMK if you prefer for it to be applied directly.

Please apply this directly. Thanks

Kind regards,
	Sven
--nextPart1884404.dNYcoPC7rg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmF3pWgACgkQXYcKB8Em
e0ZXrRAAz8YPPokOa159qdcM2v2sLSPMwVaTHKdKXPXvXPJa5pZuzHLvHw/JB/+M
TjW4etUJiDDzrwG9Aqhc7jzAYSZYqLVJWU01NKtE7ZO5LcC/nutOFy6jjP/AhzAX
O+NTKuCK6hIsLhwqdmXWsH/1erL4VB0yPhOeVS97ue0cK4gnF8dwABguDCZQwMhc
cEYyDB3D9UO132lIHXagjTnVe5BSjFhDMragJOyhAScxRF+ky5F9P7Z0NuoKD7l8
ExOb2hhWtSzPengt+Y5cGh3DygrhDLxisWFD+k05xj2KvhGWH6+oD8xsI8GppL9u
H1AJrzKGNRt9w7qEAAU2hH957NzkMnTplGCPtjnaSGDb4UtqVDthYPcIsXF7qW/N
+QASHuogp8zoavb+5eRgRI0dEfPr0epwAwT8VeBpMD4Ia8+RZeoKv89koXM85O3m
MxvQ2uhCUAASNvhkcSVK5dK51kg3WJ7YBCofIU+882wOeb8Ooz0qR0cyOLACV1MV
zZx4DFRsBOSSrL2TL2f3ljG30hyH4m0jIZ+TWewfQYl5E4kXnT15rrDFL/yL7MXD
j1BJuZ0mR3276a1MOh2rAJ0w//xOVLjIRe5ogTXPoB8K49tTjwxYasfZQPu7v6R5
vQzWC6AHBvxMXu3S/+mX0YosasEQItbsGZq4TDGBqegGFaw5hr4=
=o3a0
-----END PGP SIGNATURE-----

--nextPart1884404.dNYcoPC7rg--


