Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 565974CF2C2
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  7 Mar 2022 08:41:44 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3EA2680C47;
	Mon,  7 Mar 2022 08:41:43 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C12C98026D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  7 Mar 2022 08:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646638009;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SUDWX+qX7lJO1lMZKRMgkFBP+55hQ3ybpY5JUvU6KS0=;
	b=1RfbpQxg3XtX2zKAbfVsU66X7W4yc6g7d9rbtDP3W50b+QRPhLl4uvsoBldHwunTl31eMD
	+vwX+dy2ETC04D1hyrrlBRXQrqCCyIsu1obwtOiNPlap2YiSgHvom1bHmMnvsy3BBRLtXR
	aHLlqf/hnJD2OOmDXqQ0Yo5RT2bUOb8=
From: Sven Eckelmann <sven@narfation.org>
To: netdev@vger.kernel.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH net-next 05/10] batman-adv: Use netif_rx().
Date: Mon, 07 Mar 2022 08:26:44 +0100
Message-ID: <6057237.0618BOYifV@ripper>
In-Reply-To: <20220306215753.3156276-6-bigeasy@linutronix.de>
References: <20220306215753.3156276-1-bigeasy@linutronix.de> <20220306215753.3156276-6-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart23526821.4xDK8nd8PC"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=1RfbpQxg;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646638010; a=rsa-sha256;
	cv=none;
	b=qZynDVsnESDDHVYz+TIN8mkZ2ChpAE3JPRlidnlSOyJfJvl4p8VACDeulGo/LiWDXCKufX
	ByURI1DL6ZKk86UcR6/eXV4m6tVkXv4upNqfL2V1ogxEHrbxSW0oNc9OlXRIuUSJ6RyUDl
	rtl4xrF2EC5ggNUPrL8i73HJeIozOBQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646638010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=SUDWX+qX7lJO1lMZKRMgkFBP+55hQ3ybpY5JUvU6KS0=;
	b=SZ6VxG7fnW4RRwG/HTzZhrHBveTmwp01qCP1qBBhqWiAw/AJU8Q1oqlu0b8URRBqOVYxPF
	v+dNZKTRo1AJKOjIJYUCLA29pFwa/uBVw6oqU4w1uLIq+P0pagQmLOLYkyHyjy2IaADC2f
	N80Q5t6mrbgOcHSR/O+/A4bv9fHUh68=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: HP72B6YFITWNDYXKDTRHKFY6ONRZM7W7
X-Message-ID-Hash: HP72B6YFITWNDYXKDTRHKFY6ONRZM7W7
X-Mailman-Approved-At: Mon, 07 Mar 2022 07:41:40 +0100
CC: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Antonio Quartulli <a@unstable.cc>, Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HP72B6YFITWNDYXKDTRHKFY6ONRZM7W7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart23526821.4xDK8nd8PC
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: netdev@vger.kernel.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Antonio Quartulli <a@unstable.cc>, Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH net-next 05/10] batman-adv: Use netif_rx().
Date: Mon, 07 Mar 2022 08:26:44 +0100
Message-ID: <6057237.0618BOYifV@ripper>
In-Reply-To: <20220306215753.3156276-6-bigeasy@linutronix.de>
References: <20220306215753.3156276-1-bigeasy@linutronix.de> <20220306215753.3156276-6-bigeasy@linutronix.de>

On Sunday, 6 March 2022 22:57:48 CET Sebastian Andrzej Siewior wrote:
> Since commit
>    baebdf48c3600 ("net: dev: Makes sure netif_rx() can be invoked in any context.")
> 
> the function netif_rx() can be used in preemptible/thread context as
> well as in interrupt context.
> 
> Use netif_rx().
> 
> Cc: Antonio Quartulli <a@unstable.cc>
> Cc: Marek Lindner <mareklindner@neomailbox.ch>
> Cc: Simon Wunderlich <sw@simonwunderlich.de>
> Cc: Sven Eckelmann <sven@narfation.org>
> Cc: b.a.t.m.a.n@lists.open-mesh.org
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  net/batman-adv/bridge_loop_avoidance.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)


Acked-by: Sven Eckelmann <sven@narfation.org>
--nextPart23526821.4xDK8nd8PC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmIls7QACgkQXYcKB8Em
e0b2/Q//XcO0hhSLL1nArD2M/D4WHYoT7j507mGwYAJ9TxgHdAL1OMnK+rNBs0ad
FjYaoPzYhnhMBDvVWnkAbr2B+GPp6h3LNzWbjvc9hX/HMewWynKM6bpYGgfmPOz3
OSdTsrVGG9gmX5/rQUAjcYAXycOkiHWL3fsRzxjeB0BLwRjyOlXu77Y+E9sDNU41
XZ4cyEwG1ylIWx+JvtaK9TquoNAZ7BwdlHKdLGcnpJ2REI8ir+myjy0SxmKxB3w2
wi6YU6BfJXf1afHogDl4Tu4LmwJirs9+Gl+JPH+bQ9zD+V0hSYUN4akjCFuUAzM3
erKsgZVyabJ0J9VQSwTZBgo0myiW63uCG467Pu0IFVkY+0WZtdG4Dt6Z07O8KwaX
+Ls8Kp2cUj5E76dodkQlFqaBP2tLCe9D9PUUmVIAdWuI+UT8S7cGRBN9pV70uxaf
eRcdtiJ5GyCYDUoW7VxxslCiI/j3MjX1IE3/iqjImEbLXFXJb+TjVboYub8FXAtD
Zjv+gzOi4NEyN3DduyecXQ0xig6wcfaY7osZi21svj3/dBCvHA7ahRp+FMz+8m05
5Xf8QUQTQ2nydN/EqT/4Pn5zbsXM4e3fNoqZYj6QDfNCOccMItZRMCcdCZT1PPfo
epdgj0HJCpuGGdLzDAGb1Q+OuGFVtmE6ZvE9ro97nS/qFqrX8SA=
=cEkA
-----END PGP SIGNATURE-----

--nextPart23526821.4xDK8nd8PC--


