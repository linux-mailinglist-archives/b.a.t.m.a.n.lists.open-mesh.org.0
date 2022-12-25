Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2513C655C84
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 25 Dec 2022 07:37:40 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CC3B1800A9;
	Sun, 25 Dec 2022 07:37:38 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8C1D580242
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 25 Dec 2022 07:37:35 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1671950255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=dsaLD4xQX6KhJrIQDNipCfva2ZF6tm0ZP6l23EoxfMY=;
	b=zKEYFqG45bK0kSd8W7rG+WhA/FbUcV1cq1Im8GhWFUQQKpLHRSQYeOUPLmaTkNK4tjaWgg
	T/L78tToaMNvuA64vnBt31AyIQ3Q2JOQXj4IyhDff4J3UU+JyIsLuRRbzRyOIUKsZ3PtxS
	T/aoRBExuIArJjpMoTaY/FmA3Z8Ckrc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=wn6lqu3R;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1671950255; a=rsa-sha256;
	cv=none;
	b=wxAzLgTZKr8DOJCPYVlyfz5IJNVmV7za264GUDBh7pRoGOIHUR6DwZ6jbGUlIl8sRzyHd1
	+aj5U21brko8io+eHZXUg+RmOBc1LJgBAEz1o6BBwxqGf8aIfiKF8nCkcDRJFep0dZwtKr
	ebklQ5C12jNMO2/VEo/WrQFsSLOG7TU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1671950255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dsaLD4xQX6KhJrIQDNipCfva2ZF6tm0ZP6l23EoxfMY=;
	b=wn6lqu3Rn/s+0IndgwyVj03DCmm7oQMZeP29dBYtu33DPnyesMY6FzEvGJ8+yn2gQEZ/Fl
	BMBpuuyHc3qi/gYT+nsrpFna01fittg6xlTSFb4+BBSOAts1tGYOU6ej6p3JlJp9vZ5H6A
	YClkn2dAatx/UXtbNWhi6mvsx/lMI0U=
From: Sven Eckelmann <sven@narfation.org>
To: Artem Chernyshev <artem.chernyshev@red-soft.ru>
Subject: Re: [PATCH] batman-adv: Check return value
Date: Sun, 25 Dec 2022 07:37:28 +0100
Message-ID: <2038034.tdWV9SEqCh@sven-l14>
In-Reply-To: <20221224233311.48678-1-artem.chernyshev@red-soft.ru>
References: <20221224233311.48678-1-artem.chernyshev@red-soft.ru>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2327203.irdbgypaU6"; micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: K4H6GG5D5VTGN5M6V627PQRIB7ZPN24S
X-Message-ID-Hash: K4H6GG5D5VTGN5M6V627PQRIB7ZPN24S
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Artem Chernyshev <artem.chernyshev@red-soft.ru>, Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org, Markus Pargmann <mpa@pengutronix.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/K4H6GG5D5VTGN5M6V627PQRIB7ZPN24S/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2327203.irdbgypaU6
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Artem Chernyshev <artem.chernyshev@red-soft.ru>
Subject: Re: [PATCH] batman-adv: Check return value
Date: Sun, 25 Dec 2022 07:37:28 +0100
Message-ID: <2038034.tdWV9SEqCh@sven-l14>
In-Reply-To: <20221224233311.48678-1-artem.chernyshev@red-soft.ru>
References: <20221224233311.48678-1-artem.chernyshev@red-soft.ru>
MIME-Version: 1.0

Subject is missing something like ..." after calling rtnl_link_register()" or
..."s during module initialization".

On Sunday, 25 December 2022 00:33:11 CET Artem Chernyshev wrote:
[...]
> diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
> index e8a449915566..04cd9682bd29 100644kwin
> @@ -113,7 +113,11 @@ static int __init batadv_init(void)
>  		goto err_create_wq;
>  
>  	register_netdevice_notifier(&batadv_hard_if_notifier);
> -	rtnl_link_register(&batadv_link_ops);
> +	ret = rtnl_link_register(&batadv_link_ops);
> +	if (ret) {
> +		pr_err("Can't register link_ops\n");
> +		goto err_create_wq;
> +	}
>  	batadv_netlink_register();
>  
>  	pr_info("B.A.T.M.A.N. advanced %s (compatibility version %i) loaded\n",
> 

This looks wrong to me. You missed to destroy the batadv_hard_if_notifier in 
this case.

And if you want to start adding the checks, you should also have added it for 
batadv_v_init, batadv_iv_init, batadv_nc_init, batadv_tp_meter_init and 
register_netdevice_notifier. You can use the unfinished patch from Markus 
Pargmann as starting point.

Kind regards,
	Sven

[1] https://patchwork.open-mesh.org/project/b.a.t.m.a.n./patch/1419594103-10928-6-git-send-email-mpa@pengutronix.de/
    https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/thread/QDX46YARWUC4R7OBFHR5OJKWQIXDQWRR/#QDX46YARWUC4R7OBFHR5OJKWQIXDQWRR
--nextPart2327203.irdbgypaU6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmOn76kACgkQXYcKB8Em
e0Z8zQ/9FXvbfIwkRg+uE3snrtNgmCRkPYlxNfFA/ktC8MAFyXtp6VGWLkQUssBD
t6nmbGBTFX9CPR1C8stqIKJnL3GPjldEXesr7zpkCR7ai7J8CsGF0j812hYfIitO
P22uzLMrWV/i1APmeee2PJDw4narHGCsgqPePp2vZO43rdqb73z6nbMqVtZT+PqD
Tfb70NjmflrHbgh9oP0L+rFfDJMbWuGNv2C4upfeDJss+oulOFEp1XK5scogITJU
VyIxj+El+FPAPkKylMiNej4o06O6U464uYjVoPlgQRkXzyfIA7nuc4qtaUktJqNb
wu9gKDL8DMGaOmIHUSm2FFLxcOi1HCSRl5D9mSPAXb8OTL8vnaOEg/Y4UKZRhEhH
lZVKi5y7ncIZlTMGgGl8YMPq/zJR+cPSVdeDhhUhMqkNxWeqhPzf4kDEf+sYuMFW
XgD9eDY/+o0tQol1zWQOLysUA1flLKanOtLxBHjv5v2EkXLh43GZQSHWT1R5tTKX
ssM3GmZ3nObg6aVUBOIlE15Wi/WuzsL7l2JT7ZlvD6jnE85hesJU+9V46KAEg60k
vCzwzEnpoz+xWYxy1hTaDln62PIBL53K9TliMkTZCflKgGMkIqidSbY0C2+F32d7
dC8OKU4/i+y0+5axnqxsdT21hE/W0DoXb46HxaluNF+jYR9hiJU=
=YzUQ
-----END PGP SIGNATURE-----

--nextPart2327203.irdbgypaU6--


