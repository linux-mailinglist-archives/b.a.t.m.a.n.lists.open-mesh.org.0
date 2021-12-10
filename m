Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B92C46FC90
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Dec 2021 09:20:01 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 787B280785;
	Fri, 10 Dec 2021 09:20:00 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 365F18021B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Dec 2021 08:49:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1639122580;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=W5hkCiSsViIQqXmOrX4HGf1e3s3HJVTt0nQiWJRxh6E=;
	b=xZGYVVavt/jthU15aWmfa+PuSMXJohH54GVugvl77WgmZE7FlbbuEFxYfjix8SkIp1E5dk
	rwOX21cJnDp/rgbhwkmmbQIHbL9n3eYoRB0MBNFC5yOw70PSh3iqE4i6xSAV+K7QERglft
	UWpbd9e0wDA81xWRtp0c89jTiQKHkHE=
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, cgel.zte@gmail.com
Subject: Re: [PATCH] net/batman-adv:remove unneeded variable
Date: Fri, 10 Dec 2021 08:49:37 +0100
Message-ID: <5899543.jjpY9eVhVs@ripper>
In-Reply-To: <20211210021917.423912-1-chi.minghao@zte.com.cn>
References: <20211210021917.423912-1-chi.minghao@zte.com.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6748779.M4W0MkK9z9"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1639122581;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=W5hkCiSsViIQqXmOrX4HGf1e3s3HJVTt0nQiWJRxh6E=;
	b=yHyfnBdUcHuPiDRMklOFGAePazDyqkc1Lw2h62wgU5fAhRQWPn3lIpl+ws+hniOF6GAG2T
	DdO7oS/9yU73vK7klRwg6v+q/JJIMp1Ku51qZLRq3KkezDmVCmQ/uKOEeMdhZpUfaMy5VZ
	P/UioiAmPvb9Yepq3tgKJ4rBIvX5+z8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=xZGYVVav;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1639122581; a=rsa-sha256;
	cv=none;
	b=BnjeaMEIusjx5hzmIexu+9QEgwMY1y8Tb5N6P02aa6V6HanlYhu0QzTlVvvq1rJbBsY6iC
	qX40A2O0h+pBhJPGG+NMCqT3R7AON6bOOa0d6J3MD0t+6+md8FDNMhM11zMrBwn8Ts3gpp
	u1I48oJ9TzuUBgrR0LqH1X4IYiCGNGQ=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: MA2C5KLQ5FGMNJXL6U6JSUN57JZYV5WM
X-Message-ID-Hash: MA2C5KLQ5FGMNJXL6U6JSUN57JZYV5WM
X-Mailman-Approved-At: Fri, 10 Dec 2021 08:19:58 +0100
CC: a@unstable.cc, davem@davemloft.net, kuba@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>, Zeal Robot <zealci@zte.com.cm>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MA2C5KLQ5FGMNJXL6U6JSUN57JZYV5WM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart6748779.M4W0MkK9z9
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, cgel.zte@gmail.com
Cc: sw@simonwunderlich.de, a@unstable.cc, davem@davemloft.net, kuba@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>, Zeal Robot <zealci@zte.com.cm>
Subject: Re: [PATCH] net/batman-adv:remove unneeded variable
Date: Fri, 10 Dec 2021 08:49:37 +0100
Message-ID: <5899543.jjpY9eVhVs@ripper>
In-Reply-To: <20211210021917.423912-1-chi.minghao@zte.com.cn>
References: <20211210021917.423912-1-chi.minghao@zte.com.cn>

On Friday, 10 December 2021 03:19:17 CET cgel.zte@gmail.com wrote:
> From: Minghao Chi <chi.minghao@zte.com.cn>
> 
> Return status directly from function called.
> 
> Reported-by: Zeal Robot <zealci@zte.com.cm>
> Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>

Applied after fixing obvious coding style problems.

Please try to fix the script which creates these automated patch submissions.

Kind regards,
	Sven
--nextPart6748779.M4W0MkK9z9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmGzBpEACgkQXYcKB8Em
e0acZhAA1cmWFrpd8yxGG3wS0K3kSGEyQvHdyDC7hryV0xo+H/2o64b9SjN2C+Sr
AcgR0xLtvMH9txtRkTyucggIxJVbdRT/cBsRz0v9OK+ULuDFVpJof0jhRD5EOMuM
mT74HjR9RGLkylfW4qB0qIEa6XwnYG94NlFqqpyeq5P7+WhPnemRJ/YPAl8MescC
0zRa6rCDnE2LIGnNnXjf7cNAoSvFy6QW685eMIaHzKtq/Pv0dmWhDcM4N8LylpBe
FzjJAFUKf/0AGmjwzMTpoEFEtxTJOOULV9L7supOdLQIOyK/gM0+gOBx/YwylQAX
47XeO3BWHvVTye+z0o/fKYXDPDOiohB3OEblt8avDfI6GzQ2JFtaNqJewLPqQKjW
6GEQOltdB3kFFXr5PsZWVTcB6Yr2fSoUeNiiP8g7yaRx6GcWEOsrOavE9RUmpxzo
NXQYhu3470YaeYgbJ4FILd4r93I08jfHatdGuF2uziXUfbDevhhGooWDpLDO2H1A
eKjCdu+6PIxqV5vsXjjsgMxOH56D5Tko4lxTx64qPcK7tChD4HsVS3ElS+Bj9fvC
OOkm5r58/B4plXbWodEGBNZUTi4u4QiwtTxl1T8gLj4Uzi7tVsITppHy8iB7w7Th
am9wZsMjNDOY1Ml2y0ds7ZN0K60qJT/gM+au3rewR1n1SsVWgiw=
=rlgB
-----END PGP SIGNATURE-----

--nextPart6748779.M4W0MkK9z9--


