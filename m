Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E2C46FE2E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Dec 2021 10:52:44 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 40E5383DD3;
	Fri, 10 Dec 2021 10:52:41 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 022408074D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Dec 2021 10:51:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1639129910;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UoVnYVEhK6T2048vTXTUcC+ZvRTghvuGjwu5io1WJRo=;
	b=Y6tBSGEvHKL1TN3Q0I6CW2o5VHxZcp3fGTSI9tru49ke3w6HwkWfClCvRZxeFU+SVdr8ip
	UOKI0LdaYsSCcHWn9mLREvPize1JGJunAb5wv2m1qo2nV2HKZf+IfKNSP8/Zl0CUR2NAYs
	t6N3poffLYqTR2MC+fpgoB2lAaCO110=
From: Sven Eckelmann <sven@narfation.org>
To: cgel.zte@gmail.com
Subject: Re: [PATCHv2] net/batman-adv:remove unneeded variable
Date: Fri, 10 Dec 2021 10:51:44 +0100
Message-ID: <2776551.YYyxiJnSHr@ripper>
In-Reply-To: <20211210094206.426283-1-chi.minghao@zte.com.cn>
References: <2844186.8fJna1iEf4@ripper> <20211210094206.426283-1-chi.minghao@zte.com.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3204491.a8kA2qvuHL"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1639129911;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=UoVnYVEhK6T2048vTXTUcC+ZvRTghvuGjwu5io1WJRo=;
	b=vbSxy7Jg57wBTNfJrQoOfnRcCUzBA7auHM3jt861r04qhqVy5FFndvzFJ1nLms2+lyVtIf
	r57vMQrO9Qy8lRLsxLeKqUlppu9oXcsCcIeHvLHsEHglWKmAu4khupc9Rg1myQ1nqp06vH
	Dgzgrv1YL7NRojGQ9ydeUIRl7K0xuwY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Y6tBSGEv;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1639129911; a=rsa-sha256;
	cv=none;
	b=tfIjStcM6D9cKuw2b9gerYbUmg/SUi/kNjlE7loPgR9EI3myw8mA+KZg69lcrOgsb8saxm
	jrrfBIWwlVp3ILssBD6rk1Xoj542LhtnMe6rdgm3zMEKZXfE2J5F21XcqR1NqKR4Kr979U
	cQrzmEuO+M0PnRO1FccHAEHU5ID45Rk=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: LRKZTADWMLYKAHRYEXHA3FKD4WFEQGYL
X-Message-ID-Hash: LRKZTADWMLYKAHRYEXHA3FKD4WFEQGYL
X-Mailman-Approved-At: Fri, 10 Dec 2021 09:52:37 +0100
CC: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, cgel.zte@gmail.com, chi.minghao@zte.com.cn, davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, netdev@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LRKZTADWMLYKAHRYEXHA3FKD4WFEQGYL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3204491.a8kA2qvuHL
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: cgel.zte@gmail.com
Cc: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, cgel.zte@gmail.com, chi.minghao@zte.com.cn, davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, netdev@vger.kernel.org, sw@simonwunderlich.de, Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCHv2] net/batman-adv:remove unneeded variable
Date: Fri, 10 Dec 2021 10:51:44 +0100
Message-ID: <2776551.YYyxiJnSHr@ripper>
In-Reply-To: <20211210094206.426283-1-chi.minghao@zte.com.cn>
References: <2844186.8fJna1iEf4@ripper> <20211210094206.426283-1-chi.minghao@zte.com.cn>

On Friday, 10 December 2021 10:42:06 CET cgel.zte@gmail.com wrote:
> From: Minghao Chi <chi.minghao@zte.com.cn>
> 
> Return status directly from function called.
> change since v1: zealci@zte.com.cm
>              v2: zealci@zte.com.cn
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
> ---

This is wrong:

1. the patch was already applied
2. the patch history doesn't belong in the commit message
3. there is still an alignment problem
4. if you use -v in git-format-patch then it should be "PATCH v2" and not 
   "PATCHv2" (otherwise it will not be parsed correctly by patchwork)
5. The alignment problem is still there
6. the subject is also not following the normal formatting style

Kind regards,
	Sven
--nextPart3204491.a8kA2qvuHL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmGzIzAACgkQXYcKB8Em
e0ZijRAAjT1ExR75ttZ02uaY/6uk/CoBLOSPAA+wkchdxBITNGmVRJhCUpVXZVYX
WfHK7wwg2xsteGyfqA9i/ohYHOMrKisNcUwkw0fxGxLQOKYQMwYTlZWdKEu7Q8kU
APu3HQ1Kd38It60FW9+nuy+8/JTq0YlTU8Th9YUiUBRr2YWGZAL3+vdKNeF3T9fx
IAUjEoJoEQwzznmiRW135R43iyu+/gNrj7JG1d4BCog/xmwO7nNDZD8qUHZh+qKt
UVZg1yPArL5m18ngg9A7RrV8ahb0beOsWjalotOD/jLB2C5kd5VKmEhd0FHEnm6V
YfKVXzjuaOu8CfS0tMjQJqbV2R0K8cNgJzhB3GlsCiAx79e+rPHja8yrpB1dbztz
oE/pOBkLbvwM/Qg7LCcFrocDVj7cE92cJQbxEU3516cT02zNZTBbUNUTLY9qPgK8
oqNel2UEgbYj3UicXINFPl2XbUdTyamI1TSywLven9PnDojg5hvgkq1aU7wVyIAs
dw2sIruF950Iv5K24IHsE4eXvtYd45KirFb6vhNqnzEiCtEaqLFf9BFqw/ecpgR4
FJA7y311KwsfoMumveAM3oFcff+35LFkoO6g+rentNRhFQWO0Xe+XUwd5oW9Lb78
jaO0qlOkssdh+pMai4cNENeU4mtdjFdtTJJy73D9iKDhBZG+ACA=
=9BtG
-----END PGP SIGNATURE-----

--nextPart3204491.a8kA2qvuHL--


