Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0967535DE14
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 13 Apr 2021 13:53:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C8C7983D8A;
	Tue, 13 Apr 2021 13:53:25 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5996F80054
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 13 Apr 2021 13:53:23 +0200 (CEST)
Received: from prime.localnet (p4fd57417.dip0.t-ipconnect.de [79.213.116.23])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id E2B1C17401E;
	Tue, 13 Apr 2021 13:53:22 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Problems with Multiple Interfaces
Date: Tue, 13 Apr 2021 13:53:16 +0200
Message-ID: <6830943.IaFvOplyQc@prime>
In-Reply-To: <20210410003953.1234.9147@diktynna.open-mesh.org>
References: <3542676.qYy7ulQ77K@prime> <20210410003953.1234.9147@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart44955799.Kctvcl01Cc"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1618314803; a=rsa-sha256;
	cv=none;
	b=g6SUfONBw4kEBz7dkJdEHHfiZPX0E13vuztgQNEPMdP3xAathnR8HIjuHD6Bg3tDvFcnkK
	Z463LrlcnRmxIH1z7ygn6UZUwpJwBudEH6n/ML3hSwP0eQYhN18sFaevBys6R69XflIZ/P
	XzJ77SRysVuTn05H38KpBnDDJiq1i9U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1618314803;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XBg89ua5/6aQSCfAaOELyFPZ/n6Rzcq6S+8nRPjJiXo=;
	b=sLfAxd2+1WPWj42FPeOAX30PXGNhLuJnAo2TnXXZHRtpyMkowJND8sTeDYnRzNZoOx0ODD
	CmZ5jxOq7oRfX0j2uwyhxyjd/W6B7tixwYzPzNv5ArCB1RBERd4U2TPicpthOkQhuTwMm3
	kJF5rjn0tSbmOQJrH2khF0jg+wvRTgc=
Message-ID-Hash: TLR3I4E5T7RDJCRN66G3XB7PLWZBVEN2
X-Message-ID-Hash: TLR3I4E5T7RDJCRN66G3XB7PLWZBVEN2
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: joe@careyhome.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TLR3I4E5T7RDJCRN66G3XB7PLWZBVEN2/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart44955799.Kctvcl01Cc
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, April 10, 2021 2:39:53 AM CEST joe@careyhome.org wrote:
> Linus and Simon,
> 
> Thank you for your responses.
> 
> I did try "batctl ping" and the adjacent device was unreachable.  I could
> see it with "batctl n". I did not try a simple IPv6 link local ping. 
> However, I could see it using "iw dev mesh_5g station dump"
> 
> I agree that it feels like a problem with ath10k reporting the data rate
> incorrectly (or not at all).
> 
> I am going to try upgrading to the latest release, but it will be a few
> days.  I'll let you know how it goes.
> 
> Thanks again,
> 
> --Joe

Sounds great! You may want to take some more measures to find out if the 
packets are actually getting transferred, e.g. doing tcpdump on both the 
sending and receiving side. If you see packets sent but not received on the 
other side, you know that it's a driver issue. Also "tcpdump" helps. For 
ath10k, you may want to try 11s/mesh mode with TTL=1, while with ath10k-ct you 
may prefer IBSS mode (I think that wasn't mentioned in your first mail).

Cheers,
      Simon
--nextPart44955799.Kctvcl01Cc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAmB1hiwACgkQoSvjmEKS
nqH7CQ//Sx9u/hnvcXuJu8P0Ga4KqXrVqk9ZpFGQVkJAmyWRopMYlisWsdQAA7On
PzxUnwvzMnyeOdddJNnBy9reVUooGL45/Blegbu3koH2CvYM/zMSNsarN1C7k1uE
N17Hta/068iu1kdxMnR++s+CwMEQH6QUyk94Y626xycwLWLzGAMlLQcAFKaOty6f
qjkNT7wc33p6m53TnZc+AkNM37VAjZR2f31KP4UpJr6ikFK7sU4Y51TYSbkcSkCx
W1NcsacnpaguPk1INOmc9z+3oFxnZhVobfNSmoiO5VT2Tf0yUxT+K8QoalnZOEll
gjgrKZsJOOtG4JaXhgzxNb6pqSkgmWs/6zn1N+dmlwGhKpbexbOfuoZgE/XIL+Nl
oirEO2VZwDrZGBnlz4RVUCDKBXFc8jbGgO4hstFUI9kZfi3RMIwD/oAg3r2+lXCA
Fi8Fza5t3UWE8+N89r6cUgHYLFQxBzjbGCwMpQr8hqvFhtBsUNjEHYycx5tFHrLG
+DFT2bDGGaG332ijPs4HZ9QxAWvlVnblWxRwZDVSGDQpaicOfqqp8+skFeiob+1T
KcrrDrkRemFbd2GLZfdlbRl2AzW9QlPOwrYRH+kOtP5YfFgQQ8Sa80cJ1U+vq/Lt
c4Htav9MYvcZ2mY0zSavle1nnzx9ltEyNCt/xsj7rti6kAdpyRA=
=4mOQ
-----END PGP SIGNATURE-----

--nextPart44955799.Kctvcl01Cc--


