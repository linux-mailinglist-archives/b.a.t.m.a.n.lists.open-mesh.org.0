Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B500912BCC6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 28 Dec 2019 06:41:02 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 62D59803D6;
	Sat, 28 Dec 2019 06:40:53 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 7F5198009F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 28 Dec 2019 06:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1577511648;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mzZTy/F8Q4/eZuw/RTrhv8sjsPIpi3cDnkxohXE6x+s=;
 b=Q87qq2qfqKugmjtBjQWSpd2QUq7VyvAKcTZ4iG5oiGDCgD230ooBaWanQxgltlZSuz3obk
 UpXmvv34sMtrrvBet5RfX8RV/fj4uZYNo5Oxme6uBkN5t6rOZ4pzdYQIMuujfpf/wBzZcA
 pwRd+GzWIgw0h8XUJd7tHKXbG4HgW4U=
From: Sven Eckelmann <sven@narfation.org>
To: =?utf-8?B?5byg6bmP?= <1805692831@qq.com>
Subject: Re: =?UTF-8?B?5Zue5aSN77ya?= openwrt batman-adv
Date: Sat, 28 Dec 2019 06:40:41 +0100
Message-ID: <43821815.iu2yF5aFiK@sven-edge>
In-Reply-To: <tencent_CA5610319E19CB95CA9DB432847536DEFF09@qq.com>
References: <tencent_01E5105A2CC20B1B047FF188EFCF47E55D08@qq.com>
 <2363117.f9ZONqFbmS@sven-edge>
 <tencent_CA5610319E19CB95CA9DB432847536DEFF09@qq.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart40451064.sOvTPcQMsJ";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1577511650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=mzZTy/F8Q4/eZuw/RTrhv8sjsPIpi3cDnkxohXE6x+s=;
 b=JUJq/B3BmNyVd2Uy7DOSmk0reQh+n4ehBy1hwQ2262tS9ZCymkjBgKQdtkySh7bjmgp5I2
 3B4xNvuKIgi+gmb3dgHKwn44gRdL1L+f6fWRQJ2y5Ev7tFBzld9/RY6oZU+BdNjXeuX+nZ
 6VjCJrV3NtqPEd7p5egZgOf4Y02eC74=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1577511650; a=rsa-sha256; cv=none;
 b=ymYGoRKXy6hfQ0v4x/DXbASY6pVREPpgupp8BnpqEbYiANLj7lJoXTuuo1lH5KgqMNE8GB
 R6XTGhQsW5Ka8iDyap+HTHoKK/JS+oeAh4gX8DOt/ORS4LNWWA3W/Jx7lr8Kkh1hFXRYNi
 ZPKM94iZqdYBLETPaQXU7+mW+qkBDKY=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=Q87qq2qf;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart40451064.sOvTPcQMsJ
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Saturday, 28 December 2019 03:32:17 CET =E5=BC=A0=E9=B9=8F wrote:
>      Thank you very much for your reply!
>      I have ported the pre-2019.2 version of batman to the 3.3 kernel and=
 it is available for doing

Please don't do this. Now you are not only having the known bugs from Linux=
=20
3.3 but also the known bugs [1] from the pre-2019.2 batman-adv.

The correct approach is to get your used software updated to a non-EOL=20
version.

Kind regards,
	Sven

[1] https://git.open-mesh.org/batman-adv.git/blob/HEAD:/CHANGELOG.rst
--nextPart40451064.sOvTPcQMsJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl4G6tkACgkQXYcKB8Em
e0YU+g//caOS3gvLRoqsieypBRrLp4g19TyXEnDDk7Pe2UVAh+zgCtXgidF9N9D+
ntzZboPqX7mhTS3njaNVwEm7lPdUzv2Suamv71IA4itS6zp52w6DpYy4a4s0mfs5
7k9kzaMyx05SeMoJkHRA9lHy5ImAcpAnRCqdlSKA9N+4swDffR6DDYh3FUzCkqh4
Bj+3gWCWN+3POazuKYLRL/XSwKa5d4cTvC2OUR5BS4XM06Z1MRwksLWK1+xzHmFk
Cknm7wgMCFq9O5nqXhlw1/OaJkxw1TR+xf1YVIg2Nczz5Dc4fcj3CH7sOOBLBz0P
NroGDbjgCFqoQI+0o6xkhoI2LOa/m4LZO6tibXU4MXrpBgv5XYaFyq/FBrIBf7Y+
L06h0BNzbdw80aQHZBA6ICfaJ1wuiDYQb9/FB3QECKu/lRhk52YPOmxJ9Si5i7v9
Jakx95a3WsS5P4gKzeCev26SpjhTFWNPgWbZn9FRbTwTeq6TLYz00JCBzz6L1hrs
XpPMyGVAUn1KwVmQ0qxz1OTHk5ZWiyEWkLZ9Nq5EvG0ivbcmtsIkTjOv+9FA1sr5
OyMcOZ1ehHvcrNqeKIBxuC+6PdMa8qQNGtkqujGBM/oLUat7SnDmjh6JKQq9LHoB
nw2c1F/W6JQuWM8qg38LvP743/ldO6ygLy1KTpOGLcN15OqaH7U=
=CnE0
-----END PGP SIGNATURE-----

--nextPart40451064.sOvTPcQMsJ--



