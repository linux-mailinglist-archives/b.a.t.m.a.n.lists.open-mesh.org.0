Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 709F148A8F4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 11 Jan 2022 08:54:01 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5D65F824A8;
	Tue, 11 Jan 2022 08:54:00 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DE4B7805DB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 11 Jan 2022 08:39:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1641886770;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Z8lOJuChLkrImr96k+yUYUSCEVZG7RcUX2vJKDypjeg=;
	b=RNpY+Ah2LqHJmwnuopPTKg0HIRLdwh2n+Ph/xXcyXJv4uX51HsKV0dkSlJg2dmmVY8lBmQ
	KSH5mofF6aQlubIoa8aNR6ZCjP+8C6YwcfvepWsH6TShO8/TjbO5q6Jfoaj6OSYKkouERl
	CX0A4cUpw1c51aowbfejvjflcQ3bIYU=
From: Sven Eckelmann <sven@narfation.org>
To: Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] batman-adv: Remove redundant 'flush_workqueue()' calls
Date: Tue, 11 Jan 2022 08:39:28 +0100
Message-ID: <2319423.e3pCTlsKIc@ripper>
In-Reply-To: <2c2454cd728f427cada2c24cdb1ef2609dec5efc.1641850318.git.christophe.jaillet@wanadoo.fr>
References: <2c2454cd728f427cada2c24cdb1ef2609dec5efc.1641850318.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9182710.2x64NcNEKf"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=RNpY+Ah2;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641886771; a=rsa-sha256;
	cv=none;
	b=g4FaelK/I7pmSz2Z7q4P30IEQHMObDEHiIcnRUgdTb324Kml1xYKJ2Hprr1C5131fDQvuV
	ZuhfUudremJe8jJZPbekMhqyb7oXbAI0Jx8W4mhBfbJ4Yh18hLD3R8e4+Z+BqFL+6AjAo9
	IO+i5DgX9RnQjZsos7gJZXXLlYCbInY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641886771;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Z8lOJuChLkrImr96k+yUYUSCEVZG7RcUX2vJKDypjeg=;
	b=gY/EDoDzU+CeWkT97RW1oCql2lxzjP3f/BBmPelDsXBhZQMCAhkm5JlOg86c94lht31SFO
	deba19N7Esgn9G8CJ2EE6DuSqLJ9ZV5S0MkOiKzHLy68onuBxlQ7YlMlw3FLHCGryLn4SG
	WyLHNbLLSZGzI8DNI3bjpbza/0dZw3E=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: BAUBJXO4XE545XH3LMNJJQPRD4EFF25E
X-Message-ID-Hash: BAUBJXO4XE545XH3LMNJJQPRD4EFF25E
X-Mailman-Approved-At: Tue, 11 Jan 2022 07:53:58 +0100
CC: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BAUBJXO4XE545XH3LMNJJQPRD4EFF25E/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart9182710.2x64NcNEKf
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
Subject: Re: [PATCH] batman-adv: Remove redundant 'flush_workqueue()' calls
Date: Tue, 11 Jan 2022 08:39:28 +0100
Message-ID: <2319423.e3pCTlsKIc@ripper>
In-Reply-To: <2c2454cd728f427cada2c24cdb1ef2609dec5efc.1641850318.git.christophe.jaillet@wanadoo.fr>
References: <2c2454cd728f427cada2c24cdb1ef2609dec5efc.1641850318.git.christophe.jaillet@wanadoo.fr>

On Monday, 10 January 2022 22:32:27 CET Christophe JAILLET wrote:
> 'destroy_workqueue()' already drains the queue before destroying it, so
> there is no need to flush it explicitly.
> 
> Remove the redundant 'flush_workqueue()' calls.

Thanks, it was now applied.

Kind regards,
	Sven
--nextPart9182710.2x64NcNEKf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmHdNDAACgkQXYcKB8Em
e0YCVw/9GGMIG69XboEwP5yhE4wjK+9i0YJpqwircVrS4cArq5CDTuh5P0d5iDg9
kxify02fI9/cmH56Qo569usjYj9Q8bEzbfsncKjztQi3oS2fw0Axub47Z1CPuuTR
BL80s02jBLLNj2ssznucgSmcE2P1RMJ+kc4Xj2SLMiDS3k/o5V3sNS3u/jkCbo9p
z4Hf20BJdNeIpyxn9lXbNDJ9n0vMG74Bkowm+p+p03zxnOy9Xx2tZUyn+FKnewqe
gEkJ9gPPkKsVxrMnXPJmQ6rrYyrAzW6e9v0H7udQ/r7hEt1OxhWQ4cGtb+Dpn3Bz
vwbn3eECzo7gn+UX1vlFkuWTOzgPnekO99C4DC4eTg05TTzBkHlIBbsYpGyisLdL
yVjppq883QNqcwShCiJoRQ9jcCfJoMh2+6PlXaa+i3P9LVqOUQqEB6BGz2+KL9wd
Rei2i/48S8wH7ZPrHU7cifVV7aJkBPwEEKrfNwcQoSUguETnVu20blRqZaeBYfHA
aEwkI6cLLUb7kgNgC+dBVSz/eveXM1xqyIM170CUZ6TxSL56ldTYSFMGyyJTeFm2
b3Sxu+5Kia39DYYwW0nJipUD1eP9b64dfgy5gCEBTqLMVsTbbGf08CaOr+lmqZkz
NZLMkWKfaOFCMhyAGOhGV0rxNbQcgCoOh4wXFrKWnXYhBoSjYbI=
=94G+
-----END PGP SIGNATURE-----

--nextPart9182710.2x64NcNEKf--


