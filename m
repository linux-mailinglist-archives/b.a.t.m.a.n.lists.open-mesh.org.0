Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D97C15E36
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 09:30:56 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7D823823C2;
	Tue,  7 May 2019 09:30:54 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 9998480531
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 09:30:51 +0200 (CEST)
Received: from bentobox.localnet (unknown
 [IPv6:2001:16b8:553e:edf2:a8fb:d592:8e48:5aee])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 0058D1100E8;
 Tue,  7 May 2019 09:30:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1557214251; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=A4OoQjq5NQ36WrtzKGU0013L8g0rlo2N+xK8PHPv0tw=;
 b=AYc3kQ7ty1kRrIhG5pTeX5xEjxbCImb5MaAH0U651sstCFtjdDgZ0DRONghJlDD6qeFqHY
 N9fWzsrhYOGGaZxsLo8ZmvpZlQ1pPbyaz+Xs7qvO3eEEph4pg/027nRrhawVPpKBWUHgzg
 /y+WTq81ZXGHMZrtrTYEA6qf8JKeKyQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2] batman-adv: Introduce no noflood mark
Date: Tue, 07 May 2019 09:30:46 +0200
Message-ID: <3693433.LtgH54LjNc@bentobox>
In-Reply-To: <20190507072821.8147-1-linus.luessing@c0d3.blue>
References: <20190507072821.8147-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart21935947.6gBjiiaz1F";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1557214251;
 h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=A4OoQjq5NQ36WrtzKGU0013L8g0rlo2N+xK8PHPv0tw=;
 b=Asv1gPrFkP9aiWewQrMgKEtMoahce6v8Wg+WkAeYQbfEui5PGNducfrCBA/yKtqXIt/Prp
 BDDKI6TfjZbWAzCr+czQe1WSwJjPt6wUj0o6zA2v5Zc6rveK2ldHMi9o6cB5K9qxQVC8+v
 NGqPB4p/TpzZ5PIv0MlFKKoPsk5Q7QU=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1557214251; a=rsa-sha256; cv=none;
 b=oUBCDJF/NGNRYyFr70roq5X/4FjndNa5X6CCae4rw786aVn9BWDrToAS+wAKiN/JNvSFZG
 lfTDJn9uSvOKWCa3VnXovUPgIiAh8pBGpqCNsCvQhG4uOfUgMZZ9O/N9R5hZ7QobFYvlzk
 TQR/HnZU0f7ZVE4YxTmcqJLVr4dbsyc=
ARC-Authentication-Results: i=1; v3-1039.vlinux.de;
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

--nextPart21935947.6gBjiiaz1F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday, 7 May 2019 09:28:21 CEST Linus L=FCssing wrote:
> This mark prevents a multicast packet being flooded through the whole
> mesh. The advantage of marking certain multicast packets via e.g.
> ebtables instead of dropping is then the following:
>=20
> This allows an administrator to let specific multicast packets pass as
> long as they are forwarded to a limited number of nodes only and are
> therefore creating no burdon to unrelated nodes.
>=20
> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>

I still don't see why this has to be implemented in batman-adv and not as a=
n=20
external filter (tc-ebpf or something like that).

Kind regards,
	Sven

--nextPart21935947.6gBjiiaz1F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzRNCYACgkQXYcKB8Em
e0aXyRAAgG9fa9pNza0iqdGh2yy61KI6EM9PyYPJof4okfcogmjtiyGIvjcoBbIF
W/IEzETTT/nAsYgBSP3iyFQm8WE3PTulW8aUauQOapHfO8ovAp/HSp4xnfEHH+J1
Abm6+NgwdaKb3E8+yX4Smq1B81DeSlV8MXsrK7LqYzbnabk4iPjk1uxdmCCAlnOO
g7D+XalBiNui5hbtloLIbkthvrCL+bqZF/Zfp73gL/t48gjT+QAkBP/A2Bk8qQ5N
mUfm5o//pEUXd3sFzREQKDgY8J1a1NVd3xkknX9VEc+e605N8YTKXyMXWkO1noNi
Fap5KKnPTOCz+5L/8oqK19aFWVQ56Eob/FKA5qkzYt6Tlfki/Ehx0WCefO3OJlys
MgeMqozB5DYw7oJYVs0H1rWrBt+yx91BByJA4ebYLIUtdtX+aKlgr9wJ6BAZBYyH
xMknmuvW7T88T6eIdUufSUVU6vSEAAx4wbgiQXsUj4miFT04KKExVVKHJfbM5juY
jtl/dlf+RW4Ixdy/C3vzddyk6eE1NcaFOhe9KrEFaVHfcA+r9W7IUdrbi4B6UFF1
X+t6+RaY+n40P0iNbLVvOlszLo2h0rq3O8t0i1yZRY/iHAvWjGZDhI6qRgL9xtPh
OPEkcn5t/08YeM0Ed4Quh3IHeKgjMnYQywbRi5b1ZsS0GFDtLSg=
=+kgl
-----END PGP SIGNATURE-----

--nextPart21935947.6gBjiiaz1F--



