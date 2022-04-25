Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 364B750E16B
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 Apr 2022 15:18:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 19E7F82E80;
	Mon, 25 Apr 2022 15:18:48 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 563958014E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 Apr 2022 14:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1650891042;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RuGwl2hwKjdiBN+xQt2K7PK+6H9hVtI6INGqk1BZ3MQ=;
	b=bzC/NVfpIoMtLD1rLqbV0/KYVQ8RveWKmFoVna65i6PQYMW8wk/hdMPr7uRQJQyu+I7Adc
	vmlc3JHfTnyOeL7KbhGPhOWgQWES7gBPWZKeCjFzNEtfliiyGxir6F8jPCdkWUX8QRC18B
	atZa9HuSx+aSRrtVEEoUldXSoWX5c4k=
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, Yu Zhe <yuzhe@nfschina.com>
Subject: Re: [PATCH] batman-adv: remove unnecessary type castings
Date: Mon, 25 Apr 2022 14:50:38 +0200
Message-ID: <2133162.nbW41nx31j@ripper>
In-Reply-To: <20220425113635.1609532-1-yuzhe@nfschina.com>
References: <20220421154829.9775-1-yuzhe@nfschina.com> <20220425113635.1609532-1-yuzhe@nfschina.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1665509.GfMoWaoWtX"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650891043; a=rsa-sha256;
	cv=none;
	b=pwfRiwt87Td5JjS6alrFfcdVG6gb9itQNXl9NYn8M7gk9sDAn7w2p1ZWB4ZX5/cSKxCzvG
	B3hfQkNZD3ooRUDhPvG/01jAAWFNQgKGrQRfbyRmDG0UaaPdPrpZioBq3IceIWlXCCQKsE
	udHp7RiE99W2aZw75jGxOd2tBJblQdk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="bzC/NVfp";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650891043;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=RuGwl2hwKjdiBN+xQt2K7PK+6H9hVtI6INGqk1BZ3MQ=;
	b=I6OLrgqzNLBGAiJGo2mazQnljktyMiFTbL8I4OkkAV1JCZbsV/5PsoMWNRKWkCscjbtEqD
	VsvFLpU3bGWKpHY63tLRCZVBifhHgzuMk7oJOsM8oftRDD759/y2qnrnf+mEx2hu3yjmTs
	1gPhnDrd0fbagwim5erWL+UjWG4Taa0=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: HRYL5TLAIHYGGLGBC2V5QVQR3MAXMVL5
X-Message-ID-Hash: HRYL5TLAIHYGGLGBC2V5QVQR3MAXMVL5
X-Mailman-Approved-At: Mon, 25 Apr 2022 13:18:45 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, kernel-janitors@vger.kernel.org, Yu Zhe <yuzhe@nfschina.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HRYL5TLAIHYGGLGBC2V5QVQR3MAXMVL5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1665509.GfMoWaoWtX
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, Yu Zhe <yuzhe@nfschina.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, kernel-janitors@vger.kernel.org, Yu Zhe <yuzhe@nfschina.com>
Subject: Re: [PATCH] batman-adv: remove unnecessary type castings
Date: Mon, 25 Apr 2022 14:50:38 +0200
Message-ID: <2133162.nbW41nx31j@ripper>
In-Reply-To: <20220425113635.1609532-1-yuzhe@nfschina.com>
References: <20220421154829.9775-1-yuzhe@nfschina.com> <20220425113635.1609532-1-yuzhe@nfschina.com>

On Monday, 25 April 2022 13:36:35 CEST Yu Zhe wrote:
> remove unnecessary void* type castings.
> 
> Signed-off-by: Yu Zhe <yuzhe@nfschina.com>
> ---
>  net/batman-adv/translation-table.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

If you send a second version then please use `git format-patch -v2 ...` to 
format the patch. Now it looks in patchworks like you've resent the first 
version again. And please also add a little changelog after "---" which 
explains what you've changed. It is trivial in this little patch but still 
might be useful.

Regarding the patch: Now you've removed bridge_loop_avoidance.c + 
batadv_choose_tt instead of fixing your patch. I would really prefer this 
patch version:

https://git.open-mesh.org/linux-merge.git/commitdiff/8864d2fcf04385cabb8c8bb159f1f2ba5790cf71

Kind regards,
	Sven
--nextPart1665509.GfMoWaoWtX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmJmmR4ACgkQXYcKB8Em
e0ZF9w//UFNInA7OC2T9+5zJHFRLWNgj6+C6pX9JeoShV3BYfv11IUXGEoIOjJo8
b3H97XoTedEQ+tfmHQZTeEwKInyaMFeBUI0DDATjtezwmlHmTkUe7cepupPhv2Oy
7eVxA4FN9pjDl2TIfN9qSkKiFNnCbgzLclwFsnLrTWt0R1o2Wtkb2HN5qXEPXg5Z
Cpsh1GUDuYhec+w+xyK3rcqeTrfgUdwTh6SvzckPPweX6QIMBIHFLjmsvmRiYDAc
7KFaXJxA7KvMduW7zQN26VblEZrhbHwlmTozo7VvdZo+k0ekhSdRseFj5dIRfhs9
r2b6weEAM7NBI/+NHGHHXIS9kFs+LqLpiwAkZhpDrLPD0OvtqMPtjR0e8sBtFhx0
llMZOfJJgcQ5QH0WuPyQ4c7YBYBHUXK9UzMlOkMFe12xPERXt8kIR2Vb2dAmdOMk
5JYrxNRvoCEcID5uGrPpXJ1V2G7KJfaiekEmG56nWgk4Q4ys+wMLnDtzs5GuQ67W
zlKSkJeoViMevRRH4EoyDdezeToP3LPQb9NoTLncPEtnyIu91ugfoxPgigBjINq5
qu8JoJqH7UHRkNIdYvWxyuN9DFY/bwsZFToBJjDK4kaobfrL1/ATGfC8mTUSv3pl
kno8dU9pOOTqTLgZTWfSyrubhNwJ6K0k+JCHx4saaNIF0ERrNOw=
=bG0x
-----END PGP SIGNATURE-----

--nextPart1665509.GfMoWaoWtX--


