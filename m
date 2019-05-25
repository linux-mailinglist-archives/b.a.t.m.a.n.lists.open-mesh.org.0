Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B9A2A3DE
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 May 2019 12:06:13 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id ED676820E9;
	Sat, 25 May 2019 12:06:08 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 305AF800D3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 25 May 2019 12:06:05 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id D72B41100D9;
 Sat, 25 May 2019 12:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558778762;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zbTe2O/sCeWZcouK75bunrxM0zNjKgsW3Glr/TCEg1c=;
 b=XQQGUWsBJ39HFW7Zs2dn3sOv6hjHVPFilj5ygch0wiEbx6BuRVccPSS3wMoG1IcFvlomv7
 94NJkRYUv2zxhGfRDsG9AV5slbbht5tzAVKMIyze6s8i6Orow4jE6OGAvuT0oqn1dqWaX8
 b/aBgffoEC7WExHiT4H0rYtbAtL49BI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2 1/2] batman-adv: mcast: detect,
 distribute and maintain multicast router presence
Date: Sat, 25 May 2019 12:06:00 +0200
Message-ID: <259819773.qqnsgro9p8@sven-edge>
In-Reply-To: <20190507042004.4219-2-linus.luessing@c0d3.blue>
References: <20190507042004.4219-1-linus.luessing@c0d3.blue>
 <20190507042004.4219-2-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5219242.DDDBTUVtlx";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558778764;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zbTe2O/sCeWZcouK75bunrxM0zNjKgsW3Glr/TCEg1c=;
 b=mik55q558u5hpdYBdDHPkWEFiQ3RajBghgRN0B3MNoGBD/n/pcI6zaI7JtgX5X4wrh0J/V
 S5REQgD5DKRj2gxBLxG3eu6cG+FFdzZDcnSjluLkdYAv1ljIn52LUiANsvmXHDY6/gM7wW
 m8ZO65khD3uAxJFZ5EQnXYGZ87wqo3I=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558778764; a=rsa-sha256; cv=none;
 b=AbiQsLpRy8g9kdTvE6ASe8hECuXwrox2MuHh+2M91ftXpXXwYGgynkEgxtOLJU8Ye6S9Nk
 Wmpitah4sjrZVgA0e9Eg2FvR04NADxntlBjjCszxuUrmsY4sc1jBlF3CzsE4kBh8NCC083
 WGpEbPLIW+JfJ0oY+tYpLa4INMrjqaY=
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

--nextPart5219242.DDDBTUVtlx
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday, 7 May 2019 06:20:03 CEST Linus L=FCssing wrote:
> +static u8 batadv_mcast_mla_rtr_flags_softif_get(struct batadv_priv *bat_=
priv,
> +                                               struct net_device *bridge)
> +{
> +       struct net_device *dev =3D bridge ? bridge : bat_priv->soft_iface;
> +       u8 flags =3D BATADV_NO_FLAGS;
> +       struct inet6_dev *in6_dev;
> +       struct in_device *in_dev;
> +
> +       rcu_read_lock();
> +       in_dev =3D __in_dev_get_rcu(dev);
> +       if (in_dev && IN_DEV_MFORWARD(in_dev))
> +               flags |=3D BATADV_MCAST_WANT_ALL_RTR4;
> +
> +       in6_dev =3D __in6_dev_get(dev);
> +       if (in6_dev && in6_dev->cnf.mc_forwarding)
> +               flags |=3D BATADV_MCAST_WANT_ALL_RTR6;
> +       rcu_read_unlock();
> +
> +       return flags;
> +}

=46ails to build on Linux 5.1 with:

/home/sven/tmp/qemu-batman/batman-adv/net/batman-adv/multicast.c: In functi=
on 'batadv_mcast_mla_rtr_flags_softif_get':
/home/sven/tmp/qemu-batman/batman-adv/net/batman-adv/multicast.c:130:30: er=
ror: 'struct ipv6_devconf' has no member named 'mc_forwarding'; did you mea=
n 'forwarding'?
  if (in6_dev && in6_dev->cnf.mc_forwarding)
                              ^~~~~~~~~~~~~
                              forwarding

See=20
https://git.open-mesh.org/build_test.git/blob/HEAD:/generate_linux_headers.=
sh=20
for the configuration.

Kind regards,
	Sven

--nextPart5219242.DDDBTUVtlx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzpE4gACgkQXYcKB8Em
e0YEQhAAke9rLTiLs/15NDuZL67VwV8vheK98mfO0KvblDNWlD8UY+LkUpXKRWoK
pDADo+BccuwHyskDiYvMJpkQtUzqQH+OLrRSmZZGMykkcpE35i9BHfmdHL8N8QyN
BkWeRhlvY5G+rSzanCwfrMziD6oES+h4XHIkxIedkuzj9/xIjW+Lnb3oxp6b3Jma
BkC72+d5NnBkduapnq3T+1H+wMQTBx9XUkzwQjf3D+0wBktf0ACNuBUxaFTJvjgu
8jkny6DcCTwx9dcqT1nB1T0Bw60kDzY1xflKFS/JC2KoVirohpLSzjO+mnFa54X/
A7AJCuLHBt6MsplUrj32+UbXq8vRgRIjvHhWsd4wL4lgTIlgEZLtXYVYd9DeJq2R
6fAtWNXfTZB13/bfAWwPziQZEPkQ0+A13VOA/f0DEPucjw4vPQCwRf26uCP9F3b8
KKU85wa0YG50qA2TdSL88nUXYeesHbilvlFpl6HRf/QisjBQParcdNQHZkU3Lt1Y
9h1jQbjMU+BRC59pmknE6SVhzf+uDfoCA3tirODTuSPfUcgOb+T4oY83sWumsgpd
mSWEWiIXYDWEFWtBsmfKW6cV0QC12BXaAA5yaiKQZHAVWRA0boTfQwjpMmeltGKr
coow9omvjP0U63K4Kei+ervDD6tiNOP/CT1I+XLB9mmwL+3VAPg=
=fUqP
-----END PGP SIGNATURE-----

--nextPart5219242.DDDBTUVtlx--



