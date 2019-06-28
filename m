Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD185A1A7
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 28 Jun 2019 19:01:51 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id A8FD682687;
	Fri, 28 Jun 2019 19:01:48 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 3C9A280728
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 28 Jun 2019 19:01:46 +0200 (CEST)
Received: from sven-edge.localnet (unknown
 [IPv6:2a00:1ca0:1480:f100:6112:16df:1e13:517c])
 by durin.narfation.org (Postfix) with ESMTPSA id 3BC8B1100D8;
 Fri, 28 Jun 2019 19:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1561741305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cZWKqRBiG7hH9XjuE1HQhSsx7qKGEPG9IaanPbzB1Q4=;
 b=nzuq/g6d4iNpvtkIYDRgclfC7lzwC18m0H9nF64Mxk0Wnz/pAHTN1G8C7whbr7Z32uLlgk
 TwGFkkqpOod49YJZUlCbYdtxVt8U/TupjKDuUP9i4FLzQVI5p/mqV0P3PPv85GLf/Oymmo
 6ILQwG6hH4iUI+q5ZVZiz5ueYJBvWUY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 00/10] pull request for net-next: batman-adv 2019-06-27 v2
Date: Fri, 28 Jun 2019 19:01:41 +0200
Message-ID: <5314018.Pl9QOMrv0R@sven-edge>
In-Reply-To: <20190628.094905.1673194288384587104.davem@davemloft.net>
References: <20190628135604.11581-1-sw@simonwunderlich.de>
 <20190628.094905.1673194288384587104.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart12596660.8597IJa787";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1561741305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cZWKqRBiG7hH9XjuE1HQhSsx7qKGEPG9IaanPbzB1Q4=;
 b=wRf0ruUNLNMe/aZVr1bSIsLVMWnbLJ1L7+4jv0Z9OJuXTHod+48YG8e9bhAFJnWkgiu6rv
 LHixtBw/+IVNAK+OpradxEWphImol48yzVnj02dYS3vBwS4efT6jxOQbd5oMquRMpKd3ap
 qdGeYu94TEwWZfc6L0QgSVjbk4gpJxg=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1561741305; a=rsa-sha256; cv=none;
 b=ONTWeXrTIgWHu8qM8CUfxiyrw7sJygTYK1UH/w70J6qcEhwgt4Azj+Ltx4IaGMUoDWD+Xq
 ln2exC6HVA7b8mJEDCaC2fxnPC4l/f26ZZKnDcveSQHfC2eZfINEHVFGlZ+loBOexgMyQl
 kOMYCbBpNKLderXB0K7YS6JXyMoBL7M=
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
Cc: netdev@vger.kernel.org, David Miller <davem@davemloft.net>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart12596660.8597IJa787
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 28 June 2019 18:49:05 CEST David Miller wrote:
[...]
> I think that when you have the read_lock held, RCU is not necessary in order
> to use __in6_dev_get() but I may be mistaken.  Just FYI...

Problem is that the read_lock() can only be used after the __in6_dev_get() 
finished sucessfully. Because the read_lock's lock is stored in the inet6_dev 
object which was retrieved via __in6_dev_get. And the __in6_dev_get kerneldoc 
states [1] that you either have to hold RTNL or RCU (see also the 
rcu_dereference_rtnl call inside this function).

So we can only drop the rcu_read_lock when RTNL lock is held . I would guess 
now that this is not the case here - Linus' might want to correct me.

Kind regards,
	Sven

[1] https://lxr.missinglinkelectronics.com/linux/include/net/addrconf.h#L335
--nextPart12596660.8597IJa787
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl0WR/UACgkQXYcKB8Em
e0ZNUQ//Q5B0cDiKqBKCEmIJewmh45xzefWAbE5/RtSsXKdPbxkj+AlB32tgWfmd
guxcArwDB5A8WYXead8dbMMiRRsBHQ4ZtfI+1DlfJMOPlCQVevYtlsf+or2eujc7
5WvaihO4igWfFnQd9YAGePaxFsUfYXLonF/VW1iclZKnwYkFFuyT3YYm+JmtTzXE
TFU734So4SCAF/osZwMtRkqS5G1mIOmSRYwb4rzC0Q8LpBy3QCmE+ho335vGVa+i
4Z2f1JeFECjJCKs54WrEwa1QsPUy1XuvZvqPNNU5g23gFiH9jvHoyhUIIn5iUaQF
N5HzOq3njEL11Zl8HC/wotjnZPxiLtF0Wvur91H54Xi9c+q5/nnYRTiUWUL6e2aB
3J8ryb2syZiOoTsxrqr0Sfz7Buv/nVQF96M3RKw9KpN4VJsFtmmFpyAswcIVrKp6
mHPEgCmq7wwmzPv8QJv0jhTt/XLOSjj+LRVp+YdeKElIG7HPG3hmjF5bFvhbz1ES
iXaxMy7NTtTxwbP267z9TRZNXsYJ/cqBUiSf5UjcYHKR3WC/Zh1RLb6t5NQRdXeR
rM6X142fcVi78FQhHQNZWLuOzCto1bYW1RgWr5V59jhI8xLByf93lOzlANFXfttL
wDj1ywSo7pL0qmgesw3q3iXo2UBQHDCFpn7xJuk7yqW+rWCukCk=
=nszJ
-----END PGP SIGNATURE-----

--nextPart12596660.8597IJa787--



