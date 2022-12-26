Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 390DE65644F
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 26 Dec 2022 18:09:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1EF378455E;
	Mon, 26 Dec 2022 18:09:17 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5912A80458
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Dec 2022 18:09:14 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672074554;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=T0R3O8ijfIMbPzYdco5LRXMMve+gJDLEALZWNqO2ekY=;
	b=alQzPIyhVeZMU+eUR73N1/x3AFMBcrm2Nw1oVQnVatlB9ZwOj9Dht7K16o8DHFt9PVkB5W
	ilSc9uEH+T7a18b4TvaPUPr23A0MvAjRMKpNpW08EhJdmeMM5HYrvD/qJUd99EX091iqEz
	7s5gAybb1DA/mwpME6oY1i53Sg3DiNI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=PjEMflaT;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672074554; a=rsa-sha256;
	cv=none;
	b=wVAIY2DCRDuM/m42GxLeHOiXFXVyoL/2djqyTIvn/wAcuxi1wBxzxYpErHqufH0yyZvgb5
	fZeQEMj/XtBGe4wO3HpSvoVhwQoT9fOn9aI/OTnO3PkTi2q1Jv+CtkltHMhq2Zpsiu/jBT
	Qw3xXRkX8dzFbr4wILV4UKaAcRRlQqA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1672074553;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=T0R3O8ijfIMbPzYdco5LRXMMve+gJDLEALZWNqO2ekY=;
	b=PjEMflaTi8BfM1+eUhG1Xr1eo1nGKae87eDr1oS0MLE8XXqnbFFPq6siBjcKFRh6r9PN3X
	z4jBHb7bV/J/hWeCT1JgzMCD4xuwx33zDyrRLr7/on7evjpNZoBuaPGGW3Vcuso4X9VhvT
	YW9I2i/w8XlbNJ7ziA2XjYS59h+AGsM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH v2 1/5] batman-adv: mcast: remove now redundant single ucast forwarding
Date: Mon, 26 Dec 2022 18:09:11 +0100
Message-ID: <3060990.e9J7NaK4W3@sven-l14>
In-Reply-To: <20221226161554.9657-2-linus.luessing@c0d3.blue>
References: <20221226161554.9657-1-linus.luessing@c0d3.blue> <20221226161554.9657-2-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3405950.aeNJFYEL58"; micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: EYI4DWBW6P7NPY2AWB54VDWFVNDV7K65
X-Message-ID-Hash: EYI4DWBW6P7NPY2AWB54VDWFVNDV7K65
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EYI4DWBW6P7NPY2AWB54VDWFVNDV7K65/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3405950.aeNJFYEL58
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Date: Mon, 26 Dec 2022 18:09:11 +0100
Message-ID: <3060990.e9J7NaK4W3@sven-l14>
In-Reply-To: <20221226161554.9657-2-linus.luessing@c0d3.blue>
MIME-Version: 1.0

On Monday, 26 December 2022 17:15:50 CET Linus L=FCssing wrote:
> The multicast code to send a multicast packet via multiple batman-adv
> unicast packets is not only capable of sending to multiple but also to a
> single node. Therefore we can safely remove the old, specialized, now
> redundant multicast-to-single-unicast code.
>=20
> The only functional change of this simplification is that the edge case
> of allowing a multicast packet with an unsnoopable destination address
> (224.0.0.0/24 or ff02::1) where only a single node has signaled interest
> in it via the batman-adv want-all-unsnoopables multicast flag is now
> transmitted via a batman-adv broadcast instead of a batman-adv unicast
> packet. Maintaining this edge case feature does not seem worth the extra
> lines of code and people should just not expect to be able to snoop and
> optimize such unsnoopable multicast addresses when bridges are involved.
>=20
> While at it also renaming a few items in the batadv_forw_mode enum to
> prepare for the new batman-adv multicast packet type.
>=20
> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>
> ---
>  net/batman-adv/multicast.c      | 248 ++------------------------------
>  net/batman-adv/multicast.h      |  38 +----
>  net/batman-adv/soft-interface.c |  25 ++--
>  3 files changed, 33 insertions(+), 278 deletions(-)


Output of different failed tests
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

ecsv/pu: headers
=2D---------------

    diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
    index 89ba1093..6f387e61 100644
    --- a/net/batman-adv/multicast.c
    +++ b/net/batman-adv/multicast.c
    @@ -26,7 +26,6 @@
     #include <linux/ipv6.h>
     #include <linux/jiffies.h>
     #include <linux/kernel.h>
    -#include <linux/kref.h>
     #include <linux/list.h>
     #include <linux/lockdep.h>
     #include <linux/netdevice.h>
    diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-inte=
rface.c
    index c2fa0ef5..cd04ab27 100644
    --- a/net/batman-adv/soft-interface.c
    +++ b/net/batman-adv/soft-interface.c
    @@ -48,7 +48,6 @@
     #include "hard-interface.h"
     #include "multicast.h"
     #include "network-coding.h"
    -#include "originator.h"
     #include "send.h"
     #include "translation-table.h"

--nextPart3405950.aeNJFYEL58
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmOp1TcACgkQXYcKB8Em
e0YTShAAkn/nAt8Rw+GJGKo71skBzBirLYuCCuM4O7ZxRw318BrqGZjGURSXf+9W
U3jVzXlJuM/4N76SRIgD4idYTIg9ix3s7/s9AHdXnV51+hO0i5cMM2jP+c2RX+UB
p4wETyay6av1xLK2kktlyVD0E5GLtQjC1Ziu8NghU8hkBNRS9Tc3BleH670Ny23J
RR3QtuSV3h2KC3r2cfSSgP/P7KZs0lxm0EPNHS1LcIxIjL1zhqBLgu8D375RIybT
CjQ/8QJO+JOnWBtRnqsp6DPwE50vyGYGkeItyEvnvP6SGldiLurv4GKvRMRAWFDo
o0d9+OQRXnLH3252xCFt/u1KS9qvD59hEpv2o5Nx77SnHcW+vydLOefiGRokGryE
W4KtsK2Dy1lGOZtHp31BNXVAKzj/aigoprMdEWaYtDJXU94FHkMQZdf8Y3YssTDl
OcRcC2dnL8bmCTBSu59oxtRqyzjqWkkvONiZGmEgsucMyr9R6WHm01Q6NKz8FPOk
VpvLhT6/nwh6XDTcMuGo/MTpj378UYOVwWK4bExXeD8VUkMSN22ov4y+zTYYBvzX
qsjxR2l68A525kNx1zMYcVdC2Zkt8xIM46hJqbrIs+KzCauSx6HNxI1WxOakUkTi
++GElYnJzCSIM+agLCG8qsxleHdxiqffO2/wKLdHLxJzFWUPf1s=
=1lqV
-----END PGP SIGNATURE-----

--nextPart3405950.aeNJFYEL58--


