Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8BD10C64C
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Nov 2019 11:01:40 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C458880EB5;
	Thu, 28 Nov 2019 11:01:33 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 6A2FB80034
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Nov 2019 11:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1574935288;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=eSJfAwdFbcNlJdQGyYUFb5sUC5cqQQw0q1CAtyR52Us=;
 b=muN5kOoTjxihyZ3QQ+VcvOk7g1U1fafV5aQysOjeF3UWtdZ64bMU1ZawQnBit6pumWRIaD
 83TsZYNoLXY9A6gLeVYk9JsNKIJsD61E54k9GUhUez/DUWGGys7u4za3jbbhJ/tDBLHzUr
 MU+YU2u01ejPdVZpwZ6q8xLOOikYUkQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Host endianness dependent DHT lookup
Date: Thu, 28 Nov 2019 11:01:24 +0100
Message-ID: <1815609.duLnqLk4gF@sven-edge>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2061994.47J4SoBXhB";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1574935291;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 dkim-signature; bh=eSJfAwdFbcNlJdQGyYUFb5sUC5cqQQw0q1CAtyR52Us=;
 b=BRBWaMOib1wRfvfhqm+ZZs1FDJzh3s2cjVFbp1CmP9iTGGcpSA61XiUVLobac7mi8VlTQ+
 1SFD2GPC4rej0C2L5o2jPcMr70HqXdX9+CjZ76Z7e1bqeM1CCQtGSNtwpPbc+KKH52ATWP
 c6ecGP09tpzMri388dQcrO7woUoMIPg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1574935291; a=rsa-sha256; cv=none;
 b=OGLWE3hBPnFwfxagCEmK9h3aV36iZ9INfihcnYjSWfZjEgSTg/QNpu9ykOk9ary0vCe+Ho
 YrNbRlPVPZL4SPV0QhSthhWrBxZ+A7SiSI595TgmrCzN4VoT8zd3uog8aGGsNIzOJMWzg2
 DFp2djUW2QpOIyxgvAj9OYWdaNgaiBs=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=muN5kOoT;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
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
Cc: a@unstable.cc
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2061994.47J4SoBXhB
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

I just saw following in batadv_hash_dat():

	key = (const unsigned char *)&dat->vid;
	for (i = 0; i < sizeof(dat->vid); i++) {
		hash += key[i];
		hash += (hash << 10);
		hash ^= (hash >> 6);
	}

But the vid is in host order - not big endian like the IP part. So the 
batadv_dat_select_candidates will select different candidates depending on 
whether it is a little or big endian system, right?

If this is a correct assumption, then we would have this problem since 
3e26722bc9f2 ("batman-adv: make the Distributed ARP Table vlan aware")

Kind regards,
	Sven
--nextPart2061994.47J4SoBXhB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl3fmvQACgkQXYcKB8Em
e0aLIg/+PF29YIOfDRsKe19X2mQUEfd0xyAnfZysdI2y96JJ9Qj481P/KlszUkTD
/GwyiOQG/trh8KTNqnYd1xzYGALfURIENE8N/4yp73RJG25v3jpdfzi8qoV/FLpD
24lppW2aVuBGR3vvL9oUszLpUsgH8zbf9Ng0JAqCGVka2FBVXRCAA/hcbeazZ9OO
0pMgXWeR4x+sgadboOGqruBq+dRSdexC25fW/S3DQViMeU+HKTtn8bFcQeTtyrCL
vdOkffUvoEA42z7k3q8w6ziVp5kYdwzGdTeCfbkAAOydP9LcndroG2HE1/rp1BeX
5+5zTVvrr+YY/2OErtzQ3+zbO2tzoVhp6m6NZ9kUqhTnj/tCctUyK5CHKjUuVFn7
7qUTpktV45lQTB627pH4OyviikfQ1CBxCrBGR9LofT9JGIPjNJD5BSQzv0in/Zx3
hWrDyTrZWxf6yFs9MhfxfCeInFMx0WrFyYUlPik2+feUmICH+9rfIK2J+xgrl3K5
QbFf/neXNb0MRyje5xlvwPjrLzd+WGMODlzUcuokVNzgaDhNApedPZwlxrPCYRrU
JV4qJuMj3zv0e8sE/Sk/isKImWjUeyOdiwIxnnlqvdtsADOH/BPc8G25lB5kGzG0
5hQ3pDYDrWjfmWQcBpBNo6szkR1btrbIqwEKUFyLS4Adh1am3r8=
=iTzo
-----END PGP SIGNATURE-----

--nextPart2061994.47J4SoBXhB--



