Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C131097D4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 Nov 2019 03:30:06 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 53EF880668;
	Tue, 26 Nov 2019 03:29:58 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
 by open-mesh.org (Postfix) with ESMTPS id A81AC800C3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 Nov 2019 03:29:54 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH] batman-adv: ELP - use wifi tx bitrate as fallback
 throughput
Date: Tue, 26 Nov 2019 10:29:43 +0800
Message-ID: <4586508.ZjQXdf9tYs@rousseau>
In-Reply-To: <20191126022738.29214-1-mareklindner@neomailbox.ch>
References: <20191126022738.29214-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9271938.pX6P5OlBZX";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1574735395;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZNvS4n7TjFiMGHSmULJfEbsn5t3d35D+B7PaB8c0sak=;
 b=Qgq0/6MfFUWducOqY1n0OnuomBC1SveBS3XrjCdYnGCK9XxYRW5RN/LRacPxcQfLTPGr4V
 uKahjKxebVLO3r2nWcB6dH/68s6McqT7RPBpIrBcYUPlhwAtRDtlB6qerL9Gm1ahqauPHu
 9wvt6z1JOaf4NSO7+OV47yck4NjGSAc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1574735395; a=rsa-sha256; cv=none;
 b=bwhTk0GxWwTHDWXeyk4hTuzVfx+5Z1lAFnx7wsymq6agk17vCUwsxCH5aQ+4SIRfZxD2w7
 AEZlU/ppGL2r8l2rZ/tdw6tYJJ1WCs6hfvsRcTuu5VEvJKVqFetY8++4ekM6h2Hqi6Xz00
 PPYrKRxWQtWG+GEXYH7UEqiUeaQY4UE=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of mareklindner@neomailbox.ch designates
 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart9271938.pX6P5OlBZX
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 26 November 2019 10:27:38 HKT Marek Lindner wrote:
> Some wifi drivers (e.g. ath10k) provide per-station rx/tx values but no
> estimated throughput. Setting a better estimate than the default 1 MBit
> makes these devices work well with B.A.T.M.A.N. V.

I have been testing this patch for 2-3 months in production setups and while 
the approach isn't perfect, it produced acceptable results.

Cheers,
Marek

--nextPart9271938.pX6P5OlBZX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl3cjhcACgkQU1VOj+62
HMA94wgAhqqbtzaqWaR1M17CtS20V0vtaQE2s33uowouckDdFHPrWBHBiNbutiSe
GxXS9Jrwp7wbiMm532w8jTmscmy1/dV2SRr9tVTaEg83TWbzfOc9XpYbB20urA2L
g8Qzmj2aRd9IVzrZFG3T7v/0rC5M4/CvLn4ht+cCsdAB/fp+G6hpl8UoWnuWCfy0
K0divCZDmTvDLf279hQ1zFIF6mBPH9E+oeGayhDBXYXlvKiKin2/dU5aKj+wVzwd
1Agc6xIIQ89bvyskiE04xZrfSVYM3zZfnpHr4BZ8SI7YWyXsGC+6ISqztBmm6w8M
jphHnCePYaXd3AB4mXrH2dOFCuRH1Q==
=cmOV
-----END PGP SIGNATURE-----

--nextPart9271938.pX6P5OlBZX--



