Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id D60212A3EC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 May 2019 12:53:26 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 168F582540;
	Sat, 25 May 2019 12:53:20 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 7E67A80A47
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 25 May 2019 12:53:17 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 2568D1100D9;
 Sat, 25 May 2019 12:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558781597;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QoSSontN5RtlLB+UXXI4mIO3JW/a5kj/3uovr3Fz7ak=;
 b=fSzlcKuSZ366+MEiXnQf/PvhBPcb57SiyaAB4FLUe+whPc9e8UQqFLQYJMDKlkhEyFpgaM
 Q+oiXr5ElkqKJGSIlkHVFAKQycWVzF2phf12ZPGZJJZbMUFho/7W/TZk1xweTTNyI2hMVV
 +D7n4Jfln8Jr7vT9lEaULxgOEHd3B4c=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 2/3] batman-adv: allow broadcast packet type with unicast
 destination
Date: Sat, 25 May 2019 12:53:13 +0200
Message-ID: <3815968.0aduZrHPgI@sven-edge>
In-Reply-To: <20190514073859.2053-3-linus.luessing@c0d3.blue>
References: <20190514073859.2053-1-linus.luessing@c0d3.blue>
 <20190514073859.2053-3-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2243799.1lEaUpPoxr";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558781597;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QoSSontN5RtlLB+UXXI4mIO3JW/a5kj/3uovr3Fz7ak=;
 b=ysyFNGHKMABipKee7ZLBMKSKJDw7iNKCY1ou7O5cOitTXtz0T9ZW6qo48+jcNgeyUAWfYC
 KRhOJoMfABIOFftORHAPkO4zHAyDDbcGV0ajZVZCjFpL+gOuxAeWgqCrWt8SvrvmLzrIsE
 wnMvCBgfI9aauMvoA3UBDZsGdiNdDSQ=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558781597; a=rsa-sha256; cv=none;
 b=jWbVUZlP1OsDjHnjU4GFLK3mgRE+XmIMUUC1d+czW2qdJ/GJCXW5bywEeK7ujBr/lkWPIS
 9V7vYtUut0RYqNuqcbmgQlUWQE+hbZ8Kp9hBxMM4jMezJxRXX2zCxiqL0mC8VsRHUuSjAw
 voZhnghio9x2+NskoacHxkZGQB5Nk6s=
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

--nextPart2243799.1lEaUpPoxr
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday, 14 May 2019 09:38:58 CEST Linus L=FCssing wrote:
> +
> +       /**
> +        * BATADV_ORIG_CAPA_HAS_BCAST_URCV: orig node is able to receive
> +        * batman-adv broadcast packets with a unicast ethernet frame
> +        * destination
> +        */
> +       BATADV_ORIG_CAPA_HAS_BCAST_URCV,
>  };

Here is a minor problem with the kerneldoc syntax:

    ./net/batman-adv/types.h:550: warning: Incorrect use of kernel-doc form=
at:          * BATADV_ORIG_CAPA_HAS_BCAST_URCV: orig node is able to receive
    ./net/batman-adv/types.h:555: warning: Enum value 'BATADV_ORIG_CAPA_HAS=
_BCAST_URCV' not described in enum 'batadv_orig_capabilities'

Kind regards,
	Sven
--nextPart2243799.1lEaUpPoxr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzpHpkACgkQXYcKB8Em
e0ZiNA//ZQ1XKgpCSaaaiQgsbCc3i4xZIgU65jABztlm3YYJTQY4NkyKTdszVOI3
dW+PIqMhKxSxezXEQIKoceH6PjyA0MTI5gvanaaH194o1a/z5TV3qFt2dudx+M6v
YCM8r1OufxNsJIMSL7GVUUmQCIfHmMn1X69Jl5s0sxDoxcN4+ErGPIETwPTRw6uK
iWiB6PJiItfad3I+M1D/3fzMZM95E6w0o6oBIZZgrP4HGug29haWimBzs+Zd4ECk
wtVVNyiuP+/jfIh8M/MD6nkb4iUONDMOn+5FgTu8RLiYXvWJIczCtc75alAc9HR/
6HDfcUk9QDUGKzzIyVDyW4QBFPvFAM60Sg6HM08fH3BGwmp1xLCqz5MtoZ28eskc
VWeRV/E65oPtXyYEddd5mOK3j1HOP6BxgK9kkTokJ00VVRmDyq11mcHG3FTaRajd
RffosVxrGw3z9vAWqEPIfd8wS3iNU9vv8JUt3mIKHklr8IdKJJLveNYPB/HwdXy5
qtPsN8j0fSRxOqguobY3fEidny3zCYiqjePEz+Ptg2pEgJ8n8puWVG5FttdIfTq3
NTTx7MYaFR5r+5MI8477KFgyqgJPrrVJP9c6N8Koi7IAN1l3DY7HZ+HclwMN9l5W
GJanrlLrzDpCouSDIODranSLf3db++rEDJCxJqI4DnT8b8jTsgA=
=2z1C
-----END PGP SIGNATURE-----

--nextPart2243799.1lEaUpPoxr--



