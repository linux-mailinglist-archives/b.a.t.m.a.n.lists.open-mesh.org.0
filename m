Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 014DE262E4B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Sep 2020 14:06:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EDF968079A;
	Wed,  9 Sep 2020 14:06:09 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BDB21802B4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Sep 2020 14:06:06 +0200 (CEST)
Received: from prime.localnet (p4fd577c7.dip0.t-ipconnect.de [79.213.119.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 808926206B;
	Wed,  9 Sep 2020 14:06:06 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH maint v2 3/4] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from mesh
Date: Wed, 09 Sep 2020 14:06:06 +0200
Message-ID: <2973088.WcO1NEu1zB@prime>
In-Reply-To: <20200904182803.8428-4-linus.luessing@c0d3.blue>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue> <20200904182803.8428-4-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3649128.l6d68pAvci"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599653166;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KLi0AHweQOYgqiWeasaWPllnY6hTtZezNVtxMk058e4=;
	b=Zlh1mgOMnG7t7GNsrhZXffSuwA6hIXRDGoKqTwWpfXih3zsYO5aQB5JkiblB8ES9h5TnOo
	HTt1cg233exWorI6IHbGtFS6pbOtcNvjNIKHAMYc/zHQnk5JKxQlVrPTUUZdZaBOo5veAu
	/4qUiLGkUn7/SK8BiaCZ/JTTuNMCjSU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599653166; a=rsa-sha256;
	cv=none;
	b=Qp8wklvC5QYlVDr+jUixQhTP7tNtSGfxBGQWnqyRApn3et8ofIOW9eUzxOQLJ7H8doJQiF
	SGkO0QOQvz5cfnJbOfdmP8LhpM0esTSVkf5Mib9SATccGKcjw3F+2jWSdNX6mPMDEffluu
	NdfRKTkG91PNjBUoZz9KiQ5WwAk9Uo8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: FERPYHFITGNOOKJGKFMNGOXDRRY5OXLQ
X-Message-ID-Hash: FERPYHFITGNOOKJGKFMNGOXDRRY5OXLQ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FERPYHFITGNOOKJGKFMNGOXDRRY5OXLQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3649128.l6d68pAvci
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday, September 4, 2020 8:28:02 PM CEST Linus L=FCssing wrote:
> For DHCPv6: This is even trickier... DHCPv6 potentially uses
> non-broadcast multicast addresses. However according to RFC8415, section
> 7.1 it seems that currently multicast is only used from a DHCPv6 client
> to a DHCPv6 server, but not the other way round.
>=20
> Working through the gateway feature part in batadv_interface_tx() it can
> be inferred that a DHCPv6 packet to a DHCP client would have been the only
> option for a DHCPv6 multicast packet to be sent via unicast through the
> gateway feature. Ergo, the newly introduced claim check won't wrongly
> drop a DHCPv6 packet received via the gateway feature either.

I also don't get this part. Maybe it helps if you can explain the two=20
directions (client -> server, server -> client), and in which cases there c=
an=20
be multicast, and then describe why your check is sufficient?

>=20
> Fixes: e32470167379 ("batman-adv: check incoming packet type for bla")
> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>
> ---
>  net/batman-adv/bridge_loop_avoidance.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/net/batman-adv/bridge_loop_avoidance.c
> b/net/batman-adv/bridge_loop_avoidance.c index d8c5d317..9603a6d0 100644
> --- a/net/batman-adv/bridge_loop_avoidance.c
> +++ b/net/batman-adv/bridge_loop_avoidance.c
> @@ -1848,7 +1848,8 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv,
> struct sk_buff *skb,
>=20
>         if (unlikely(atomic_read(&bat_priv->bla.num_requests)))
>                 /* don't allow broadcasts while requests are in flight */
> -               if (is_multicast_ether_addr(ethhdr->h_dest) && is_bcast)
> +               if (is_multicast_ether_addr(ethhdr->h_dest) &&
> +                   (!is_broadcast_ether_addr(ethhdr->h_dest) || is_bcast=
))
>                         goto handled;

Isn't this exactly the same logic as it was before?

is_multicast =3D=3D 0, is_bcast =3D 0 =3D> 0
is_multicast =3D=3D 0, is_bcast =3D 1 =3D> 0
is_multicast =3D=3D 1, is_bcast =3D 0 =3D> 0
is_multicast =3D=3D 1, is_bcast =3D 1 =3D> 1


>=20
>         ether_addr_copy(search_claim.addr, ethhdr->h_source);
> @@ -1885,7 +1886,8 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv,
> struct sk_buff *skb, }
>=20
>         /* if it is a broadcast ... */
> -       if (is_multicast_ether_addr(ethhdr->h_dest) && is_bcast) {
> +       if (is_multicast_ether_addr(ethhdr->h_dest) &&
> +           (!is_broadcast_ether_addr(ethhdr->h_dest) || is_bcast)) {
>                 /* ... drop it. the responsible gateway is in charge.
>                  *
>                  * We need to check is_bcast because with the gateway

Same here.
--nextPart3649128.l6d68pAvci
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl9YxS4ACgkQoSvjmEKS
nqGIThAAgJy9p1rF0pWcg9adkuwiivoCRBYC3s57IN8xs2g+v5xN+SgCKBXSglG9
Osfu6Or4ds1oNUCts7PhRx4/H5l+nFp73netDRVsWyg7V+h6VbeV6McH0p7rCdwV
Uf1Z3BcF7AF7iRSmjpp+DcGKqODI8QqcPqvOz4FKcnjBnXT8H5c0fqQPfL4ifL5n
dfClBgHe1JEdjuWiaoOoow405CNMquOVcSJ7RqxA4eCtO0kEeeCv0MYE9v8KEGdQ
U34g9UO+vk8cTtrZZ3uVHjr715GTxIl5BeN+wHbNh3Caek5f+xdMZDMVXFwBQpei
hX0li8GJih8t7//Hg+HAjMRsIQNhRbrFSfn8PL+XXjgNoWK5nOWxFSLL261O76ph
WbH63KYvpTWU9oiclIBXm8MYG6+VMVmMXTQ6oDnsBM257J4rFoha+OomMuqdgxB5
VAbQZ5TRCO21g2CpuTfYU+OSQd4my/wLAfBsA6DhDoitubGUkCCj3QxvRlagnCDU
y4PHSrZWXeTAKsQKDrvKtLKHhID3zLvCKR64E/N99/irtRndvBMR0R7R21nYzoXL
B+3/zIHTrHGPwx+nIvTVP29U4hwbruOH0jfokTR6/dQbx+oNMVxXTjry9x6kke84
GZXueiPK2yPcyPEFqWNUQwEj5XvSxHUadU9xpfVozpS21bmXESE=
=zd5R
-----END PGP SIGNATURE-----

--nextPart3649128.l6d68pAvci--


