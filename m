Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F69128ED20
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 15 Oct 2020 08:40:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D8AD3803E9;
	Thu, 15 Oct 2020 08:39:58 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4257F800DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 15 Oct 2020 08:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1602743995;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OzBSadbkwBXNtulvI3n2L/mDEaE+E4utm90TaqhJbR8=;
	b=wGhF0Bp/0jhrdWDOoNBSAmxG9+9N4ar17lOGF2OLko6eVVQSGPd1WKLKCFLUxqxHZH6El9
	v8celEsFnUXiYeZyIcQkbk7VvP7/ovDImCb/1bqRYWNFkCXAofwBCeY0CfRkkHhUUw319H
	tcuth/4Ip2xUFUoPEVdxY/6DQQV6SDU=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: implicit declaration of function =?UTF-8?B?4oCYbmZfcmVzZXTigJk7IGRpZCB5b3UgbWVhbiDigJhkcWxfcmVzZXTigJk/?=
Date: Thu, 15 Oct 2020 08:39:52 +0200
Message-ID: <11702807.QMlqpEfm7u@ripper>
In-Reply-To: <CAG2Q2vWC7H5j6uVRFyKCmjyjG3zoH9L0JwnhmRFxiji=puhrfA@mail.gmail.com>
References: <CAG2Q2vWC7H5j6uVRFyKCmjyjG3zoH9L0JwnhmRFxiji=puhrfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3116070.Ll0KHb2eqd"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1602743996; a=rsa-sha256;
	cv=none;
	b=iR/iaef7BSsAgBDWpyET6Gbz4XN4eJhLqLN9QHnELVbG7E9kW59cfizm7gA7ud5O4j6vS7
	8y54bvkvvkignOh8V9pJ4Zqd5MgkYv/xcNdiPZiybwS9vomx/FyaSEU/dLzQV7H74qGcj3
	o4z2EQvhBJRKwcPNxH84F0bcNpgZWKk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=wGhF0Bp/;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1602743996;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=OzBSadbkwBXNtulvI3n2L/mDEaE+E4utm90TaqhJbR8=;
	b=zunYgX7SGTqzpD78P9uDCXSoiipyNDkN7ifb+2ydU/s2DR4GOo+nHIraucjE4gZN57GTxc
	mKMCArSj73zOUT58tfC4EZ6B/ylJ1X1amtBzIoVRim6ae3QvbkYNfPfIz/zUUuBr5QQosD
	hH8vLf7jkr95r3z/bLPH/RkN+JUkJu4=
Message-ID-Hash: 6NKVNWPZDMH22MM7FAMBKLX3UV4PQG2U
X-Message-ID-Hash: 6NKVNWPZDMH22MM7FAMBKLX3UV4PQG2U
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Rick Winscot <Rwinscot@kcftech.com>, Cale Collins <ccollins@gateworks.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6NKVNWPZDMH22MM7FAMBKLX3UV4PQG2U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3116070.Ll0KHb2eqd
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Wednesday, 14 October 2020 21:54:29 CEST Cale Collins wrote:
> I'm building Buildroot using a 5.45 kernel kernel, when I add the
> "batman-adv" package and compile I receive this error:

I think you meant 5.4.5, right? You should really upgrade to the
newest version of the LTS kernel - 5.4.71.

> /buildroot/output/build/batman-adv-2019.3/net/batman-adv/soft-interface.c=
:439:2:
> error: implicit declaration of function =E2=80=98nf_reset=E2=80=99; did y=
ou mean
> =E2=80=98dql_reset=E2=80=99? [-Werror=3Dimplicit-function-declaration]
>   439 |  nf_reset(skb);
>       |  ^~~~~~~~
>       |  dql_reset

The support for Linux 5.4 was only added with v2019.4. Please check the=20
release notes [1]. Not sure why you even try to build the batman-adv from=20
kernel 5.3 against the Linux kernel 5.4.

I would recommend not to use such old version due to various bugfixes which=
=20
you most likely didn't manually backport to v2019.3/v2019.4.

> Is there a patch to correct this?  Any insight would be greatly appreciat=
ed.

There was an upstream change which dropped nf_reset in favor of=20
nf_reset_ct [2]

Kind regards,
	Sven

[1] https://www.open-mesh.org/news/93
[2] https://git.open-mesh.org/batman-adv.git/commit/ab636a2bec851b103c638ec=
4cde059be0432528a
--nextPart3116070.Ll0KHb2eqd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl+H7rgACgkQXYcKB8Em
e0a5+RAA2ZNP+6dfIHPTDvk9eiWgQEqdv5Eu6anke+Exk4dzh2HKWjyODoSrIRux
V1RQy0h49goA5JbtQsKLZq+FJabWTqYWJn4S7t+TjZ6VivKedPO+6HO24BtX6TQx
uQCATn9v3XcliOM9OlJDZC7/H/cwjQ+U93+PotTNqz5vNwEOGYBmIbDrK8Uz0A3y
cexuvsTlVQyMjTs6ZN7ZwzHVBqqlGLyqALU9H1skUjFXVc3qxN66Ad/lHTxM39Je
slvA+r6MAQpJ7k6JicX41NvvxP42ThdBVVj1yc801GrJgVvDtARN/TwBg9bvMh6D
lQ7YdR3cULbzNkV9jh8uwWbLKMCi9ovPlMpy8KmZNPxES4yGBSX8DrJufNnNs2Rj
Iy0QHA0lhgcSwrFcGb1HaYrJYvlYGFpEphgucoN0HVyo53tiXg1ZGBBVW12yqAr4
/kZdaEyqpxhwtd4ZSLOGNEmmmYUmM25DnGalD5bp+StdaY+WP8xobyMzQEoZLCAQ
aF/ZeafqpNIQ+hzDiiVaL75Zt1PNi2pp2rqLX/FFYVfvISuy8He+eO/gYuW01kg6
CjjspyUw+dmVQDUEi5nc77NNBJLIjXGywmRQRfu5cwagqY/D5wY6kVDZM2JZDOOf
fvMfmjz78LimsgJcsRkyrPjFpI9Mx8RuJvCBHYehtEmixMA3ICU=
=kG7B
-----END PGP SIGNATURE-----

--nextPart3116070.Ll0KHb2eqd--


