Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E94B64393
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 10 Jul 2019 10:29:18 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 19D1E8141C;
	Wed, 10 Jul 2019 10:29:11 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id AA61380729
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 10 Jul 2019 10:29:06 +0200 (CEST)
Received: from bentobox.localnet (p5DD32C03.dip0.t-ipconnect.de [93.211.44.3])
 by dvalin.narfation.org (Postfix) with ESMTPSA id C40D61FF9A;
 Wed, 10 Jul 2019 08:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1562747344;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cGiJ8l/kSkvPm9nRtNn1uQkuE77Ccc3BRvG0lqgLI2M=;
 b=GOLw6tVbMsypSTzmlhLj3wddaZBjzkQXVTaVDS8SISuosuwzi23PEmyeVYu85dV+lADsaN
 EiEi8l/3KkwNWKLl9pxRuXOAzKey/r47kG/92wFOSWhBuEOlKo6aOY2yOpGZ1wvYFrIs5H
 0zS2vsRg2QxT6Bi4NklzDHmTxy987aw=
From: Sven Eckelmann <sven@narfation.org>
To: Stefan Bader <stefan.bader@canonical.com>
Subject: Re: Unknown symbol cfg80211_get_station
Date: Wed, 10 Jul 2019 10:28:58 +0200
Message-ID: <91929546.yq5N1g86sx@bentobox>
In-Reply-To: <c60bd64a-127d-229c-3bed-eb59803a54f4@canonical.com>
References: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
 <7eadb3ab-1b51-e248-6122-a7c3c73383c9@web.de>
 <c60bd64a-127d-229c-3bed-eb59803a54f4@canonical.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2452679.vzzFCWVnlo";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1562747344;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cGiJ8l/kSkvPm9nRtNn1uQkuE77Ccc3BRvG0lqgLI2M=;
 b=COPFiYPvHTHZeqICzcMq5FRUm3kZEdyk+EScKI5b1DWOFjjc4FFBI3XbSFhtVJ5ZXZTFWg
 cpItJDFmJXQLUr1HDTa2g1M6u7GSzt2/J0BN6Yk9pOBZ0a2eH44CbUBrcgubWpYBW3A6Ow
 +7AOEfRkVkhXd9NCa8r3ZYI000BOAqw=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1562747344; a=rsa-sha256; cv=none;
 b=XYDTMtKuDKrWtJ2/rwygSZBgm6pVd/IzvGgAdUB1S1vZHRB0QjJ5ATEm3PP9dcUe5zM8dv
 akr1Q+usCP5kcFRZxfwX2+C4HP7CXVQ8EkDeibKf+uZvciO04rN199x+Q9rm75fy7RIlgO
 0hjHcW5PygThWT7tjbE7LEwc36ZACVs=
ARC-Authentication-Results: i=1; dvalin.narfation.org;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
Cc: Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>,
 b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2452679.vzzFCWVnlo
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 10 July 2019 10:23:21 CEST Stefan Bader wrote:
> On 06.07.19 17:22, Moritz Warning wrote:
> > Thanks Sven for having a good look.
> > 
> > There is no cfg80211 module present on the system (find /lib/modules/4.15.0-1032-aws/ -name *80211*).
> > Package linux-modules-4.15.0-1032-aws is installed.
> 
> The aws kernel is intended to be used on instances in the Amazon cloud. There is
> no wifi hardware present on those instances, so it generally makes no sense to
> have those modules.

Yes, but then please don't compile it in. Otherwise other modules (which make 
sense on a server) build against functions from cfg80211 and *don't* end up with 
a nop-stub - just because the actual implementation was compiled as part of the 
cfg80211 module (but not shipped).

> As Jens pointed out the missing modules are in linux-modules-extra not in
> linux-modules (the former is not installed by default).

Who is Jens and where did he point something out?

On Saturday, 6 July 2019 17:22:01 CEST Moritz Warning wrote:
> The module linux-modules-extra-4.15.0-1032 installs the following files:
> 
> /lib/modules/4.15.0-1032-gcp/kernel/net/wireless/cfg80211.ko
> /lib/modules/4.15.0-1032-gke/kernel/net/wireless/cfg80211.ko
> /lib/modules/4.15.0-1032-azure/kernel/net/wireless/cfg80211.ko
> 
> But this is not in the *-aws path.

It looks to me like Moritz checked it (I didn't) and they were not available 
for his aws kernel.

Kind regards,
	Sven

--nextPart2452679.vzzFCWVnlo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl0locoACgkQXYcKB8Em
e0bmyw//VIp8kAaBJr4XkUzF4y8aIG7+qdbXZvHQNwvWgrH1b+s1vUjbiZ/wYpvX
wBfR/0RECdmHvqOz8zFzI7NFuFD4OQcaFJo4g6uE5jP7uG4xCbaWFt09xbJIs2BM
sVQllBjSAwpDvHStsF6tVwJMTZoiD7qeY6nyZ9sRHnIu3Bw1+FtAZGblp7XBln81
1sQ5+Nvo/wdUTgUbgqfq2xwLYSba0CZgdMJgjtwR3J+jNJVttKW0KpQRmleoH6w1
VSiuViV2zaVjuiJIOK1jrLmIyGqiNKGduLGmI2a8osTssrNXAfkUUdv3zXzSF7/R
p3EmrBzoJwpPAINNfVfCwOF5DsmoO7cv9SBWvGwe0crG0XmNAJqVcZQums9Z53G4
TeKq02tfHTr6Zki5C9IV5sAHrzNzjzA9lDYbIysTzJn0FKtW1KLsBlbexBIFxT7S
n9qCWKqVNhAc8s5387B8IGwu60nuoGUPP1xp8dhEUnzjXTUovLXNVsUBYVSgfJuZ
befUp2S4D4RpBRhZMt1ZdcOokYX91p2i18lrLjyXHnjcy6VSgYu6WDxT2QvwjRw/
q2UP4NzXg0838xk3SJ6VVkB7+s13+WAuWaWAc4BjqoMmlmR8r2OYj7+vBVaIze4p
L+pyntgQFE3NI0oxATqoHjGZF6Gy9IOsvd3Z3o5x+vsTR8YdGw4=
=tw4t
-----END PGP SIGNATURE-----

--nextPart2452679.vzzFCWVnlo--



