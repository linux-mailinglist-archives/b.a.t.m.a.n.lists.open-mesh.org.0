Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E82C3A6C71
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Jun 2021 18:52:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 003DB80773;
	Mon, 14 Jun 2021 18:51:58 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B537380038
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Jun 2021 18:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1623689514;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=C0UGWRxxhfzKnY3SfNMdGUgS3XDsb3UX+7McepUSlN4=;
	b=zu2w0aZJlhxlra0HIFrQHe1pIzGWCmbKPM6jII2FfysJ1o0U9heVmQRdjPwY34g83lBqkq
	0eZA2aHgL8wAxrA/FWpani98AeQw95gpvXctqkHb17moJYR0fxxg420+6hGRQcDEWrhskk
	4gNaRYJL5zMlInQMD91Uv3SqErXjTEg=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: IRC channel moved to irc.hackint.org #batadv
Date: Mon, 14 Jun 2021 18:51:52 +0200
Message-ID: <18456690.fnCDB5Feod@ripper>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5604602.LIzPRD5Pdi"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623689515; a=rsa-sha256;
	cv=none;
	b=KygqgRig6v/k7HsL8MJatK0D2QXW1PMKPUiFz8rMK/2s4kiOn/yAGAEsaDV/1oyqECRygw
	MCoOmv1C6+qwx0PTysszY0n74xaXRmkl5MAtSbwVRkX86aY8E1SEpwHCHK5Da7OsiYBAeW
	HHTy0whMn2anbbCWfb86Y3zMxUF1Agg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=zu2w0aZJ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623689515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=C0UGWRxxhfzKnY3SfNMdGUgS3XDsb3UX+7McepUSlN4=;
	b=P5T28FX9KAvR4g4IEewpHm38e/pj5qfU4//cQ2snGgZm9TfrgEtvhgKmT0yjzhRhn2dFrl
	TaturD+rbIZvZJbgAIEBAC7+0LsBYtIwkcmW8y8U5ljNH4Z1ypCHJK0owJQumVB8BSIpJV
	dCt3uH2Gw9w4gdsXMIAJQa8o3ddnpkU=
Message-ID-Hash: HUELPJXDBY2D6CXW5FONVMANZ67ZKVHK
X-Message-ID-Hash: HUELPJXDBY2D6CXW5FONVMANZ67ZKVHK
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HUELPJXDBY2D6CXW5FONVMANZ67ZKVHK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart5604602.LIzPRD5Pdi
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: IRC channel moved to irc.hackint.org #batadv
Date: Mon, 14 Jun 2021 18:51:52 +0200
Message-ID: <18456690.fnCDB5Feod@ripper>

Hi,

Due to recent developments around the Freenode.org IRC network, the opinions 
about the usage of this service shifted dramatically.

A small poll in the IRC channel at the end of last week showed that most 
(actively participating) users wanted to leave freenode and the network with 
the most positive votes was hackint.org. The new home at 
ircs://irc.hackint.org/batadv [1] was prepared on Sunday. You can find also 
other interesting channels in the neighborhood. #freifunk (including many 
communities), #gluon, #dn42, various CCC channels and many more.

We hope to see you soon in the new channel at 
ircs://irc.hackint.org/batadv

Kind regards,
	Sven

[1] https://www.open-mesh.org/projects/open-mesh/wiki/IRC
--nextPart5604602.LIzPRD5Pdi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmDHiSgACgkQXYcKB8Em
e0Z5gw/9GJ4LluQXDnHMoBDEFUG7g/72WrHHgm5zaanMNM/yAp65950N9wHFjynL
VVPPD33DP9CEjF+Wb+3BoT8QjFa+aXjnqt2eomAjw4Q6bQrzVQ5xSK1rNrtrws26
uy3bx70qENCdXPDW8I013tR6fKY2MTtdwf/BVuP/JZ3H8254BwJGLz2SMVF0Pg/Z
7CCyIRsSKhwIb/6JiWj/8n76xLwlAlWaJKTeYUODmzU4tJr3PREOypcpZsXOxvRg
zaj82fvFtAGpGYeeMveVQmjEoPl+A+gYM7uxc6sdShbkWe+8IO6xQOQuz+uR/z37
nniCPq5QzpUgO33PSfEiL/bLxXk1BnUkkHyf/LnDdL7f8N6+IBA0fZUM9tKK+E0p
qJfR5sqdKfkFnfTa5YAvyzianPRayEKfJ5dVEtCZrpWdZtf8fxOeWJJaV07zJKOq
EIQ8Jdz0eM971bhsbgWT+QzqoIw1facvbSepq+XeqhIhOFudP43dZu2faiOQYmHP
O0lQzURh8THplr875xeqcJdoN3kHAIbh/cE+1pMgO4a22+TJyN4jBmFyjUKZxXRH
NRw/K8fFbbpYcMurU/e2Hi/65GICz7duoGVxsumy5UhCBCWMhfIisDErDncFcAXE
OJwTh+IJRkhPqXyzhJFd4Ta4G8kWtiEuieTOkDZ6PjlldSPrfFU=
=5kRT
-----END PGP SIGNATURE-----

--nextPart5604602.LIzPRD5Pdi--


