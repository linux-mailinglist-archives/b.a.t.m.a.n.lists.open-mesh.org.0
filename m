Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC3C2A3E4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 May 2019 12:21:42 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0C4EE82528;
	Sat, 25 May 2019 12:21:39 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id DA8448101D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 25 May 2019 12:21:35 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 9A9BF1100D9;
 Sat, 25 May 2019 12:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558779695;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZtpkVNeU1pwKHkHiB4UM3MrVmy/Zx0NckuvBPkhOt0U=;
 b=umirdjdsCPJh5nJof6QfpVOU5UPEneO2vYjwsE+lxIACndSX2/wky8/01y95INc2BcDdjl
 QGkoH7j4PYa/Obl5HU5ysA594zwIVuGQDsrd/JsIKu4MHr/GG1E4bdM23hv5fPK/BTF731
 BN89LvTaPbVyxJx1FoGhrEaVoSOaV10=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 1/3] batman-adv: bcast: queue per interface, if needed
Date: Sat, 25 May 2019 12:21:32 +0200
Message-ID: <3044203.LVLg11BY96@sven-edge>
In-Reply-To: <20190514073859.2053-2-linus.luessing@c0d3.blue>
References: <20190514073859.2053-1-linus.luessing@c0d3.blue>
 <20190514073859.2053-2-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart53774336.mO2rgM72tr";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558779695;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZtpkVNeU1pwKHkHiB4UM3MrVmy/Zx0NckuvBPkhOt0U=;
 b=Kn42RodfSyLJXlvmRKbDciK5PDpxBmiYk9rmGcFzLSTl9AZ6j9jIta5mmi7TUZB4FEs09l
 1t82NHuPgTa+Lnze+QMp/mJw0E5qHugA0RsahIX2Kk4wIg/sYatbcBfWtbAeLKkx6EISF1
 bHiuIsIXpTNGePARdDviXo4X3TRdntE=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558779695; a=rsa-sha256; cv=none;
 b=s3ihYck0prCgeJ791ueVoV2Zq8goYaXPvHOBnspnWAMKlJ3/fK1FkSTv98kQ/e5GTslvrq
 h/zo26dSM13rbtB8kgq80lFJRfGeq/1CIuy+K6ZvFA0atQlw9u+r/ydVpFR0wSIB9gpsq8
 pdWrrSfBRy3yT4iwNmUrVHbpdRLkbCk=
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

--nextPart53774336.mO2rgM72tr
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday, 14 May 2019 09:38:57 CEST Linus L=FCssing wrote:
> which we only broadcast on once the queueing induces an unncessary

unnecessary

>  /**
>   * batadv_forw_packet_bcasts_left() - check if a retransmission is neces=
sary
>   * @forw_packet: the forwarding packet to check
> @@ -811,28 +1031,20 @@ int batadv_add_bcast_packet_to_list(struct batadv_=
priv *bat_priv,
>   * Return: True if (re)transmissions are left, false otherwise.
>   */
>  static bool
> -batadv_forw_packet_bcasts_left(struct batadv_forw_packet *forw_packet,
> -                              struct batadv_hard_iface *hard_iface)
> +batadv_forw_packet_bcasts_left(struct batadv_forw_packet *forw_packet)


/home/sven/tmp/qemu-batman/batman-adv/net/batman-adv/send.c:1191: warning: =
Excess function parameter 'hard_iface' description in 'batadv_forw_packet_b=
casts_left'

Kind regards,
	Sven
--nextPart53774336.mO2rgM72tr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzpFywACgkQXYcKB8Em
e0ahpQ//Y+oUcbv6Co+AxEoeoryFFUU+2H504TI9AEvhufR1MKGE+RhFsPeFuuRg
vQfQPVM3ZoHZOagC/VbdvjZ8Q+tXYhMpog3r9cUcXjDDvIJD7FEC3Loxnn6KxuIB
x+08Zps3gQ6guGNDWlua83ifXSwZKRrOybldKDG5YG9nHCiNhHE1orWJAlTEc0gj
nUyy1m0Duk3p/jPfSoYHoqpMvdrmhrOokc84ym5Shhdu9UCMJLRNx02e2HzGFn9V
C39lfXURBhMBpqk6tbfnPUNcRHDcUBbMgElN2RFa4GSOBmUX1vVKU+dcoTvnmHHL
dC+WgZANUyYH7UN3Ee8CTDquB6Ipc4Z3J476uvWNglNEe6IUMh/5S6DZhhGE5Fn7
XlldzyfARfECUE9yg8NNc0pPfxuMiEvUCofZ/mhvE/x/doaAzMolaBlWGTjKMy7y
dUs4zhq7SH7Pagl1L4vlv6YaqtBfY9gRbuIPvR81iCKlAG3H2go4qSctoqqF+/7U
lgH+Vl1tAoyQ8r24eGHXJpI71dbOx+CsmQgyT4eyVFYwt3o1+stPDNJuNTfk0t14
WzRqyLAsNO7fhlCPfWZnvY8IaZda8/qADY1sBOVSE6XN2hgks5+Z/0/ftQ5aKb5/
9meXPDlBfVL4Q925rSngf7TS2qQzRZVygvoHqsHIPEcXKxnvY5o=
=Zsy0
-----END PGP SIGNATURE-----

--nextPart53774336.mO2rgM72tr--



