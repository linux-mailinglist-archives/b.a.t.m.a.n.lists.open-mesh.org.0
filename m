Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA232A3E3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 May 2019 12:21:20 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 3C9C6821DA;
	Sat, 25 May 2019 12:21:17 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id ACF0A8101D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 25 May 2019 12:21:14 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 6367B1100D9;
 Sat, 25 May 2019 12:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558779674;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=23rSUjFps7tWWXk0jCDBkfJ0AmtP4fC+8uqnwbAqJbQ=;
 b=1aJ34GmQAfX664m+8ImrXgFrV6ekYjlQMRfC60+y/8rFljmRyvzrLlp6dHNJw8DgGQfOTX
 yHKloyuOJZRVqi8PgcjB8OqbvkH3wlrcF/HnXQ44g2KSgIb3NN53HpmlCy2hIDjv6Gzofa
 i21WugWKrfmou89xmtkrPde9OBHk1C8=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 3/3] batman-adv: forward broadcast packets via unicast
 transmissions
Date: Sat, 25 May 2019 12:21:11 +0200
Message-ID: <11000634.v2cH04sJFL@sven-edge>
In-Reply-To: <20190514073859.2053-4-linus.luessing@c0d3.blue>
References: <20190514073859.2053-1-linus.luessing@c0d3.blue>
 <20190514073859.2053-4-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2206477.k6HNqMgy6z";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558779674;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=23rSUjFps7tWWXk0jCDBkfJ0AmtP4fC+8uqnwbAqJbQ=;
 b=tDPc192zot1nAxuc2bKcpkU6GVoOZZI0hPT8HOBClL098DzB0nDXuvDC0rBB4KlC7HuBuI
 L66n13YvqK05EjqvVHH3cJpmFnrTVypJkTGp54WRkFRWTzNzWEGVRCPtLMQiZPHk3uNGFh
 Oj6jjCcI1CzrYyr9oeG9ww8YyVHFkBU=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558779674; a=rsa-sha256; cv=none;
 b=HR4HvL3RRDKsxGOz3rK+0tETYObPSKrlLPu0GcNW42jt/wv4AF9RT5IIZDijlJyKRoHrDL
 9+nhloMsXf42Qx1iVfPBxZyezViJ24YMUrMZp6rAF5oYLQnXa3psN2nXgxqjPAc8vtmiDe
 aADu3Z+bLIucM3yY+GipeqXYkKs0MQY=
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2206477.k6HNqMgy6z
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Tuesday, 14 May 2019 09:38:59 CEST Linus L=C3=BCssing wrote:
> +static bool batadv_forw_bcast_may_ucast(struct batadv_priv *bat_priv,
> +                                       struct batadv_hard_iface *if_out)
> +{
> +       unsigned long num_direct_orig;
> +       unsigned long num_bcast_no_urcv;
> +
> +       num_direct_orig =3D atomic_read(&if_out->num_direct_orig);
> +       num_bcast_no_urcv =3D atomic_read(&if_out->num_bcast_no_urcv);
> +
> +       return !num_bcast_no_urcv &&
> +              (num_direct_orig <=3D atomic_read(&bat_priv->multicast_fan=
out));
> +}

ecsv/pu|sparse linux-3.16.66 cfg: BLA=3Dy DAT=3Dy DEBUGFS=3Dn DEBUG=3Dy TRA=
CING=3Dy NC=3Dn MCAST=3Dn BATMAN_V=3Dy SYSFS=3Dy|/home/build_test/build_env=
/tmp.I4uiDZgE1M/net/batman-adv/send.c:928:57: error: no member 'multicast_f=
anout' in struct batadv_priv
/home/build_test/build_env/tmp.I4uiDZgE1M/net/batman-adv/send.c:928:47: war=
ning: call with no type!
/home/build_test/build_env/tmp.I4uiDZgE1M/net/batman-adv/send.c: In functio=
n =E2=80=98batadv_forw_bcast_may_ucast=E2=80=99:
/home/build_test/build_env/tmp.I4uiDZgE1M/net/batman-adv/send.c:928:50: err=
or: =E2=80=98struct batadv_priv=E2=80=99 has no member named =E2=80=98multi=
cast_fanout=E2=80=99
         (num_direct_orig <=3D atomic_read(&bat_priv->multicast_fanout));
                                                  ^~
/home/build_test/build_env/tmp.I4uiDZgE1M/net/batman-adv/send.c:929:1: warn=
ing: control reaches end of non-void function [-Wreturn-type]
 }

Kind regards,
	Sven
--nextPart2206477.k6HNqMgy6z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzpFxcACgkQXYcKB8Em
e0as6RAAmw7/0yVx8jCVUulQY1DzAL0MXntLbwTPUdWMpiRRH9+xC4XfpfGxcJmM
QYpnIIYjc/y2+ATM02Cnh8AlX6nhbadsg6woRxY7rNezb9OAH1LxDoNHJyNHK8ix
LiamWPqPvzc5jEEgz1QHsKtvin/DX9eruWJf6UR3cI9kFpdtdRZKWXTStpB/qzcT
Y/2voBN344Ipo0Js5zNQ9Ib6qA5nhMpc+K1LgkesCx+GB3SJiuTxd7iLNHSL7CIc
F9BQKkoB2PhUyRqrfL+UCWXLx4TWtUNGISuo71Nzk0gbokI9Z4CwfJYiQuOL5sAP
IMPIGpXig9JV3WHK0CsRjLyi55wgL7NXn6qJAzOGkwMO4vX1G8k0QQaOxVFKAP/T
3P8CNW96JbBboUS0iOoZlE0YlMP28wwHCKjEzkqvnRK2JtdOs7bjVngRRhLyr+0s
hNFB8qCbwF594zS1CB7zDFnkCYXf7RkjfP7dSS6as05Tr5YUn1vM6xlURyQ+e/Pu
IoxfIZy2cdHmkbHgWY94fykSGQpISsJ7LN5dpsjANPmnfx841bNGtLwDDpkgrPGG
bGrrsgkDKjYhN2e/yop1ll3p0Sm7b2poaW+XjSRifGNeeo4GeMrNiknVEYhnhNEg
ZoxEfhl1lt40nP9HIuObvyIREJa4G4FInIH3cnJkmxeJ03dVWNw=
=haM7
-----END PGP SIGNATURE-----

--nextPart2206477.k6HNqMgy6z--



