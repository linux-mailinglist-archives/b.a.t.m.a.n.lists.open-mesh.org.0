Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 226BF262E5F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Sep 2020 14:15:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id ECF55807D1;
	Wed,  9 Sep 2020 14:15:54 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C704F80250
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Sep 2020 14:15:51 +0200 (CEST)
Received: from prime.localnet (p4fd577c7.dip0.t-ipconnect.de [79.213.119.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 8B67F6206B;
	Wed,  9 Sep 2020 14:15:51 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH maint v2 4/4] batman-adv: mcast: fix duplicate mcast packets from BLA backbone to mesh
Date: Wed, 09 Sep 2020 14:15:51 +0200
Message-ID: <3191833.Be6Uz4tNrB@prime>
In-Reply-To: <20200904182803.8428-5-linus.luessing@c0d3.blue>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue> <20200904182803.8428-5-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1682057.2v8p5POe7E"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599653751;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dfbZegM0Z+DSr3rWLx2dCxAofXMAiJiPYdb7c9LdrHA=;
	b=cjcRnwQEIbju6SD4VwJFQlrz7kZ5eOQODwuHCo9oWbHMDUpvMkgOyAhtbLoatuUgK+Mp3V
	E6uKqq3iLpF1WrvfrqqLARiFyxlXVxC37j3vn2gfY6L715LlNjwgM+ZkXB52vM5rLjsB1L
	g9B/7EDddEB3P6FqtYYIgxZxd6hiQA4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599653751; a=rsa-sha256;
	cv=none;
	b=tkYfqTe6GsVh8WkCaBA15x7HBhPQf/ybUYElcK0XRdsp1wNVSZ69w0gZndQyfPzvM5SQYn
	sooyKDfYXMkJy83Be65+0Wp22frTQ+uLPVw6IlWY/yZKQL47zi2dGUZQ384L5MBJg/APif
	WwLIk8QVZRbV9Gx3tWN8vv7Hl19Z5g8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: YTQNX3LHOMFL5XQX4F2US2QN4EBS4FGO
X-Message-ID-Hash: YTQNX3LHOMFL5XQX4F2US2QN4EBS4FGO
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YTQNX3LHOMFL5XQX4F2US2QN4EBS4FGO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1682057.2v8p5POe7E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday, September 4, 2020 8:28:03 PM CEST Linus L=FCssing wrote:
> @@ -1626,7 +1626,8 @@ bool batadv_bla_check_bcast_duplist(struct batadv_p=
riv
> *bat_priv, if (entry->crc !=3D crc)
>                         continue;
>=20
> -               if (batadv_compare_eth(entry->orig, bcast_packet->orig))
> +               if (!is_zero_ether_addr(entry->orig) &&
> +                   batadv_compare_eth(entry->orig, orig))
>                         continue;
>=20
>                 /* this entry seems to match: same crc, not too old,

Shouldn't this check also be skipped if the orig parameter is a zero mac=20
address? i.e.:

if (!is_zero_ether_addr(orig)) {
	if (!is_zero_ether_addr(entry->orig) && batadv_compare_eth(entry->orig,=20
orig))
		continue;
}

Whether orig is zero can probably be checked once before the loop and the=20
result cached in a bool variable.

A little comment may also be nice to explain this part a bit better.

The rest looks good.

Cheers,
      Simon
--nextPart1682057.2v8p5POe7E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl9Yx3cACgkQoSvjmEKS
nqFGyA/+ONCpPfoirkxEiz/C2rz9AZ88JiU4mlru++VNu5mMFsC+ebfFuVDHNbt5
BHD8cukZwXjdSQPXsZHjtuMKkR23JZTXkBttLQp/8lqOIFqUN1tUmCnMSnftkx/M
K4usfJjVZxRT5piNL8pg5VMZ9yc3IIcITn5x+DWkd6TKFmanEOKAfLJczSyuoSeo
QahOyua1Ac3VOiMws5oEgTs6G1lxfWfJmg2itiL/QhUtykJQ4WZgUTOoz/64aMU0
enRQC6EtmZSXy0ioQgudL2ImFr2jNhHZUoU5vCjQpljxSRErYYc2E6LVPAIIbXpX
cVW8FjkfA4P95Ncf8tyrXbvQOzs1ZqtVQYGPTRQEgfhDp46PtWe2fX5emMvdPNGL
tj38RZFKS5lL83AXnTS0UIJ3pN5ft8PwYyvCFzSY0Qy0yhqJzoWGPbjPR1wQ95zD
+eBKp9YjDqgEE8Woh9XSvZzG068Cdp1BxW8SiNsmsAU5VOu/63GU78GJm7qv9uCT
OeR7cbgcJ8uvJRe6cdH/pWCr0+QntJE5+JnUE4/yweP4eb2hHziJWOjlQVvcnooS
c59VoMctHNMbH/R9peqPyyW4mwb+0aFwwvhhHXHAlSVHtZe7+B9xJ31rAr75pyZm
YgrZ50KyKG2IRpeZV9vbzvZienOvN9zekLV1I5q6SP1LylszuuE=
=bYD8
-----END PGP SIGNATURE-----

--nextPart1682057.2v8p5POe7E--


