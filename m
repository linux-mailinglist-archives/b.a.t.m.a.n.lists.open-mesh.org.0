Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6775B16047B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Feb 2020 16:25:23 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D6B5680657;
	Sun, 16 Feb 2020 16:25:21 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id A9D2580039
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 16:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1581866575;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cpdOcA58injpURGtSPsNzFe0grHOYuzlAQi9FRcp3jo=;
 b=HW6kDIwYOmPotOs48kEhWYO6IC8mZ4g7oYDcPbeZ5p5A78FImbNhEKtyOqVoKz4Fz+zSaj
 F4i1vN0uJyypV2ECTLzN7RO4t2SSlFVaib0Ksp6iNROmpNDeGMOlRjbRKWfuSVck4cU0xg
 aTlFELlnV5CmO2IQlr1kvQ83MYofsQ8=
From: Sven Eckelmann <sven@narfation.org>
To: madhuparnabhowmik10@gmail.com
Subject: Re: [PATCH] net: batman-adv: Use built-in RCU list checking
Date: Sun, 16 Feb 2020 16:22:51 +0100
Message-ID: <3655191.udZcvKk8tv@sven-edge>
In-Reply-To: <20200216144718.2841-1-madhuparnabhowmik10@gmail.com>
References: <20200216144718.2841-1-madhuparnabhowmik10@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4752270.j9do8LSKhE";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581866575;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=cpdOcA58injpURGtSPsNzFe0grHOYuzlAQi9FRcp3jo=;
 b=OaGURf+XrrgSqzCty2NNAB4j1//2zZNoiFo4JnbjlQ+qUG2A/fwE8LJ6JByDb6iEH4Lxwe
 UFWUfcFAQqsZCg87paojajk+oZuu5yjLedUmj9M5xp1nwUBUgGiF+FyThVg7dHudCJykve
 Ot0yQTBhyAH4hijw1mxO0CJKemne6WE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581866575; a=rsa-sha256; cv=none;
 b=tqIK+pbTB0UbjGI6SqYeZKqgWBGaMCbWNWr24l5psq5zezkGxcN6olL366WfLocqBNdPbI
 n+bUsXSHVXAqeYxJJPDG2KjzU/utO1e28HSTx2Ng/fP2WMxRAXFZN/o/MkfxYtINl0FKlp
 hqZgVKpgnBZFQt/CK8gRS+YIQRv86ZQ=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=HW6kDIwY;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-Mailman-Approved-At: Sun, 16 Feb 2020 16:25:19 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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
Cc: mareklindner@neomailbox.ch, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc, linux-kernel@vger.kernel.org,
 frextrite@gmail.com, joel@joelfernandes.org,
 linux-kernel-mentees@lists.linuxfoundation.org, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart4752270.j9do8LSKhE
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 16 February 2020 15:47:18 CET madhuparnabhowmik10@gmail.com wrote:
> From: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
> 
> hlist_for_each_entry_rcu() has built-in RCU and lock checking.
> 
> Pass cond argument to hlist_for_each_entry_rcu() to silence
> false lockdep warnings when CONFIG_PROVE_RCU_LIST is enabled
> by default.
> 
> Signed-off-by: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
> ---
>  net/batman-adv/translation-table.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)

Added with alignment and line length codingstyle fixes [1].

Can you tell us how you've identified these four hlist_for_each_entry_rcu?

Thanks,
	Sven

[1] https://git.open-mesh.org/linux-merge.git/commit/967709ec53a07d1bccbc3716f7e979d3103bd7c5

--nextPart4752270.j9do8LSKhE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl5JXksACgkQXYcKB8Em
e0ZGNBAAxAZydcMX765z0LHHxzM2VVRThEsnS17DaDQDU7oTIinL6xe83lBPbQuh
zQDyZUlFlz5UDRbHnq2w/UMmq/haEXfp47se+S4GOsg7M4R38P8XC97XC1BlTOGu
oXyJjOp2d3G3awn6GD4G1P8AVCkVc8gVp6pDFNFy7OVfJwXvYbMaCtH8xXhS2pcK
c3oO+roFvXtBMCb44e8lc0xHRrBUiTBBIKoLcJSbPUmDRSOg70Rojk5AmiMIZ7Ts
UbNC1faFYh2HJlc+b/b7jDx69eopdxRMQOxZeypmDtu3HnJTQEK/5b/gB00Ajs4e
RDJyOimN1ri/2DI5hMWpJyYts/uutSDHDwRwXytVsoUS3vMVE17LWTn/mTBu5m2n
qodGmZbrbLKM2aMYU9b5aCtJlAoZ5osEd3UbL0zDE0TZG+x8orzffsQagMaihcez
Ybny70xUDlZgGBzTCuCGNhBN7CkREdHiBUNg+Ff02xx5uQTvpN9Pxgo4g+bXXlPs
rDspCwY+EC+KWURxdnVPO4x5tSRmzq4gKvL0dMBeiz06m+u1zK+DCQ0lodV76bY1
ILPm/EwMGiMdO8h5IlwJh5w7T+Kgl+PnT8vwRLXFjfgpYf24D3ihw/1uDLGk7t4Q
W1mipeOUSdpfDYNF8mTqJ48vhSlJf0zICr9iY0p+hmwAnPcCEfA=
=2x+h
-----END PGP SIGNATURE-----

--nextPart4752270.j9do8LSKhE--



