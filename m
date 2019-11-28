Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9AD10C67A
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Nov 2019 11:15:55 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B396B80EC5;
	Thu, 28 Nov 2019 11:15:49 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 34600801B2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Nov 2019 11:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1574936146;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=V6RYjIoZJIlfJVh82sQyQm+NCiE89Ekc8+MdQ6oFUsM=;
 b=YslGabo3Pbtb8oWDKpZ1yJRtwJjs84xsL9ZP5Gwo4dtfXldPxuneKgcUkCAtA0x4cfAmsY
 ZEic+Szb/gbiNRX/cJ0xXzECeEPEAslSjrBeZFCRKyNZtmLIByB17dbfiqhvdOoTP7v3Nm
 AQphvPKfcBBThk4/+pTEEWZExlXwZ1E=
From: Sven Eckelmann <sven@narfation.org>
To: Antonio Quartulli <a@unstable.cc>
Subject: Re: Host endianness dependent DHT lookup
Date: Thu, 28 Nov 2019 11:15:44 +0100
Message-ID: <2234043.pOP8SIytGP@sven-edge>
In-Reply-To: <29e86b84-9f03-030e-8681-1d4a7b83bf0c@unstable.cc>
References: <1815609.duLnqLk4gF@sven-edge>
 <29e86b84-9f03-030e-8681-1d4a7b83bf0c@unstable.cc>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart22828417.gDNSA6WHKS";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1574936147;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=V6RYjIoZJIlfJVh82sQyQm+NCiE89Ekc8+MdQ6oFUsM=;
 b=yqQZO29q7AQAs7IVeXUiYSrZ+UncbLRJi77HOmwLtlOSIKVyzz5QuIspDBRmjk/L3c2ie0
 JfYqWr4xiY2u3obIkfs1lyxQH1o46oB8aARZMJM3vg9CPnD1OPXpVdFSgj3ifVFs3W1GV4
 CpRbnEx0GHlOFMWo6Tn1HA4VcwN/8mM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1574936147; a=rsa-sha256; cv=none;
 b=vESV7ArYR6h+aIO+7ObQShNqe6jTTCQKRXDYNmlcya/gWV/9zxYoTJKcQPR7JOmxr3JMTb
 uZ6458MhcF76avfZvcJY5eKQWF1etTx/EPWBUjD4AFulyOptkeemKT9ObsJmqU1E34QV/b
 Xtc2uYtG4Mq6p8MbDVgG1E+7E/Vo/gI=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=YslGabo3;
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart22828417.gDNSA6WHKS
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 28 November 2019 11:13:21 CET Antonio Quartulli wrote:
[...]
> Will you send a patch?
> I guess converting the VID into network order before accessing it should
> be enough, no?

Yes, I will prepare a patch. Just want to finish debugging another problem 
before doing this.

Kind regards,
	Sven

--nextPart22828417.gDNSA6WHKS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl3fnlAACgkQXYcKB8Em
e0YrlxAAurzftI8oIpdkoL++VlAG637EEPFJfPxhu6oFy/uS7nd1kwFQzyua+iZh
JXl1reW6A75OAVS6X0o+XOg1748poGqYWLg7t8yfeJK8azj/OoEHvGLQdi+DQaN/
pt28oSjwlUVorbGZ+UQ3cR1cJq8rvnXoXZfyvVodV1L9owmitGkCgEQehVHFLFYz
dGm8sc47WsBjfLQWkC9noa0P3xxRG700X7+LduLlz1E5bi/lHeEgv13nL+g+R3OU
yr/9flnf8qsjBIuonURYOVscO827ltK26N6inoT+eYmhcD1QGU9bfUSlbE9nKqQr
wFBBMAlMEWo0W5k2KkzSLG8GdicZ0rwz3kBrVoqUjnrI6I9pLJ0wiw71Jy6v65GU
m8kUZYXUWbaIahdA8IyuTD5HaSEmzV/qlpnD+uIMt1YOyA70rASN6WCsmgdua1ki
oJIOmc5RRVuuHOiNwsTxk8V9O3rCC5PNs9XR5jwpwpE0dhBGV7wwgdiIR9oyD8vD
km/XdnHjY/UEqJ2Wn9e+RoMKnRjf98khg0QnwIXjshvhsYn6oMMcRJkvrYOrgLn6
JEAvTbYabDlJnElJL1hbvV5eYTotEoMgtLV2Gj2pr8OIOdLgymr9r26pAUgSaF6B
FZBGELUW3Z4U1k8ThF5mB1aeziLEmki00pNGVLDiTOYEcevRCfY=
=h7FS
-----END PGP SIGNATURE-----

--nextPart22828417.gDNSA6WHKS--



