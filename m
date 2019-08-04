Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C5580BFE
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 20:29:14 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id BC5BF826C6;
	Sun,  4 Aug 2019 20:29:09 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 637E980B7E
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 20:29:07 +0200 (CEST)
Received: from sven-edge.localnet
 (p200300CA6F2191007D683EA4D59D38D5.dip0.t-ipconnect.de
 [IPv6:2003:ca:6f21:9100:7d68:3ea4:d59d:38d5])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 035441FDD1;
 Sun,  4 Aug 2019 18:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1564943347;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=M29kLRLsUrnmxPwpNK7V4m5ed6wri7woZ635TCUxwno=;
 b=h3W8BSxBtwnITyDQIM67PVqV2VNjzrzaDxAW0TyMeBqGPCM/zE6AOSOvMuXVqOe9I1Sm1g
 iJRHBSTx4aYACn5bo8VdqAiQ/cG62udSatIV7l/vXgT4W9FWUCTEwN95Bub60ZX2jIgWOa
 RYHrTl1NT9AnCQlz+61h71djQuzVdb4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2 1/2] batman-adv: BATMAN_V: introduce per hard-iface
 OGMv2 queues
Date: Sun, 04 Aug 2019 20:29:04 +0200
Message-ID: <10033691.AcQlIsoWXg@sven-edge>
In-Reply-To: <20190804180632.489-2-linus.luessing@c0d3.blue>
References: <20190804180632.489-1-linus.luessing@c0d3.blue>
 <20190804180632.489-2-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart65207975.omPGRG4tHD";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1564943347;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=M29kLRLsUrnmxPwpNK7V4m5ed6wri7woZ635TCUxwno=;
 b=g00p8kdNc/XqsM9brAh+G9rwf4732/E3+l1JlzK4GhtRDWgtPRNahkklUGnwEBuA65qRl8
 xvjG0dSbvV32WbLVKMCl1WtX7YpO5x8yfHBKXf9a90lwrTL63U4bbnaT8ycgfpw1O3ZZrQ
 wzT7D31WPHEwAtlYZKH4SY+X+93tA88=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1564943347; a=rsa-sha256; cv=none;
 b=XnwJNESy5GhtndjyJfJzEhZXiuEyJfsMRkZLUQEvxmr5ZLhxn7rV5UuzYppTYMQrOZZ0Mc
 zjV7BWjOgpJ5xrZX5ergyFmdRy9x9ksYQdYVHW1g3DNfVDJsbdbieKmwyKB7FZKIYjd9sC
 2N21BphuRWQIGoRolUgWNbrjAt4pdHg=
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

--nextPart65207975.omPGRG4tHD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sunday, 4 August 2019 20:06:31 CEST Linus L=FCssing wrote:
> +static inline unsigned int batadv_v_ogm_len(struct sk_buff *skb)
> +{

Please drop the inline here.

Kind regards,
	Sven
--nextPart65207975.omPGRG4tHD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl1HI/AACgkQXYcKB8Em
e0bQVRAAwX8zbHEGy5luT1IP5rR0NpYfo7r4UY699FMUNdQe2zpgo4szzY3MhVtP
GK5Zu6LytyaagXxb9SuwaMeo1YWqGEMPU8nmE3Ay+uxLuHYksqMcPI3KbYyQO+mT
ogU77hxv1/7+mrd1T6kc2i+7eAoeVpV3v2Qqq4zQYLxv5ZVKKD/FxCUbcL6c7OF2
1lQf5LVqf3kiaTKboF5FKgVmZ9bKUVik92cunVWnshwxquwjK7yBs62fiXBriDqW
dU1oHkLsruVMY3SVrTX90SrRQE/0liU5ynpg1RfwVLk8uGe0gL0gSuSFNuZMen0f
hCKNWK96ZuU597Ufw8Jp/3nefZX+UA2oXMxI83NM5gtaILH2Er2IJRgl55Daxa2D
O9hM/NPLZ9Ypo0Hx4m0tye/poDLEgP4QeDzoJbemJovjnUNGrgmCeXvXCrkYJ74I
PpBdJCtTsuC8Jwx8Fy1wDs49DcNrc0o5kJo61z9vMEvrKs7BYQdRVUQOiTrCJ3kQ
JoF+lo+7FMoeXBiaZMmLNvB9R4c2lJbdWII5Kg+GVgIT4zpzT+stmQ7//OlCMTk2
5oWHQh6E1KbL9+8N4RT+/mR8givV0UTFylMD6zhkxll2UQskHLjQ8de3Z7GxHbpu
RbVpklxwEceMMyPQ3lq34e/jSmfOTsEfy1L1KlhlTJ9OvxpCmhY=
=0X7u
-----END PGP SIGNATURE-----

--nextPart65207975.omPGRG4tHD--



