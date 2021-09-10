Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0FA40678C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Sep 2021 09:15:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A840B807A7;
	Fri, 10 Sep 2021 09:15:35 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2F80B80122
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Sep 2021 09:15:33 +0200 (CEST)
Received: from prime.localnet (p200300C5971573C0061aAD1FBF0446b6.dip0.t-ipconnect.de [IPv6:2003:c5:9715:73c0:61a:ad1f:bf04:46b6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id BECEBFC4CC;
	Fri, 10 Sep 2021 09:15:32 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Bonding Alternating
Date: Fri, 10 Sep 2021 09:15:18 +0200
Message-ID: <8679334.VDzE56WMh6@prime>
In-Reply-To: <20210909200939.1153.2026@diktynna.open-mesh.org>
References: <20210909200939.1153.2026@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2376895.ekzGPWulC6"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1631258133;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kKAdrWeqIH5f9JlHGzHr3zrjFqfswOrBQfmA1USmBn8=;
	b=0jP+9QwLowJ34VBp8WCPOqvgqkLjNfH72fnNwSVjeFoSxg73jmeAo5zpRGQnfYlVAqpsov
	i8zoDe7lYiEgfXBMmlk1k47w4/8aL//Xg60o7PRuYS246nu+IJH2mMzvERY2tT/LbG2Nxw
	BoBXqpp0OYOI326QBYuBtK8j6RaHgww=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1631258133; a=rsa-sha256;
	cv=none;
	b=iR5PvJhA+R/oc2y+1LcHsGXm4ZrhQ/MUFONu7tW1FkXCD91A0EqCSxPFAYqNYksjB3g7nB
	SApghRCgq3X3DQpubjNx9pmdHKumI26FCyYyTNSFMIBwuoN7BBjD+OINFXIG+EkNa90OMr
	Wlg4m0baPv5fYoQ8Ywd9MI6DtMaziys=
Message-ID-Hash: M2S7QSKSB2LOEUNB6JXT2XKIQT6IMZIS
X-Message-ID-Hash: M2S7QSKSB2LOEUNB6JXT2XKIQT6IMZIS
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: brian.edmisten@viasat.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/M2S7QSKSB2LOEUNB6JXT2XKIQT6IMZIS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2376895.ekzGPWulC6
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: brian.edmisten@viasat.com
Subject: Re: Bonding Alternating
Date: Fri, 10 Sep 2021 09:15:18 +0200
Message-ID: <8679334.VDzE56WMh6@prime>
In-Reply-To: <20210909200939.1153.2026@diktynna.open-mesh.org>
References: <20210909200939.1153.2026@diktynna.open-mesh.org>

On Thursday, September 9, 2021 10:09:39 PM CEST brian.edmisten@viasat.com 
wrote:
> Before Adding radios to my setup I connected to computers with three NICs
> each.  I added all three interfaces to the mesh interface bat0 on each.  I
> then run iperf across it and all the traffic seems to go on one interface. 
> I run iperf3 with -p 4 so there are multiple streams.  Changing it to
> bonding does not seem to change the behavior. batctl o - shows all three
> interfaces
> batctl n - shows three interfaces -This I thought seemed odd as its one
> neighbor across three links batctl tg - shows all clients Via one address
> 
> If anyone can point me at what to look at next or what might be wrong would
> help.
> 
> I am using BATMAN_V version 2019.4 in kernel 5.4.68.

Hi Brian,

can you perhaps post the output of those commands?

If bonding works, it would even spread one iperf stream among the multiple 
links. For bonding to work, the TQ values must be on a similar level, 
otherwise it will not be activated.

I haven't really tried bonding with BATMAN V, you may want to try with BATMAN 
IV instead.

Please note that bonding will schedule the packets over the available 
interfaces, but will not perform any reordering on the receiver side. This can 
upset TCP which handles reordering as losses. In experiments with WiFi links, 
I often actually got degraded performance because the queue depths of the WiFi 
links were growing differently, therefore causing reodering ...

Cheers,
      Simon
--nextPart2376895.ekzGPWulC6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAmE7BgYACgkQoSvjmEKS
nqFA4Q/9GQh57HZRV3K2Qv/8oGKzUPRfOVo5wFqkyRzqkYS2Sz5bk8V/A+qQEigL
Yj1pHh9ik7K2FzujOHK7K9q61+6OGAb1+YWdDE2MsIKUeJug7ZJWugV5hdkACeMd
rXoIRWd/8GX5nERpElq9DCd6T5wZOD6ZxvItPhraIw19UKYUJIyszdkTVzkXEmN8
lfwPkXBnHRg3a61g4mEeeMx+v1iMvo6mxT85SG84FScgd78GXnpK6D9+cK4N2I+X
MzGtfqMgaiubPJDK44f/OTbUaXOvoVxvnlv0R8trShZuLKSZsAAU8xqrcpn6TiS7
MoTDkn27RwtZImV1I36778na/Lmofq1MHmYn0j8zjJA31YRoeGRcEavJVlCV1WnW
3+Rg1hj/IfuvAD50hVCsJAAwKE+WzelNLCbaSNtIEevK3aUztaFxQtCpRZEFBVy4
8FWiJfMG1yd6r6R1XaWNJVrM3rwr4XOShrnuwX9NZZLasuuisgjZCrd+4Ikx507J
SoG/lsrT7gTUfdRuDyEu9VpyzNhQgfcJ/X2o9WIZmFo9eip2b8IkBJ+zFOIWSaJ9
YKZq4XcGJFZZtrt/6zw7ojxy0Ycat6w8hWVhrTObxleK4XLohO67nP7HVCp0pYya
Ep4CrpFlc7/89E2mvrzV1Frjb4eQGwWv/n4lzrDVCuWkIQZR5BY=
=ZmZP
-----END PGP SIGNATURE-----

--nextPart2376895.ekzGPWulC6--


