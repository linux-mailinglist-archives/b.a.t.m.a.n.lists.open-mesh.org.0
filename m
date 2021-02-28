Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3183272AD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Feb 2021 16:03:45 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BE05F815FF;
	Sun, 28 Feb 2021 16:03:43 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 62B2A80199
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Feb 2021 16:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1614524619;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=aQ35NCSQY/n7wE4X0akLrRdOpvWSZtXmmLVF52g5JfQ=;
	b=blAM5rxMct4mdxLonCQNKH8u1QlGlxWDlbPgpPE8W+Xs5l92juZO5YgydOxhVSpo1COIYR
	HQpm4sN+miEylPNQrI6yy0JRFzMgzRtfjBlc2SWzfZq5poKyturoA3G54fzdgYQbCqLpDP
	8/AFMtHsoddvifLYHDg2OrBmkaEF9yk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: battle for yocto
Date: Sun, 28 Feb 2021 16:02:48 +0100
Message-ID: <5849548.csWtZluKKt@sven-edge>
In-Reply-To: <CAK=yUG+9mOttJULTHVbGptFJc12ACO_V-ih15xXpNfWw7N0iuA@mail.gmail.com>
References: <CAK=yUG+9mOttJULTHVbGptFJc12ACO_V-ih15xXpNfWw7N0iuA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2325533.5jg2AtdYid"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1614524620; a=rsa-sha256;
	cv=none;
	b=f8Ilsb53ViUh2jUcOKpDi3Tg2IRq0bQOZnw+8xIVQKi5htJfFpZdwer91DJKyTRYHT9k59
	ZefmRx0NpPUpuNGDJyhe0XsctZavRtMJiyY2CbIrevbtyvjCXgZblPS+DBJ1yUchIl0YZt
	ZnTFPrYXaMcbycsEFOh6Tix7KKLC1VM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=blAM5rxM;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1614524620;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=aQ35NCSQY/n7wE4X0akLrRdOpvWSZtXmmLVF52g5JfQ=;
	b=K/A8yNT1iBIBDYlJDcRk8rUltW/j6l+shG5bFA1FwczSloHCSNTN5O5Ytyu4mqaHMnYC6g
	fe6eLJmZ3WuTPvFWQObJhtwkA4By41tx2KqotO7mzj5A1GbD+oU5PY+Nm4CBstydGE9c22
	rGbJilymt/sPvF90YePm88EAiWmEglk=
Message-ID-Hash: 6MILY4QRTSDI4KCDEYYRJTTD7DQTTOMA
X-Message-ID-Hash: 6MILY4QRTSDI4KCDEYYRJTTD7DQTTOMA
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: kamalp@acm.org, jhaws@sdl.usu.edu
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6MILY4QRTSDI4KCDEYYRJTTD7DQTTOMA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2325533.5jg2AtdYid
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: kamalp@acm.org, jhaws@sdl.usu.edu
Subject: Re: battle for yocto
Date: Sun, 28 Feb 2021 16:02:48 +0100
Message-ID: <5849548.csWtZluKKt@sven-edge>
In-Reply-To: <CAK=yUG+9mOttJULTHVbGptFJc12ACO_V-ih15xXpNfWw7N0iuA@mail.gmail.com>
References: <CAK=yUG+9mOttJULTHVbGptFJc12ACO_V-ih15xXpNfWw7N0iuA@mail.gmail.com>

On Sunday, 28 February 2021 14:16:20 CET Kamal R. Prasad wrote:
>  can someone point me to some info on  how to plug in batctl into a
> yocto build? the kernel provided by raspberry pi os already contains
> batman-adv kernel module but not batctl.

You have to write an recipe. Something like 
https://github.com/jhaws1982/meta-batman - just with a more recent version. 
But I am guessing that Jonathan Haws will accept pull requests in case you 
spend the time integrating the newest version.

Kind regards,
	Sven
--nextPart2325533.5jg2AtdYid
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmA7sJgACgkQXYcKB8Em
e0YpaA/9EyqYcXwGRVC1CJ05+gVQ8w0nToakneoP5JHw+A0XQfVVgNgysf6B7k4+
oqik3DtLIPjUyl/nJQ5RGSYBajVnnY4c079ZFcTJCItL79RRZaMFT4iYoj58Q23/
ri3mKlXgVxDZ0qtuO1xspSBcqtcYyIK0DmnriDYMympMpJTzPlRS1dET+18rtWKh
xxRacfWOvji4yua1AnmUJqwOvH0WMmUWYknhP9JJbV7YAC33m3+9Q/Sooh0jLer7
NOAzoaTsCC370plTAHekpPY7azVNI2UHf1wxR30LCQmgzL7mL1QgWBjEA8zZS6pw
Vcqp+MfiHqQyVWegVy6BXY34J/6XeHzbBWClW3+Ay/qGnTDU5LOway+csiGV1pR/
HiS0/ATGwTinrit2p2xjZArn3YlOxl/XDDon9VG4bm+7zFUCq6bEqec88mHCQ2Cz
ohCs7kUbliSyfoMhdVx3A/58EZYFLg/ZwnK5ngB9o5oTXVyK12O4D3ZkaCgK4son
VlNoS24WomOM9khTrEwNjflViMoFU9P4MfoDOmbi4wo8gPDTy0YSOXPo6+MjcO7m
IYoVd+FH2Q20SS0M+uL19yPSToDhuEYXilwc6cXQwTmTjGyZ4iENVk0NiCsXb8Mh
cwfN/2Nf9rogeaTgXEId6loady3t1UbiGFoJ3P8ZWDsO1rb7+9U=
=a+QY
-----END PGP SIGNATURE-----

--nextPart2325533.5jg2AtdYid--


