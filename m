Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 19314401C1B
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  6 Sep 2021 15:06:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C90A081142;
	Mon,  6 Sep 2021 15:06:05 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9CADA803A0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  6 Sep 2021 15:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1630933561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZWhr354UN+QEGh+JHx0mWdCOtBH79GoNyKQZQF4hWC0=;
	b=jXJyWedEM2JH5G2ek/kkpGVONHo9jwpQ7tiBYnyX2yRhWXXre9r88UZtm7UjNgGm4Lr0cE
	IQ0qfcFSvXoAfnnRNYMYvlyYGjNMIahmWenV99gea2KhOJs/TpS/sr7nX1hau8uOKvNYaM
	JMVlrH4N/+CYvGQCNm9LnA1d4bpIR2E=
From: Sven Eckelmann <sven@narfation.org>
To: Ryan Cai <ycaibb@gmail.com>
Subject: Re: Some bugs in batmand(Github)
Date: Mon, 06 Sep 2021 15:05:58 +0200
Message-ID: <22655069.kYlCe6xmuC@ripper>
In-Reply-To: <B47F117D-81FF-48BA-8AB2-CDBB8A9BB450@gmail.com>
References: <B47F117D-81FF-48BA-8AB2-CDBB8A9BB450@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5350538.e81NDu2FWj"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1630933561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ZWhr354UN+QEGh+JHx0mWdCOtBH79GoNyKQZQF4hWC0=;
	b=S4ME9b946YIb4nfgwgDaKn9sQIDEriEQkZQPpvJK1QNNLwB6EgNVpTg5tamlcX9a1AIHIq
	H6To4XWlwdF5SzhrPZqIv6bGg9zi+9QcLOYTrxg7/tpuSaJCOjK1R/JTs6or2IsEwI8CUY
	kfmJyCktGy1HyeqFSZQUgzIeGg7B0Jk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=jXJyWedE;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1630933561; a=rsa-sha256;
	cv=none;
	b=2y8UALhbzd5uVeha9UOi7jlC/ZfbIBn/kFnF43JeJ2M8+TSfEuP/xzr30JhFkT7oyiYJWu
	qR5lDjxWHdT6+fztKGXhjHyAUwKl0k5dd7Di2nteJMRKGBBDswR590BFPFhaPYpXNufI3n
	1lccHRkd1qbshOfYn2EsfGVPxSOgzP8=
Message-ID-Hash: VUY2AMSLJ7AGRIXNKFE2LMDGPYD4VHRT
X-Message-ID-Hash: VUY2AMSLJ7AGRIXNKFE2LMDGPYD4VHRT
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VUY2AMSLJ7AGRIXNKFE2LMDGPYD4VHRT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart5350538.e81NDu2FWj
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Ryan Cai <ycaibb@gmail.com>
Cc: Corinna Aichele <onelektra@gmx.net>, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Some bugs in batmand(Github)
Date: Mon, 06 Sep 2021 15:05:58 +0200
Message-ID: <22655069.kYlCe6xmuC@ripper>
In-Reply-To: <B47F117D-81FF-48BA-8AB2-CDBB8A9BB450@gmail.com>
References: <B47F117D-81FF-48BA-8AB2-CDBB8A9BB450@gmail.com>

On Monday, 6 September 2021 14:59:12 CEST Ryan Cai wrote:
>           I am Ryan Cai, coming from HK. Recently, I am looking at batmand, which is really cool. However, I found some potential improper locking bugs due to the unreleased locks like here, https://github.com/open-mesh-mirror/batmand/blob/df6fcb8706d325b3fd4c7000493e64d57c852755/posix/unix_socket.c#L261-L284, the lock could not correctly be released when the middle break statement is executed. The bug pattern also exists in [1]. Could you confirme these? I would love to create PR for these.
[...]
> [1]
> https://github.com/open-mesh-mirror/batmand/blob/df6fcb8706d325b3fd4c7000493e64d57c852755/posix/unix_socket.c#L500
> https://github.com/open-mesh-mirror/batmand/blob/df6fcb8706d325b3fd4c7000493e64d57c852755/posix/unix_socket.c#L565

Please contact the maintainer Elektra and the mailing list about it [1].

Btw. I don't see how the break inside the loop should affect the unlocking. 
The pthread_mutex_unlock comes after the loop and not as part of the loop.

And we are also not doing any work via Github. Please use the normal 
contribution [2] procedure and don't open PRs on random github
repositories.

Kind regards,
	Sven

[1] https://www.open-mesh.org/projects/open-mesh/wiki/MailingList
[2] https://www.open-mesh.org/projects/open-mesh/wiki/Contribute

--nextPart5350538.e81NDu2FWj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmE2EjYACgkQXYcKB8Em
e0YSAg//WllFPn8yl0YEpvU8b59EqrFuF5+fLAa8p4C+ZTm+BYhFmLlUcB63P820
jpNgROzSL0vWjFvEYZWb55tUix5WM2pXgXAjKI2Sl/WiKDoC11M4fHSoz/fW1NsM
IXOqRptG+CaH4Rqti8/ip7z+XwtDs9+JE1eTz1OKiU0kYFHrD0bisOFd5NrD457Y
2GGEzs1GgGxaDold1QuKJSps6+eW44/VNvGZitSz/eM9cXihE/XydjaiHyni3Dtl
wf2rZnoHzNtub3oWSMItUJ+oxg3UiZKl0nSIi3r+Y67rGAf8+yqdCERK89xHl/8c
eF92MUdOEHrVIPhfP0Z6fjwFe7cicJYlOBTUgMpoAqUN0pb7zIzefQ7zKVbRyRgK
M+2AUyOPqlc6Lhm7aYCTtO2TPgJT6qVDw/g4wD6VUGKDCIAprgt0CjcwdtDoUNxQ
Qx8xWdTAssoDECxXiRVQbe7HW/HgGnDA6TwlCPXVNxSbY1ZxQwsfFQeox81TASTx
GzDkNsj4skUIPIkdbFAlqSAuT4o5ruMtOUIzouJIKS57LSASTIsitXhMt6jOxnnG
73OtX7/8F7U3o8G+rvnq0OZWwZpOWA1q6pDqxo1dQEK9BL9ZfQ1goA0h3xsVjb7c
uq0f7RwaOWTUNTuOBqHK/R4AIAC+RF6bRRcrP9+WBq6zZc77QiU=
=E9J7
-----END PGP SIGNATURE-----

--nextPart5350538.e81NDu2FWj--


