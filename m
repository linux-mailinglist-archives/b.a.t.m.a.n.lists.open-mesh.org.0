Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 517C62C5BB0
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 19:11:17 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2B8E48185E;
	Thu, 26 Nov 2020 19:11:16 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3DB78801AA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Nov 2020 19:11:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1606414272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FFLGBb4dDU3fGChTU0L+PTg6fSoRnmJCz3aZGzG/FX8=;
	b=lZnqY/BJTUVXtHNIq9Jc+mq1KjFRrQB9JM35ch8Wo2YGutS+Hms7WpCI8jTcxkW0CUmNK8
	SFzVgYVUuhOxt/baiGXnFfPVwcVrtqXh/y3DgWb53tf5w75jbhlP+IEPOBLigPKTIt+aqQ
	f4TAZQFlIy3bUKzQOHePMqwEC1y4s4s=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Reserve needed_*room for fragments
Date: Thu, 26 Nov 2020 19:11:09 +0100
Message-ID: <3755481.ZaRXLXkqSa@sven-edge>
In-Reply-To: <20201126153120.1053700-1-sven@narfation.org>
References: <20201126153120.1053700-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart26336837.gRfpFWEtPU"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606414273;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=FFLGBb4dDU3fGChTU0L+PTg6fSoRnmJCz3aZGzG/FX8=;
	b=SgIMmlsdii03OYSM5gdGUrU8c3pzb0SOQ5UHKcnlk4EHWf+UjLYpYozWZfY/3Vj0tefqMb
	p4Z2WAwu8fNxW/S+KDgSOlqNthH7pf3I9hTRaY/pd3Pb/4f/c6xH8uGQb5hQJndLAmKpCf
	pVNQRuzcrReAZejBsmtwniTzQELykqY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606414273; a=rsa-sha256;
	cv=none;
	b=ktVewsGIw7kGBGjCOFJvOYAXnXh+trnPbA2+e/6/zhxxbm24R/Z6QD+QDDNsaPMkPYDlmq
	8WRs8FiZ1wncFozBL9jxcTyKdTOSqk2C0gPA+e42K0t441K7nbdZIS7e96U1KhrA1xoeNn
	1O6AgUzGfcoaq1a5ZEFiZyXIqM9Ekks=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=lZnqY/BJ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: PHSKXPPGSL6C2RHYXUWGJVBFGUIH6RNG
X-Message-ID-Hash: PHSKXPPGSL6C2RHYXUWGJVBFGUIH6RNG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PHSKXPPGSL6C2RHYXUWGJVBFGUIH6RNG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart26336837.gRfpFWEtPU
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Reserve needed_*room for fragments
Date: Thu, 26 Nov 2020 19:11:09 +0100
Message-ID: <3755481.ZaRXLXkqSa@sven-edge>
In-Reply-To: <20201126153120.1053700-1-sven@narfation.org>
References: <20201126153120.1053700-1-sven@narfation.org>

Fixes: db56e4ecf5c2 ("batman-adv: Fragment and send skbs larger than mtu")
--nextPart26336837.gRfpFWEtPU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl+/770ACgkQXYcKB8Em
e0YOWBAA2e0RFpakVaO/vKMUs1GUWl6l2Gt7mPwPYlkXdyImYRNSk5jPwA5xJSaC
lPBIe5Px2b7SZoxanC94JTJHX+VPthsS/j/z9reW19yB7FG+sfN2bMLlHyMI2NuR
rmUq3Pu10MTJRB2y1W/cdYRX84lJKDpplynJSXNY6JhVCfKtfMLnLkfIJHzp1Z2F
xqj70hTOmCxM4juc8z5bDJqnfZgJO5Nui72chL4/WgKEGR3rzRRFuBkQX5F/8/2h
qhRJNKGVn6hP9HD9fUiQ/VOfH3EtUZOW+gYralOC79W1pUW1WOE5tC+k31oJ9mMg
h86zsEVPxk/bqnctoS++rqPZkyaNZYKm9ah3iDUIMMC2shdDyycN7PmdIzbQslEd
GpambsjA6pIkzp9fGooCX8v0FHDGyYFPE98PK7g7Z+EZ5Jvf+ZARQaOH6NygMjxj
KHGBMWb8RoE+lkj0Se5Cb0PzQwnDdWpI+fTZJHoN9rJwBPMqD5vsNQSe58/X5vS8
7CNAPAlztL4Lrr/0wzvlNUjlk8O44P4TskEoaT8oRbTr4g3xXK/p+dzDTzrKezjY
9vLQu3Nl9HFWGVfbfXiwgq99F8gx2x6FT4WFzxTS6F8x2N0EXsSQi2heb+2m0Tf6
1YTP4O6HZpZcOA+uv6RH8WQkFuTjYIcos3R+yx/6U7UVa3YdaQ4=
=cL05
-----END PGP SIGNATURE-----

--nextPart26336837.gRfpFWEtPU--


