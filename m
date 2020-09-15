Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 72979269F80
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 15 Sep 2020 09:18:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 44EEF807DE;
	Tue, 15 Sep 2020 09:18:58 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1B574803C2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 15 Sep 2020 09:18:55 +0200 (CEST)
Received: from prime.localnet (p200300c5971ebed031fa7ec76579f51d.dip0.t-ipconnect.de [IPv6:2003:c5:971e:bed0:31fa:7ec7:6579:f51d])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id D89846206B;
	Tue, 15 Sep 2020 09:18:54 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH maint v5 3/3] batman-adv: mcast: fix duplicate mcast packets from BLA backbone to mesh
Date: Tue, 15 Sep 2020 09:18:54 +0200
Message-ID: <3934010.JrcoLyHp49@prime>
In-Reply-To: <20200914195347.10505-4-linus.luessing@c0d3.blue>
References: <20200914195347.10505-1-linus.luessing@c0d3.blue> <20200914195347.10505-4-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4484652.MzNRljx7NK"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600154335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RLKm9G3XwXVZZ7H3zzlDUGxsYOZW6c7R3YgNUd5gBPs=;
	b=viJkhrSl3US/XM8YO2Hss4dhrNraYR9CcSgKlPfAKN25yTMABq2xAbYRXLDdOgt5ON4XRg
	NOIwd8Ss0/59Tl7HSwzzEqUKV390iAJuiB3maBaG/+HsLv+UAg7WQdPh5FQd9fS0A6UT/Q
	ZATY1Ir5Ry33u0xUxaZL8n7e4LzNGkA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600154335; a=rsa-sha256;
	cv=none;
	b=aT2ounuzEeSY0dAYbVN4MRgt0Qng7k2lO4CTx1+4TdGxqWUvTVoCKC/bAwKYEwMA70780W
	8nyFg4LtPC/eNFhdbL3RJfBs9DV/FrK86vShbKHtV9iZcnaABQ573NzMIlJmmiiWiIQhAh
	IlN6s0K5zozSeBF/H64PXuifEpz2sO8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: JGA3ZBUP7MU6MHO35KEGCEXM6T6ULNC7
X-Message-ID-Hash: JGA3ZBUP7MU6MHO35KEGCEXM6T6ULNC7
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JGA3ZBUP7MU6MHO35KEGCEXM6T6ULNC7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4484652.MzNRljx7NK
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday, September 14, 2020 9:53:47 PM CEST Linus L=FCssing wrote:
> Scenario:
> * Multicast frame send from BLA backbone gateways (multiple nodes
>   with their bat0 bridged together, with BLA enabled) sharing the same
>   LAN to nodes in the mesh
>=20
> Issue:
> * Nodes receive the frame multiple times on bat0 from the mesh,
>   once from each foreign BLA backbone gateway which shares the same LAN
>   with another
>=20
> For multicast frames via batman-adv broadcast packets coming from the
> same BLA backbone but from different backbone gateways duplicates are
> currently detected via a CRC history of previously received packets.
>=20
> However this CRC so far was not performed for multicast frames received
> via batman-adv unicast packets. Fixing this by appyling the same check
> for such packets, too.
>=20
> Room for improvements in the future: Ideally we would introduce the
> possibility to not only claim a client, but a complete originator, too.
> This would allow us to only send a multicast-in-unicast packet from a BLA
> backbone gateway claiming the node and by that avoid potential redundant
> transmissions in the first place.
>=20
> Fixes: e5cf86d30a9b ("batman-adv: add broadcast duplicate check")
> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>
> ---
>  net/batman-adv/bridge_loop_avoidance.c | 107 +++++++++++++++++++++----
>  1 file changed, 92 insertions(+), 15 deletions(-)
>=20
> diff --git a/net/batman-adv/bridge_loop_avoidance.c
> b/net/batman-adv/bridge_loop_avoidance.c index 3d2a66f2..e4f66dd8 100644
> --- a/net/batman-adv/bridge_loop_avoidance.c
> +++ b/net/batman-adv/bridge_loop_avoidance.c
> @@ -1580,13 +1580,16 @@ int batadv_bla_init(struct batadv_priv *bat_priv)
>  }
>=20
>  /**
> - * batadv_bla_check_bcast_duplist() - Check if a frame is in the broadca=
st
> dup. + * batadv_bla_check_duplist() - Check if a frame is in the broadcast
> dup. * @bat_priv: the bat priv with all the soft interface information - *
> @skb: contains the bcast_packet to be checked
> + * @skb: contains the multicast packet to be checked
> + * @payload_ptr: pointer to position inside the head buffer of the skb
> + *  marking the start of the data to be CRC'ed
> + * @orig: originator mac address, NULL if unknown
>   *
> - * check if it is on our broadcast list. Another gateway might
> - * have sent the same packet because it is connected to the same backbon=
e,
> - * so we have to remove this duplicate.
> + * Check if it is on our broadcast list. Another gateway might have sent
> the + * same packet because it is connected to the same backbone, so we
> have to + * remove this duplicate.
>   *
>   * This is performed by checking the CRC, which will tell us
>   * with a good chance that it is the same packet. If it is furthermore
> @@ -1595,23 +1598,23 @@ int batadv_bla_init(struct batadv_priv *bat_priv)
>   *
>   * Return: true if a packet is in the duplicate list, false otherwise.
>   */
> -bool batadv_bla_check_bcast_duplist(struct batadv_priv *bat_priv,
> -				    struct sk_buff *skb)
> +static bool batadv_bla_check_duplist(struct batadv_priv *bat_priv,
> +				     struct sk_buff *skb, u8 *payload_ptr,
> +				     const u8 *orig)
>  {
> +	struct batadv_bcast_duplist_entry *entry;
> +	bool ret =3D false;
>  	int i, curr;
>  	__be32 crc;
> -	struct batadv_bcast_packet *bcast_packet;
> -	struct batadv_bcast_duplist_entry *entry;
> -	bool ret =3D false;
> -
> -	bcast_packet =3D (struct batadv_bcast_packet *)skb->data;
>=20
>  	/* calculate the crc ... */
> -	crc =3D batadv_skb_crc32(skb, (u8 *)(bcast_packet + 1));
> +	crc =3D batadv_skb_crc32(skb, payload_ptr);
>=20
>  	spin_lock_bh(&bat_priv->bla.bcast_duplist_lock);
>=20
>  	for (i =3D 0; i < BATADV_DUPLIST_SIZE; i++) {
> +		bool is_from_same_orig =3D false;
> +
>  		curr =3D (bat_priv->bla.bcast_duplist_curr + i);
>  		curr %=3D BATADV_DUPLIST_SIZE;
>  		entry =3D &bat_priv->bla.bcast_duplist[curr];
> @@ -1626,7 +1629,24 @@ bool batadv_bla_check_bcast_duplist(struct
> batadv_priv *bat_priv, if (entry->crc !=3D crc)
>  			continue;
>=20
> -		if (batadv_compare_eth(entry->orig, bcast_packet->orig))
> +		/* are the originators both known and not anonymous? */
> +		if (orig && !is_zero_ether_addr(orig) &&
> +		    !is_zero_ether_addr(entry->orig)) {
> +			/* if known, check if the new frame came from
> +			 * the same originator
> +			 */
> +			if (batadv_compare_eth(entry->orig, orig))
> +				is_from_same_orig =3D true;
> +		}
> +
> +		/* we are safe to take identical frames from the
> +		 * same orig, if known, as multiplications in
> +		 * the mesh are detected via the (orig, seqno) pair;
> +		 * so we can be a bit more liberal here and allow
> +		 * identical frames from the same orig which the source
> +		 * host might have sent multiple times on purpose
> +		 */
> +		if (is_from_same_orig)
>  			continue;
>=20

I think this "is_from_same_orig" variable is redundant, it's not used again=
 so=20
you could continue directly above.

The rest looks good.

Cheers,
      Simon


>  		/* this entry seems to match: same crc, not too old,
> @@ -1643,7 +1663,14 @@ bool batadv_bla_check_bcast_duplist(struct
> batadv_priv *bat_priv, entry =3D &bat_priv->bla.bcast_duplist[curr];
>  	entry->crc =3D crc;
>  	entry->entrytime =3D jiffies;
> -	ether_addr_copy(entry->orig, bcast_packet->orig);
> +
> +	/* known originator */
> +	if (orig)
> +		ether_addr_copy(entry->orig, orig);
> +	/* anonymous originator */
> +	else
> +		eth_zero_addr(entry->orig);
> +
>  	bat_priv->bla.bcast_duplist_curr =3D curr;
>=20
>  out:
> @@ -1652,6 +1679,48 @@ bool batadv_bla_check_bcast_duplist(struct
> batadv_priv *bat_priv, return ret;
>  }
>=20
> +/**
> + * batadv_bla_check_ucast_duplist() - Check if a frame is in the broadca=
st
> dup. + * @bat_priv: the bat priv with all the soft interface information +
> * @skb: contains the multicast packet to be checked, decapsulated from a +
> *  unicast_packet
> + *
> + * Check if it is on our broadcast list. Another gateway might have sent
> the + * same packet because it is connected to the same backbone, so we
> have to + * remove this duplicate.
> + *
> + * Return: true if a packet is in the duplicate list, false otherwise.
> + */
> +static bool batadv_bla_check_ucast_duplist(struct batadv_priv *bat_priv,
> +					   struct sk_buff *skb)
> +{
> +	return batadv_bla_check_duplist(bat_priv, skb, (u8 *)skb->data, NULL);
> +}
> +
> +/**
> + * batadv_bla_check_bcast_duplist() - Check if a frame is in the broadca=
st
> dup. + * @bat_priv: the bat priv with all the soft interface information +
> * @skb: contains the bcast_packet to be checked
> + *
> + * Check if it is on our broadcast list. Another gateway might have sent
> the + * same packet because it is connected to the same backbone, so we
> have to + * remove this duplicate.
> + *
> + * Return: true if a packet is in the duplicate list, false otherwise.
> + */
> +bool batadv_bla_check_bcast_duplist(struct batadv_priv *bat_priv,
> +				    struct sk_buff *skb)
> +{
> +	struct batadv_bcast_packet *bcast_packet;
> +	u8 *payload_ptr;
> +
> +	bcast_packet =3D (struct batadv_bcast_packet *)skb->data;
> +	payload_ptr =3D (u8 *)(bcast_packet + 1);
> +
> +	return batadv_bla_check_duplist(bat_priv, skb, payload_ptr,
> +					bcast_packet->orig);
> +}
> +
>  /**
>   * batadv_bla_is_backbone_gw_orig() - Check if the originator is a gatew=
ay
> for *  the VLAN identified by vid.
> @@ -1866,6 +1935,14 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv,
> struct sk_buff *skb, packet_type =3D=3D BATADV_UNICAST)
>  				goto handled;
>=20
> +	/* potential duplicates from foreign BLA backbone gateways via
> +	 * multicast-in-unicast packets
> +	 */
> +	if (is_multicast_ether_addr(ethhdr->h_dest) &&
> +	    packet_type =3D=3D BATADV_UNICAST &&
> +	    batadv_bla_check_ucast_duplist(bat_priv, skb))
> +		goto handled;
> +
>  	ether_addr_copy(search_claim.addr, ethhdr->h_source);
>  	search_claim.vid =3D vid;
>  	claim =3D batadv_claim_hash_find(bat_priv, &search_claim);


--nextPart4484652.MzNRljx7NK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl9gat4ACgkQoSvjmEKS
nqHP1Q/+JOyoiEjUprsICWIXuQGqUjoW2HLPrS2pKRzP1MmzEotKWX3jBI+iGCPB
L7Lm0fiCZgblLRBt1A8jI21RMeOk+T869quk/SQAej53eJYI4b9y/CH+MmCKZQMV
6sRFJ3aux6Zd54vtppfQLWYTOHQP+ToCuuNEPMFsWtkPYl//A8pHRRIYvFw0vsrg
2unNAVs3oD9Shskap5Fjo3vLg8ByjvOI0eJtMKpllSAgMW6qlU4pRxT2n6Gy3pqV
JBQo6P0NcVzS7hAjdskujvI5yB1lmcUHMj18u1r/wyW6Bm06w2j0fysNSB9VtI86
N36sAuSQe8dgoYGyWINWXxOOxnOygYAwnHc6AWlOrWMDkLlx77fu7iPzU0sxrqfs
RGCMh6rE+AmRLQPisVYUVF43c/o+J5nI5gP6SVZWo5G1Yqk577SnFwTaq2I+pYdG
ie6Q8qrDBMN/9sTDEnLuVf8dzb77xne/PovtNkJIOk8PBJI0yDv1jSSzh9kO4VzY
wJT5lnN1LDtlKZZIxeKkJ761dv+PBqJli8cVkMEv1wrwh51mexNsOBXUZcHMbA6g
K3knEj6Ap5ZHRRRZ51rH/Sr1yCVPVHyWfMIBdAq8+vedl5CB3dZgfT2CBcwSK7vk
5pTWGugbB7Dx/uUajaTMsSJZ2/YsT3JI9fa0r8RAj3S2Qwli9J8=
=rrbf
-----END PGP SIGNATURE-----

--nextPart4484652.MzNRljx7NK--


