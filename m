Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F4E467A8
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 14 Jun 2019 20:37:32 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id F2B6581A54;
	Fri, 14 Jun 2019 20:37:28 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id EC47380445
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 14 Jun 2019 20:37:18 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id A05F51100D8;
 Fri, 14 Jun 2019 20:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560537432;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fs2zZKVzxmLZfZFMBfKyuPgvbcmQCla1P1fY/qbGQ3g=;
 b=F/f5QAGv/brRU0ukRa+HJqFBcE3uwwvelNg/+YUFU1/aSnQSOc535QUFjuWyGry+8B9vOq
 aLfP9PnBV2fekUMipgXfKJ75UAD59VUjQd+rviEcsYPFNHPwGDVZFZQgjPW1OoQgQkrLdt
 KAWGcclizKdBHHu5OV1cVKJtCukEg30=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v5 0/2] batman-adv: Add routable multicast optimizations
Date: Fri, 14 Jun 2019 20:37:09 +0200
Message-ID: <2692232.m69ynxnPBa@sven-edge>
In-Reply-To: <20190611205841.5841-1-linus.luessing@c0d3.blue>
References: <20190611205841.5841-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart15006818.2MCXt2l35v";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560537432;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fs2zZKVzxmLZfZFMBfKyuPgvbcmQCla1P1fY/qbGQ3g=;
 b=R2pWR8Bo2QR8xkkCUbLjpQJOjNZZFnBCiVmzm045/Pd8l1TkYp9JawI9KMEc7cUpO+NyLa
 5JMCHVyDf1rRoNGTsY4hbV+JV0/qkg2i5eSE1ajFyija2pJK2tjyaQl1eaz2fLDql9JFo6
 7sJ9Rfzutqu8rAKIQQp0rilFhGxaKus=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560537432; a=rsa-sha256; cv=none;
 b=y72Lsx4Qetzljqv4EqRvWUu5nH94ccgWJEZhM6/Z3z0QMTQ4KEtC5jsPqk8alqY/xD8Dlc
 +dIHFlMHJHR3pbD73Jf63AKLrOyll+zT6XdN4PJk8igY8YpZmWP3eOaFxkKTBRZU3M0Aej
 8Czfv6LdJ3drjup52xsxuVmjrhMOSro=
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

--nextPart15006818.2MCXt2l35v
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday, 11 June 2019 22:58:39 CEST Linus L=FCssing wrote:
> The following patchset fills the next gaps in the multicast address
> rules page by adding support for group-aware optimizations for
> multicast addresses of scope greater than link-local. So far, only
> link-local addresses were optimized as packets with routable
> addresses not only need to be forwarded to local multicast listeners
> but also multicast routers.

Applied. But please don't forget about the missing changes in the related=20
tools:

* https://www.open-mesh.org/issues/390
* https://www.open-mesh.org/issues/391
* https://www.open-mesh.org/issues/392

Kind regards,=09
	Sven

--nextPart15006818.2MCXt2l35v
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl0D6VUACgkQXYcKB8Em
e0bhPQ//SJ3EBFAGywKTQeQvfFhCke3U5q1vKzV4hMh11h18488Z284UCYdIj/VS
PmqsXwX5zDlsfKX2ly31jPY5iJ/VJJuwugbMsKdvmQCs7Dhj2hZ0lGIGlZcwRoov
AAbwlKbd1PA918wwZCH/o6gLi9MZDTebqDK7gDnw7KCL6twqNZK2D44gHPskMTg4
QsaAHNSO54uBAJ6bCFRBUwuK9996ufWqjGvKLM0wBZnWxTV3Y+2jeIRJXQ1IAXot
YctCSe8nHy8M3AMa35DtnKSG4+olF3i5P2FABuuHLlzzvyVQOwJxKHPmoYGq5QSs
MpE7yHJMFCM8GDTfYVTtoYTBot/Vn63I//fLIR8Syvua/tO8WKec/vv/QKEXmhmp
Apx6OZnfiATkLgO4H15RX4bk3edAot9umnwqT628y/NVCXeb1WkRYB+IyEgghSbd
B21Vr7V3XeQUJxpB+E1V4K7yddc0RxsEBACrN5Wd9rC/HUTJIO+eY7GYvlrx6loO
e7jzdZFNa/QQjyDlZGyX+2xlg3rZKt1RzzcZvILRiVyoWZc2ncEphzYciUxfapj/
oqqaG5fGivNXI+yDFKfa7iNmfbC1ZBpwt5+IUsY5zbOvT3iHtyYS5pSn/6lEqMc/
kb1HjEKW1/Q0sTodEVSnz387zaRzsU6kOEbNXmhClTBlR7pbdl8=
=Aihh
-----END PGP SIGNATURE-----

--nextPart15006818.2MCXt2l35v--



