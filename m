Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 776DE2B33B6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 15 Nov 2020 11:40:59 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6A805806ED;
	Sun, 15 Nov 2020 11:40:57 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A0F8E80103
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 15 Nov 2020 11:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1605436853;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ti17F69x2c9iulBarnY0JRJ9bV8O171Ua3OT67DiGek=;
	b=ZgZiT4C4qhGPAux+Ay3XO+KaMbHXqIuypoujm5d2GV+KkO34FR8S8sLOr13rfR6PpVQ2ZP
	cLkc+L5ogU4ZVIYz+vWJ3VIiUOyAJtXctVHQVmR9NDzKXK/HVgelDzMqPDXNwzjs/BJ9pk
	pCJwgwfxIYi/fxMkarIsIXkvjUMGWQM=
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, Taehee Yoo <ap420073@gmail.com>
Subject: Re: [PATCH v3 net] batman-adv: set .owner to THIS_MODULE
Date: Sun, 15 Nov 2020 11:40:51 +0100
Message-ID: <4602363.31r3eYUQgx@sven-edge>
In-Reply-To: <20201115103004.30618-1-ap420073@gmail.com>
References: <20201115103004.30618-1-ap420073@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4272036.LvFx2qVVIh"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ZgZiT4C4;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1605436854; a=rsa-sha256;
	cv=none;
	b=Qe/fm/anLevCix4tY/35+klkvHeVMgLx/nKo7X2V36Jab20HdgtEKyo3SFONRm0LOxehX+
	XGLGZWj065tsylY4T4Uvz7rojUeSP+hSCQoV+6QVVUjYagGR4D4fx81sgmPX4S7DT/Ds6x
	T4mBzHuWnK+zADoCXKqt4aRCjeFaGnc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605436854;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Ti17F69x2c9iulBarnY0JRJ9bV8O171Ua3OT67DiGek=;
	b=K/CEc9yspL4pukXmGl895cNOB2+G2zIPuivaDfihZJsc+30cN+dkDVGiMV+rb9gl1/GKkW
	IGVdLuFas9OZZQsjdI9e89oEspePFLTGClCNIpqJ0kKF08oVy1jD0mDV0s59Bg3xMZNgSL
	6TX/866svj/FS2ndQAFjhoPBNry2uqA=
Message-ID-Hash: IKDCJSHTFZDT6QCTAISBWMGMRUBJPGQI
X-Message-ID-Hash: IKDCJSHTFZDT6QCTAISBWMGMRUBJPGQI
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: ap420073@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IKDCJSHTFZDT6QCTAISBWMGMRUBJPGQI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4272036.LvFx2qVVIh
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, Taehee Yoo <ap420073@gmail.com>
Cc: ap420073@gmail.com
Subject: Re: [PATCH v3 net] batman-adv: set .owner to THIS_MODULE
Date: Sun, 15 Nov 2020 11:40:51 +0100
Message-ID: <4602363.31r3eYUQgx@sven-edge>
In-Reply-To: <20201115103004.30618-1-ap420073@gmail.com>
References: <20201115103004.30618-1-ap420073@gmail.com>

On Sunday, 15 November 2020 11:30:04 CET Taehee Yoo wrote:
> If THIS_MODULE is not set, the module would be removed while debugfs is
> being used.
> It eventually makes kernel panic.
> 
> Fixes: 9e466250ede3 ("batman-adv: Prefix bat_debugfs local static functions with batadv_")

This Fixes: is bogus. The code was already present with the first commit 
c6c8fea29769 ("net: Add batman-adv meshing protocol"). I have now changed it 
before it was applied to the net branch.

>  net/batman-adv/log.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/batman-adv/log.c b/net/batman-adv/log.c
> index a67b2b091447..c0ca5fbe5b08 100644
> --- a/net/batman-adv/log.c
> +++ b/net/batman-adv/log.c
> @@ -180,6 +180,7 @@ static const struct file_operations batadv_log_fops = {
>  	.read           = batadv_log_read,
>  	.poll           = batadv_log_poll,
>  	.llseek         = no_llseek,
> +	.owner          = THIS_MODULE,
>  };
>  
>  /**
> 

General info: This causes a merge problem with the net-next branch [1] because 
the debugfs files were dropped in preparation of the Linux 5.11 release in 
2021. I might rebase the currently pending patches for net-next to avoid this
weird merge conflict.

Kind regards,
	Sven

[1] https://git.open-mesh.org/linux-merge.git/shortlog/refs/heads/batadv/net-next
--nextPart4272036.LvFx2qVVIh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl+xBbMACgkQXYcKB8Em
e0aVfQ//VRRU7RnW5O8RTGtgk/Qb5MJTTBetkq13lttk/hU2bpmcAlXqvWhwwKje
D2cjoc4hDbyAb4uZQN/JWVFGAoLNa64pMlIidhaG93kJ6BOtHj/z0q9IWTziMaH0
NS65OpNv9bVCPn89A95zKsXSTkSAd+1t/ruAzI5hD7XFsxYNiaRd/IgcmURaa7u9
Wn2MYnzPHBs2d2fJg2rw49nN13UtaE/i1dpa79TB/v8pvxVaikiWgWXIX497OeJ0
6OVPU/c7NKMeoChDJ9tiQ8kNTiesbclX77fjMUvz0tltpq4CGrB+kfs0AeqsF+fg
zA9q/7kfogRwxM7VWoUN7GJexZUtXK/w4mP/UXTYVDxb6cKTCo2vHoSfQs+4FKtz
tk1XJco7Nl+zK4kBvCmBuyMCBaoqPp1DDoqpSallGR4BT3v93e39DtXJuHwkt/DT
ly1fYL0sIkE9c2Vu59uebP6C4DfQ4SQ0t7+7Waqj+SzDCRltCdsJrFJVwxMBjcHn
Tih9EJKey3mQxfW5GcIVsAbaXrydSIMhCiMBTPI8lj3QCeSDrR1IoVSxvX+2JIiC
NSgXDy0Ty7KWFyDtSbUg+RfFKL8mhgivUYxnB+ce3Ovft1k6w/BVNvl6dYpZVrP9
F/WmBaiwwQ/4HFuWnhabBXlDvWh6mKsAR8ruAjl/9+bHD5mwzQ0=
=Mxg5
-----END PGP SIGNATURE-----

--nextPart4272036.LvFx2qVVIh--


