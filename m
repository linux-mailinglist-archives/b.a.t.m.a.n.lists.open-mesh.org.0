Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3DD3A51D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 Jun 2019 13:23:36 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id DE61681F7B;
	Sun,  9 Jun 2019 13:23:32 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id E7C5680610
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 Jun 2019 13:23:29 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 2E7C21100CF;
 Sun,  9 Jun 2019 13:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560079409;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BkNJd4YHp5+ukOBGO3f1vVsMYgVObczAwBOpNroaEY8=;
 b=NgjPXhEhyjXrfYqs0zHwdmsZ81Kj8MKUQzqEvRFHn0IH6krytRJXofaKrl/NFK+Gzr+0QS
 1NO7sEGAEfsLWf/2d1Ni1Zf5NHotJPrt28bmLMAcfJlpxNBbcV+yLLnN0iVVOdXr3HbE3K
 o/j12nu5cKun5zdKdQsgU1/ngbrk+/8=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [B.A.T.M.A.N.] [RFC maint v2] batman-adv: fix adding VLANs with
 partial state
Date: Sun, 09 Jun 2019 13:23:26 +0200
Message-ID: <2376495.4Cfc0ETskB@sven-edge>
In-Reply-To: <45216149.LrRsuFWNSN@rousseau>
References: <20180511185723.20138-1-mareklindner@neomailbox.ch>
 <20180522211214.GG15580@otheros> <45216149.LrRsuFWNSN@rousseau>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1807592.8v8Ogd7uTd";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560079409;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BkNJd4YHp5+ukOBGO3f1vVsMYgVObczAwBOpNroaEY8=;
 b=N0VBw+BR+TRXEtuTbYwTbbvgpYSJQ6UleCSTWxY+XThCpdRUqQKTgHSkl53HCuzrz3mQ0u
 guAYhqxnxhPd/VtZvINOlLHaAMIIC+Zd2whBeUIaWX0gjgQY0Q5doLefkI8uB80zh8JfEw
 FilfeLX0tWThykDDp7YwGZWfiqSjHZE=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560079409; a=rsa-sha256; cv=none;
 b=izRCMakcc3MbjMrrN+KEwBofbVMftrjez1DdFYPvoTz+QbgtYS9o5ykPys7i3xjcgurHFZ
 x5k4b2ZcKIFrDcrAAtUvgvRy1tGfNiVpjM7z/OoIH3+RwCKn0DTWlCunSu5TEUncjJ3ix3
 dHs4O6JLF8wQJwXllRouHKCPMaMifO8=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Leonardo =?ISO-8859-1?Q?M=F6rlein?= <me@irrelefant.net>,
 Marek Lindner <mareklindner@neomailbox.ch>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart1807592.8v8Ogd7uTd
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday, 7 September 2018 12:25:33 CEST Marek Lindner wrote:
> On Wednesday, 23 May 2018 05:12:14 HKT Linus L=FCssing wrote:
> > I tested this patch but so far could not spot any issues either in
> > dmesg or logread.
> >=20
> > I've added these patches to a branch for Gluon here:
> >=20
> > https://github.com/T-X/gluon/tree/tt-vlan-patched
> >=20
> > And used these images (warning, they have my SSH public added):
> >=20
> > https://metameute.de/~tux/Freifunk/firmware/ffh-tt-patched/
>=20
> Any update on whether this patch has caused any grief ? If not I'd submit=
 as=20
> real patch.

Any updates?

Kind regards,
	Sven

--nextPart1807592.8v8Ogd7uTd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlz87C8ACgkQXYcKB8Em
e0Yqig/+N53KyDC4jcyHZDiNKUOmnts7+sObwuE9TAYWWlg4lLZ5zcAgJKs3MHnW
nKb3rHrGxaDAPFhgg6gx48lMqq1YivI4FEP5F38lip05iaP7ivh7C6NKgF4Eu6kk
AjNtxagCh+B00J/Id/B3xoqRPWEeUPKef+fYMbORZGeFMWMIwRJMTU764Q9glKUs
AlexY62Z/zKnGVjiKvgvP+uXG5dCSeNbOdzd2NvAcgXs8nFbi6YGJgz2Wb+9yP/n
qalTM9Z3ZZhx1Q5f4hBsNvIYgrHad2EVm3BXmAu5AfS7X8QShC7C86bWa/9D4j5C
CX0215k3tuu+nkF5HOTKzR4hO1uz8OvddRhL74Donk/ZGtT1Bgj+I0Wk8pMU4mve
vWrof31vkQog3yL+kChsRCLg248+ZpqoJp8QtpoBdu2ucI/QXKaRjCh6wlLD0ej1
f+p4yIR0D2+TI3zfZ+LjX4CgKTLL1Ecs9eqsS2+x9iZlKEwZvYInSxExa16xpxpw
XdooTYh0rpn4KRqTw92PEhaKbIQOByf40TKrzv10WbHvHnZhNRyAT9cJmwh9tVK7
IfjG7NmKbjhajl9HC/yYXNQWcwl125RvQXY5AkGE93d1Jut+MdpPPPRKQDei3PFm
rQNdMUaOhNbF+euLrKXL+pzbowF/xw60ECJ3HjUWrG5zygWg4BU=
=True
-----END PGP SIGNATURE-----

--nextPart1807592.8v8Ogd7uTd--



