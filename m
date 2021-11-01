Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 065E0441457
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  1 Nov 2021 08:47:30 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 768A083216;
	Mon,  1 Nov 2021 08:47:29 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 725A580B51
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  1 Nov 2021 08:46:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1635752791;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dMM5VdyfST0WkYFfPCUR+vTsJivHT2VK2DMrXFvwtTA=;
	b=HIW9pF/9/sNYVjUa9VHDta3h+pRHBShB6UAvxCDnSWaFX/FUNXxNQzFajtDOqSHWFxSIH+
	uAoICTZiyFpvkbkRRmwOh1KF6qbK2ZniuwxnVzrCWLlw/frpgU2ICjgrZWuFnMDWVjwzwy
	LpGrmZJhPkd6832ggChPijidDmR/ot4=
From: Sven Eckelmann <sven@narfation.org>
To: Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Dongliang Mu <mudongliangabcd@gmail.com>
Subject: Re: [PATCH] net: batman-adv: fix warning in batadv_v_ogm_free
Date: Mon, 01 Nov 2021 08:46:16 +0100
Message-ID: <3170956.dbteMgFBTL@ripper>
In-Reply-To: <20211101040103.388646-1-mudongliangabcd@gmail.com>
References: <20211101040103.388646-1-mudongliangabcd@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4506140.dEfYWnWTC4"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635752791;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=dMM5VdyfST0WkYFfPCUR+vTsJivHT2VK2DMrXFvwtTA=;
	b=UU+rgk0btWimutRDvUFTzkjZSeIwhCjG7Fo6iZ0quglbWxTtmXzrPL9hhIWbFjPAIQ5c9d
	gUPNvqZ02pySMVcseQQcRxIyePd711Ns70MUuRb2E/uNk1adypglt5k9fjZEbe2/WCMh+4
	+QsM7yb3mtaTAlSq+o1z9DgI5avC4j4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="HIW9pF/9";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635752791; a=rsa-sha256;
	cv=none;
	b=QGQTCzdfSFQlNCYR8rAJg/Z4NJ1TU9Mj8B16z8W19FkDX/Eu81o7RLV6QBjdItoyewmLJ0
	8exnuAaaZY99nrocmpoTuZLUMRJ8qjb4dYrOYb45GuGLwstrKp/VnBrqaiZj1JjhwEuTZV
	u2eJP+Bl+sHZdsJDslxSzsUgcvEccHg=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: IUBE3YOYIMCYN3DQMSXOTVYVPLRBNK2Z
X-Message-ID-Hash: IUBE3YOYIMCYN3DQMSXOTVYVPLRBNK2Z
X-Mailman-Approved-At: Mon, 01 Nov 2021 07:47:28 +0100
CC: Dongliang Mu <mudongliangabcd@gmail.com>, Antonio Quartulli <antonio@open-mesh.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IUBE3YOYIMCYN3DQMSXOTVYVPLRBNK2Z/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4506140.dEfYWnWTC4
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Dongliang Mu <mudongliangabcd@gmail.com>
Cc: Dongliang Mu <mudongliangabcd@gmail.com>, Antonio Quartulli <antonio@open-mesh.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] net: batman-adv: fix warning in batadv_v_ogm_free
Date: Mon, 01 Nov 2021 08:46:16 +0100
Message-ID: <3170956.dbteMgFBTL@ripper>
In-Reply-To: <20211101040103.388646-1-mudongliangabcd@gmail.com>
References: <20211101040103.388646-1-mudongliangabcd@gmail.com>

On Monday, 1 November 2021 05:01:02 CET Dongliang Mu wrote:
> Call Trace:
>  __cancel_work_timer+0x1c9/0x280 kernel/workqueue.c:3170
>  batadv_v_ogm_free+0x1d/0x50 net/batman-adv/bat_v_ogm.c:1076
>  batadv_mesh_free+0x35/0xa0 net/batman-adv/main.c:244
>  batadv_mesh_init+0x22a/0x240 net/batman-adv/main.c:226
>  batadv_softif_init_late+0x1ad/0x240 net/batman-adv/soft-interface.c:804
>  register_netdevice+0x15d/0x810 net/core/dev.c:10229

This is definitely not a backtrace of the current code and its error handling. 
Please check the current code [1] and explain the situation against this 
version.

Kind regards,
	Sven

[1] https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/net/batman-adv/main.c?id=ae0393500e3b0139210749d52d22b29002c20e16#n237
--nextPart4506140.dEfYWnWTC4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmF/m0gACgkQXYcKB8Em
e0bxPRAAzrrbbgZ90XBfIGxWDbp9z/P9TzluLSCD7NVCVy2o+23bt8jEsjh762a1
ChAnSLOf7xmtDxc+EubBQOkKFqCWDeVYPo7YiZcnihY+2k4lLdMX8bWo9L5OxwA6
GiJEXk5CHEhh6BUOL1Qv6RsrCfhHowPyi7ycDWiap9g6kwVLQUsthOn0B6quPonx
1AJBfmyHwxY9nyvx0JNP7P6UQkiNzuKVhBJbZnpmAX+AzNEHB10XxyM+kMXXFh1h
JGtsLs0Zcw6yEIwxSxWY4SxBeqK3LV/+9ym/jBGs+aPjgBblYHxndlQeS0+UB52p
/eM4zdnHk2x9rqvaqeikQb3OZw1wN+y73/Xq/z5knyqxABOHQnGE8QoBah3dLiF7
5fFdJZosHvboSV+YWnx79WHzTbBxKdG0/5hHEB0nbFfYfrUzlfkS8NYOqK6aBezC
hAPms928ro8D+AA6kotEYDN41h/Z4LdWOINwBG2za8nfAquPyC4iHCc3WYm4F9w2
QIpp61jkhoawboxtnn6w1n0S3w/ZY4tKL4j/YyBDjRHVZ7g7qDLnMY+yXCkHf6cW
dMHis7OC/Enf0LSN99sbE0R/3aSUBG7m9d1HY4tYZwfYFrPl25vNXXGdPZVf+apT
RMkmifjFyrfQ1rCUpT9OL1Z8hJIQxOXmM4G+ZOG+lGqukOC+5UE=
=QUqO
-----END PGP SIGNATURE-----

--nextPart4506140.dEfYWnWTC4--


