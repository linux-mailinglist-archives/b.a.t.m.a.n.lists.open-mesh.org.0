Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4183A4D6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 Jun 2019 12:38:06 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1A97780559;
	Sun,  9 Jun 2019 12:38:01 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 145BE80988
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 Jun 2019 12:37:58 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 773B51100CF;
 Sun,  9 Jun 2019 12:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560076677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZM91SgmiFjBCUvMt+e+nLkpKfEYSlywBvk8nPBbpPYE=;
 b=q8I/73fQUx3Qv54JDonFDQf+Y+LqbMOwwVBKDf6TXnbMBVbHQ3lOqFERMcO1YgMxyhpDuA
 dQGbjluWUM0l/bxKEL5a4VPCirwbji1zvWjXN9usEAcU5PaD8/SfRzeGxYvCaHm+Zx1afA
 wZhbIR+3x0EO9ZaFwBkZ0LEHQKbgtuc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Use wifi rx/tx as fallback throughput
Date: Sun, 09 Jun 2019 12:37:54 +0200
Message-ID: <3378734.H6Auf9Yjlj@sven-edge>
In-Reply-To: <20190609101922.2366-1-treffer@measite.de>
References: <20190609101922.2366-1-treffer@measite.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1677644.0UDt1hXgY8";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560076677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZM91SgmiFjBCUvMt+e+nLkpKfEYSlywBvk8nPBbpPYE=;
 b=dSfDzjcBAesYUlegkdle6n429stEA7jWW+RJhaD9LyaMNrZAhcvcRSVC5flZWtLT2Z8iEr
 QxEvCEcMwOijfcmB2pPUzTXZLwVWAOyJSso56IYM9F9XGppdHuTD9Kb/WqN5lYBwk9bXEt
 XIy1Eyj1KgQHSFh3rWKhVU//xPdxVTs=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560076677; a=rsa-sha256; cv=none;
 b=wc0V+GNyfrFJmnQzOZB7C+c6sk7RfDai8ublAVbawnHmnAbQyqTS3frL6y0DWXG5LdtZEQ
 Xji3Sqhvo54Q4O55YhSOEQResk5YEr4Io7cThCGCvuuHBlgnAHlw8UAehQvK86OgtS5bkz
 W+8xTyqppQmBkkAHyTy1Fg/1UGhJUrk=
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

--nextPart1677644.0UDt1hXgY8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sunday, 9 June 2019 12:19:22 CEST Ren=E9 Treffer wrote:
> @@ -107,10 +107,25 @@ static u32 batadv_v_elp_get_throughput(struct batad=
v_hardif_neigh_node *neigh)
>                 }
>                 if (ret)
>                         goto default_throughput;
> -               if (!(sinfo.filled & BIT(NL80211_STA_INFO_EXPECTED_THROUG=
HPUT)))
> -                       goto default_throughput;
> =20
> -               return sinfo.expected_throughput / 100;
> +               if (sinfo.filled & BIT(NL80211_STA_INFO_EXPECTED_THROUGHP=
UT)) {
> +                       return sinfo.expected_throughput / 100;
> +               }
> +
> +               // try to estimate en expected throughput based on report=
ed rx/tx rates
> +               // 1/3 of tx or 1/3 of the average of rx and tx, whicheve=
r is smaller
> +               if (sinfo.filled & BIT(NL80211_STA_INFO_TX_BITRATE)) {
> +                       tx =3D cfg80211_calculate_bitrate(&sinfo.txrate);
> +                       if (sinfo.filled & BIT(NL80211_STA_INFO_RX_BITRAT=
E)) {
> +                               rx =3D cfg80211_calculate_bitrate(&sinfo.=
rxrate);
> +                               if (rx < tx) {
> +                                       return (rx + tx) / 6;
> +                               }
> +                       }
> +                       return tx / 3;
> +               }
> +
> +               goto default_throughput;
>         }
> =20
>         /* if not a wifi interface, check if this device provides data via
> --=20
> 2.20.1

No, we are not interested in rx rate for tx throughput estimations.

Kind regards,
	Sven

--nextPart1677644.0UDt1hXgY8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlz84YIACgkQXYcKB8Em
e0aogg/9EVIFQu3IfvgR2ZIPRTu2v41CnBC0pP9mjGBv9U0ARl6KsR+RL9JD/MJy
XI/Vn4AwfFYyElqFVzBRPxdESqYMs2GK6xKTSn/WjOlzfRi2EcbCkRm7LTRzuraG
vaNxmnT4kCXFp9xRi2TtIlwH4ytJTthyeJP46h5XrhIaRgsV6Lxnz2eKSu1NAL3a
yt/otPwx0k+/E4puimjOcQdbG2FMXdm/bG2WAGX35Oxi6ldsNhVoBlJCkYmd9TzV
HCbHyRljlEE/vTiX8n/DB36l312LOGFxSHsu8Qxlr7VVrQl11XG1qvh6kQFVKNgS
vLKKVTV7rWDiy7A3ndPqQpKugBoW1xNZkBuDyJBlIryUqGaoZnY7hWJ4UTSfKAL3
S3dC+CCFx1GccuHWB7J70yNOFnVR7DQK7Lcs8PGLtd8CCGajZdciXlqxnpZdOiZ7
yXBE1N26iQwt7Fyd0T2S4sPl+aFgime6acmZbuxmrFTc/vllDXKH2ExH4ooqRLCK
Agu8ED0h/ylPS50IYRqzhoBVx9o7vNKtN+zj7GKu3ja2ZL1aLpTu5wpAdjHXYI4X
aE5dsVWtjk5Vj5nCcyI/lMUimXHqtmvv9GUGXGkQCF44dkQo+6XWgDIqGgFQVo2a
ky+2HqImYHMyP5lOO4PioG1mZBRMyIRqVWuGcZUu7bZdcV3Jde8=
=mejb
-----END PGP SIGNATURE-----

--nextPart1677644.0UDt1hXgY8--



