Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DD775656495
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 26 Dec 2022 19:25:15 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C0D7E846CE;
	Mon, 26 Dec 2022 19:25:14 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 639398074A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Dec 2022 19:24:52 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672079092;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/rWbNT+5N4p3TPD6LVjLNXl1sP4rVBh7YmtXZz7U8qY=;
	b=EVl20OVYZ+tilwNq4FY+PRoYRJs34K6U+96dBim9xbcKDYG+fF6MOac7CPA8pSR+fqkgL9
	LqNG+DdYdp1oaP7ajoVWJbUdFp518vqAA6VZqjEdyVUeHaVkaKGmIu4pnSAHn5X50EE41H
	XDY+yiKlyqiV63JAQuKUIY8CRaDGiUE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=bsKEVqFc;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672079092; a=rsa-sha256;
	cv=none;
	b=RiiysDy5LMPCCobqZotTN2ukg8IyBMgVNTouKjm3/Jv8nzmqKSPJrkfM8RKQeLENhK9v/H
	g01LPVaTz8AXSmTEFil1WZCmg45roB6S8fld596SzgqSjoQUmt2DSB7e8MFvyHVXukHXd+
	Er0PtCygJNMZMnbeB5GEL582GPZY6+M=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1672079092;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/rWbNT+5N4p3TPD6LVjLNXl1sP4rVBh7YmtXZz7U8qY=;
	b=bsKEVqFcsS5tV4AmOL/zLhcc+WD9rATqzLbpA+gMPvpcbzVNF4jBKsJ5KWi5quliew/ELm
	8nyUwnSqms2u1rw45ADHMoa1ET/3Zon6yaMg1sShxpFCyz/36CIJUQQC1sNZ28kAIiEChK
	o1syFnL2Db2ZQnNneeq1PTmkLjWciD4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH v2 4/5] batman-adv: mcast: implement multicast packet generation
Date: Mon, 26 Dec 2022 19:24:49 +0100
Message-ID: <3910235.kQq0lBPeGt@sven-l14>
In-Reply-To: <20221226161554.9657-5-linus.luessing@c0d3.blue>
References: <20221226161554.9657-1-linus.luessing@c0d3.blue> <20221226161554.9657-5-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3671786.iIbC2pHGDl"; micalg="pgp-sha512"; protocol="application/pgp-signature"
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-size
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; news-moderation; no-subject; suspicious-header
Message-ID-Hash: GIDCSD6FUV5HXD3FAL3UX6XPZXBOQLTY
X-Message-ID-Hash: GIDCSD6FUV5HXD3FAL3UX6XPZXBOQLTY
X-Mailman-Approved-At: Mon, 26 Dec 2022 18:25:12 +0100
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GIDCSD6FUV5HXD3FAL3UX6XPZXBOQLTY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3671786.iIbC2pHGDl
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Date: Mon, 26 Dec 2022 19:24:49 +0100
Message-ID: <3910235.kQq0lBPeGt@sven-l14>
In-Reply-To: <20221226161554.9657-5-linus.luessing@c0d3.blue>
MIME-Version: 1.0

On Monday, 26 December 2022 17:15:53 CET Linus L=C3=BCssing wrote:
> Implement the preparation of a batman-adv multicast packet and use this
> under certain conditions.
>=20
> For one thing this implements the capability to push a complete
> batman-adv multicast packet header, including a tracker TVLV with all
> originator destinations that have signaled interest in it, onto a given
> ethernet frame with an IP multicast packet inside.
>=20
> For another checks are implemented to determine if encapsulating a
> multicast packet in this new batman-adv multicast packet type and using
> it is feasible. Those checks are:
>=20
> 1) Have all nodes signaled that the are capable of handling the new
>    batman-adv multicast packet type?
> 2) Do all active hard interfaces of all nodes, including us, have an MTU
>    of at least 1280 bytes?
> 3) Does a complete multicast packet header with all its destination
>    addresses fit onto the given multicast packet / ethernet frame and
>    does not exceed 1280 bytes?
>=20
> If all checks passed then the new batman-adv multicast packet type will
> be used for transmission and distribution. Otherwise we fall back to one =
or
> more batman-adv unicast packet transmissions, if possible. Or if not
> possible we will fall back to classic flooding through a batman-adv
> broadcast packet.
>=20
> Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
> ---
>  net/batman-adv/multicast.c      |  79 ++++-
>  net/batman-adv/multicast.h      |  24 +-
>  net/batman-adv/multicast_forw.c | 504 ++++++++++++++++++++++++++++++++
>  net/batman-adv/soft-interface.c |   6 +-
>  net/batman-adv/types.h          |   6 +
>  5 files changed, 611 insertions(+), 8 deletions(-)

Name of failed tests
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

ecsv/pu
=2D------

 * checkpatch ./net/batman-adv/multicast_forw.c
 * headers
 * kerneldoc ./net/batman-adv/multicast_forw.c
 * sparse linux-4.10 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-4.11 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-4.11 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dy
 * sparse linux-4.12 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dn
 * sparse linux-4.14 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dn
 * sparse linux-4.14 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dn
 * sparse linux-4.14 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dy
 * sparse linux-4.14.302 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dy =
MCAST=3Dy BATMAN_V=3Dy
 * sparse linux-4.14.302 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dy =
MCAST=3Dn BATMAN_V=3Dy
 * sparse linux-4.14.302 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3Dn =
MCAST=3Dn BATMAN_V=3Dy
 * sparse linux-4.15 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-4.15 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dy
 * sparse linux-4.17 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-4.17 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-4.17 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-4.18 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dy
 * sparse linux-4.18 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-4.19 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dy
 * sparse linux-4.19 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dy
 * sparse linux-4.19 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-4.19.269 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy =
MCAST=3Dn BATMAN_V=3Dn
 * sparse linux-4.19.269 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dn =
MCAST=3Dy BATMAN_V=3Dy
 * sparse linux-4.19.269 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dy =
MCAST=3Dy BATMAN_V=3Dn
 * sparse linux-4.19.269 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dy =
MCAST=3Dy BATMAN_V=3Dn
 * sparse linux-4.20 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dy
 * sparse linux-4.9 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dn MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-4.9 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-4.9.336 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dn M=
CAST=3Dy BATMAN_V=3Dn
 * sparse linux-4.9.336 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn M=
CAST=3Dn BATMAN_V=3Dy
 * sparse linux-4.9.336 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy M=
CAST=3Dn BATMAN_V=3Dy
 * sparse linux-4.9.336 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dn M=
CAST=3Dn BATMAN_V=3Dy
 * sparse linux-5.0 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3Dy MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-5.0 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dy MCAST=
=3Dn BATMAN_V=3Dn
 * sparse linux-5.1 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dn MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.1 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dn MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-5.10 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dn
 * sparse linux-5.10 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.10 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.10 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.10.159 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dn =
MCAST=3Dn BATMAN_V=3Dy
 * sparse linux-5.10.159 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn =
MCAST=3Dy BATMAN_V=3Dn
 * sparse linux-5.10.159 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dy =
MCAST=3Dy BATMAN_V=3Dn
 * sparse linux-5.10.159 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy =
MCAST=3Dn BATMAN_V=3Dn
 * sparse linux-5.10.159 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn =
MCAST=3Dy BATMAN_V=3Dy
 * sparse linux-5.11 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3Dy MCAS=
T=3Dy BATMAN_V=3Dy
 * sparse linux-5.12 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.12 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dn
 * sparse linux-5.12 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dy
 * sparse linux-5.12 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.13 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dy MCAS=
T=3Dy BATMAN_V=3Dy
 * sparse linux-5.14 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.14 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dy
 * sparse linux-5.15 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.15 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.15 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dy
 * sparse linux-5.15 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dy
 * sparse linux-5.15 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.15 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.15.83 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn M=
CAST=3Dn BATMAN_V=3Dy
 * sparse linux-5.15.83 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dy M=
CAST=3Dn BATMAN_V=3Dn
 * sparse linux-5.15.83 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dn M=
CAST=3Dn BATMAN_V=3Dn
 * sparse linux-5.15.83 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn M=
CAST=3Dy BATMAN_V=3Dn
 * sparse linux-5.15.83 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy M=
CAST=3Dn BATMAN_V=3Dy
 * sparse linux-5.16 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dy
 * sparse linux-5.16 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dn MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.16 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy MCAS=
T=3Dy BATMAN_V=3Dn
 * sparse linux-5.18 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dn
 * sparse linux-5.18 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dy
 * sparse linux-5.18 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dy
 * sparse linux-5.18 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dn MCAS=
T=3Dy BATMAN_V=3Dn
 * sparse linux-5.18 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dy MCAS=
T=3Dn BATMAN_V=3Dn
 * sparse linux-5.2 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dy MCAST=
=3Dy BATMAN_V=3Dy
 * sparse linux-5.2 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dy MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-5.2 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dn MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.3 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.3 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.4 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.4 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dy MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-5.4 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dy MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-5.4.227 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dy M=
CAST=3Dy BATMAN_V=3Dn
 * sparse linux-5.5 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3Dn MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.5 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dn MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.5 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn MCAST=
=3Dn BATMAN_V=3Dn
 * sparse linux-5.5 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.5 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dy MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.5 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dy MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-5.6 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dy MCAST=
=3Dn BATMAN_V=3Dn
 * sparse linux-5.6 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dn MCAST=
=3Dn BATMAN_V=3Dn
 * sparse linux-5.6 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-5.7 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dy MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-5.7 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dn MCAST=
=3Dn BATMAN_V=3Dn
 * sparse linux-5.7 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dy MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.7 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-5.7 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy MCAST=
=3Dy BATMAN_V=3Dy
 * sparse linux-5.7 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dn MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.8 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn MCAST=
=3Dn BATMAN_V=3Dn
 * sparse linux-5.8 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-5.8 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dy MCAST=
=3Dn BATMAN_V=3Dn
 * sparse linux-5.8 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dn MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-5.9 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy MCAST=
=3Dy BATMAN_V=3Dy
 * sparse linux-5.9 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dy MCAST=
=3Dn BATMAN_V=3Dn
 * sparse linux-5.9 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dy MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-6.0 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn MCAST=
=3Dy BATMAN_V=3Dy
 * sparse linux-6.0 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dy MCAST=
=3Dy BATMAN_V=3Dy
 * sparse linux-6.0 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn MCAST=
=3Dn BATMAN_V=3Dy
 * sparse linux-6.0 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy MCAST=
=3Dy BATMAN_V=3Dy
 * sparse linux-6.0.13 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy MC=
AST=3Dy BATMAN_V=3Dy
 * sparse linux-6.1 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dy MCAST=
=3Dy BATMAN_V=3Dn
 * sparse linux-6.1 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dy MCAST=
=3Dy BATMAN_V=3Dy
 * sparse linux-6.1 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dy MCAST=
=3Dn BATMAN_V=3Dn
 * unused_symbols linux-4.11 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-4.12 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-4.14 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-4.14 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-4.14 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=
=3Dn MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-4.14.302 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy=
 NC=3Dy MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-4.14.302 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dy=
 NC=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-4.15 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-4.15 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-4.17 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-4.18 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-4.19 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=
=3Dn MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-4.19 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-4.19.269 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn=
 NC=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-4.19.269 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn=
 NC=3Dn MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-4.19.269 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn=
 NC=3Dy MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-4.19.269 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy=
 NC=3Dy MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-4.20 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=
=3Dn MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-4.9 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-4.9.336 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy =
NC=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-4.9.336 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn =
NC=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.0 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.0 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.1 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.10 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.10 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.10 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.10.159 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy=
 NC=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.10.159 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy=
 NC=3Dy MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.10.159 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn=
 NC=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.10.159 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy=
 NC=3Dn MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-5.11 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=
=3Dy MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-5.12 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.13 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-5.14 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.14 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.15 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.15 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.15.83 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn =
NC=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.15.83 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy =
NC=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.15.83 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn =
NC=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.16 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.18 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.18 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.18 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.18 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.18 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.2 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-5.2 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.2 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.3 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.3 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.4 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.4 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.4 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.4.227 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy =
NC=3Dy MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.5 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.5 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.5 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.5 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.5 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.6 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.7 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.7 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.7 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.7 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-5.7 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.8 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.8 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-5.9 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-5.9 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=
=3Dy MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-5.9 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
 * unused_symbols linux-5.9 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
 * unused_symbols linux-6.0 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dn MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-6.0 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-6.0 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-6.0.13 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn N=
C=3Dy MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-6.1 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=
=3Dy MCAST=3Dy BATMAN_V=3Dn
 * unused_symbols linux-6.1 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=
=3Dy MCAST=3Dy BATMAN_V=3Dy
 * unused_symbols linux-6.1 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn


Output of different failed tests
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

ecsv/pu: checkpatch ./net/batman-adv/multicast_forw.c
=2D----------------------------------------------------

    CHECK: Macro argument reuse 'num_dests' - possible side-effects?
    #24: FILE: ./net/batman-adv/multicast_forw.c:24:
    +#define batadv_mcast_forw_tracker_for_each_dest(dest, num_dests) \
    +   for (; num_dests; num_dests--, (dest) +=3D ETH_ALEN)
   =20
    total: 0 errors, 0 warnings, 1 checks, 772 lines checked

ecsv/pu: headers
=2D---------------

    diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
    index 85f4b070..2f07a325 100644
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
    diff --git a/net/batman-adv/multicast_forw.c b/net/batman-adv/multicast=
_forw.c
    index 05386847..0d214e0e 100644
    --- a/net/batman-adv/multicast_forw.c
    +++ b/net/batman-adv/multicast_forw.c
    @@ -6,19 +6,29 @@
    =20
     #include "main.h" // IWYU pragma: keep
    =20
    +#include <linux/bug.h>
    +#include <linux/build_bug.h>
    +#include <linux/byteorder/generic.h>
    +#include <linux/errno.h>
     #include <linux/etherdevice.h>
    +#include <linux/gfp.h>
     #include <linux/if_ether.h>
     #include <linux/if_vlan.h>
     #include <linux/ipv6.h>
    +#include <linux/limits.h>
     #include <linux/netdevice.h>
    +#include <linux/rculist.h>
    +#include <linux/rcupdate.h>
     #include <linux/skbuff.h>
    +#include <linux/stddef.h>
    +#include <linux/string.h>
     #include <linux/types.h>
    +#include <uapi/linux/batadv_packet.h>
    =20
     #include "bridge_loop_avoidance.h"
     #include "originator.h"
     #include "routing.h"
     #include "send.h"
    -#include "soft-interface.h"
     #include "translation-table.h"
    =20
     #define batadv_mcast_forw_tracker_for_each_dest(dest, num_dests) \
    diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
    index 0ecb86b3..eb905740 100644
    --- a/net/batman-adv/routing.c
    +++ b/net/batman-adv/routing.c
    @@ -30,7 +30,6 @@
     #include "fragmentation.h"
     #include "hard-interface.h"
     #include "log.h"
    -#include "multicast.h"
     #include "network-coding.h"
     #include "originator.h"
     #include "send.h"
    diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-inte=
rface.c
    index b76b85b2..69334ef8 100644
    --- a/net/batman-adv/soft-interface.c
    +++ b/net/batman-adv/soft-interface.c
    @@ -48,7 +48,6 @@
     #include "hard-interface.h"
     #include "multicast.h"
     #include "network-coding.h"
    -#include "originator.h"
     #include "send.h"
     #include "translation-table.h"
    =20
    diff --git a/net/batman-adv/tvlv.h b/net/batman-adv/tvlv.h
    index d1c4e072..743688d1 100644
    --- a/net/batman-adv/tvlv.h
    +++ b/net/batman-adv/tvlv.h
    @@ -9,6 +9,7 @@
    =20
     #include "main.h" // IWYU pragma: keep
    =20
    +#include <linux/skbuff.h>
     #include <linux/types.h>
     #include <uapi/linux/batadv_packet.h>

ecsv/pu: kerneldoc ./net/batman-adv/multicast_forw.c
=2D---------------------------------------------------

    ./net/batman-adv/multicast_forw.c:72: warning: Function parameter or me=
mber 'bat_priv' not described in 'batadv_mcast_forw_push_dest'
    ./net/batman-adv/multicast_forw.c:385: warning: Function parameter or m=
ember 'bat_priv' not described in 'batadv_mcast_forw_push_tvlvs'

ecsv/pu: sparse linux-4.10 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3D=
n MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:295: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:553: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1490: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.11 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3D=
y MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:295: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:553: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1492: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.11 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3D=
n MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:295: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:553: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1492: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.12 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3D=
n MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:303: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:561: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1512: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.14 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3D=
n MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:315: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:573: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1503: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.14.302 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy N=
C=3Dy MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:330: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:588: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1556: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.14.302 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dy N=
C=3Dy MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:330: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:588: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1556: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.14.302 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dy N=
C=3Dn MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:330: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:588: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1556: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.15 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3D=
y MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:317: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:575: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1508: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.15 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3D=
n MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:317: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:575: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1508: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.17 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3D=
y MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:313: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:559: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1571: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.17 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3D=
n MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:313: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:559: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1571: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.18 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3D=
y MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:318: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:558: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1500: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.18 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3D=
n MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:318: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:558: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1500: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.19 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3D=
n MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:306: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:546: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1517: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.19 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3D=
n MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:306: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:546: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1517: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.19 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3D=
y MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:306: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:546: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1517: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.19.269 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn N=
C=3Dy MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:304: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:544: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1551: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.19.269 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn N=
C=3Dn MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:304: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:544: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1551: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.19.269 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn N=
C=3Dy MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:304: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:544: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1551: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.20 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3D=
n MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:292: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:516: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1563: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.9 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dn=
 MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:294: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:544: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1490: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.9 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:294: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:544: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1490: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.9.336 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:308: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:558: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1544: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.9.336 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:308: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:558: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1544: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-4.9.336 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=
=3Dn MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:308: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:558: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1544: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.0 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3Dy=
 MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:277: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:492: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1553: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.1 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dn=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:276: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:486: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1571: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.1 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dn=
 MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:276: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:486: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1571: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.10 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3D=
n MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:279: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:496: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1805: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.10 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3D=
n MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:279: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:496: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1805: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.10 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3D=
y MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:279: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:496: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1805: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.10.159 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy N=
C=3Dn MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:286: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:503: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1837: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.10.159 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy N=
C=3Dy MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:286: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:503: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1837: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.10.159 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn N=
C=3Dy MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:286: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:503: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1837: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.10.159 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy N=
C=3Dn MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:286: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:503: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1837: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.11 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3D=
y MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:279: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:496: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1800: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.12 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3D=
n MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:271: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:514: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1851: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.12 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dy NC=3D=
n MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:271: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:514: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1851: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.13 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3D=
y MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:272: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:515: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1847: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.14 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3D=
y MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:271: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:514: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1851: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.15 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3D=
y MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:277: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:540: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1868: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.15 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3D=
n MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:277: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:540: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1868: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.15.83 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=
=3Dy MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:289: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:552: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1902: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.15.83 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=
=3Dn MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:289: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:552: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1902: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.15.83 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=
=3Dn MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:289: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:552: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1902: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.16 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3D=
n MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:287: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:549: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1846: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.16 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3D=
y MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:287: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:549: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1846: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.18 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3D=
n MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:288: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:550: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1834: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.18 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3D=
y MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:288: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:550: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1834: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.2 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dy=
 MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:279: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:489: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1595: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.2 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dy=
 MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:279: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:489: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1595: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.2 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dn=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    make[3]: *** [scripts/Makefile.build:279: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:489: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1595: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.3 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:281: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:497: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1624: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.3 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:281: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:497: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1624: _module_/home/build_test/build_env/tmp.HZw=
c7zjBJI] Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.4 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:266: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:509: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1652: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.4 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dy=
 MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:266: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:509: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1652: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.4.227 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=
=3Dy MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:262: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:497: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1739: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.5 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dn=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:266: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:503: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1693: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.5 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn=
 MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:266: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:503: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1693: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.5 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dy=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:266: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:503: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1693: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.5 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dy=
 MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:266: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:503: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1693: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.6 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dy=
 MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:268: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:505: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1683: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.6 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn=
 MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:268: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:505: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1683: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.7 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dy NC=3Dy=
 MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:267: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:488: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1729: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.7 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dn=
 MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:267: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:488: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1729: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.7 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy=
 MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:267: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:488: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1729: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.7 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dn=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:267: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:488: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1729: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.8 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn=
 MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:281: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:497: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1756: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.8 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dy=
 MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44: warning: incorrect type in argument 4 (different base types)
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    expected int ( *mptr )( ... )
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:44:    got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:37: error: not enough arguments for function batadv_tvlv_handler_r=
egister
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:281: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:497: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1756: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.8 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3Dn NC=3Dn=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: typename in expression
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: Expected ; at end of statement
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:26:=
 error: got int
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:17:=
 error: undefined identifier 'u8'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:21:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:17:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:401:64:=
 error: undefined identifier 'src'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:17:=
 error: undefined identifier 'unsigned'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:413:17:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:414:45:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:415:47:=
 error: undefined identifier 'tvlv_offset'
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:281: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:497: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1756: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.9 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dn NC=3Dy=
 MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:283: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:500: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1784: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-5.9 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dy=
 MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:283: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:500: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1784: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-6.0 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=3Dn NC=3Dn=
 MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:249: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:465: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1852: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-6.0 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dn=
 MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c: In fun=
ction =E2=80=98batadv_tvlv_call_handler=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:389:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       u8 *src;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:390:3: =
error: expected expression before =E2=80=98u8=E2=80=99
       u8 *dst;
       ^~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
error: =E2=80=98dst=E2=80=99 undeclared (first use in this function)
       dst =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->dst;
       ^~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:399:3: =
note: each undeclared identifier is reported only once for each function it=
 appears in
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:405:3: =
error: a label can only be part of a statement and a declaration is not a s=
tatement
       unsigned int tvlv_offset;
       ^~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:398:7: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
       src =3D ((struct batadv_unicast_tvlv_packet *)skb->data)->src;
       ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.c:404:2: =
note: here
      case BATADV_MCAST:
      ^~~~
    make[3]: *** [scripts/Makefile.build:249: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/tvlv.o] Error 1
    make[2]: *** [scripts/Makefile.build:465: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1852: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-6.0 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dn NC=3Dy=
 MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:249: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:465: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1852: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-6.1 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3Dy NC=3Dy=
 MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast.c:12=
06:1: warning: symbol 'batadv_mcast_forw_mode_by_count' was not declared. S=
hould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:654:5: warning: symbol 'batadv_mcast_forw_tracker_tvlv_handler' was no=
t declared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:669:14: warning: symbol 'batadv_mcast_forw_packet_hdrlen' was not decl=
ared. Should it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:726:6: warning: symbol 'batadv_mcast_forw_push' was not declared. Shou=
ld it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:760:5: warning: symbol 'batadv_mcast_forw_mcsend' was not declared. Sh=
ould it be static?
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/multicast_forw=
=2Ec:107:12: warning: context imbalance in 'batadv_mcast_forw_push_dests_li=
st' - wrong count at exit
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:250: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:500: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1992: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: sparse linux-6.1 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3Dy NC=3Dy=
 MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec: In function =E2=80=98batadv_nc_mesh_init=E2=80=99:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:163:16: warning: passing argument 4 of =E2=80=98batadv_tvlv_handler_re=
gister=E2=80=99 makes pointer from integer without a cast [-Wint-conversion]
              NULL, BATADV_TVLV_NC, 1,
                    ^~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:37:13: =
note: expected =E2=80=98int (*)(struct batadv_priv *, struct sk_buff *)=E2=
=80=99 but argument is of type =E2=80=98int=E2=80=99
           int (*mptr)(struct batadv_priv *bat_priv,
           ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                struct sk_buff *skb),
                ~~~~~~~~~~~~~~~~~~~~
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/network-coding=
=2Ec:162:2: error: too few arguments to function =E2=80=98batadv_tvlv_handl=
er_register=E2=80=99
      batadv_tvlv_handler_register(bat_priv, batadv_nc_tvlv_ogm_handler_v1,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    In file included from /home/build_test/build_env/tmp.HZwc7zjBJI/net/bat=
man-adv/network-coding.c:45:
    /home/build_test/build_env/tmp.HZwc7zjBJI/net/batman-adv/tvlv.h:27:6: n=
ote: declared here
     void batadv_tvlv_handler_register(struct batadv_priv *bat_priv,
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    make[3]: *** [scripts/Makefile.build:250: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv/network-coding.o] Error 1
    make[2]: *** [scripts/Makefile.build:500: /home/build_test/build_env/tm=
p.HZwc7zjBJI/net/batman-adv] Error 2
    make[1]: *** [Makefile:1992: /home/build_test/build_env/tmp.HZwc7zjBJI]=
 Error 2
    make: *** [Makefile:68: all] Error 2

ecsv/pu: unused_symbols linux-4.14.302 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACI=
NG=3Dy NC=3Dy MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_broadcast_addr
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hash_destroy
    batadv_hash_new
    batadv_hash_set_lock_class
    batadv_mcast_forw_mcsend
    batadv_mcast_forw_mode
    batadv_mcast_forw_mode_by_count
    batadv_mcast_forw_send
    batadv_mcast_purge_orig
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-4.9 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3D=
n NC=3Dy MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_bla_check_bcast_duplist
    batadv_bla_is_backbone_gw
    batadv_bla_rx
    batadv_bla_tx
    batadv_broadcast_addr
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hardif_no_broadcast
    batadv_mcast_forw_mcsend
    batadv_mcast_forw_mode
    batadv_mcast_forw_mode_by_count
    batadv_mcast_forw_send
    batadv_mcast_purge_orig
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-5.0 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dy TRACING=3D=
y NC=3Dy MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_broadcast_addr
    batadv_dat_drop_broadcast_packet
    batadv_dat_snoop_incoming_arp_reply
    batadv_dat_snoop_incoming_arp_request
    batadv_dat_snoop_incoming_dhcp_ack
    batadv_dat_snoop_outgoing_arp_reply
    batadv_dat_snoop_outgoing_arp_request
    batadv_dat_snoop_outgoing_dhcp_ack
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hash_set_lock_class
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-5.15.83 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACIN=
G=3Dn NC=3Dy MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_broadcast_addr
    batadv_event_workqueue
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hardif_no_broadcast
    batadv_hash_destroy
    batadv_hash_new
    batadv_hash_set_lock_class
    batadv_is_my_mac
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-5.18 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dn TRACING=
=3Dn NC=3Dy MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_broadcast_addr
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hash_destroy
    batadv_hash_new
    batadv_hash_set_lock_class
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-5.18 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=
=3Dy NC=3Dy MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_bla_check_bcast_duplist
    batadv_bla_is_backbone_gw
    batadv_bla_is_backbone_gw_orig
    batadv_bla_rx
    batadv_bla_tx
    batadv_broadcast_addr
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hardif_no_broadcast
    batadv_is_my_mac
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-5.3 cfg: BLA=3Dn DAT=3Dn DEBUG=3Dy TRACING=3D=
n NC=3Dy MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_broadcast_addr
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hardif_no_broadcast
    batadv_hash_destroy
    batadv_hash_new
    batadv_hash_set_lock_class
    batadv_mcast_forw_mcsend
    batadv_mcast_forw_mode
    batadv_mcast_forw_mode_by_count
    batadv_mcast_forw_send
    batadv_mcast_purge_orig
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-5.4.227 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACIN=
G=3Dy NC=3Dy MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_broadcast_addr
    batadv_dat_drop_broadcast_packet
    batadv_dat_snoop_incoming_arp_reply
    batadv_dat_snoop_incoming_arp_request
    batadv_dat_snoop_incoming_dhcp_ack
    batadv_dat_snoop_outgoing_arp_reply
    batadv_dat_snoop_outgoing_arp_request
    batadv_dat_snoop_outgoing_dhcp_ack
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hardif_no_broadcast
    batadv_hash_set_lock_class
    batadv_mcast_forw_mcsend
    batadv_mcast_forw_mode
    batadv_mcast_forw_mode_by_count
    batadv_mcast_forw_send
    batadv_mcast_purge_orig
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-5.5 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3D=
y NC=3Dy MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_bla_check_bcast_duplist
    batadv_bla_is_backbone_gw
    batadv_bla_rx
    batadv_bla_tx
    batadv_broadcast_addr
    batadv_dat_drop_broadcast_packet
    batadv_dat_snoop_incoming_arp_reply
    batadv_dat_snoop_incoming_arp_request
    batadv_dat_snoop_incoming_dhcp_ack
    batadv_dat_snoop_outgoing_arp_reply
    batadv_dat_snoop_outgoing_arp_request
    batadv_dat_snoop_outgoing_dhcp_ack
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hardif_no_broadcast
    batadv_mcast_forw_mcsend
    batadv_mcast_forw_mode
    batadv_mcast_forw_mode_by_count
    batadv_mcast_forw_send
    batadv_mcast_purge_orig
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-5.5 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dy TRACING=3D=
n NC=3Dy MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_bla_check_bcast_duplist
    batadv_bla_is_backbone_gw
    batadv_bla_is_backbone_gw_orig
    batadv_bla_rx
    batadv_bla_tx
    batadv_broadcast_addr
    batadv_dat_drop_broadcast_packet
    batadv_dat_snoop_incoming_arp_reply
    batadv_dat_snoop_incoming_arp_request
    batadv_dat_snoop_incoming_dhcp_ack
    batadv_dat_snoop_outgoing_arp_reply
    batadv_dat_snoop_outgoing_arp_request
    batadv_dat_snoop_outgoing_dhcp_ack
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-5.7 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3D=
y NC=3Dn MCAST=3Dy BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    batadv_mcast_forw_mode_by_count

ecsv/pu: unused_symbols linux-5.9 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=3D=
y NC=3Dy MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_broadcast_addr
    batadv_dat_drop_broadcast_packet
    batadv_dat_snoop_incoming_arp_reply
    batadv_dat_snoop_incoming_arp_request
    batadv_dat_snoop_incoming_dhcp_ack
    batadv_dat_snoop_outgoing_arp_reply
    batadv_dat_snoop_outgoing_arp_request
    batadv_dat_snoop_outgoing_dhcp_ack
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hardif_no_broadcast
    batadv_hash_set_lock_class
    batadv_is_my_mac
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-5.9 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3D=
y NC=3Dy MCAST=3Dn BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_bla_check_bcast_duplist
    batadv_bla_is_backbone_gw
    batadv_bla_is_backbone_gw_orig
    batadv_bla_rx
    batadv_bla_tx
    batadv_broadcast_addr
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-6.0 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3D=
n NC=3Dy MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_bla_check_bcast_duplist
    batadv_bla_is_backbone_gw
    batadv_bla_rx
    batadv_bla_tx
    batadv_broadcast_addr
    batadv_dat_drop_broadcast_packet
    batadv_dat_snoop_incoming_arp_reply
    batadv_dat_snoop_incoming_arp_request
    batadv_dat_snoop_incoming_dhcp_ack
    batadv_dat_snoop_outgoing_arp_reply
    batadv_dat_snoop_outgoing_arp_request
    batadv_dat_snoop_outgoing_dhcp_ack
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_mcast_forw_mcsend
    batadv_mcast_forw_mode
    batadv_mcast_forw_mode_by_count
    batadv_mcast_forw_send
    batadv_mcast_purge_orig
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-6.0.13 cfg: BLA=3Dn DAT=3Dy DEBUG=3Dn TRACING=
=3Dn NC=3Dy MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_broadcast_addr
    batadv_dat_drop_broadcast_packet
    batadv_dat_snoop_incoming_arp_reply
    batadv_dat_snoop_incoming_arp_request
    batadv_dat_snoop_incoming_dhcp_ack
    batadv_dat_snoop_outgoing_arp_reply
    batadv_dat_snoop_outgoing_arp_request
    batadv_dat_snoop_outgoing_dhcp_ack
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hash_set_lock_class
    batadv_mcast_forw_mcsend
    batadv_mcast_forw_mode
    batadv_mcast_forw_mode_by_count
    batadv_mcast_forw_send
    batadv_mcast_purge_orig
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-6.1 cfg: BLA=3Dy DAT=3Dn DEBUG=3Dy TRACING=3D=
y NC=3Dy MCAST=3Dy BATMAN_V=3Dy
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_bla_check_bcast_duplist
    batadv_bla_is_backbone_gw
    batadv_bla_rx
    batadv_bla_tx
    batadv_broadcast_addr
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_mcast_forw_mcsend
    batadv_mcast_forw_mode
    batadv_mcast_forw_mode_by_count
    batadv_mcast_forw_send
    batadv_mcast_purge_orig
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get

ecsv/pu: unused_symbols linux-6.1 cfg: BLA=3Dy DAT=3Dy DEBUG=3Dn TRACING=3D=
y NC=3Dy MCAST=3Dn BATMAN_V=3Dn
=2D------------------------------------------------------------------------=
=2D-

    batadv_algo_get
    batadv_algo_select
    batadv_bla_check_bcast_duplist
    batadv_bla_is_backbone_gw
    batadv_bla_is_backbone_gw_orig
    batadv_bla_rx
    batadv_bla_tx
    batadv_broadcast_addr
    batadv_dat_drop_broadcast_packet
    batadv_dat_snoop_incoming_arp_reply
    batadv_dat_snoop_incoming_arp_request
    batadv_dat_snoop_incoming_dhcp_ack
    batadv_dat_snoop_outgoing_arp_reply
    batadv_dat_snoop_outgoing_arp_request
    batadv_dat_snoop_outgoing_dhcp_ack
    batadv_frag_purge_orig
    batadv_frag_send_packet
    batadv_frag_skb_buffer
    batadv_frag_skb_fwd
    batadv_gw_dhcp_recipient_get
    batadv_gw_election
    batadv_gw_get_selected_orig
    batadv_gw_node_delete
    batadv_gw_out_of_range
    batadv_hardif_disable_interface
    batadv_hardif_enable_interface
    batadv_hardif_min_mtu
    batadv_hardif_no_broadcast
    batadv_is_my_mac
    batadv_mesh_free
    batadv_mesh_init
    batadv_netlink_tpmeter_notify
    batadv_routing_algo
    batadv_skb_set_priority
    batadv_vlan_ap_isola_get


Statistics
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

ecsv/pu
=2D------

=46ailed tests:               193
Started build tests:        111
Tested Linux versions:       37
Tested configs:              79

--nextPart3671786.iIbC2pHGDl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmOp5vEACgkQXYcKB8Em
e0bbUA//XwkPM/WG3BZpFzrwmei6GmStltxHhdsQF1vGeHs0ici7lLIvBBTizw92
dFzJo4+vVzzLAmotPHYYKzB6ZZyMhKp1IbTbHagaBRuFwmQ4oc+2WbjT9ZeqBseI
porBShpOA4h0ywU/14w9sjU+U+nvdRRuE9w5kHOOqptBLU1AaaGOx22pp6AffAYw
rVfHrjbiOXRNXxRFFsrSPeoQWkB4iRLq41y4zaUoHW16yNinBz4plXQ+KNlhTBXt
r2Ftv7R8YY04l9E1VgXInR6xD+XmPUE2Ft1/VC6nYc6u6EffmMBgcmOT+BIkuWtN
mI8ftqC7P860oNDdCakZQbLEvYBjYI2ptN54MJwatpRpVaePiLUAXj6qT2EUzQYo
Xy5mKUgi2pXhdggVRQ53kG7V7KkVtzAA/EPTJiQQhE0Lwv05Ygb2cc5iiF8lxcOJ
0gJ85Y+lPtLcE/lv6QK3S2tjDxz8igt62CPV+j/KVQiaPsgj7bDmn+lIR74+m7MD
MkbtKNhSeih6tm5IcLsuA3EUAvqnaTPsVSOBhkr34v4jwJoZLVSp1dZKTMkHk+UV
a0Jn+Uw1NYKlAq6k8+NFPMeiQZYhoTYcfEQwkSoSiIoVdkiulsfgU3is9DKYmIWs
d2GWmV5r342TmgPfxjrbwKoxvU3s38kX4WEu1TMJ3lzHb77AqAs=
=k3F/
-----END PGP SIGNATURE-----

--nextPart3671786.iIbC2pHGDl--


