Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A835B098C
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  7 Sep 2022 18:04:16 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8B16682119;
	Wed,  7 Sep 2022 18:04:15 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 77101802F5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  7 Sep 2022 18:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1662566652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3JUE/u+/NFoKe+rWGkw6FQVPxkLTxldan5TWSkol0cE=;
	b=JWfIYjXP1Q8G9pb6dHdpQoVrdLS/7p7hxxq6Z5j3g5pQ8Wfs3mj9aK0l9UZAgtGY8q8NwP
	z5PcKl0+MYb+7ciTb25bGfm1oTcE6PnCla+d1F+K94qsiyu2nVVlEkkBbhC6agqN/XyOTp
	Jjgw5csVFEE0i72l4e5v229LkuCrf3E=
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc, Shigeru Yoshida <syoshida@redhat.com>
Subject: Re: [PATCH] batman-adv: Fix hang up with small MTU hard-interface
Date: Wed, 07 Sep 2022 18:04:09 +0200
Message-ID: <42632958.r4OcKK3suL@ripper>
In-Reply-To: <20220908.010037.1643964170435041362.syoshida@redhat.com>
References: <20220820032516.200446-1-syoshida@redhat.com> <20220908.010037.1643964170435041362.syoshida@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4058084.qTfXEPDQMy"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=JWfIYjXP;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1662566653; a=rsa-sha256;
	cv=none;
	b=yHw+GaGTKVqbfWICx9bnVdnQkbaEPvKLnog4dc85DqOo7o9eB1bevb0YoLKZm3ymwKPj8E
	LV2PM31lCK5dPbiqcrB9qSWixyErh880CBNIQh9Sgm35qxOwHEOrCPZ4YtpBIhbdRltAWF
	61ESETF6vrbrQgTPxiNOqeI7DYeHFRo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1662566653;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=3JUE/u+/NFoKe+rWGkw6FQVPxkLTxldan5TWSkol0cE=;
	b=Xh8xAj1IURtEAmRjxEuCfjtkZ5R1arfQAwVY4pguUPfUOJkKqxb+1FR4ukFq7JvueuTKSU
	GcmiLk5M2YfP6YdE76yzAK37mhe5t+/Y4CfWy65c4huicKfT700KCEIeMlh/pFEmxmArkf
	X7sk2in1vNBO+JBcshzXomR/1cXsiCo=
Message-ID-Hash: GUNV6O5VVMDAC6YKFPMNADL6BH6A264A
X-Message-ID-Hash: GUNV6O5VVMDAC6YKFPMNADL6BH6A264A
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org, syoshida@redhat.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GUNV6O5VVMDAC6YKFPMNADL6BH6A264A/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4058084.qTfXEPDQMy
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc, Shigeru Yoshida <syoshida@redhat.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org, syoshida@redhat.com
Subject: Re: [PATCH] batman-adv: Fix hang up with small MTU hard-interface
Date: Wed, 07 Sep 2022 18:04:09 +0200
Message-ID: <42632958.r4OcKK3suL@ripper>
In-Reply-To: <20220908.010037.1643964170435041362.syoshida@redhat.com>
References: <20220820032516.200446-1-syoshida@redhat.com> <20220908.010037.1643964170435041362.syoshida@redhat.com>

On Wednesday, 7 September 2022 18:00:37 CEST Shigeru Yoshida wrote:
> ping?

This was applied a while ago:

https://git.open-mesh.org/linux-merge.git/commit/b1cb8a71f1eaec4eb77051590f7f561f25b15e32

Kind regards,
	Sven
--nextPart4058084.qTfXEPDQMy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmMYwPoACgkQXYcKB8Em
e0YkpxAAw93Jox1VjVWR13czWE4LUUU1/oWpo4lAGC+flzdJonm189/6WIvdk2GG
82iew4c2O+5+utYT+V/HzEG/ztw7VQxDIJTEtGSPkWpr2IU+tSOHeVoVyDysBazl
vp8djDOoCBk7IvIOHeEsAT5aMtIrctgzQYwHXDqSo7zKhNJLtZ4+lbgdRxcY4qpQ
H9Rbbm74MjUJggYN2NnCp37+y6rLnJ1E1a+LUPVnk30+4aSNUMztoZ6+tDOypT7F
voYRW9foZHeRz0wLCxbEMJK00QysMVJdufJBQapbkypJ++1eyu7mvPPzbIOan9ij
ednS7VoYvJZ/da95Rkkr+4q2JF1navvhBpcdy3pKN6XvGpz1Igwe6+v/jeiLHmG3
7MU53TBNMhYIW3dK/w+bvUcEDawjQrmGdLwIxPQPkaPFbP5sBtn+lKgBC98/GpuH
NMP+yHc86gCb9KV1EC4BL9AOzwvYrtyh2auADpfz8+OQAsuZ25S6XjP0EwM5Vv1H
+jo09KwxD1HlLTJZNxrUPjyHz3zIB1t7LUlyRuTNpK9mznsg3rCic0RkBruE4sHb
g6yGIv15WoyfyOF+8vK/nngRT15C06WYZmqIlaJjK1kB9v2JjrTf4c7PTdwmQIXn
UcxMG+EAXVXvkXCNf8kPNTGp/+3ys8yejuN0SoT/Y/eDb0a071w=
=o9GE
-----END PGP SIGNATURE-----

--nextPart4058084.qTfXEPDQMy--


