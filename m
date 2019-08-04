Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF32809A2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 08:20:45 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id F2D22821C6;
	Sun,  4 Aug 2019 08:20:40 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id CD386803C1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 08:20:37 +0200 (CEST)
Received: from sven-edge.localnet
 (p200300CA6F2191007D683EA4D59D38D5.dip0.t-ipconnect.de
 [IPv6:2003:ca:6f21:9100:7d68:3ea4:d59d:38d5])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 38B991FDD3;
 Sun,  4 Aug 2019 06:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1564899637;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eta6gOxVU+LbJzgeKO1iYRm91kboVIswG+OD9oi6pUo=;
 b=uwhIm6ZJtGOgNSx8M1L3P3UoVjBxXKMUKXhAYho6ndadxvZo1YOVl6tQHtbXMMnvJrBkHP
 6fgdX0/W+V4sjsCq4pt67OVF7AR1MVj9RYjiYSa/5ZcLbPXQCqhDGAGqqAgK08a8YC/Z5F
 66hlCjZuCB2xd3l5VlivYb4ewKkhDEc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 0/2] batman-adv: BATMAN_V: OGMv2 packet aggregation
Date: Sun, 04 Aug 2019 08:20:32 +0200
Message-ID: <2489919.oX8Fi7kJmE@sven-edge>
In-Reply-To: <20190804042855.29327-1-linus.luessing@c0d3.blue>
References: <20190804042855.29327-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3904495.U5pX1ZpQ9S";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1564899637;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eta6gOxVU+LbJzgeKO1iYRm91kboVIswG+OD9oi6pUo=;
 b=ves/2QyE4dO9g/RhYSM7zbHKjt456GbIZgCyHTbh+C6gi7rJMS+elSawVFpMtc81nG9PR7
 cCZqW4sveFNrWnMb9Cl3YBA5L8Jk1dA0a9h8Fr6kydE5YminqIIezzgC30m/EwCz8THLv+
 jwbS8v9D+o9azMWwcPBeDhymsCzQRjY=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1564899637; a=rsa-sha256; cv=none;
 b=eGJyYCEl7ihu9jeasEDDWwEmuN6OLg0cDg9EYC/zF0QG10Jn9Ta2awEBc385CdeJSWh74X
 nTp1EWV7GbQNGof5nkgcwFEb7noPFAVX/v+llYt7ehmwF2NgcQeXej8T61qI48OmO4y0+T
 OfGtbVVqpN1xOderlOK//PKFLoSZEe8=
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

--nextPart3904495.U5pX1ZpQ9S
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sunday, 4 August 2019 06:28:53 CEST Linus L=FCssing wrote:
> Hi,
>=20
> This small patchset implements the transmission side for the OGMv2
> packet aggregation in BATMAN_V. The receiver part was already
> implemented and seems to work nicely.

Name of failed tests
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

ecsv/pu
=2D------

 * Comment starting with two asterisk non-empty line
 * bracket_align ./net/batman-adv/bat_v_ogm.c
 * headers
 * kerneldoc ./net/batman-adv/bat_v_ogm.c
 * kerneldoc ./net/batman-adv/types.h
 * smatch linux-4.0 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dy CON=
=46IG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_ADV_=
TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dy CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_BAT=
MAN_ADV_BATMAN_V=3Dn CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.1 CONFIG_BATMAN_ADV_BLA=3Dn CONFIG_BATMAN_ADV_DAT=3Dn CON=
=46IG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_ADV_=
TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dy CONFIG_BAT=
MAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dy
 * smatch linux-4.1 CONFIG_BATMAN_ADV_BLA=3Dn CONFIG_BATMAN_ADV_DAT=3Dy CON=
=46IG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_ADV_=
TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_BAT=
MAN_ADV_BATMAN_V=3Dn CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.12 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dy CO=
NFIG_BATMAN_ADV_DEBUGFS=3Dn CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_ADV_T=
RACING=3Dy CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_BATM=
AN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dy
 * smatch linux-4.12 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dy CO=
NFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_ADV_T=
RACING=3Dy CONFIG_BATMAN_ADV_NC=3Dy CONFIG_BATMAN_ADV_MCAST=3Dy CONFIG_BATM=
AN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dy
 * smatch linux-4.13 CONFIG_BATMAN_ADV_BLA=3Dn CONFIG_BATMAN_ADV_DAT=3Dn CO=
NFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_ADV_T=
RACING=3Dy CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_BATM=
AN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.14 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dy CO=
NFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_ADV_T=
RACING=3Dy CONFIG_BATMAN_ADV_NC=3Dy CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_BATM=
AN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.14.133 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3D=
n CONFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_A=
DV_TRACING=3Dn CONFIG_BATMAN_ADV_NC=3Dy CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_=
BATMAN_ADV_BATMAN_V=3Dn CONFIG_BATMAN_ADV_SYSFS=3Dy
 * smatch linux-4.17 CONFIG_BATMAN_ADV_BLA=3Dn CONFIG_BATMAN_ADV_DAT=3Dy CO=
NFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_ADV_T=
RACING=3Dy CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_BATM=
AN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.19 CONFIG_BATMAN_ADV_BLA=3Dn CONFIG_BATMAN_ADV_DAT=3Dy CO=
NFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_ADV_T=
RACING=3Dn CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dy CONFIG_BATM=
AN_ADV_BATMAN_V=3Dn CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.19.58 CONFIG_BATMAN_ADV_BLA=3Dn CONFIG_BATMAN_ADV_DAT=3Dy=
 CONFIG_BATMAN_ADV_DEBUGFS=3Dn CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_AD=
V_TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dy CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_B=
ATMAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.20 CONFIG_BATMAN_ADV_BLA=3Dn CONFIG_BATMAN_ADV_DAT=3Dn CO=
NFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_ADV_T=
RACING=3Dy CONFIG_BATMAN_ADV_NC=3Dy CONFIG_BATMAN_ADV_MCAST=3Dy CONFIG_BATM=
AN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.20 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dn CO=
NFIG_BATMAN_ADV_DEBUGFS=3Dn CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_ADV_T=
RACING=3Dn CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dy CONFIG_BATM=
AN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.3 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dn CON=
=46IG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_ADV_=
TRACING=3Dn CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_BAT=
MAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.4 CONFIG_BATMAN_ADV_BLA=3Dn CONFIG_BATMAN_ADV_DAT=3Dn CON=
=46IG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_ADV_=
TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dy CONFIG_BAT=
MAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dy
 * smatch linux-4.4 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dy CON=
=46IG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_ADV_=
TRACING=3Dn CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dy CONFIG_BAT=
MAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.4.185 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dn=
 CONFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_AD=
V_TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_B=
ATMAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dy
 * smatch linux-4.4.185 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dy=
 CONFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMAN_AD=
V_TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dy CONFIG_B=
ATMAN_ADV_BATMAN_V=3Dn CONFIG_BATMAN_ADV_SYSFS=3Dy
 * smatch linux-4.7 CONFIG_BATMAN_ADV_BLA=3Dn CONFIG_BATMAN_ADV_DAT=3Dy CON=
=46IG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_ADV_=
TRACING=3Dn CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_BAT=
MAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dy
 * smatch linux-4.8 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dy CON=
=46IG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_ADV_=
TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dy CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_BAT=
MAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dy
 * smatch linux-4.9.185 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dy=
 CONFIG_BATMAN_ADV_DEBUGFS=3Dn CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_AD=
V_TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_B=
ATMAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dn
 * smatch linux-4.9.185 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dy=
 CONFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_AD=
V_TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dn CONFIG_BATMAN_ADV_MCAST=3Dn CONFIG_B=
ATMAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dy
 * smatch linux-5.1.17 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=3Dy =
CONFIG_BATMAN_ADV_DEBUGFS=3Dn CONFIG_BATMAN_ADV_DEBUG=3Dy CONFIG_BATMAN_ADV=
_TRACING=3Dn CONFIG_BATMAN_ADV_NC=3Dy CONFIG_BATMAN_ADV_MCAST=3Dy CONFIG_BA=
TMAN_ADV_BATMAN_V=3Dn CONFIG_BATMAN_ADV_SYSFS=3Dn


Output of different failed tests
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

ecsv/pu: Comment starting with two asterisk non-empty line
=2D---------------------------------------------------------

    43:./net/batman-adv/types.h:126:    /** @aggr_len: length of the OGM ag=
gregate (excluding ethernet frame

ecsv/pu: bracket_align ./net/batman-adv/bat_v_ogm.c
=2D--------------------------------------------------

    Found wrong alignment at ./net/batman-adv/bat_v_ogm.c:158, was 28 but e=
xpected 34

ecsv/pu: headers
=2D---------------

    diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
    index 862fb465..6053e6bb 100644
    --- a/net/batman-adv/bat_v_ogm.c
    +++ b/net/batman-adv/bat_v_ogm.c
    @@ -23,6 +23,7 @@
     #include <linux/rcupdate.h>
     #include <linux/skbuff.h>
     #include <linux/slab.h>
    +#include <linux/spinlock.h>
     #include <linux/stddef.h>
     #include <linux/string.h>
     #include <linux/types.h>
    diff --git a/net/batman-adv/bat_v_ogm.h b/net/batman-adv/bat_v_ogm.h
    index 4b122f1a..fbce68d7 100644
    --- a/net/batman-adv/bat_v_ogm.h
    +++ b/net/batman-adv/bat_v_ogm.h
    @@ -11,6 +11,7 @@
    =20
     #include <linux/skbuff.h>
     #include <linux/types.h>
    +#include <linux/workqueue.h>
    =20
     int batadv_v_ogm_init(struct batadv_priv *bat_priv);
     void batadv_v_ogm_free(struct batadv_priv *bat_priv);

ecsv/pu: kerneldoc ./net/batman-adv/bat_v_ogm.c
=2D----------------------------------------------

    ./net/batman-adv/bat_v_ogm.c:171: warning: Function parameter or member=
 'hard_iface' not described in 'batadv_v_ogm_aggr_list_free'
    ./net/batman-adv/bat_v_ogm.c:171: warning: Excess function parameter 'h=
ead' description in 'batadv_v_ogm_aggr_list_free'

ecsv/pu: kerneldoc ./net/batman-adv/types.h
=2D------------------------------------------

    ./net/batman-adv/types.h:142: warning: Function parameter or member 'ag=
gr_len' not described in 'batadv_hard_iface_bat_v'

ecsv/pu: smatch linux-4.12 CONFIG_BATMAN_ADV_BLA=3Dy CONFIG_BATMAN_ADV_DAT=
=3Dy CONFIG_BATMAN_ADV_DEBUGFS=3Dy CONFIG_BATMAN_ADV_DEBUG=3Dn CONFIG_BATMA=
N_ADV_TRACING=3Dy CONFIG_BATMAN_ADV_NC=3Dy CONFIG_BATMAN_ADV_MCAST=3Dy CONF=
IG_BATMAN_ADV_BATMAN_V=3Dy CONFIG_BATMAN_ADV_SYSFS=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.GpBziukSSV/net/batman-adv/bat_v_ogm.c:36=
5 batadv_v_ogm_aggr_work() warn: unused return: bat_priv =3D netdev_priv()


Statistics
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

ecsv/pu
=2D------

=46ailed tests:                28
Started build tests:         24
Tested Linux versions:       17
Tested configs:              24


Kind regards,
	Sven

--nextPart3904495.U5pX1ZpQ9S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl1GeTAACgkQXYcKB8Em
e0YLmg//f5SsECtPUlmMruXpIIZL13w77UPsMuvvFJYDRgAlbR24vssrEKatGUq5
0ZGkFMPwORvPlICbwWDlJQZV5ZeYDA9i7ZlMS2A1DoWMzOzx5kp0lodb0PBq/QfF
GyMWaUgcbz/evoQtdwFsGMa2E5NI9fc1n5EuIn+T08pER3yVImqcIN1QaTdz0GVZ
ES2SIkD5IVcHxO8tB91ZfBVZgaUcY5kpG5N6jHwsR7KMZF2urtyboanPjA4LWqJ3
sGHHFwWT5clBUr6chur1gXq8dXdN/l7g5bpfr07PyDLYjh5o2XzCOWyQbqdM0hsR
3SwQ1wZLNJ8TxPb3zy5SghbkSLjeX26lvdgtfT65NOiRvEeQxIVopDrgGxv1hwtF
OhxVulLhd/TG/qTYIKJUdzjCjFvEPqUb52Fqt8x2vusXkHWgmstfrHpngCDX3WDI
UKI+zBHdWghww5bBS2twuLwfXNNRC0KmeJyHXNd78wk+Ars/DaE3lFRT4K/0Yjcd
L5gJUQmJVMyZbtJH2Q3LyMDqPChuZOFo1ikaJyXI8KStMHlZin8K0UZVP7jcgrMR
WI25c7Hkq7XB21I3omS3GbI46ZrI6j2Rt4Az4+cPp2+1h44pfevEnNZiH2MFxZIQ
UUgqTJleb9ezB+efcXyAB7WSVQpz87Pk6AZUjw7NA9Mo3uKyyqs=
=b9X/
-----END PGP SIGNATURE-----

--nextPart3904495.U5pX1ZpQ9S--



