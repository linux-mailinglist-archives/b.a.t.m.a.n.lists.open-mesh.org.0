Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED7D39408B
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 28 May 2021 12:00:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 05349807D5;
	Fri, 28 May 2021 12:00:52 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 08F98801FD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 28 May 2021 12:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1622196048;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OmS3Xtoeak6MRLd+5GYFy0/qSh91YuShKZQkQq6q3tc=;
	b=BC4HaLgk117+A05W0eex0XQnSrfDPYaM/eij1TE1dXG98iHLqI8vHjpsXVsc4W9RILSXNX
	vYXu4OFwtNobXCMEfJHLI7Rql6r/ZjByHVUnpVRzJlhpVLKGZ+fzDc9dw8BbdTPRZRcL04
	Zi6y0D5HPms5ZLvvuySVka6+m/AOrLc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] batman-adv: Remove the repeated declaration
Date: Fri, 28 May 2021 12:00:44 +0200
Message-ID: <56516093.ber78CngbM@ripper>
In-Reply-To: <1622195785-55920-1-git-send-email-zhangshaokun@hisilicon.com>
References: <1622195785-55920-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart13351496.OZpsN2k5gf"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622196049; a=rsa-sha256;
	cv=none;
	b=WDQim/q6NR0k0KL8HligWnGoRyEwwBDC13kh7gTtUXgokK6sdeF14AmyikdZ0m9we1aFVG
	6fy/sVTsww3TP3c1XeAZM+x64zbP/UL3xJZ0HxqIFZ6w/54h6HQD82pzqfeJlusIv0TomW
	eu1Sf4sTeEB/dnQOzpDuwi92Pw5w9Xc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=BC4HaLgk;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622196049;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=OmS3Xtoeak6MRLd+5GYFy0/qSh91YuShKZQkQq6q3tc=;
	b=X1R9ZnxDStOFWg5f8YDdiXVZIAZdmoz6dQWAD08tHUkU/nQPhJzo6EfZLYaktvXyA/PtsS
	ZM/+uIb2PXHvNHRYdwnhfTVFTeaRPDgMCrTSNqeGWGF7OQeLKZCOGFAByqZX1weYTbv0mp
	W0+NOpZiAtH8kvtfJHf2d57OU0A8pa4=
Message-ID-Hash: HVR63PIOMG6Y6YDKBLXBNVS75QQ3AMFP
X-Message-ID-Hash: HVR63PIOMG6Y6YDKBLXBNVS75QQ3AMFP
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Shaokun Zhang <zhangshaokun@hisilicon.com>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HVR63PIOMG6Y6YDKBLXBNVS75QQ3AMFP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart13351496.OZpsN2k5gf
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, Shaokun Zhang <zhangshaokun@hisilicon.com>
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>, Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>
Subject: Re: [PATCH] batman-adv: Remove the repeated declaration
Date: Fri, 28 May 2021 12:00:44 +0200
Message-ID: <56516093.ber78CngbM@ripper>
In-Reply-To: <1622195785-55920-1-git-send-email-zhangshaokun@hisilicon.com>
References: <1622195785-55920-1-git-send-email-zhangshaokun@hisilicon.com>

On Friday, 28 May 2021 11:56:25 CEST Shaokun Zhang wrote:
> Function 'batadv_bla_claim_dump' is declared twice, so remove the
> repeated declaration.
> 
> Cc: Marek Lindner <mareklindner@neomailbox.ch>
> Cc: Simon Wunderlich <sw@simonwunderlich.de>
> Cc: Antonio Quartulli <a@unstable.cc>
> Cc: Sven Eckelmann <sven@narfation.org>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
>  net/batman-adv/bridge_loop_avoidance.h | 1 -
>  1 file changed, 1 deletion(-)

Applied

Thanks,
	Sven
--nextPart13351496.OZpsN2k5gf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCwv00ACgkQXYcKB8Em
e0bgmQ/7Bfub8mMSSR8Q3Rp9lJk0s7uHkLHB+M5TxDZTCKTpxCPvWANddLrD4cPy
FmrjUMXKIyIE9KSGiX+C/XLB7cMNpH5gyuiZ1xuVOtw5zqyNqliTqOvx8ODOUQ27
NvsFKDvBl3TwhqCfDHwp7xWssLDCx5Yisc0SSlGC/Ev+0g55PMHL7IiMaALFrjnZ
2WWatv2D7GoSeDSNgRi9rHQUeUXpo6nKDSy99DDQHPt2iHsAErZvN65lSt0wzkGC
M1TcsZmE9+QTwnHKdbwwsoEZ1IFU59ovxfoQ8KCBw+0t/UAoTvMN7hSB8Ph7Ar8a
UrsMBL4T/NpOmNFYiaLjHfIjd6AKHUhv4kFTWtY7e9MkhF2LMyi9oNqjiX1LwlIO
RxI7jyyiUW5z4Jz+ioxOG60UD5Q9GEgJ1/5Ecb4U43HYBBUy3DaCLHXIxXhjoQgG
z9uARVB0xfGuvegJElr59eNRGoAN9EbL6AlJQRb4kuF78fHRP8gYD1u3OswTkSHt
om6WIlsFqXTRuz5W1dT72TQ4LLTpHziCV0B9ZWiYrL7mrjwi03RcnwbAIe7bS/us
wGqIbdpny63hiOD+wpjqr7lt653p9KOlDn/10JIip2W4tkRjBzRriKU+qLxFjMf5
7M6+0uKaRa6vfRZ4N9jW0dAO+EEzFBsOOs5OMbssO/Ij6d1+UEI=
=36As
-----END PGP SIGNATURE-----

--nextPart13351496.OZpsN2k5gf--


