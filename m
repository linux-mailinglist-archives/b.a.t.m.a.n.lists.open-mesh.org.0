Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F113AEA6
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 Jun 2019 07:39:35 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C58D4826C5;
	Mon, 10 Jun 2019 07:39:30 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 796B880A68
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jun 2019 07:39:27 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id C24EC11004F;
 Mon, 10 Jun 2019 07:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560145167;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yHWdxzrEPKNVNYYk/mFiu0NNiKoNtDAwVRHrKE6wprI=;
 b=K/NfQfLK/8OtaulFgioDLmSfwE9SDTSDfmOEcVQVC+4P1mJnSjM6Epu/uSYXZG2+r2ZkNA
 7iJCNWnYTZd6mcNCb836wlw6Un53AptC4w4elw9ozjK9hosZuZ9AlMt1UBtOvL+6ULPveC
 OsHlQkPgxUAc8QczBMFm53etMIQPu74=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v4 1/2] batman-adv: mcast: detect,
 distribute and maintain multicast router presence
Date: Mon, 10 Jun 2019 07:39:17 +0200
Message-ID: <4372099.eJBBBCqJL5@sven-edge>
In-Reply-To: <20190610004535.13725-2-linus.luessing@c0d3.blue>
References: <20190610004535.13725-1-linus.luessing@c0d3.blue>
 <20190610004535.13725-2-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2073850.6bWSJXWb6U";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560145167;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yHWdxzrEPKNVNYYk/mFiu0NNiKoNtDAwVRHrKE6wprI=;
 b=UuMj0xE6REw+t8//KTqB2a9RNupMO4VJ27k0vEUw2HoXW2oSlTyhrdKwfFwpB0qbpUfc3y
 2RJA6qIOnrV4Tn4Hr+TLTZgzpDSyAsywVvjx95H1Z4e/C0wWpr/bANhRPuUJ0juq/YUtom
 8bDXb0XaTyA63iaBrkpR7uA83Jurwq4=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560145167; a=rsa-sha256; cv=none;
 b=dKiBH0thlJRIAiYnQyc98BWh1aDbMRhIdbkCOuQj4W+AHKORypEwDKqHq2krL+JpQbgISu
 yewju0wlvQsNN/HUphCvp8/o31vW5cj9yjqNotfQpPjrZCg0OaPWW0TXAd2iD+OAWX4Kk3
 1DoPIGo3X8Mk4ier8ss0xUPQ0jFx6nE=
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

--nextPart2073850.6bWSJXWb6U
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday, 10 June 2019 02:45:34 CEST Linus L=FCssing wrote:
> If a multicast router is detected then this is signalized via the new
> BATADV_MCAST_WANT_ALL_RTR4 and BATADV_MCAST_WANT_ALL_RTR6
> multicast tvlv flags (which are sent flipped over the wire for backwards
> compatibility - so that old nodes will always have them "set").

This doesn't seem to match the code (see below).

> diff --git a/include/uapi/linux/batadv_packet.h b/include/uapi/linux/bata=
dv_packet.h
> index 4ebc2135..23a43043 100644
> --- a/include/uapi/linux/batadv_packet.h
> +++ b/include/uapi/linux/batadv_packet.h
> @@ -107,12 +107,20 @@ enum batadv_icmp_packettype {
>   * @BATADV_MCAST_WANT_ALL_UNSNOOPABLES: we want all packets destined for
>   *  224.0.0.0/24 or ff02::1
>   * @BATADV_MCAST_WANT_ALL_IPV4: we want all IPv4 multicast packets
> + *  (both link-local and routeable ones)
>   * @BATADV_MCAST_WANT_ALL_IPV6: we want all IPv6 multicast packets
> + *  (both link-local and routable ones)
> + * @BATADV_MCAST_WANT_NO_RTR4: we have no IPv4 multicast router and ther=
efore
> + * only need routeable IPv4 multicast packets we signed up for explicitly
> + * @BATADV_MCAST_WANT_NO_RTR6: we have no IPv6 multicast router and ther=
efore
> + * only need routeable IPv6 multicast packets we signed up for explicitly
>   */
>  enum batadv_mcast_flags {
>         BATADV_MCAST_WANT_ALL_UNSNOOPABLES      =3D 1UL << 0,
>         BATADV_MCAST_WANT_ALL_IPV4              =3D 1UL << 1,
>         BATADV_MCAST_WANT_ALL_IPV6              =3D 1UL << 2,
> +       BATADV_MCAST_WANT_NO_RTR4               =3D 1UL << 3,
> +       BATADV_MCAST_WANT_NO_RTR6               =3D 1UL << 4,
>  };


--nextPart2073850.6bWSJXWb6U
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlz97QUACgkQXYcKB8Em
e0ajqxAAnU7cPbmhTh56EHb81ORS2v7JPlkh6/XgEBnM4a2kuOo6vWBmd14X85gc
NVH1ui1ZoE6DndJrwWzhko22l7rdjmwVlooTL8CZWlVQ/nB72OkZO/lYaLOvKL5A
3i9KvB8w9Ouf1zKSuL8yEFTR5jivj0meTZsBxyW0TPuMOTogpSMTb7RwxScgNxT3
06BVvMg7FoAUKan2XjpTpqCcWm49WAmL7l8eoCfeac8nbJ+a5TPg+Zy803WTEPlJ
MyYfw/F3UrJF/TMqNNEytAEXLROS/rHz1TMMnBMKk7b1KA0TUYPIR6N2+V90SYqc
htJxkL/6o0Vrjf9z3iv9ylXtZAasK/Ls9amdvL74RCeNyYwetyEl1ZbjPHx3Wb/s
bV+UzFev60iadaz+VuIhAbAmNoJNM6ExaTJKjoFwb9Wur+b+0BudEg/Yhb/8s+xj
1lgRQyhFOg04P3Oqof0aHPc0i4qc+4uZnxH5GlKLF3Volcs5/zLDfsWKYbmsCoF5
qIkaF8r5lJN9+ct98XQkEFk99WhT3EcIaInJWi6f/SuvqNEkuv/NPBNyOsBWWk5l
sNpOfIub+Hjp0w0Cl7O4LusMbsr8UON/WlRg3pQwmRmJ6Vt2lK0dV1bqz9YvFRcs
Qs08kIaTOLhYntPb4poxzgQqFCMw2o40ofBh+i2zN5qzEV91SEM=
=oRbX
-----END PGP SIGNATURE-----

--nextPart2073850.6bWSJXWb6U--



