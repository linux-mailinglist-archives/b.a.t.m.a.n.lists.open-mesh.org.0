Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id D262D37882
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  6 Jun 2019 17:48:44 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id AFDD181C5F;
	Thu,  6 Jun 2019 17:48:39 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 9242880604
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  6 Jun 2019 17:48:35 +0200 (CEST)
Received: from bentobox.localnet (p5DD32BFA.dip0.t-ipconnect.de
 [93.211.43.250])
 by durin.narfation.org (Postfix) with ESMTPSA id D28D51100DE;
 Thu,  6 Jun 2019 17:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1559836115;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yRvP61X/+uySIoKEZ4kDNEZ5HNAWIa16zHPATTX+61M=;
 b=QpBgz3/S4XPsFgSOzeYpwbr9MHhN+s1pzk5JvJPoKyB3msuTfWyrGllKbg0jSj4kH+wWCn
 4YBku5MVQU6DKktmPxPPt0IQ91TFDx95wtQheGM2CYcZ0ueMCf8B5r5+5XR01EikILHIFb
 259KGsJe5iINcXNwf8tFmwFHFAIfNKM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v3 1/2] batman-adv: mcast: detect,
 distribute and maintain multicast router presence
Date: Thu, 06 Jun 2019 17:48:32 +0200
Message-ID: <3461137.lo7lFcuFkP@bentobox>
In-Reply-To: <20190526164829.4247-2-linus.luessing@c0d3.blue>
References: <20190526164829.4247-1-linus.luessing@c0d3.blue>
 <20190526164829.4247-2-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1647917.XAAxudkzKQ";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1559836115;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yRvP61X/+uySIoKEZ4kDNEZ5HNAWIa16zHPATTX+61M=;
 b=Wh3m5KoAhjhJjzJaAHFeUDbSMmh9w4pIn5XhEzeAhiZlM7Z6ITv0pMRATSefSPMCo916U/
 sHspn43NE/ObVlsxhnuLHO3Chw99kn36fGrCQ5Re4eT9k/f8PgHOrdVxW10X3bQ2ZkcZH1
 2ZdRLkUe5sqErUE75W5RMAJDWS66CWw=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1559836115; a=rsa-sha256; cv=none;
 b=ANLrLJ7mvHJ2RUjHtOBHmoKNd85rIsTx4xq5Hd8G0wkHTG1x6Ut9aGIhnLxDxhMaTndrVc
 1xK2qYM5waokwmKTROtrL9LExrpgc43co+Czps9i2chMvdShW2jIUrNSB+gSWV5iFPjOlD
 u4IIqFhLsACC9mOuH09nr3UgQnhemXE=
ARC-Authentication-Results: i=1; durin.narfation.org;
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

--nextPart1647917.XAAxudkzKQ
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sunday, 26 May 2019 18:48:28 CEST Linus L=FCssing wrote:
> If a multicast router is detected then this is signalized via the new
> BATADV_MCAST_WANT_ALL_RTR4 and BATADV_MCAST_WANT_ALL_RTR6
> multicast tvlv flags (which are sent flipped over the wire for backwards
> compatibility - so that old nodes will always have them "set").
[...]
> @@ -691,7 +868,12 @@ batadv_mcast_mla_flags_update(struct batadv_priv=20
*bat_priv,
>         batadv_mcast_bridge_log(bat_priv, flags);
>         batadv_mcast_flags_log(bat_priv, flags->tvlv_flags);
> =20
> +       /* toggle WANT_ALL_RTR flags as they are sent flipped on the
> +        * wire for backwards compatibility
> +        */
>         mcast_data.flags =3D flags->tvlv_flags;
> +       mcast_data.flags ^=3D BATADV_MCAST_WANT_ALL_RTR4;
> +       mcast_data.flags ^=3D BATADV_MCAST_WANT_ALL_RTR6;
>         memset(mcast_data.reserved, 0, sizeof(mcast_data.reserved));

Ehrm, this sounds like it is a good way to confuse people. Have a packet fi=
eld=20
which is called BATADV_MCAST_WANT_ALL_RTR4 but it actually means that it=20
doesn't have BATADV_MCAST_WANT_ALL_RTR4. So maybe we should call this=20
differently in batadv_packet.h's enum batadv_mcast_flags.=20
BATADV_MCAST_WANT_ALL_RTR4 -> BATADV_MCAST_WANT_NO_RTR4? And then switch th=
e=20
logic in batadv_mcast_mla_rtr_flags_softif_get_ipv*,=20
batadv_mcast_mla_rtr_flags_bridge_get, batadv_mcast_mla_rtr_flags_bridge_ge=
t,=20
batadv_mcast_mla_softif_get_ipv*, ....

Or is it really necessary to have this enabled for older nodes?

Kind regards,
	Sven
--nextPart1647917.XAAxudkzKQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlz5NdAACgkQXYcKB8Em
e0YSGhAAhIJsS4rjd6+a4p4i6mcBNNPBZQkHnzDfUjZe7iASmA/het2sAyfzvL2G
CEkLKeamdLuM4n0SNrSRMB2izZ3itxhxzs/a7D4JQ9DEFu4y7z6o/h4JDlm/fr9c
D3NIk6ZVY1ULcxTAuUfS0bOcd3KYi1Ff4GV9HSASxtgujkXS71EGS2Vg3m9tN6Ux
rI42rQ/3GUJJNL7YjUYS+Yry4fGEp1wu2iFpNyOBiugiXw1sbNacsIpAbJWjJOE+
d6kQm7rieDLKd48V/IjKK2siKAg6mUefG1u1xFOkKT8jQ3nElwVfB094RRPz4ppv
gxmm0/Tq+Uqe2LEU7ONDPoHqlhfZWJ8Snx505q4kSgqXdE9xR1GV0MGoWFbJCFCS
FWc6G44E48/YsBXpOcdyUjof4p9+lAxz8ZyGkSm5itJnWVcrWh3E9cDkg5E7pIE8
XVXSNUFpJ804/gSPElM632FfTm/srl7bnM1AwhhGpVhZsGqIFvsd4C8mImoW2f7d
DA22hFGQ+6CyAo58FmJhcGhv/KkOdZbpZ2onWiZu9lgCR0kD1+eWUQymPC0D+Ps/
CsKWw9M5+aZniLiTa5WhbC5QKk3cFymo+B1KZJtEuOm70+kc2NdvSOqr9y+6/wuY
oUlaNCxM5ajhZTB2Zw9+HWmNQWO3Q+GglVCuuzNP1MPTYK+aDlo=
=263C
-----END PGP SIGNATURE-----

--nextPart1647917.XAAxudkzKQ--



