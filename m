Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E141AD624
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Apr 2020 08:33:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 416B4810DA;
	Fri, 17 Apr 2020 08:33:43 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id D006580102
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Apr 2020 08:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1587105221;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nzqijZHUC/5UBmI+FmseSyEh4SpYAh+Qg4wTScVYqig=;
 b=udyvmikDd6Wvc4tYjdqGJdG2roASiybpvdtU2veyc3xJdsbxZg1WJTox7waMgnGhqGcCyU
 8QL48vy+BA0FZiKQ2enV/NSZB7z+NLatCVf//Q6wY4VzWN8S1DylrBK8o2t1H1aWZuwQMV
 Qmb3icgSC7p+iaNVBQRixGO+QnA8QoI=
From: Sven Eckelmann <sven@narfation.org>
To: Moritz Warning <moritzwarning@web.de>
Subject: Re: maximum hop count
Date: Fri, 17 Apr 2020 08:33:39 +0200
Message-ID: <2538067.ePtzQIx2Gd@bentobox>
In-Reply-To: <95ae53f7-66a4-decf-85c6-53955426e638@web.de>
References: <db951dbb-7ec9-6938-faa7-bf2b46eeda30@web.de>
 <10653471.RuQBq8sfPP@bentobox> <95ae53f7-66a4-decf-85c6-53955426e638@web.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart13339774.q5H3AGECAa";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1587105221;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=nzqijZHUC/5UBmI+FmseSyEh4SpYAh+Qg4wTScVYqig=;
 b=mFpooeMTF7dauYoe3FY9eMzjZ7a3H8DQEcRr9YwYttPpVkVnxFms3qC0Pd1CMHSXLNWv/H
 UHRQ5KzsXeA9iAnat6xuqEb8hKtz15xaCRqb2k22BgtzO3ucCMuo355cLGBucvzKUd9Jl4
 zVwSIh6eALXlR/dGTd0dM6k58IXfAKU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587105221; a=rsa-sha256; cv=none;
 b=cVQZgoniVbJGdj1ylphqx88kXxvfPjA971QFQOpKWaGn/JhKO/6Ivc6hJ0r9fCIqjetU7Q
 vHLaVkhQV9Zfg94p26QDlBpf88iiW1AOUlHomomd+iwRoGtCSnWJdJ0i7RfMfgRx2zHZ48
 atxXHG8LXhQUOYaHS8b2QFjpfBws9FQ=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=udyvmikD;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart13339774.q5H3AGECAa
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 16 April 2020 17:22:42 CEST Moritz Warning wrote:
[...]
> So that sets the maximum hop count to 32 hops at best. The TQ value already dropped to only 1 after 31 hops (with the integer casting) and is 0 after that.

With a hop_penalty of 30 (default) and no shared wifi interfaces for 
forwarding - yes.

Kind regards,
	Sven
--nextPart13339774.q5H3AGECAa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6ZTcMACgkQXYcKB8Em
e0Zt2Q//bbDGuiYNdvLDrqgq5O6KifoHbX/3iFWPJUXDbraR41feB0v98onEt+iT
Q9qAZDoxX0GV4oKIP2rMsNFsc/vCv2Y7NIrN/b16VH9p0nvejL8QwgS4pxJKupnc
4dapTWsa3nrnZydUf2Y0r+b9N34ZXUKENcm0yIObwQO0WHkS7Kdll2ByTpCeKGUC
Zh3QjBfmGLKpypz+fHDoqPIB7AWGQ6z5x2Giq2EzTuN+YFKLudnbl4d7TYP5ysOC
Yn34SwvkEsKHQS8VTapGCF+GgO7GV37bccoL1g/XXHfQ1GlxG+2gpzM1uoV0UMJW
TxurG1+ZzKoZ1wdkvM1W9xm/JALfPPCGbFebrydQ8VyaiZVnHla8iQ6AIwdRJ7f4
saqw2+3XdOUC1Dd5+RyCWQG/H1OMfg8O20+0ftp8I8UWMFtsTjt06LVwCJiXgZpf
yBu18b6JHoXYWM85USsG+tQyEHzgpS4ML6rbrWUzIEEZSk161qf0q4HoEEs5pF1S
BS93l4ZvWc7LeH5lJtIQOXCw6OC+ZwaTntjCWgh4m9VmE9KnbunoqI421scEUrBU
MM+gN5zeinYXc1BEt/K5TxRAm+P9Y4D7e8p6TnI2lgf5/DI8ADA92acBWQ8jzliS
9NrYZCXCO1uiRgpPfE7ekO9jbqdA6LiKvCZ34ak1AHotXsVe7Lo=
=N5RR
-----END PGP SIGNATURE-----

--nextPart13339774.q5H3AGECAa--



