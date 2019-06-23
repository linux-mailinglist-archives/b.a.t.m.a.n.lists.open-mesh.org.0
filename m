Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F71F4FAC0
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Jun 2019 10:06:15 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 6DA5B8190D;
	Sun, 23 Jun 2019 10:06:07 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id C52DF803C1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Jun 2019 10:06:04 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 572481100D0;
 Sun, 23 Jun 2019 10:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1561277163;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CfeyXvYNEzf1JqhQCRUU4u6ofdw+J1dGy+X30zP0WZQ=;
 b=H6p1K9zc3U794rQv2GfmNaSEduIMB/BeF6bGISv6wuG2U5FdisQbK3YX8rx+49EMhiQEh/
 zS0bv+JL7Z47ZgEEbVqqD2+7eHvOMQ5BJpSXZf+T4Mx8zk6U3LkHyfDsYpobvxiz6vAgc4
 JYdQhlZDyaD07QuauoNliC+iL+C0c8Y=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v5 0/2] batman-adv: Add routable multicast optimizations
Date: Sun, 23 Jun 2019 10:05:57 +0200
Message-ID: <1876992.RhjCZf4M3I@sven-edge>
In-Reply-To: <2692232.m69ynxnPBa@sven-edge>
References: <20190611205841.5841-1-linus.luessing@c0d3.blue>
 <2692232.m69ynxnPBa@sven-edge>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart16441695.MQhMsqncTK";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1561277164;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CfeyXvYNEzf1JqhQCRUU4u6ofdw+J1dGy+X30zP0WZQ=;
 b=XO3QYP6Fjn4Bppq5ExId4ydH7sCVA+zMLtBh0sy3C6KyK+iz0nEyKdGjqhBPK9xYiXXGQR
 v0L7qTLUIuyAO1z/nRCl8adTkOoXlZMCOnQdFGAUCHoXq8j/JnHn2xsQRM3Zt3v0zob08a
 3WTyDank63thsixp2xNZo9IOze3TSkg=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1561277164; a=rsa-sha256; cv=none;
 b=xr4KmZ3UrJ+kk1VLrZtL4JCBECOUhFPGHxGHX5koE+gVnmhAv5DDgKxBiXOyHgwWv7VcWI
 gV3twnEee2HP3yphC7MuczlgUCb4ATHE4+nPqamfnwdt26W4kRjLj4psXs4qf05MoohpWJ
 BkRquZ0O9zx4RcA21KHOJUVBsqLlkLQ=
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

--nextPart16441695.MQhMsqncTK
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 14 June 2019 20:37:09 CEST Sven Eckelmann wrote:
> Applied. But please don't forget about the missing changes in the related 
> tools:
> 
> * https://www.open-mesh.org/issues/390
> * https://www.open-mesh.org/issues/391
> * https://www.open-mesh.org/issues/392

The userspace tools support is still missing. See the issues.

Kind regards,
	Sven
--nextPart16441695.MQhMsqncTK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl0PMuUACgkQXYcKB8Em
e0aFcBAAzP0cqwrs2tiEYT6AIncUm5ozzWH+nBFk/4OfZNM/6dk8myn8iSbuLnRK
WXxl8INLFnvAwCVent+zlp2E1+XQ8o3bHi0p7L2wNPxJZrCjv3CTt9+Yo44mPoHi
lVc+1zgwV8s6bcHMEKnMrdKIg+xF8riExrIMfHm66jjGAd74VLUvYqpJadjvTp23
Eq0WzETHZoN/ej+JvlPwxIJawLY6Dwj9qCZfEQTojpieP6HVaQdJ/xt3t6Rr8sac
BTFNW+RR9dOvUPNZRhb9F7gkUrO4tilzuJhDFiQrXe5S8KHKP6hec1CGMUlto+RV
dXzbrxa1leCwuhBAI/cjszjD8fg7WdCA1Kluv+AY76t4RsUALRGdwwSuTWjS2m0U
H6vV13V+PJFmkNJjO3uXD7bRvxsiAstUj8WwSQOJio1Q6R+U6VFhfwHREfXhHyMC
snY85jgGNb6Nrvu8uuKJsHHVDjBLMpPMMoTxzDh44wThGUTBlxlDmXP4/xrahmH7
GiCucRQN3ODCRUI+i8eHYttSVgvAuOxE58GvJdRj0lSoWp/iYkykdLD5/eg1aCym
xokn8dCyus3OKQ7KAJoMXi5YgpkP6mgGWMEiI+XyxVxgoiGBtu40h7isN90hf7d7
Itin6uvkTuSr53OARirLegClILDitkqnJutbyJG8eOpfWPzp8M0=
=kaf4
-----END PGP SIGNATURE-----

--nextPart16441695.MQhMsqncTK--



