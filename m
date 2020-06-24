Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDB8207E1B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 24 Jun 2020 23:07:55 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6171E80A63;
	Wed, 24 Jun 2020 23:07:54 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B3DED800A4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Jun 2020 23:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1593032871;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=s5LJhzVJFsb0LqMNVftloopqnXEnH7snKwla1hAlY7w=;
	b=UdA1VoWUj1O25xuD8jWjvdbIQ0+pQ3d70TaFM6imDoCcV149xljAXgcbhw5yfQYXB1Fu5Z
	ORuGxerJI0Jd0WMs37OvDQOzWxrK1Lq7UtSOsSGjkF3RZ8Tmsge2wAgJGrhBj+9CvO7irt
	YrIDfnjE9aG6qiznUzoAtkJMKgVMi18=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: batadv gw_mode client 0?
Date: Wed, 24 Jun 2020 23:07:48 +0200
Message-ID: <61272667.CHIJrHaST5@sven-edge>
In-Reply-To: <CADg1mwK62tGw8kkXSYpZ2H2XOmCWa21L29YnJ3AyNih15+1vMw@mail.gmail.com>
References: <927533E5-C265-44BF-B271-1A7A9A084447@xecoenergy.com> <FE41926B-5684-45D8-B9AE-17D46DA1C8C7@xecoenergy.com> <CADg1mwK62tGw8kkXSYpZ2H2XOmCWa21L29YnJ3AyNih15+1vMw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3253260.3OxycHbCWR"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593032871;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=s5LJhzVJFsb0LqMNVftloopqnXEnH7snKwla1hAlY7w=;
	b=lJXjBzci1BTMX8vpqNCeQS6aB0qXER6YYd4e+5C9rqqBeOhAjxxpx8Q8HTJijnM+h2A7pU
	+ZY9XfiVIPDQ4jlZvZTIMizYsVocAeLsildLQ00UVAm2lSq6V0mNahaB7i6t5PtmF6b6pv
	mjWy7hjaaQDEd1pZRbfXsB68NiWoCUk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593032871; a=rsa-sha256;
	cv=none;
	b=sa/gn8cP5HLXs8l6nMq5ugLMKGf/y/Z09xcSJccCJQgG/6s0EzXC0umYmrFt8xOM7Kh0Tk
	OmgZArgiB1akjl95hatBL1Xfg5pw49UmY02wFs4bzo91JnBu60BZBDR6yEYCc9FDF0jTAr
	+qrwJo0CqqtycPeXq1rPT7+tDr4PfOs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UdA1VoWU;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: WNLARD545ASOAPREIWEYPWWGUAJHM6IL
X-Message-ID-Hash: WNLARD545ASOAPREIWEYPWWGUAJHM6IL
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Mark Birss <markbirss@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WNLARD545ASOAPREIWEYPWWGUAJHM6IL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3253260.3OxycHbCWR
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 24 June 2020 23:01:30 CEST Mark Birss wrote:
> I don't want to hi-jack your initial conversation here.

Then don't do it and start a new thread.

Kind regards,
	Sven

--nextPart3253260.3OxycHbCWR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7zwKQACgkQXYcKB8Em
e0Y+sw/8DcAId58onsxdlFJjHQlk+LTajgSynLRDIY3URGutSXMLTM45Wo3QVtqR
SOVwtVOV5OF1SCqhOCiSLbe0A7kLioFeq3Hxi/PY8ZzpBperinkgtoZi68O6oFm5
r8VdpfquRLgVW9ReCtWSE9mpIhUmQb/4sdn6iuPmDj6iLheTF+e1YyQq18snc9tx
5keshP0NwJM0yk49d8981TCtAvrpH7nCW/y1LRvWzeoWfHlMT+8qD0t3yi7EoV6s
+UhqsvJMXFLGaSiRglI2XKiCyuy89FkmI3Gr89Vvyn2q2Gqd36RyJclpLDfuyNzE
4S6P2HzfhGzPysi1KMmg0pmGyvvJ1otgV8HrBt63ZqpSs+BjoQ9A8Mphch3R0uP9
KMAi7qM1VjJTI2e3BMy2xNmSIV6ERB329tME2M3UjSydYeRtXP3+2+VftbBxi4Mq
K7kZRyrX75boVidPIKYuuhHxLE59PbIEIY9XrEUCC5IBwaJzwZmF2QIZv5jAL/9l
JkXGcQEgkq4BaG0Ty6YNuAxixvXWdyHAElG7imcmBqiso1YlxxywTn5CQCfOWd00
YLDihMSTgDxeKSrMbPgGeEQJlEi2yL3N+D/XLFhlK99fP7fc1bulq3pzKxV6BhNh
drst9e9sON3L2uSdA5WQENhOArdP+T8+DlUwUjfVyOI4gLUEveY=
=+V6P
-----END PGP SIGNATURE-----

--nextPart3253260.3OxycHbCWR--


