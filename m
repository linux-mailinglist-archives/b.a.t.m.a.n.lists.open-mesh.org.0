Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9FD3808EF
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 14 May 2021 13:52:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3F5198407C;
	Fri, 14 May 2021 13:52:23 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 909F9810C1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 14 May 2021 13:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620993140;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=688UrCw7LosmCk4nk8kzcHQbkOnsjeHVWJpAPdlyg8g=;
	b=MBDD4FeMquzGUgm7AX778VSP4S0+F834GppVJBsyUDdUx8Ggf9Wsj8wfgH6+Elq7GCZmjx
	X/55JN6o5W8ADHI396Z21qpmvaY1k3Ng1M3CothIpKRlDaYCszJ8oqUYpRabSuJ9BRU+Jm
	6aoKn2uqoawgSL3jbyAMpnLBd65HJuY=
From: Sven Eckelmann <sven@narfation.org>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH v2] batman-adv: bcast: queue per interface, if needed
Date: Fri, 14 May 2021 13:52:17 +0200
Message-ID: <5459898.nmiLi0PJat@sven-desktop>
In-Reply-To: <20210514113532.GF2222@otheros>
References: <20210427184527.9889-1-linus.luessing@c0d3.blue> <3148825.KiqjeL1upR@sven-desktop> <20210514113532.GF2222@otheros>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9607628.pxMfDq879Z"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620993140; a=rsa-sha256;
	cv=none;
	b=ohzQR9QU3IVtackc7G6s28nEsbPVQtwK2sEfOD2j/k7kLr+nGT1hvluLK7cZk6Y9suG/j0
	8x4N+beRgxymgRrXOc9nHtMOrptTuOsPtsZRQrEI4o6IPZJPxmcz8wkO3VXNQ/UPAnJKml
	HGs3QiugD8BCshvtrzfFrGwuZYIMFmc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=MBDD4FeM;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620993140;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=688UrCw7LosmCk4nk8kzcHQbkOnsjeHVWJpAPdlyg8g=;
	b=D2xUTvuqKpHa/suWgr1uNvrtItXFO6w+qGnUuwmsVrE1IlwbHBUFAmH7ts+LRKTudx5h9T
	P4WOpvkVuY+FZ8xpRjMr/3iVL8FPoHv0hDxlaI87ai4A5UqbYIgRU49+bnlWzdKG96ewyd
	SyRPGOLAbodAKU00VQ1q8M+klsGusvQ=
Message-ID-Hash: LML2E5IAPY2O75K4AXOH4YWFJI3QDTZE
X-Message-ID-Hash: LML2E5IAPY2O75K4AXOH4YWFJI3QDTZE
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LML2E5IAPY2O75K4AXOH4YWFJI3QDTZE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart9607628.pxMfDq879Z
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH v2] batman-adv: bcast: queue per interface, if needed
Date: Fri, 14 May 2021 13:52:17 +0200
Message-ID: <5459898.nmiLi0PJat@sven-desktop>
In-Reply-To: <20210514113532.GF2222@otheros>
References: <20210427184527.9889-1-linus.luessing@c0d3.blue> <3148825.KiqjeL1upR@sven-desktop> <20210514113532.GF2222@otheros>

On Friday, 14 May 2021 13:35:32 CEST Linus L=FCssing wrote:
> On Fri, May 14, 2021 at 10:28:53AM +0200, Sven Eckelmann wrote:
> > On Tuesday, 27 April 2021 20:45:27 CEST Linus L=FCssing wrote:
> > > - * The skb is not consumed, so the caller should make sure that the
> > > - * skb is freed.
> > > + * This call clones the given skb, hence the caller needs to take in=
to
> > > + * account that the data segment of the original skb might not be
> > > + * modifiable anymore.
> >=20
> > But none of your callers is now taking care of it because you've remove=
d all=20
> > skb_copy's. All you do is to clone the control data and give it to the=
=20
> > underlying layers. And they may write freely to the data. Thus breaking=
=20
> > parallel (and under some circumstances sequential) running code which o=
perates=20
> > on the skbs.
>=20
> Hi Sven,
>=20
> Thanks for looking at it so far. I'm not quite sure if the
> skb_copy() is needed though. Because there is a new skb_cow(). Let
> me explain my thoughts:
[...]

Haven't checked this in detail. But please split this part in a separate pa=
tch=20
with the corresponding explanation. Should make it easier to understand why=
=20
the skb_copy is no longer needed.

Kind regards,
	Sven

--nextPart9607628.pxMfDq879Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCeZHEACgkQXYcKB8Em
e0Y+FQ/9GBKQq5suuUlTjN2HXPF+KZGrdIxKICCgVepdTuPcx83CXVMda+gjebWM
EGUB9wa/ed0IwGZJfu0CmVA4/FtBabKdJFpbe4o/3Fusoe5fTMnIg8dXK0idO95K
kmqsXf74MGf3HbSCi4f3aDgyGgszcohHGCjh7q78OYps9yA/0aRWCraA8BL4FpHV
/ga3lAwWQahb2kKTdLM4d8GY7JiGekBLcDE1k1jDdKLVqHzEesBdtkKH7j4/7In7
i2vCUykM3YodqPRWoMDS9nfzAKLHZMyht/uAPo+TFQNd/z5F5vjGYCdXV/VI8QBU
4jBcUleu7Cc5cnYg4gW7afMkP54dh9m68+JaWITx2DcrEzQwLi1s/Syt8yX28Oa8
aWsFUW1y6xQpuXDSHGzEYVqHzstjjl8NzCE5ViM4ytk3CA8PapWv1oCHP/BBHggj
2x4uOrJchyzhI+bBCCVtci+YyXaTwRJu0vWhgC6kayKvyGmO0teWPCe0lrYIsSE/
Mo+60QQvKHh3ud6RMMdJDiQMiiVMTs7lBq7z5mwx35qxYCIniV8A32iHoi8XnGDV
vLnvT3tp2oKANDu6RlrKBrm1/GXHispZ5bK7IeCZ9GSpkYxNvEW1a8jIQYKG5N6r
bC4BLJ4B3GQ3N1xd9pYXF1VhKkUImyC0s2IZ97GXxMEHMwEnPTE=
=ZBUG
-----END PGP SIGNATURE-----

--nextPart9607628.pxMfDq879Z--


