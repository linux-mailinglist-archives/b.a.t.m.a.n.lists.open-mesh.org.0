Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AAF39815D
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Jun 2021 08:47:25 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 624DC80C32;
	Wed,  2 Jun 2021 08:47:24 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4701E80122
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Jun 2021 08:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1622616441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BB+iaYp4LyFwJ9jGzQ7cmHxv8GHima8n/NGSOQHI0s4=;
	b=gT355vjzgjUhPMYzSmsu52NzowUci9aReYxeuOdY53rumwmwnIlHmFV7zxbp3L0MO13Xvx
	yFv+9vinBKDGbb3ceW2yLaxvBhOSSEmFuSVFE/AVpOu47BlATc3eeycsnJL5L5o8KeOsxi
	JHOnvRPq/Ro84nxder7/568C8piQF5c=
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc, davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Zheng Yongjun <zhengyongjun3@huawei.com>, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH net-next] batman-adv: Fix spelling mistakes
Date: Wed, 02 Jun 2021 08:47:18 +0200
Message-ID: <48077100.4opSpZgCWW@ripper>
In-Reply-To: <20210602065603.106030-1-zhengyongjun3@huawei.com>
References: <20210602065603.106030-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart35456750.oCVJAORbYE"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622616442; a=rsa-sha256;
	cv=none;
	b=EINXnyMSf2fkjCOYN6zHfQSAjLUSks335zpxpLBx3LkIZRHocc5SS1WSytloh2Tss6fWoA
	GEmQr4v8Pl3JmcEvMIWeoPArPScIvsXSWWwoilZjsTFzMctprEZ4x9Xc6csBHJOpU2DmYx
	eweZdogk3JXu9K/5sDhW3NN/hgfgN9I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=gT355vjz;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622616442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BB+iaYp4LyFwJ9jGzQ7cmHxv8GHima8n/NGSOQHI0s4=;
	b=XiPDljqf5UYD/XYMCV7LPTB8v6UEWzQIRJa1Zi+MedPM4Zl/mThSoTCbnf60HIvDkSVRAq
	NPoBLbWgRKevMd9d7j53zmPxGlqnU3abZ+p03JRqqjqAarSxi83hDl9MlCdEeA/f58qSQ8
	4Qz6tYJoGAMq/p/r7oNw4lOfuJ0+fbs=
Message-ID-Hash: NKDXUC6XSBG2B6O6Q4FOTQTTSSOENYTO
X-Message-ID-Hash: NKDXUC6XSBG2B6O6Q4FOTQTTSSOENYTO
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NKDXUC6XSBG2B6O6Q4FOTQTTSSOENYTO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart35456750.oCVJAORbYE
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc, davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Zheng Yongjun <zhengyongjun3@huawei.com>, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH net-next] batman-adv: Fix spelling mistakes
Date: Wed, 02 Jun 2021 08:47:18 +0200
Message-ID: <48077100.4opSpZgCWW@ripper>
In-Reply-To: <20210602065603.106030-1-zhengyongjun3@huawei.com>
References: <20210602065603.106030-1-zhengyongjun3@huawei.com>

On Wednesday, 2 June 2021 08:56:03 CEST Zheng Yongjun wrote:
> Fix some spelling mistakes in comments:
> containg  ==> containing
> dont  ==> don't
> datas  ==> data
> brodcast  ==> broadcast
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  net/batman-adv/bridge_loop_avoidance.c | 4 ++--
>  net/batman-adv/hard-interface.c        | 2 +-
>  net/batman-adv/hash.h                  | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)


You forgot to send it to the B.A.T.M.A.N. mailing list. And it therefore 
didn't appear in our patchwork. And you send stuff from the future - which is 
rather odd.

Applied anyway.

Thanks,
	Sven

--nextPart35456750.oCVJAORbYE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmC3KXYACgkQXYcKB8Em
e0YXng//aLzrW36XvD5wdUTS/jlzrlxggP0i3YehwpVFOiSon6nDcxoAjjMij3qa
8kJKrY1cjoVgQe93P6fc0nYb+UWwwbKEE9fOHw/FYIa6qU9XwfWN3MjbVAy0HEfr
0OyBtx4o5MFA34uTCtxaE4TFXIn6am5P2U4u7rGLn9LejE1e0lfpWRUf3Wam/8Hg
Mm681yStajB159NrEjVa6YnagZhqNI47U7mId+ZfAGjeHaGQX16p6NUD654+CtPW
1P56KmH9p5JmKu1bbeUxXTaEq199I2GTsZUGZli6M6dcWaqcr2ILj6RV2G1y9vEK
vltKRHnRo3vUlbONLgiCc6TwX+CZwf0D9fn4y5Fbhpwg+SKlMeTYoIsH36Q/VkQk
kX+/iYT6WU+uQAnVcnYz9rAU6VIpkY2Gfnv9oDv5M1I653ySRY7x+5BnQBnUMCp4
TYfojqC3Yd5U/RbT5giP+qh2yB88cBq26oxUDVEPs6VMQegcju3RBnh85rT/Iqav
7pdWoLJicoB9ycbf8QFiwj8UcvEdXQKXdblkmCExuqG2BN2ln5G8GBK5PqOUenuJ
3aozntk641U3swH54hjFP+c4ZyxVASGILANTHJk+HoM0x4aGQKABPGacO39V9oK9
SkgMX8p285zxHwXICiCZGCt664FYBz9bUk1+Q9uc8bxj9mlSU/0=
=+Ayg
-----END PGP SIGNATURE-----

--nextPart35456750.oCVJAORbYE--


