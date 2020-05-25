Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 506B71E096A
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 10:57:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 25AC681813;
	Mon, 25 May 2020 10:57:26 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 141BB80109
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 10:57:22 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Batman-adv packet retranslation
Date: Mon, 25 May 2020 10:57:16 +0200
Message-ID: <2955852.fglFOeEuJB@rousseau>
In-Reply-To: <CAOVt3fG9AbAEMP+uKLy8Hsnub6=hAJG2Ekg3vrC__AqVJAdZHw@mail.gmail.com>
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com> <2164745.TYCVdmGlQZ@sven-edge> <CAOVt3fG9AbAEMP+uKLy8Hsnub6=hAJG2Ekg3vrC__AqVJAdZHw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3983173.Y956hmGd6a"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590397043;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=g8EJUISYJfL0kJkIQ3FxNypOjV7t2W5FAN0ZHXVKlto=;
	b=MHJqXSIocSS9RHzc0Y4ykADkmfOrPiCzvRQwxb1uwBd9ge9zaPB4Zfx/VMTQLHy3VLGUs0
	7n4+/UZWRoN8eSOWhGqQPUQjemOlvyZiZkX4V+ppIX43mOKfDHJGmmefxh2xHsVZR/nkkI
	0kiQpqAdWpBz5om7/pFlfkcHrdgv1dc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590397043; a=rsa-sha256;
	cv=none;
	b=kKJi5KXpa6CrOPWcdB+7OwOosfpSrcOksHAsfSCpmLxU2Y8LUlyUGHz3scoY8PVkHkqxf8
	VLeoC9+9ck3c+yWE4o7fpbUS668hCGOcHGR/EA2ftUapzI3JclXlADnWF/VTirsIjxV2Gq
	aUKJIVw5Uch5wRX2W+q2X2Rs/uq6J0w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
Message-ID-Hash: YSMCR4NGTVDGKS6Z26EGNVJ7BJ4HK6M6
X-Message-ID-Hash: YSMCR4NGTVDGKS6Z26EGNVJ7BJ4HK6M6
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YSMCR4NGTVDGKS6Z26EGNVJ7BJ4HK6M6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3983173.Y956hmGd6a
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 24 May 2020 23:53:05 CEST Alexey Ermakov wrote:
> > As Marek pointed  out, you told batman-adv that the  eth0 interfaces have
> > for some reason a link speed of 0.1 [Mbit/s] (or 1 [100Kbit/s] - what the
> > actual unit is for B.A.T.M.A.N. V). And unfortunately, 88% (for the hop
> > penalty) of 1 [100 Kbit/s] is in integer arithmetic 0 [100 Kbit/s]. And 0
> > whatever/s is just discarded by B.A.T.M.A.N. V [1] and not considered for
> > routing traffic - hey, this path ends up as being 0 and therefore
> > useless.
> > The reason why you want to set the link to 1 [100 Kbit/s] has to be
> > figured
> > out by yourself. But for a (during forwarding) strictly monotonic
> > decreasing, integer value, it is a bad starting point to set it to 1
> > [whatever-unit] for a multi-hop setup.
> 
> I have three interfaces on each node:
> eth0 - radio modem, speed 145 kbit/s (see desiription below)
> eth1 - ethernet, speed 100mbit/s
> eth2 - radio modem 10kbit/s (hasn't been tested yet)

Before we go to the next setup, can you confirm that your virtual setup works 
as expected once the throughput is not set to 0.1 MBit/s ?

Kind regards,
Marek


--nextPart3983173.Y956hmGd6a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl7LiGwACgkQU1VOj+62
HMAcEwgAwLW3UgXWxfakhsuqeEkoQzrSyVyKTrPAmrufWFd7R5GQZtSCsKNfi+GV
PMPXjc32I5/AEK7vhwGmLNq+Wrt4TTgCWOA7/YIMBdZn7ZVyL4uWospUCx15F0l6
MJ4JD231lG6YVcZ3TW5mHjZnX+mWZevb4rk5sS2g5XGe6lrV3odkHaOARxLjSwtj
n/ZlD2bf1ZwKxZk0a9McwPxDXEjC+Ewc9VLtjjiTeQ/3J74XvxJUg+n5m8QNbWXz
4pltu7ERbKFUvv5QholU7kOo11DScv1bcMbWxJKpMdBNl+maBk38DWKg1s/UntF7
JxYbwMCf3NY/mxy3vr5IEdv+S5qeWg==
=fJJg
-----END PGP SIGNATURE-----

--nextPart3983173.Y956hmGd6a--


