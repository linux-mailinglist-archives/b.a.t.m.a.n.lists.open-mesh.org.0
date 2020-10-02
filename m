Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D78B280FCC
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  2 Oct 2020 11:25:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EB534808FA;
	Fri,  2 Oct 2020 11:25:40 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8D1B9801AB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  2 Oct 2020 11:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1601630736;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VifGfUXjVaUQkETh36wxDumSgXMQIfGW0DNnoGZtCIA=;
	b=FtKOUuMoQbaEbE3hb1SWmqglzjTdEI5de6knEAB5+RABSAoUKVXUVa7HNUzQvS9wl0B8Q6
	0SOudzsbHqfKcEUI1fW1GSlEv7Km7aULpeWymdUlUXltT3sJvOQfNbkzQFw7A14gFauKAB
	dZD1fUd1JJCYTAtunH//OJptRakGT3M=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Does batman choose DHCP server by random?
Date: Fri, 02 Oct 2020 11:25:33 +0200
Message-ID: <1713150.I2ok1Jj7fX@ripper>
In-Reply-To: <4fc7de29-7692-58b1-994b-4a3d623c075a@kkk-web.de>
References: <5e4c619d-bdb1-2fa7-57cc-e5d71ea13f08@kkk-web.de> <5095353.evS3lK4dNX@sven-edge> <4fc7de29-7692-58b1-994b-4a3d623c075a@kkk-web.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart25840226.yh7FNJUltT"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601630737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=VifGfUXjVaUQkETh36wxDumSgXMQIfGW0DNnoGZtCIA=;
	b=HzHbppBIjpgy/G9tKslP3GAjRlrAeIXmrJJfK8WY/No0N5GkEQuKHvxI/7DY+kMEcgEFmS
	Ssh0HXJb+MZgxNzlt91/epQvyAR6sI9ZPzveO9rs7GZ0jR0VmIHQGcUZwxftlnvjy9tGcb
	k/KEVclZIcg1qVgFpPL+MPbtxH8EqQc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601630737; a=rsa-sha256;
	cv=none;
	b=00CNzjQgoUOFyDPgt60mm3TUt+aN1Murt9Q9Dgy5BR7m8ZUouXYbmC3NkjxZuJTWwMPZDN
	ljMyX5kMcr2PlSkOjrjXr9RYUPLubyh+SetrbLzDQ+PGWYq3vTRuztmCb+0zfdptbkmJ6t
	Gis54ZRBRXBw70bdUxYU7NetVC3un8s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=FtKOUuMo;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: TRYGY6V5HW3SMVOJHVIDLHINFCLITL7Y
X-Message-ID-Hash: TRYGY6V5HW3SMVOJHVIDLHINFCLITL7Y
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: MK <mailing.m1@kkk-web.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TRYGY6V5HW3SMVOJHVIDLHINFCLITL7Y/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart25840226.yh7FNJUltT
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 2 October 2020 10:29:16 CEST MK wrote:
[...]
> $ batctl gwl
> [B.A.T.M.A.N. adv openwrt-2019.2-4, MainIF/MAC: fastd_mesh/ (bat0/
> BATMAN_V)]
>   Router            ( throughput) Next Hop          [outgoingIf]  Bandwidth
>    (        1.0)  [fastd_mesh]: 10.0/10.0 MBit
>    (        1.0)  [fastd_mesh]: 10.0/10.0 MBit
>    (        1.0)  [fastd_mesh]: 10.0/10.0 MBit
>    (        1.0)  [fastd_mesh]: 10.0/10.0 MBit
>    (        1.0)  [fastd_mesh]: 10.0/10.0 MBit
> *  (        1.0)  [fastd_mesh]: 10.0/10.0 MBit
> 
>  Star means choosen gateway?

Yes, this is the chosen gateway. And the "1.0" here means most likely that the 
throughput to this gateway is for some reason always the same - so it has no 
good way to figure out the best gateway.

Please make sure that you either only use links that provide an expected 
throughput for its peers - OR use the throughput_override [1] on interfaces
which cannot provide an automated expected throughput for its peers. Also
make sure that you don't forget this setting on one side of the connection.


And can you please explain how you were able to get this output without the 
router mac address? Because this is a bug and I cannot reproduce it at the 
moment.

Kind regards,
	Sven

[1] https://www.open-mesh.org/projects/batman-adv/wiki/Tweaking#throughput_override
--nextPart25840226.yh7FNJUltT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl928g0ACgkQXYcKB8Em
e0bMGxAAwtjHSIQwPfuk+nPtQk1EqdzwrsHpU7+yBLVCUH3/FQ3dpZH53Nby83qM
HYSnbg0PWAJ6uf0YLkPmkH9S18mL6GGXAt20DojXKeykXBd3Ql2O2ZP55g8gPlC2
T4fMk4F7O9vHcT0j2mI/OSYC5EnrRDAagI+NoyUiUFufXR6m0LPAIV1vzzzJRIGr
gkJTqKLxoWRhwemdn+INUPn0nscXB4KkOgRijSSWKP6yz2qXL2Y1Dy1auqsxUm4g
FXZDEvjSjFJyHpZC0ONLwaN4hJ/GqVZB+im0AnV+6K2U5nKzSY3LtILIBBwF95Xn
mIXeJwmgHB/WH2wy4ce3aRYHyZybxaUbcSMlJ0WYts6ElJ+doZARxxSv1xyYU+ut
rTwuwi09KEtWEgm7RyL+8Tuyhkp1S/ByR7axkiaWGpNb5HZTHtTpBSTRQSTmdgUK
Shi2lWKjfVeUttAipcXkKT6WACKjuA6Mw6WwzokYsHAPe4QOgZM6O9VFs37rVInL
RATlsBszqTdC4qe+bSr8KztYTJ+i6l7xtr9xg/vPywcWm0U5DDinz1vanHvqlkqn
F19N2KYZMQXbj1Q8MUis3GpKfbpv7tMhL7o189MQOz6HV6Tx9Zsi5H5j8f0QqNkV
penggSMKN7bREyTamFclsW+H6r6CeED3ld6IKDE5fl9YHHNXPZY=
=hIxN
-----END PGP SIGNATURE-----

--nextPart25840226.yh7FNJUltT--


