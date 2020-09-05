Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A6225E5EA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  5 Sep 2020 09:14:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D15E68065F;
	Sat,  5 Sep 2020 09:14:24 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 389C7802F3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  5 Sep 2020 09:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1599290061;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=EZHh1ov015ZeVtxGMzm7kC32/el2aX41ANGy6tndKoQ=;
	b=rjxosKxQ/0O4KdFmeb83i8Z/KJn7KRs3CGNXwN2f4P1dR4EtcXrgkdggAGrMIk0RU2zYsT
	rkSx/tBHwgrEOSVvyNHRniHdYqRZfm1hBozW38NMWM/SaE7QMdXGG7669AoBWU0JwRJukr
	8BsgOI+HeOlkPrePk38WNL3z/r6qpSo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH maint v2 3/4] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from mesh
Date: Sat, 05 Sep 2020 09:14:18 +0200
Message-ID: <266559078.Ph8ahLCQK0@sven-desktop>
In-Reply-To: <20200904182803.8428-4-linus.luessing@c0d3.blue>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue> <20200904182803.8428-4-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1634379.hfMa9LtLtK"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599290062;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=EZHh1ov015ZeVtxGMzm7kC32/el2aX41ANGy6tndKoQ=;
	b=gITGaGUOMdOX1hIKL2kiyaqH8vDmBvLRwafaoRRs4UC9Oy5GOq/B7tI+ZCunqXq5fVDqFS
	pbsvn03ZOK3K+IxVgs2NEuDhFV5w9uDRII1kQlcpbyecYEg+LWd6Ofv7q5HSOJY0OIofPY
	7nZx2eL8sRJE6UImjpJ8CRXAa5LicEQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599290062; a=rsa-sha256;
	cv=none;
	b=EGDKQ6VT+FZRUe/yT631vn+/6P2isXwHBiF6+lb0+RbDzQRlnetI20YPfCtArWDb6arvUK
	WOBF+fpEWy4mFuFKJX8LlgtSrxPpll4XTMbSeOpZRODsjYla3nGeJNTXj3l+lYCqzylP8Z
	m6onEsGdd0WxLDB/M4kDiFjpB1KtiJE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=rjxosKxQ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 3WV525A4RCSGJN3QMRREEFCFEVOADWNW
X-Message-ID-Hash: 3WV525A4RCSGJN3QMRREEFCFEVOADWNW
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3WV525A4RCSGJN3QMRREEFCFEVOADWNW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1634379.hfMa9LtLtK
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday, 4 September 2020 20:28:02 CEST Linus L=FCssing wrote:
> For DHCPv6: This is even trickier... DHCPv6 potentially uses
> non-broadcast multicast addresses. However according to RFC8415, section
> 7.1 it seems that currently multicast is only used from a DHCPv6 client
> to a DHCPv6 server, but not the other way round.
>=20
> Working through the gateway feature part in batadv_interface_tx() it can
> be inferred that a DHCPv6 packet to a DHCP client would have been the only
> option for a DHCPv6 multicast packet to be sent via unicast through the
> gateway feature. Ergo, the newly introduced claim check won't wrongly
> drop a DHCPv6 packet received via the gateway feature either.

I don't really get this part. Shouldn't it be the other way around in the=20
code? But I haven't the time at the moment to check  the code - maybe we ca=
n=20
discuss this on Monday.

And I would also like to ask Simon to check the BLA patches before I merge=
=20
them.

Kind regards,
	Sven
--nextPart1634379.hfMa9LtLtK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9TOsoACgkQXYcKB8Em
e0YYbQ/+OLgyG3CceXOO3AZiVvLzOwlvcjCnPMag4hhRJS+mzyIg6qP2rpuej2HH
BjT+o/3I96FMfkeNvEofFNmyNdZVD2pq9MvQJxBqlg6Ww78jHnYMJ9SU9ZmtnjgM
IsoGtW/s5dtl2qvI63yUI+DxXEWH78X6QKGIDlUdtxVAopHnn/BnC62eMtleC5ug
VNbJlO4f+Fj3jUBZmTqdoei/QYdHqw4GxHt+89DBdBS3uHasgugd9Q7aQUxAhC74
t01KrqlL+LtcM9uz+9yGCwoLqtWSncY5ie6c2t41SHtsRq8YlYObuNUyZFcoyVsU
1d6cl/icgfveNvmiLbbF6V5dsaTTUKgRaG2T3gXz2bkGsaHCauCzBmrR8JUpf9fo
DHsSeHgPKaBv8ZyVtHGNi9nDGCiL2FigtX8Ujlz4BDXymrahiXmbzvh/Rw2sQMH+
2kTi0yZBVBmxLW8xRZvRa9cjmbjPEke7D5e6RH89EtMye23ZLaFcLSoqc7AOKA1q
y2S3FxyHL8VEOJ45dC1ZYxYcpbY8y4j92Z9EyGH/CyLaGa2NL5EOb6JoHcJlEX+Q
LqfX04sN6iPVGJ1Kk+x0KTsrBf1JDVZqQO6HLxwCV6ZCR7ywOEnvX3IyJhWQwKEB
K+H4yYmjUKRuLVavIi0EKhw7XiwZYa3qLJMBf41DjKNoxI31MfM=
=7Ump
-----END PGP SIGNATURE-----

--nextPart1634379.hfMa9LtLtK--


