Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CF026F5AD
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 18 Sep 2020 08:06:23 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 25B3880781;
	Fri, 18 Sep 2020 08:06:22 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 57DA480640
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 18 Sep 2020 08:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1600409177;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=cdSusAHVzXrgOULSxtNgHH1CfoRe5CwiyKSKdTqxO6M=;
	b=WnolA4+SPdZk3rQx441Hsk0A02oYeCbxkrAgqPdfQRygbAqEwozm0ourtl6U3lk5XAT33T
	V4Bie4iWiO5EcSN5+9i+Q2dr2/kS0CrxNXgkcsNcyKg8kM5jTWwAvLvaEiBN5Dw5rpK9qa
	fWnqS4UdRdfXdxey04H9qWiz5w/NF44=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Does batman choose DHCP server by random?
Date: Fri, 18 Sep 2020 08:06:11 +0200
Message-ID: <88928628.8v8VXxemU5@ripper>
In-Reply-To: <5e4c619d-bdb1-2fa7-57cc-e5d71ea13f08@kkk-web.de>
References: <5e4c619d-bdb1-2fa7-57cc-e5d71ea13f08@kkk-web.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart21940421.E8GsgdhSP6"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600409178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=cdSusAHVzXrgOULSxtNgHH1CfoRe5CwiyKSKdTqxO6M=;
	b=UzirVMJqIUDgwdsdjJXzcnIYqAJbHiHq4aM56sIwVvn5ZJkHv9uS6CLL+KIVabX7KKqiHC
	S1QgZfv2Fi8Bk28MXCmItvPbwybrSaTwKdtUlQkKz1QF8QvlyY7JePaBsFg/KPXBbxJqKS
	Nst6jUOXZfijld0EVriccNIEUIDAGqQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600409178; a=rsa-sha256;
	cv=none;
	b=gJMZY5gi1CHdOVCNx678cXgdsBCAT+Don7fZzfxtVbHeMA0jmHmyAzaYpx9bE254W/u5r3
	iCsFBqvoqC65YxxL6kA6JTZFmKQVeP8EYLKA8qPzwTyyE783hTBBDPQq6KSLTAiqK1yqmR
	j/yLOqtQPfUEY6Jfg1FyaG1RPPYSNPs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=WnolA4+S;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: JXYHNEBBZ3IB2JZXZT6OZET2YI4UNMVB
X-Message-ID-Hash: JXYHNEBBZ3IB2JZXZT6OZET2YI4UNMVB
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: MK <mailing.m1@kkk-web.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JXYHNEBBZ3IB2JZXZT6OZET2YI4UNMVB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart21940421.E8GsgdhSP6
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 17 September 2020 22:23:24 CEST MK wrote:
> Clients connect to one gateway but pull IPv4 addresses from _another_
> gateway. This leads to packets flowing between gateways instead of
> leaving the mesh on the shortest route possible.
> 
> Is this intended behaviour? Is it random? Is there a config option to
> alter this packet flow?

See https://www.open-mesh.org/projects/batman-adv/wiki/Gateways

Kind regards,
	Sven
--nextPart21940421.E8GsgdhSP6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9kTlMACgkQXYcKB8Em
e0YNoA//XiGkWODvgXly49VmRZfQ0NiTjS8zAznWY5HjNIursoK7/m7eWbuPQVs7
uJfUkGcCOUiIOl6nFcYaZbjYDHDkka+PTrOgqtSBkN4WGEg4wTgdj5o9LBxhvffa
84KkLleA0cQMU+aq8kXJ/fg4nT11QsrEYlxdQ+RuWN7QOVbUByKliZys6eObgkPd
XsZnR+rhE0TOzuWUTX/gIClvHyQCdMjC516ucNlBbwW8bO3dW9Z4YUH4BhfhXf9a
/hZ1HBWIB4eh/y35FuSqtno+le19BSvVyC81fl1Veg+o2VXrAw1xfxebsRGI6Lzi
JThx0HNI9oblsXzlw58u4E88RPzyQDSN1A4IicwZzNQvlqIC51/Bm7ygcFMUvkXt
3FK7CJ+jgf6grUUXD2b08b/qTsBQLMjVNVp7QvselLVFiSSUTql+DcORJJVew692
nNEDamlyv7wcuIbqh+cp20cZPl5ZWBIhc8ut12sMyVeniNSR4+UhNL93Mkvnxd6T
ndOmknRobICC34iNzSSI6FBwChqUUrUBJU9HsttZfjWBlGanlJYVJ7mtaVjxAZca
Dcvk29f0UJKjy2xSV3kUhBC16ommzSbVs6LObSywchPICG4iewu0RICKcn73gH5h
QTlAkKRo55YwHDBRO8VET36XT27BG4ryfcRlibGXzzvBE6mcG9M=
=bEBp
-----END PGP SIGNATURE-----

--nextPart21940421.E8GsgdhSP6--


