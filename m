Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A56B646
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Apr 2019 19:04:53 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 904AD80777;
	Sun, 28 Apr 2019 19:04:47 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 7CEC380531
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Apr 2019 19:04:44 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id D5DFB1100CF;
 Sun, 28 Apr 2019 19:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1556471084; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=03XXwROeKtZYBbUDVYEpJEDPTmNWseNZE3+qrS7a2TM=;
 b=eGDjVCzDupQZo/OObNRiAJqY7RU4Yny46f+RHrgXRGrxirU1FCqqqQc7CN9kX/BWqoHl7O
 VJjXWccK/IELCbyer7hakcnv3vbeVk8H7yPExkHRVWxWs120kfkDBkWziyYkQ/LbFS2K9v
 VjXSmvbzOYjUzWvMQNDvmKDv4z+udWE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sun, 28 Apr 2019 19:04:40 +0200
Message-ID: <2852684.HY4pDEyiBM@sven-edge>
In-Reply-To: <20190426171231.18156-1-linus.luessing@c0d3.blue>
References: <20190426171231.18156-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3415318.LZ3gu7H8KP";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1556471084;
 h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=03XXwROeKtZYBbUDVYEpJEDPTmNWseNZE3+qrS7a2TM=;
 b=FHKh78aio5xtZAgNxGDwtGOOG1cb5M/AM9auhs54noKBup+wfxm3/1CdQ+j6vMh2JWJgya
 3G2DlxcyM1c1DLiSxSoD4JH2Zb7Wj1C3au3kg5qud+EGVCOJAPchPWlpueG5KDeFOsLhPd
 /rgMBpDTm0cZ7z+jXwAy0avVTes/PtI=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1556471084; a=rsa-sha256; cv=none;
 b=12F9BzgS9QvjqTzpgjB7ly3F9lP++F5IJgLpqZ05J45LGraLbcxla0YnTZI+UfIE7kGaPt
 zapB+dmE5gowzDAVVMdB+Bv2iUy36HnVdvuM/HvQOe2Qo1FuNfOnnXM0U5G7+Pj4P3RLci
 mU5+pEkbxCbh+HjGVuAyTqdEttpyDFA=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
Subject: Re: [B.A.T.M.A.N.] [PATCH] batman-adv: introduce "noflood"
 broadcast flood prevention option
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
Cc: Martin Weinelt <martin@linuxlounge.net>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart3415318.LZ3gu7H8KP
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday, 26 April 2019 19:12:31 CEST Linus L=FCssing wrote:
> With DAT DHCP snooping, the gateway feature and multicast optimizations
> in place in some scenarios broadcast flooding might not be strictly
> necessary anymore to be able to establish IPv4/IPv6 communication.
> Therefore this patch adds an option to disable broadcast flooding.
>=20
> Larger mesh networks typically filter a variety of multicast packets via
> ebtables/netfilter to clamp on overhead. With this option such firewall
> rules can be relaxed so that such multicast packets are only dropped
> if they cannot be handled by multicast-to-unicast, for instance.
>=20
> "noflood" comes in two flavours: If set to 1 then flood prevention is
> enabled for all multicast/broadcast packets except ICMPv6 and IGMP
> (cautious mode). Or, if set to 2 then flood prevention is enabled for
> all multicast/broadcast packets (aggressive mode). If set to 0 then
> flood prevention is disabled.
>=20
> "noflood" is disabled by default as there are still some things to take
> care of to avoid breaking things (especially for the "aggressive mode").
>=20
> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>

@Martin, I think you've started to experiment with this noflood feature. An=
y=20
experiences which you can share with us?

Kind regards,
	Sven
--nextPart3415318.LZ3gu7H8KP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzF3SgACgkQXYcKB8Em
e0abHw//dT7mmJlCqq/EZWzOBS/Bwnl6YcUdgRBggHdPXWPzVDpO27BA+gHnEGh+
NLUQ1dOWhGUllu6HrC8FpFIMnrihz/MWkjAY4hpfeI/pAYqv6UU2jFTFDYwnkchL
5/rFFdr/yodq3L2EKYWOacABjXrfbJ2TF9tAMW6nZ5zgFPjCvNycsn6fOsA21SBK
lQbQfE7wqJpTeo4L8fyybZRiEmJ90sM6g/BQDPpGA5nRDyAwDOPTfyO4nvpVS5Bp
W1/veCNIWjz7eKICnV8mZPUfjKZSTdZCGg9fL1JubeGwzlO6BZE1WYW4NcpeY6Rr
GEya5SrfWaHbY4YYfM88aaNWX6TzcQaXalBBKyrC8fcnhmKKBGVzSHssNWEZ1dk5
z/w07m0+nb8+idzIig8TBIm3FS84EGba45ANzbnNswMFJieGgdOg9ED2n9T2SLeu
ox4Byh9cZyVcwS54L5gem1Qot1URk6eFZb7ev+UTNc0uz3cKAmyLjDVRe/Ge+kMH
XJI/0fEFYCTa+p0Xrvce9uJeMkcmIEsrYPCB3+sWo+4k/6LB/48Li+mWL+HsOFvZ
9PKJKAXNc0q+qBzkUpJ/+V6OJ+K93ntyN53JWcxgXBr1OKxLFsCCru45RX+Stg21
V9G65EvddWAJRKhyooXKlu/AG1SWJawZuG3433gKzw98XJY7Bxg=
=vBgl
-----END PGP SIGNATURE-----

--nextPart3415318.LZ3gu7H8KP--



