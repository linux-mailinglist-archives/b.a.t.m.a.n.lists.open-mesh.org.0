Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6A748CD56
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jan 2022 22:03:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5AE9283E07;
	Wed, 12 Jan 2022 22:03:17 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6110D8045D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jan 2022 22:03:13 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: alfred: allow startup without network interface
Date: Wed, 12 Jan 2022 22:02:58 +0100
Message-ID: <10410848.OOsao9LFFs@rousseau>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1678592.4hFhtZiafV"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642021394; a=rsa-sha256;
	cv=none;
	b=ylOaBRqur5IQ63fTHe0etD2YsZDl03lnIT2CAh0xOJ61nzm5nJFn4TLWbZBPZPnCXjkjhN
	J4RcD6aPtTK/HMfZXrdq8fPMV967iYc/XrvLKQQqeYr8y7VIxbdfEEcOLsWh+SGqCKHxMP
	9ETQqXlAtYNISLdAX4/x8ATuVcvd4Ac=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642021394;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=w5H6oVnnYYkmGpqlIB0dGDC/JxFEZkSZLXlE4wCjdZY=;
	b=yNhzGttbhXCZtLkET7uqgQIbPM4FfPFTeZkehP41diLIQaSG/NkthGv5NCcIVDD60lKW5e
	wSN93K31veFO/fDNsvM4iK16+zMVMXvNwHF9/UUwDWBAh9ggcE599tEdS5K9WvaGCc+npL
	bODHhg7VUqeFyCD9wPTnrTcUV3SaFiI=
Message-ID-Hash: XQGEBNF63B7HBP75NB2UMXUCP5K7PR6C
X-Message-ID-Hash: XQGEBNF63B7HBP75NB2UMXUCP5K7PR6C
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XQGEBNF63B7HBP75NB2UMXUCP5K7PR6C/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1678592.4hFhtZiafV
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: alfred: allow startup without network interface
Date: Wed, 12 Jan 2022 22:02:58 +0100
Message-ID: <10410848.OOsao9LFFs@rousseau>

Hi,

alfred could be used without any interface at all and operate as local data 
storage between 2 processes on the same system or the interface could be 
configured at a later time (via unix socket).

To allow for these additional use cases and keep the current behavior, the 
interface command line parameter shall accept 'none' as interface name 
(similar to the batman-adv interface).

Cheers,
Marek

--nextPart1678592.4hFhtZiafV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmHfQgIACgkQU1VOj+62
HMDjpQgAhkM+znVLmicJjf0mzlqIolbg79+FtRqBynQ+imYX4w0tcRevk6D3SM8Q
l/M+Ld6ZdR59QlalDTou4yfakfUzECLrIvMAF5fo/G7YzPHtJAwonHy60kxGvkE0
oQuK6C8xEkkaHTVWdbdvuWgclgBQUFSxJAD+0R3UKSTU1pwABWOVzBzi5FDaF9nM
Fv+SNBxfzQ0k7bHkACjQ5Fo0QPYZs9z/77ntQ3JZ0MiGV6KvWxWiyCSOAe5DKOed
F08Z+y/DxrPS7fpVzIpEoB9AsMkOeBYQHYr3QfdXABak68L8BpxiY3KRRxHn8QE6
vyq5N7G9cdSSe9k/BVkShNDwiLXtIA==
=SBcI
-----END PGP SIGNATURE-----

--nextPart1678592.4hFhtZiafV--


