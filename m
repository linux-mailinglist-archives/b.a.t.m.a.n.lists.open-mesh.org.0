Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 90254269549
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Sep 2020 21:12:09 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 521F58070E;
	Mon, 14 Sep 2020 21:12:08 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B78AC80348
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 21:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1600110725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rLXyLaSHFrTIOOEP086zOpACYdHhmIKEIC9LJKTHcZM=;
	b=V6OJhJKWT52ax1kSH1JyhyxAbuk9+Jvq1kiWgUpjf/+pSTgcwEJo6B84mjQzq/7f6gMlmq
	SLDG2NqZyPLzBakndifDH9AnYcCMCMtaRdGFe4oBGnRV8/0C5PLnpkBk1LM4FFfzzgiv3q
	v2RffccFvdKgz6XXXCbLd7ql+wEb82s=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>, Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH maint v3 3/3] batman-adv: mcast: fix duplicate mcast packets from BLA backbone to mesh
Date: Mon, 14 Sep 2020 21:12:00 +0200
Message-ID: <6205936.0nzyDX8fZS@sven-edge>
In-Reply-To: <20200914012136.5278-4-linus.luessing@c0d3.blue>
References: <20200914012136.5278-1-linus.luessing@c0d3.blue> <20200914012136.5278-4-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2913249.5A1q0F6Dos"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600110725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=rLXyLaSHFrTIOOEP086zOpACYdHhmIKEIC9LJKTHcZM=;
	b=lF9sxfXhzJ9ppfyjgHQgWIHvMf131oIOriks21o375JF1ETcz91/OJi7V1Vxj1arP3KIj9
	hFOryS4l996dWMDvUKz8VwBzKx8BbYhG3LuTPr8+mLjfO0hS9mkaWm8dUd9zrxOwGRXTOg
	gx6FvvUNaFRHnvZJaB043bBfAmhB0NQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600110725; a=rsa-sha256;
	cv=none;
	b=28NvhGHq4krm7p2OTOhRIWpHmJwRgb7BZXY2X/JtP9NtKCKFCb5am8mTAgotCPtxT3WcXc
	aIVwvsuP2KR3bo8GxEIo/7xV4BPnHn6lVClrnzpNbL+DdHzxd/D8nTHJ7b56JkZTDJoZmY
	PR0p80ry8Lc0czMKi95pz/C9VFXINrE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=V6OJhJKW;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: P4WEB7AN2HDUA2UZQUG6STVDETRTXC7Z
X-Message-ID-Hash: P4WEB7AN2HDUA2UZQUG6STVDETRTXC7Z
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/P4WEB7AN2HDUA2UZQUG6STVDETRTXC7Z/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2913249.5A1q0F6Dos
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday, 14 September 2020 03:21:36 CEST Linus L=FCssing wrote:
> + * Check if it is on our broadcast list. Another gateway might have sent=
 the
> + * same packet because it is connected to the same backbone, so we have =
to
> + * remove this duplicate.
> +
>   * This is performed by checking the CRC, which will tell us

There is a "*" missing in the last added kerneldoc line. This causes follow=
ing=20
warning message:

    ./net/batman-adv/bridge_loop_avoidance.c:1594: warning: bad line:

Kind regards,
	Sven
--nextPart2913249.5A1q0F6Dos
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9fwIAACgkQXYcKB8Em
e0aixRAAocvatDu9B2RFS6mRWR3gg/p+8zo6/ChIKgxx7mHxWA/F0mTfttRFg/c8
faCYeK9RLtlNY30awDJhjjwaV2qRN0g8g2huS/o3bRIWrcELAQMKCJKYd2+tJvtH
tptBPmqBI9Fjs9pt47jsLUKb1vvZ8dfP+OR6eLU+CUOEdaR1qOh9DMQ65GNwZ3u4
WLou8FU14T2bEOl+8m0A4USfyQuNzxpPO92UpdpBDp2IqEd6wLs4MupnfPz1ov8a
AMDYsqmXy8Y/XubeTCSUmDbP+C8P6CmcPU6sgI6bDU1e9vouKLue2Gyj4436iHEO
2yp89yG8sDBti67Jd/Zq7yMImWC3e9XVTT9nxGuS70x7l4c6pD8kEkEAaP/JgUsz
uy84PTOwqKw7mBbMNm9qeCa9bU1Ub+JJ2Qv+McvoNUrP0Ec2QdXIHldBFzjxADK2
SOdnSfOxVPuO1EFdUT9OKdYOcuFG5SpjaiCI+7jRAQWjtqs/q/8rz8wbDjNV7oqo
ModikdSYVOiGOWECpmYP4UmSblrvi4VM+uNqxIELnhBInRfkgOyXdMUo92gmnnRa
+qrHKTAmPkD1IZbKlHuSipHGfqdCk/em26vpsU9DkLPyH/3YZKrHy6KhCG+o6wgh
n24+iE975KMgRg4v4lqJLIe/YIidzH3SpErd3CXkHvTp8WUS4D8=
=5xOJ
-----END PGP SIGNATURE-----

--nextPart2913249.5A1q0F6Dos--


