Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id B48432A3DD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 May 2019 12:02:38 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id AA3CB81976;
	Sat, 25 May 2019 12:02:31 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 525C88050F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 25 May 2019 12:02:25 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 0D5D61100D9;
 Sat, 25 May 2019 12:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558778544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mnQ6sp6AvWNEIFLuVKdVOXxtAKJ3zX9DZlrWb7YXnq4=;
 b=tlD0Dgj+l50UYRgipJV2FhghklcHBQIKE+H/JaATflXm7hZ51XKLiXla8HB+zTwKvBgfDp
 uTbQ4Y0O0eSMqq0CWzcFPMA/vxp1uTPFg/KWBzhvyMzZqTuLoCY+3yk8DodJLopz3ZQdUe
 Pk6lw5gEjo9JvxjYKoPnE4hmFJEJ9u4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 2/3] batman-adv: allow broadcast packet type with unicast
 destination
Date: Sat, 25 May 2019 12:02:21 +0200
Message-ID: <1595745.ECTONxmloG@sven-edge>
In-Reply-To: <20190514073859.2053-3-linus.luessing@c0d3.blue>
References: <20190514073859.2053-1-linus.luessing@c0d3.blue>
 <20190514073859.2053-3-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5303869.HJmJbgv1N6";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558778544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mnQ6sp6AvWNEIFLuVKdVOXxtAKJ3zX9DZlrWb7YXnq4=;
 b=sCLI/NP+yy82pYaNsrpCtp/NTcaONknpk1rX3w5bNFj1Zzth/iUiEItW9xZdV/peLWroLs
 A0eqUXfdoru+IZryAFwrdofLsXwh/ud/M4A3XW6GReThO7UAOUF4zYGfandIi84mjw2QT/
 CUFZlCCKm6OX31ZOj8wY91C5T5Yy2YY=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558778544; a=rsa-sha256; cv=none;
 b=PWdllsDJxETYukCfB9lbpMWOLEvrIRtQZMpl+RdbqpV3cZGOflP31KDRdyJ3RtyklGtlQq
 PgfLlQM9gF/fbhv3/SPJKLDBL9MD4WCGkE60ombEVqGVSszkj9t3mPTyBFaQA+LvgQf19s
 kQHBbd4e9gDAkWsaYdjQVS+V/9w+UjA=
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

--nextPart5303869.HJmJbgv1N6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday, 14 May 2019 09:38:58 CEST Linus L=FCssing wrote:
> diff --git a/include/uapi/linux/batadv_packet.h b/include/uapi/linux/bata=
dv_packet.h
> index 4ebc2135..2ec59e4a 100644
> --- a/include/uapi/linux/batadv_packet.h
> +++ b/include/uapi/linux/batadv_packet.h
> @@ -164,6 +164,7 @@ enum batadv_bla_claimframe {
>   * @BATADV_TVLV_TT: translation table tvlv
>   * @BATADV_TVLV_ROAM: roaming advertisement tvlv
>   * @BATADV_TVLV_MCAST: multicast capability tvlv
> + * @BATADV_TVLV_BCAST: broadcast capability tvlv
>   */
>  enum batadv_tvlv_type {
>         BATADV_TVLV_GW          =3D 0x01,
> @@ -172,6 +173,7 @@ enum batadv_tvlv_type {
>         BATADV_TVLV_TT          =3D 0x04,
>         BATADV_TVLV_ROAM        =3D 0x05,
>         BATADV_TVLV_MCAST       =3D 0x06,
> +       BATADV_TVLV_BCAST       =3D 0x07,
>  };

Please submit the batctl td support for this tvlv. It also looks like the=20
mcast tvlv is also missing.

Kind regards,
	Sven
--nextPart5303869.HJmJbgv1N6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzpEq0ACgkQXYcKB8Em
e0ZoIg//ZqFCdonzCWTv8LR93XqFrqk43ylqSjYSx+EO+9uFXdBHKbB2twNOJQrE
dsZTW+65SJ5p3eknBbhAh/sPACHZNIstb64OBy27ZXJ9Yw5SAjbHt0rGLIpNasi6
gdM9gAuJ4OqOPDO35ynZF3ryOODqVrmYh1GA3wOwIpEyXWbURdIXiipot/p5y2XT
t/+jnh3k1qga058pI1OrcVTvd+ncboGT279VEjs6nXrg1wDVkOBnaE+sMszSIQL0
9w6nt2keu2vgGG/pccNr+YUEhJA6zqV8h87PcRhOQomygH6IzEXFvIru5wg/SlEI
2zg2858u1qdDiLXGZ3cok42z9bBllXYpdG5fSHMo7b+Ns0I8vazROKVV39hpLNgI
siH2+Ge5DfXz4C6c+Wc18H785vkp2jLDRhBWAN30j8jYSnsIW+8xKGIEbAVB95g3
kmG5y7r77ChAHQ3LQcFHjckdNZepwYRJ7fUfdFEhO/VXZT9LnZuvHJVllZPJ7rPt
V3MY6u+5HpSew5JPgYPUMSuKn0HaJoTct4glSdzkxXLejiIcyWtQ19WLXTN8HfkI
vYYTjoG9zgs5Ia2XvOrD8Xz3NjtzaFaXYAIlTqKEzaevDIHWn6CddzZS9qgTjFaV
RdqHiL6rD05RDXVsvjRNisysp8qVlA8vmmKdOnCd4E9JY2Nja38=
=2wfO
-----END PGP SIGNATURE-----

--nextPart5303869.HJmJbgv1N6--



