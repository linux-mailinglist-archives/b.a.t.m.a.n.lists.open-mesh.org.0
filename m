Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BB83A4D7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 Jun 2019 12:41:35 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 54DEA81C39;
	Sun,  9 Jun 2019 12:41:31 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 7C1218040C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 Jun 2019 12:41:28 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 067FE1100CF;
 Sun,  9 Jun 2019 12:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560076888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0uE+AZB7ib/hlKKB/MLc9F9z9at4sdJUOFL58B08Yzg=;
 b=cv+dDbHfnWcah5RILrzXKlFByegQIqb+LaQ3Job0XISb2xzyvReP62+dOo3Smkfj6NLAGT
 HOzVW6tYTkDKUzqSxlu4rWfiVlTNgzCDfKOyafQOu9TVLD9SQJIFBavsZq9C3H1iArg27F
 4I/dAbojrCIVKLWhhqFPnylf7hLj5r0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Use wifi rx/tx as fallback throughput
Date: Sun, 09 Jun 2019 12:41:25 +0200
Message-ID: <17933863.i7ZWB0ezhc@sven-edge>
In-Reply-To: <20190609101922.2366-1-treffer@measite.de>
References: <20190609101922.2366-1-treffer@measite.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2208560.ySifxPP7xR";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560076888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0uE+AZB7ib/hlKKB/MLc9F9z9at4sdJUOFL58B08Yzg=;
 b=oX6zfg/3X0kPc9fqywZh/2RBS0qH3uk+GDJSHnF9iWjWUys4yat3GQcuyCrXXrtQJE0Ugf
 5MtT44drrNDm1l4Budw+PxLnZWReC5Ps4ViIt8gyxa7MyTEOPvZsWRC1qIy/zEVEArLeW9
 AUeEwvvp2LoPzXkoRr5UregMUZBCD5o=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560076888; a=rsa-sha256; cv=none;
 b=R3+E0MzN9nF1huARKfRUH2z2U9V08JOIfuCIbky7U39PwVlwdjX4TcgVMT/KqMXPtnAkyT
 0EqHSWww2zZvKemCU4mJKQG0jvGqLGHUUIzlYZAxwxImUNgqSQAHJ1R5xL2Gase6bQO3qn
 ErMBRFf08+mP3Nwb2WiH0+kgwMQcHcs=
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

--nextPart2208560.ySifxPP7xR
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sunday, 9 June 2019 12:19:22 CEST Ren=E9 Treffer wrote:
> From: rtreffer <treffer@measite.de>
>=20
> Some wifi drivers (e.g. ath10k) provide per-station rx/tx values but no
> estimated throughput. Setting a better estimate than the default 1MBit
> makes these devices work well with BATMAN V.
>=20
> Signed-off-by: Ren=E9 Treffer <treffer@measite.de>
> ---

Please use checkpatch before sending a patch:

    WARNING: braces {} are not necessary for single statement blocks
    #113: FILE: net/batman-adv/bat_v_elp.c:111:
    +               if (sinfo.filled & BIT(NL80211_STA_INFO_EXPECTED_THROUG=
HPUT)) {
    +                       return sinfo.expected_throughput / 100;
    +               }
   =20
    WARNING: line over 80 characters
    #117: FILE: net/batman-adv/bat_v_elp.c:115:
    +               // try to estimate en expected throughput based on repo=
rted rx/tx rates
   =20
    WARNING: line over 80 characters
    #118: FILE: net/batman-adv/bat_v_elp.c:116:
    +               // 1/3 of tx or 1/3 of the average of rx and tx, whiche=
ver is smaller
   =20
    WARNING: braces {} are not necessary for single statement blocks
    #123: FILE: net/batman-adv/bat_v_elp.c:121:
    +                               if (rx < tx) {
    +                                       return (rx + tx) / 6;
    +                               }
   =20
    WARNING: Missing Signed-off-by: line by nominal patch author 'rtreffer =
<treffer@measite.de>'
   =20
    total: 0 errors, 5 warnings, 0 checks, 36 lines checked
   =20
    NOTE: For some of the reported defects, checkpatch may be able to
          mechanically convert to the typical style using --fix or --fix-in=
place.
   =20
    /home/sven/[PATCH] batman-adv_Use wifi rx_tx as fallback throughput.mbo=
x has style problems, please review.
   =20
    NOTE: If any of the errors are false positives, please report
          them to the maintainer, see CHECKPATCH in MAINTAINERS

Kind regards,
	Sven

--nextPart2208560.ySifxPP7xR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlz84lUACgkQXYcKB8Em
e0ZYzQ//cQMM5Jn3Jv0Q5s10HbR808A7fAl88wcs5NHKC0lwgGdrNS8WE7h+xxY9
uZEQOPvqqdu3RW9Cyycivm8xNOmAXJ2g08uSWadKnbAGzNaTK16IvyFnLGvwFISL
ZC8yD25Abx5tiiLNnXQKlL/bqq9FbTkkdMgspGOyc7Jp5wSyHKvdalt5Lv/lhwWr
DPb51BHO3aIND9KK4L3GJaTwmpNEr3/u+5ttTZ0hJbteIiGijIRje/iMppCtxDmO
2WgZC4sLjSQMZKvfdMzumh6H4rAYqd0FvgzSRa2srkhEs3iJo/IlPVaQWa1OtFlR
k+Ksd4gPFnJUDeS47+aiBKRqiw20uMjLO/JtKQtTQUsRD8w1ToDCQEZuJuVOUr8H
Uvhxs9rhZ24f+WycEPaOlRjHGLYbg9BvLw+4c4DpI3fHbgEiM4aDnNZGP827Vqhg
SxuRhU7st9EzRoWqdrlDUcrpg/snjkTDV5AHfIHyM0QDnc/R5ze+06JQ04cgzEwF
/0uoRQMaVepCsuG9nM38V0ZepSCFU/fWIJsXlP6639Y70QreXUc+NFQ3fFM4oFl1
ZGua0Seb2CbXRTYoELj11MU9826aFywt08r4izUqSU/LoyBhtKohzgm0/icRmVht
CSq9Nkl5tLUN1FMwiHbaauvGU4qK7iOCDC09sT5S0/b7nyN++lg=
=qrkE
-----END PGP SIGNATURE-----

--nextPart2208560.ySifxPP7xR--



