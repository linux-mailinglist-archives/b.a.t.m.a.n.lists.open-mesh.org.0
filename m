Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5002231AD4F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Feb 2021 18:10:36 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 27B31806E5;
	Sat, 13 Feb 2021 18:10:35 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A8C1C80314
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Feb 2021 18:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1613236232;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jR35BpoqUvnRVrVVfYa5U8fnIyC1Md6WCZBhj+Px2X8=;
	b=T+hUv3/Gtj9jwG7nD8EzpluQzp9vujefFla6nICBywmrnj9iA1SAMrTj/nU6VNlYmBgsHO
	hy3z8/vMSH31Mp91x162KU5jjOQWFq/Ep1n/D4XufimKIXWcjaXu7p0XpcG4RmUPehZSXN
	oQa1+QGwNVJ2te1vYizZAcXw7DuS7B8=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH] batman-adv: Use netif_rx_any_context().
Date: Sat, 13 Feb 2021 18:10:29 +0100
Message-ID: <10903423.uF0vj5h9zV@sven-edge>
In-Reply-To: <20210213170204.3092113-1-bigeasy@linutronix.de>
References: <20210213170204.3092113-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart13446814.T51Icr5x54"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="T+hUv3/G";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1613236232;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jR35BpoqUvnRVrVVfYa5U8fnIyC1Md6WCZBhj+Px2X8=;
	b=bZtkqN4kM6ar0Vcpsq5wVLIda6i1LEmawtEbKQKd7T+46OPekkyth4hw7/nlAkO8szbL0c
	lP/UkGygaiPEnKs2sQNfRtH6p+nBoVeVRHuP0r/LSJ8iJWfZifIkTq8tTnKSPkxoodKy1o
	naqveO+vxpd0A/cNpbHF66jS+RF4Cqk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1613236232; a=rsa-sha256;
	cv=none;
	b=TGM67yb7o3/tVIQz1afOCDD6UycV9zMTpHBZ6IQU1Dn5+jYIBkMPdMItMXZrRqh0CzuM9t
	rt3DOjmCU9Op4pxx+Bxz4Cd9v1fTTgchuycX9GT9e4ANg5q01zCV8cLkY4r8PF0FcZTBYA
	yrK3VXNNCH1uwaW4RqeHG0VDwY28FUE=
Message-ID-Hash: RMV3IEOAAC3UKKKE4YZASPNA3PV4OYMW
X-Message-ID-Hash: RMV3IEOAAC3UKKKE4YZASPNA3PV4OYMW
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, Thomas Gleixner <tglx@linutronix.de>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RMV3IEOAAC3UKKKE4YZASPNA3PV4OYMW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart13446814.T51Icr5x54
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>, Thomas Gleixner <tglx@linutronix.de>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH] batman-adv: Use netif_rx_any_context().
Date: Sat, 13 Feb 2021 18:10:29 +0100
Message-ID: <10903423.uF0vj5h9zV@sven-edge>
In-Reply-To: <20210213170204.3092113-1-bigeasy@linutronix.de>
References: <20210213170204.3092113-1-bigeasy@linutronix.de>

On Saturday, 13 February 2021 18:02:04 CET Sebastian Andrzej Siewior wrote:
> The usage of in_interrupt() in non-core code is phased out. Ideally the
> information of the calling context should be passed by the callers or the
> functions be split as appropriate.
> 
> The attempt to consolidate the code by passing an arguemnt or by
> distangling it failed due lack of knowledge about this driver and because
> the call chains are hard to follow.
> 
> As a stop gap use netif_rx_any_context() which invokes the correct code path
> depending on context and confines the in_interrupt() usage to core code.

Thanks, queued up

Kind regards,
	Sven

--nextPart13446814.T51Icr5x54
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmAoCAUACgkQXYcKB8Em
e0bBhA//W0Nb/44TEC40A1mfYoLCSlUnFKx5J2Qbs9/H/jmcoxSyoIVUUUlZTHPu
iF031fqfJostbGE6rwdV8cM9OQS6Mg7C3q+SUILgyAlKob1CKOoVhhkL9MdK+Y2n
yvGOaVYKn2o9CqKeXdGECEuA07+5Y8Hf0SFOnhLaHASUV9nwfr83wdC9C+VkWYvi
VfoslTkWBAh2Z7TweCMfXIxuJ6p9HA5glFRrbkTg6hxys/7PUtkX2CaWVM8TO7+k
RpfbGDjbx/uEdzPgyYR67WXE0mtgwUMV09HwiOvH9AzGEVYC7vj/+C/vM9kK6NIV
VIq8irMZ7i/IjwU2QHU7NIDaAsn1sP54NyYpPw6NnISxzwEAcG8eO5TZH3gaqjTv
bbftmCgOB4+qAiRWLMFp/eJX8c6FVUcpkJ56mqW436WwKSYKYS7aI3Uvi67WK4ps
T6+nx6ydNpXojaN3YGIgErsvEVF/UQjJ4vTMgcNJTSBVSd82o0q8GH3weVZw61vP
8lsoMRmGv0bYs9ph9J8CEZMXarh8gM2aZ35xio+LVbhYmMGsqjt3RCBEAB1nGehk
XhjiaAlM2bKbTHNZLxOF1bRXNeLMhJQRF2NJgV+CQo1ad3Wy3PsOfHsmxLsUD1pZ
CC3C6q7DgCklDO05iYKd4wUXeVesQrO6onLbQj+ZhCEeT1FV9c4=
=3HQw
-----END PGP SIGNATURE-----

--nextPart13446814.T51Icr5x54--


