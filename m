Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FD32C5BB2
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 19:11:25 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2B3AD82300;
	Thu, 26 Nov 2020 19:11:25 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2653C81AD4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Nov 2020 19:11:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1606414277;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JdXk58UJ2ZWbnWDkfRrhkc7eJ7vnnKd8JsQt2b8g3qQ=;
	b=OSadG9t+kUS5zO3yB+vy82eAz31Jjgb51Gqa2lYElIe4DCqxHIDSRqKq1+N2sI9w5IZyDP
	nK8azdWqod3EFGyywtxXwiRLt6DD+T3lmFrbxo6MIToKjSUT1K7chi0TNBa0c4Ui8h7P6s
	/Cu4E7MpX5PFhkFxoXCMw7lfITB0SC0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Consider fragmentation for needed_headroom
Date: Thu, 26 Nov 2020 19:11:14 +0100
Message-ID: <10105411.aFP6jjVeTY@sven-edge>
In-Reply-To: <20201126171832.1064799-1-sven@narfation.org>
References: <20201126171832.1064799-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart10433438.BaYr0rKQ5T"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606414278;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JdXk58UJ2ZWbnWDkfRrhkc7eJ7vnnKd8JsQt2b8g3qQ=;
	b=ax+2bwigya+thwocQXL3U9Qya7GRmCA3PucMOiYhDyBmqASq00D29E9tHC72XYxciY0jD8
	4rUyRxCOtW9HzVqkKmET4IizqCBvWm/8quHXtlTqjKz1igQ4N2/CGZMqE3mB4ti07jvyo1
	FQLHLdefGiG+oos6eO/oqCDCYb3yuCU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606414278; a=rsa-sha256;
	cv=none;
	b=UIaFzwXeYb0xcuOd3HvDbpUJE8vTxFgYi45Liy73ZgMW6YEbXqbfxv/N49t+jIZXpusTcR
	DBV4o33W29ifbAbhdd3sRkEDE7eyu8ozW1MKvN+4D6an1ke/cL2jLVttELY6s7DqEtSU3R
	7EPklZwdxupHDo8jZ+KqM6NG55nhQMY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=OSadG9t+;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: RLMSTYUTV6DQVWKGL2ILBDCW2YKVK4AO
X-Message-ID-Hash: RLMSTYUTV6DQVWKGL2ILBDCW2YKVK4AO
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RLMSTYUTV6DQVWKGL2ILBDCW2YKVK4AO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart10433438.BaYr0rKQ5T
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Consider fragmentation for needed_headroom
Date: Thu, 26 Nov 2020 19:11:14 +0100
Message-ID: <10105411.aFP6jjVeTY@sven-edge>
In-Reply-To: <20201126171832.1064799-1-sven@narfation.org>
References: <20201126171832.1064799-1-sven@narfation.org>

Fixes: e2b4301f4e2d ("batman-adv: Add lower layer needed_(head|tail)room to own ones")
--nextPart10433438.BaYr0rKQ5T
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl+/78IACgkQXYcKB8Em
e0Z1OhAAuPzbKbDUJnXe+Kmfpnm47hn5r2NHv0Qrf658oZ3EJeXDGIhsE/wiZTDY
DrsJ8q1L/D9e44uGWMZ5sJ0HC+kpRmF+QBAWuQMyhBmWKmmdntqP1Nhh1a/3Rel5
PaIeIC0wj9FyHgZ1zEx4Aw908iR3TKy6SvdfBl+z1QmY9WU5P3YkcrrQq/2m/84Y
pTEncYQVMelSXo0sEGqDWdK7lSzAu8wonxoqS/90vdU29tcUX87+0T+Sqxz5yMuY
+yOfaPL5ese/e4f0384U7bG099DrX2eRja7YKjtL9lxrc1mxki5M63CqTMDrzC6x
nzeS4hrPtLBu83jY7ALv/NC9ihZiOia1iBtGpLMnBDEueLrRaeX0NjXkbpiUHiSN
XZi25iVlSP2Eke3s3K7CycXXTWE/IDQHQyURDDCeEpaSX53pTIOPVZwIYOUyrLSa
w/zZI8Z74g+zaTz5T2C5HqjmQpKtqUP1U57kdi7lEOBsFR2g++9tb5kyJ6iVN74N
3PRQNhHRoHdS7XkVwHCCP+tVZOQWSuDeyS7DvII4ToH5tNJTVXm9Yhteh8xbVOz2
jexHCZULj6wI+TM41cFM+A95HE9LWxhdpxI5rYPFOTNpTNn4edn9m7NeQXiSbW3I
llsItYs8b+3QG/dkSrGSlJA4xPd6RZrd9nIK0YVGoI2q9PLTKYQ=
=HSDe
-----END PGP SIGNATURE-----

--nextPart10433438.BaYr0rKQ5T--


