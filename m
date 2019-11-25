Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id E398C108B59
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 Nov 2019 11:05:27 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 231F880F9E;
	Mon, 25 Nov 2019 11:03:35 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
 by open-mesh.org (Postfix) with ESMTPS id 55EB48266D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 Nov 2019 11:02:26 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Revert "disable ethtool link speed detection
 when auto negotiation off"
Date: Mon, 25 Nov 2019 18:02:17 +0800
Message-ID: <21004470.HqcN17L5CA@rousseau>
In-Reply-To: <20191125094650.12435-1-sven@narfation.org>
References: <20191125094650.12435-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5798039.MvXTobgIjG";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1574676148;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WbUZLLiG+ExdmOaP4xzFiVGBvL3kR1Ms1vH3mXuTSR8=;
 b=TuOLi8xHzszW4fJCgVqXq89n1hSUUI3GuYcpCzY86VTJYRISwuKPKc6lkOd7BRJH860UjU
 JQnPqEgpOozoF+aXcoLFdYBRBEAAOlWmB67l3Rx3nyZ0Kd/Z3x6UqZy1Y1Livs3kZKosiJ
 nJNUvjqAGDHJD3TdIRlqJ8Omr2NwHU4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1574676148; a=rsa-sha256; cv=none;
 b=LbZMKJ3g+4ZU73qfbhAy2WkUI4Jk5qCCaPcqC4XUmHVdHatpAiVp3tS0xaiti+SIWnp5Pq
 kQFvbBxscGIErERClW7mPEAf1UdWSPZnsXQAOOgwpbTqCcYCEbnYLz5qJjA2+Qz49UHpH/
 UWAcwFJ5qqvN5gLaLXsQzHr3myUovqU=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of mareklindner@neomailbox.ch designates
 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart5798039.MvXTobgIjG
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 25 November 2019 17:46:50 HKT Sven Eckelmann wrote:
> The commit d60b8fc69ef2 ("batman-adv: disable ethtool link speed detection
> when auto negotiation off") disabled the usage of ethtool's link_ksetting
> when auto negotation was enabled due to invalid values when used with
> tun/tap virtual net_devices. According to the patch, automatic measurements
> should be used for these kind of interfaces.
> 
> But there are major flaws with this argumentation:
> 
> * automatic measurements are not implemented
> * auto negotiation has nothing to do with the validity of the retrieved
>   values
> 
> The first point has to be fixed by a longer patch series. The "validity"
> part of the second point must be addressed in the same patch series by
> dropping the usage of ethtool's link_ksetting (thus always doing automatic
> measurements over ethernet).
> 
> Drop the patch again to have more default values for various net_device
> types/configurations. The user can still overwrite them using the
> batadv_hardif's BATADV_ATTR_THROUGHPUT_OVERRIDE.

I am not quite clear on how reverting this patch will get us better default 
values. In the case reported by Matthias the autoneg detection was working as 
intended by this very patch you are reverting. As Antonio had originally 
outlined:

The problem with autonegotiation disabled is that the advertised speed
is likely to be a random number set by default by the driver.

This patch was the main reason why Matthias (or Gluon users) even realized 
that there was an issue with certain Ethernet ports & BATMAN V. Without the 
patch BATMAN V may have created routing loops and Gluon users would complain 
about those instead.

There is no disagreement that the situation needs improving but why is 
reverting this autoneg patch the best course of action ?

Cheers,
Marek

--nextPart5798039.MvXTobgIjG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl3bpqkACgkQU1VOj+62
HMCBxgf/Wcvvd+0yKGgwM8BtniaUyl4+5IIr0xfGeAr2iAd9ZZ8Y1NlXJjk6c075
mTFjO7whi5fOnur4vCKQknpwVSFAzE9VLHp45mIJaVo/U8ztMUQ1ioHt5DqMYqf9
k0uGn0guqz3uH5J4AYvXovB/Cf0Y+K9VVyyci7I2aRWaxK68ArEPOU2VOQFq3GFb
u55ttAYUEPScP7vZ0ICEcjNXB8RHRDFI8mXnrdhJmbXqWOfBfzwRE+JiBaws7Qbj
nYUEnUlWswGaePGeJjbRKCwTBMTKQrUzg0TabzGP0EMw1cUVE8cvwn4Fj1j/3J2q
EgeNzXMwL97P08zONmgaVCSK9GoBkg==
=APBj
-----END PGP SIGNATURE-----

--nextPart5798039.MvXTobgIjG--



