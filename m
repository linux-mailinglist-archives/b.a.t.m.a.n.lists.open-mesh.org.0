Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C12BF1EB63F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  2 Jun 2020 09:11:15 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D0ED5809B6;
	Tue,  2 Jun 2020 09:11:13 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C6AC380843
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  2 Jun 2020 09:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1591081869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=F67MhQeEgj5WuSrkYA1YR5+4leGddaZ8MXj+TqsRciw=;
	b=qbtScslP+dsT7yNXOSeRboduskLJIssHvJVGE52c3A9Cl7eeeHgX9x6dfwlIOjbsWgdJ89
	xu/CroJ8JYiHm7/itD5Qbpfwr5PghvFDr2Y8SUny1mkF378KfHTmXBS9H799ttoScwQbXp
	m3Q5JgXsuuXop/btILbmMUinana+5kM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batctl: Add per interface hop penalty command
Date: Tue, 02 Jun 2020 09:11:04 +0200
Message-ID: <1986436.iMA26uce0h@bentobox>
In-Reply-To: <20200601203538.5318-1-linus.luessing@c0d3.blue>
References: <20200601203538.5318-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart72324447.64dR16D2lC"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591081870;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=F67MhQeEgj5WuSrkYA1YR5+4leGddaZ8MXj+TqsRciw=;
	b=nBfVcrmhqt/yse/qKAuiJvYiuFSc/JgTlO6cHwb0Y+pz94ZWICyVecLD6Rr5Yf4fY6BJoA
	6UAwI02HIPnPePL65Cry0aA3M+d7HMYQdNkVbKrpzyuO2oWsroMIFcdDTmRN9r2Hwf1V9t
	Pfwg9DPy8+A3fjaSi62fPEPw57QNm3c=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591081870; a=rsa-sha256;
	cv=none;
	b=F/OStFKQvrAP60J8+k6JB4TEES7ztIPNCEllVC01sP0/icNSE4ivgsCBNXX5OQOzR+IZpv
	LjYJsxR2Q2Krn1YPMVOwGQMydrZu2TQYvZVzIGVKtzsbRo1NJSKwzFLgKtGQmz/jD3vT7A
	OtqRJoOrhangCaVUuT4PEsTst6ucyn8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=qbtScslP;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: V36ZS7LDHCCQKDOTOPIHRYQPVDUQNHUA
X-Message-ID-Hash: V36ZS7LDHCCQKDOTOPIHRYQPVDUQNHUA
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Maximilian Wilhelm <max@rfc2324.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/V36ZS7LDHCCQKDOTOPIHRYQPVDUQNHUA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart72324447.64dR16D2lC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday, 1 June 2020 22:35:38 CEST Linus L=FCssing wrote:
> This patch extends the hop penalty setting to be configurable not only
> on a node scope but also on a per hard interface basis.

I would prefer not to have "this patch" in all your patches :)

Maybe something more like:

* why is it needed
* what was changed

>=20
> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>
> ---
>  Makefile         |   1 +
>  README.rst       |   7 ++-
>  if_hop_penalty.c | 113 +++++++++++++++++++++++++++++++++++++++++++++++

Wouldn't it be more consistent to have this in the main hop_penalty file an=
d=20
just add a new COMMAND_NAMED?

>  man/batctl.8     |   4 ++
>  4 files changed, 124 insertions(+), 1 deletion(-)
>  create mode 100644 if_hop_penalty.c

This is missing the change to parse the per hardif in the `batctl event`=20
monitor command.

Kind regards,
	Sven

--nextPart72324447.64dR16D2lC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7V+4gACgkQXYcKB8Em
e0ZLrQ/+KiYNq9MdSbKxLrjzVjGDzi4nMlCSV2znQvmiy55fCPiNxicAqjM0GKHk
+dmb46KagFYFC0i8BWmR8otiPaJuPq9wDhD8lKgsqlWqywn3I7bvZEnY/8WyTVJr
NtviaKbHXmRg0WpPM19wl7c636uEzk1DytK5kLeLlYqVPULheZVaPe38wLr+rdgE
OEKRRIZg/p65R6jyhIF04Cko7GYBRUe27kXoEx7XW1jpMFbQT3bjesbfo2QTV7tX
B2Nd4yyFE11yEVTXIlkIEX264cmLmt0/+r4Ga5OU5rmfppzk67mSZjXbWvKnWRlm
tVo7arvWSIrfDluvCKf+9ddtQgWiezoP/FMVBIi1g9ERben9tQItlyMSt5EiqtfX
BkyjE8KlXpTg6cD7LADaLHddHQze6TzIisDUEdM9qEgo0HsghOW3NPX7u4s8XjgO
7EK7FCN5ynt1RkjMsAGhCtCWv4OGjQAhg5VLGrdyfKLksfu2XxNVbsrpj+WrUoZj
0/rZAm9eOwgGcp6EgDJy1ROrljlJ9b/tneQN4oKF6a0aRs81lsbJ1ZSS01t+7vM3
djGWfFBIg0hJrK5ydO3xzaVVsgn14R3L1RWy4HnRwyRCsW8p/iICPQO02d4cQG2g
wgMhyU0jOOzEaD8Lqc31XpFDwSxcvo/rddhPVF2iHBMtREGX/3c=
=yqC9
-----END PGP SIGNATURE-----

--nextPart72324447.64dR16D2lC--


