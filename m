Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C38A81B76E0
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Apr 2020 15:23:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8FF3D807C3;
	Fri, 24 Apr 2020 15:23:31 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 81C45806B4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 Apr 2020 15:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1587734609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dsK2ZIMTYawZW9l36oBg+gPJG3DkvGU1qVhX0hUsVPI=;
	b=uwGMNuQsSER4UWN4htR+7CfFr0Sdy3lbMFcVVdD8vpAsLKR2LYLY90xrtkc2jP7YjnntS7
	Xx5nfiGPEwnQyJS0SEXXqht8dp7s8WUi2UulrQN5RqPGIKzTI+qIL+InBkVh9bIB5cR0Z0
	4E+1tfGjQlT6iP/t7N14uAstkueL8Ms=
From: Sven Eckelmann <sven@narfation.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH net-next] batman-adv: remove unsued inline function batadv_arp_change_timeout
Date: Fri, 24 Apr 2020 15:23:25 +0200
Message-ID: <1719233.A8nWWOm8zQ@bentobox>
In-Reply-To: <20200424131437.48124-1-yuehaibing@huawei.com>
References: <20200424131437.48124-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1636235.vcL7jAjQFi"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587734609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=dsK2ZIMTYawZW9l36oBg+gPJG3DkvGU1qVhX0hUsVPI=;
	b=oPbwqLD+3trmINNmvwVd6DDwqzWs4K0vOftKjcryVjeZiHeD77zkYSoFbRf2nYfpKVwYoD
	swd7JWNLzuuw9wH57mNhSWNlnTHWh6wo/Tq1Yb/NsMeRhbj2NCU+aRMZ98CAi+MtaGY6oP
	HeWnuJlnIZ2Mwbr4TjFhh0Rvx5vJBBg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587734609; a=rsa-sha256;
	cv=none;
	b=o9b9h+Zb++8CUK54Aj7tWKzPs4ogAypI9PDrepjS5T0whjjPbQwLfz+DuSWkOMKRUJAdwz
	N7NSEIUQZixNfxYDETmltJwCYYIoLgYmaPHLqKgoA0YeFKiFvdb/b5s1ZCqaJ5PAv72lrq
	jIOBummPkErQu2zR9uhQ1LrRO6kjKAI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=uwGMNuQs;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: NX55OJKPI5NFZIUYTQGAT7VENRHLDS5J
X-Message-ID-Hash: NX55OJKPI5NFZIUYTQGAT7VENRHLDS5J
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: mareklindner@neomailbox.ch, a@unstable.cc, davem@davemloft.net, kuba@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NX55OJKPI5NFZIUYTQGAT7VENRHLDS5J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1636235.vcL7jAjQFi
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 24 April 2020 15:14:37 CEST YueHaibing wrote:
> There's no callers in-tree.

Added with typo fix in subject [1]

Thanks,
	Sven

[1] https://git.open-mesh.org/linux-merge.git/commit/e73f94d1b6f05f6f22434c63de255a9dec6fd23d
--nextPart1636235.vcL7jAjQFi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6i6E0ACgkQXYcKB8Em
e0bG6A/9G8rOJU9MaYiBjI468YWQu6QexetKaiKqoSKUPPk4MLwVZ7tMdlFvLQRC
+HPvUF017vbd79PQffUd6qwWXkhr6NOA6Kh6P0jP4il8bmZP9jEJXRIPvRXwh01f
bG03gsykHx3sddTMQOufMSHCv96YA4gh30M5A+yMkY40cikgMvzKGsPCSlaNKNp0
oDNzt1y7+WYTFS62bfMaasvcKB6PwCtz96SAiiH2/CXhgfgedLtiAazGLTglQY3y
JwI37xYXH5qircD0dhgrA/r47qHx+4jA37V8Y4TZJ3nHM5BIYPd/LuW/nf7rhNpf
qUNzjDOAe8NFURBHaeTPtU1YwVL4p/IqIxmtJCaiXH0+rgT7Lgny8zpEIt0k9zOE
KR5yxh3iBIdIjBrvbetaw465QW9rEYZ6M8infTCcHJQ6ydlE1RV7atrYRloBCdoP
LYvN24RkLEOCSEDgjXEs3bqieNhM5cOEmBje0TwfwxcC6r6Q86okM9k9X9fhNxlY
oDMWjZAC6wm592cX1Bbu3VeAHTW+IE/4vxDLPQaL7VJMkIy+qJiuspHItQu/IF1B
vbVdsAjHZ71ryrHil3qTygrRDZz8v0jQcHxAXGgSqWHvONLzEm1fNj0bMc7zjC3B
3Uq3u4SUcBhh+9vgLTlltqN/cgsVNSUBsfo+0bBn6j3rgH2BfS0=
=LFgh
-----END PGP SIGNATURE-----

--nextPart1636235.vcL7jAjQFi--


