Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A98635DE30
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 13 Apr 2021 14:03:01 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2B3F083CE5;
	Tue, 13 Apr 2021 14:03:00 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 165D9803E2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 13 Apr 2021 14:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1618315376;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5UJ8JoU0WWmjCyPmsjNgV9Clr7E4S5wv81BGV+OCZVc=;
	b=UZ7sOiphcvK+g8zieNjlPGXBpjmfbSFplOOd02lJynDxwBbS1pQCSzat67L5qUWXCbSokg
	FBVSj/IiK1slVoYKvkmc5U/IbqTpIsiWT1v0z9/jSr0F59OVFPEFheNop0y0wDa8/gMXrJ
	UkVqH3+qqiW/5BTaKE7xTXPEDVKwWW0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Problems with Multiple Interfaces
Date: Tue, 13 Apr 2021 14:02:54 +0200
Message-ID: <7463417.qeE93hC4D1@ripper>
In-Reply-To: <6830943.IaFvOplyQc@prime>
References: <3542676.qYy7ulQ77K@prime> <20210410003953.1234.9147@diktynna.open-mesh.org> <6830943.IaFvOplyQc@prime>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3972202.uF3WI69yUZ"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UZ7sOiph;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1618315377; a=rsa-sha256;
	cv=none;
	b=2dK+STOlQPS7aMV8JwEbVr1U5Vge5lHOVJnXXgusVVHLSr8dj/+Ksp8uKG3qZOPTs0o+WY
	USORHK0vZJdXcolqYx594Ahegi4JIZOjbN3k1MgZChm4JhEAwcz/X86RtvW+1RSN8EfusS
	WpEwkxAnBfkBhkV6tLOcstBdqnBBocM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1618315377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=5UJ8JoU0WWmjCyPmsjNgV9Clr7E4S5wv81BGV+OCZVc=;
	b=p9JCjRQY5tZzu/+azEJERhjK3ovG8hReIl6woL3Z5FbLY9tVb3Vy+GVb5X78o1mpLGD/kV
	Rwry7BbSfpF6kweWw3+wwHA/dJswcEgtd+SIYGH6So2o8fqVUlJgGHqQL0uZOKpxnfhLSX
	oHjEdB4B08Ddg5Miso6mlwKh6PifOvQ=
Message-ID-Hash: OS2QFQWRHHN2VZ2GBXYLNKY2464NTYUW
X-Message-ID-Hash: OS2QFQWRHHN2VZ2GBXYLNKY2464NTYUW
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: joe@careyhome.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OS2QFQWRHHN2VZ2GBXYLNKY2464NTYUW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3972202.uF3WI69yUZ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: joe@careyhome.org, Simon Wunderlich <sw@simonwunderlich.de>
Subject: Re: Problems with Multiple Interfaces
Date: Tue, 13 Apr 2021 14:02:54 +0200
Message-ID: <7463417.qeE93hC4D1@ripper>
In-Reply-To: <6830943.IaFvOplyQc@prime>
References: <3542676.qYy7ulQ77K@prime> <20210410003953.1234.9147@diktynna.open-mesh.org> <6830943.IaFvOplyQc@prime>

On Tuesday, 13 April 2021 13:53:16 CEST Simon Wunderlich wrote:
[...]
> Also "tcpdump" helps. For 
> ath10k, you may want to try 11s/mesh mode with TTL=1, while with ath10k-ct you 
> may prefer IBSS mode (I think that wasn't mentioned in your first mail).

Please avoid the ath10k-ct firmware. And for ath10k, please make sure to set 
mesh_fwding=0 on the mesh(point) interface.

Kind regards,
	Sven

--nextPart3972202.uF3WI69yUZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmB1iG4ACgkQXYcKB8Em
e0ZdwxAAlr47F5cHJucuGu+mJA2nCdjAO3Ujlorsq73h0YmSwtG1rrWSzqqoMJGS
TX1E8l8I2B1Q1aBOP0Vt0zqkre8pO5jVvExt8lrY4j4Tdg9GsvSkILOKPKYjL+XR
1XbyW/UY6J2yfA+uEhRglf3coyRcQzeHj+XBr6w6CYR5VhAI49Dn612/U9tp/D8m
olrElhoX4TyVdEcpcoUaX75jLwsNwE0l77xgkhCqeNtTXVdbRrokhGgYMJA4X4wR
6hfhClennRK5AKQ84HiPYwO7KIVFAir91x3oJU7uvIA0dPNlUJX/+GuOGx0BAEzo
QBBJ2KFyqvb6KhM2WhOTAUc0wG5UUvVdH7YXJgf4M/VhX05HNo4o+QlUYYE9SW2i
5J/MtbXUE3BBPygV3NczWyvAgRpTrHF3z9h2EmOa6E3HreCONp2gU3XtpP+WJQ5j
1/fT1vpEyv54LOHfS1sGICggZObJ00d0gPFaGl5oEt9J0m4Ow2MPxJJAOXDNVGuz
qUW2MDVaO8iySSiyVqNgZu9wzorhz2VD1X6qL+ovlXNKi05hQHuzudWDOyFTYcMB
uyPISqzOyFJ6NKpFP3bSmujy+GjeT/alSYyWrDwE03HyakVJfFv90rBp4W71GNFB
/s1hEkeGyw46lwBNLr+x7x+ovJqRxid+HWUUIiSzAkj7VPAdniE=
=7YNK
-----END PGP SIGNATURE-----

--nextPart3972202.uF3WI69yUZ--


