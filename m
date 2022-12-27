Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2E26568B7
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 27 Dec 2022 10:07:43 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 308B08476C;
	Tue, 27 Dec 2022 10:07:42 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5713B80356
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 27 Dec 2022 10:07:39 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672132059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=o/07w5Qkytcue02vXnN7Srwlip87QaarH6cQOfGEz74=;
	b=SKoRNNj6bi6l3TbCmjkLnaqeBdNYYcCbKW615dgp1EA7e8VG3SbP9/7dJpHzhTcj1rfoqv
	66z36T0P23B9Jn9jZFdOdaL6p8DS5hYWB3+JTOhVL3gi/ISuliEVOwzfA8HZAmmP+4eX7C
	eLsLaT5CtfhSeGXkW6ZOwH3KwRvsNKU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=y0tGPvH8;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672132059; a=rsa-sha256;
	cv=none;
	b=wabpqhH8SxC8uZS8sOfTOBxYzLveXdJ2uJ+1C9SUGit0cNxtbszXrzR1v9qhbk5w9cHavw
	eDXR57qFlPLoX8+qNQqTlDzD0y1b4q6qBAqkcKNCjXy8wC/+uZOPRWZjHl/44WJdU2SUSw
	FgqxDMa3v7zGlKgAGRn3j9IJtm6ctvk=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1672132058;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=o/07w5Qkytcue02vXnN7Srwlip87QaarH6cQOfGEz74=;
	b=y0tGPvH8xIxWr58PgNhuqWcKkBMuG0RGpn3ry/CratuQpoPtknvp7l1dJk5wJVqtdNhmfq
	Fcv+xgKTTj3/e5lNcQnL3sO6BMkaNuojeWZnktkfTHDqCGf1BDFU57fcmdvmImkUcBEgX6
	cn4ovk7URnt7sHOGne1SDTlV2DlW/Ko=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH v3 3/5] batman-adv: mcast: implement multicast packet reception and forwarding
Date: Tue, 27 Dec 2022 10:07:36 +0100
Message-ID: <8399468.NyiUUSuA9g@sven-l14>
In-Reply-To: <20221226204237.10403-4-linus.luessing@c0d3.blue>
References: <20221226204237.10403-1-linus.luessing@c0d3.blue> <20221226204237.10403-4-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2135843.usQuhbGJ8B"; micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: K77MUNRQAPNE36RBEHR4YHGDAHLUDYAW
X-Message-ID-Hash: K77MUNRQAPNE36RBEHR4YHGDAHLUDYAW
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/K77MUNRQAPNE36RBEHR4YHGDAHLUDYAW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2135843.usQuhbGJ8B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Date: Tue, 27 Dec 2022 10:07:36 +0100
Message-ID: <8399468.NyiUUSuA9g@sven-l14>
In-Reply-To: <20221226204237.10403-4-linus.luessing@c0d3.blue>
MIME-Version: 1.0

On Monday, 26 December 2022 21:42:35 CET Linus L=FCssing wrote:
> Implement functionality to receive and forward a new TVLV capable
> multicast packet type.
>=20
> The new batman-adv multicast packet type allows to contain several
> originator destination addresses within a TVLV. Routers on the way will
> potentially split the batman-adv multicast packet and adjust its tracker
> TVLV contents.
>=20
> Routing decisions are still based on the selected BATMAN IV or BATMAN V
> routing algorithm. So this new batman-adv multicast packet type retains
> the same loop-free properties.
>=20
> Also a new OGM multicast TVLV flag is introduced to signal to other
> nodes that we are capable of handling a batman-adv multicast packet and
> multicast tracker TVLV. And that all of our hard interfaces have an MTU
> of at least 1280 bytes (IPv6 minimum MTU), as a simple solution for now
> to avoid MTU issues while forwarding.
>=20
> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>
> ---
>  include/uapi/linux/batadv_packet.h |  48 ++++-
>  net/batman-adv/Makefile            |   1 +
>  net/batman-adv/main.c              |   2 +
>  net/batman-adv/multicast.c         |  48 ++++-
>  net/batman-adv/multicast.h         |   5 +
>  net/batman-adv/multicast_forw.c    | 274 +++++++++++++++++++++++++++++
>  net/batman-adv/originator.c        |   1 +
>  net/batman-adv/routing.c           |  68 +++++++
>  net/batman-adv/routing.h           |  11 ++
>  net/batman-adv/soft-interface.c    |  12 ++
>  net/batman-adv/types.h             |  64 +++++++
>  11 files changed, 523 insertions(+), 11 deletions(-)
>  create mode 100644 net/batman-adv/multicast_forw.c

ecsv/pu: checkpatch ./net/batman-adv/multicast_forw.c
=2D----------------------------------------------------

    CHECK: Macro argument reuse 'num_dests' - possible side-effects?
    #25: FILE: ./net/batman-adv/multicast_forw.c:25:
    +#define batadv_mcast_forw_tracker_for_each_dest(dest, num_dests) \
    +   for (; num_dests; num_dests--, (dest) +=3D ETH_ALEN)
   =20
    total: 0 errors, 0 warnings, 1 checks, 274 lines checked


--nextPart2135843.usQuhbGJ8B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmOqtdgACgkQXYcKB8Em
e0Y41Q/3brMb5wssxj0uEN0drGowpTg/417rFS/1aVt7idRTg2jdTfmzfZJC4p8x
wPOsYAbmRpzgTGODzTXcWD14Hv9p3+zo7xe9NVOVPGkBSuk3BdKSZ0Aj2arefQ4I
cQrGyMucKzne5Mq27F5iVqXVTN4DzbPnl1hqtSgBTjOq+HR04jsmUDMHmA4KgeYk
Y/3mnmv8JuRuSHHU8MoRj6q4jYKCQ8NWdwlA6K49BinW06LkL0hwiNUW8TnqoyEU
RLYgPE6+yNpFot3/UF/kiEJWb13VmwsyCtNWudY4KWJRKox1vshn5qyIW2b0SoCu
dIQrEE3ZsDVeBuvY6zYw0nAb6lxTuBeg43JRH9Cx1m1aa2bQNb3MOtJr9kcp9I6f
uqs19Ar4YIdGUGPVJpZxcvHqBZH7TW7FaZGEWwIC42sTeWOVCUhNv6Jfvc0lcsC0
DOJFWSpCwRG8Uu0VKkicbiE3BmPcKpFdiMk1L95DqdLz47rw1bkZ9vNy/aooiqqX
hcAp4S1iEYxZL9bMDbqh6rZFbvOaWyMWIhHOgn0HmYkak1xaIhKBOTpUrv98JlbI
Vzk3ZnilK8eailkw6vyVL4TM8rwNg2hbjQfvcq9FhM1QT5H+IlJ3rG7LkAJR4B9t
ZpnyJnhfdKu2SVO0oXdo2vGPUDV6UcdabXg2+rN4yVlf9+maqw==
=QqUu
-----END PGP SIGNATURE-----

--nextPart2135843.usQuhbGJ8B--


