Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A83BB26420D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 10 Sep 2020 11:32:15 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7061280783;
	Thu, 10 Sep 2020 11:32:14 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 428EB802C6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 10 Sep 2020 11:32:12 +0200 (CEST)
Received: from prime.localnet (p4fd5757f.dip0.t-ipconnect.de [79.213.117.127])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id D9FCE6206B;
	Thu, 10 Sep 2020 11:32:11 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH maint v2 4/4] batman-adv: mcast: fix duplicate mcast packets from BLA backbone to mesh
Date: Thu, 10 Sep 2020 11:32:08 +0200
Message-ID: <1604713.itQ50Tx4xl@prime>
In-Reply-To: <20200909152756.GD2391@otheros>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue> <3191833.Be6Uz4tNrB@prime> <20200909152756.GD2391@otheros>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2266084.Gcmbeqm8zX"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599730332;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wqMZWgA/AXHAoXDlUa2qanJ3yQlaLnHI1/4ZLv80EFc=;
	b=QqxTwgfhYSLdcgeGZamWbyj27jM1EIcIvAAsEWl4MuN2zvQY361HbfNB5Bu5Ufokh/ZGtZ
	9V//KOPRUZKqpA/2ZfcHUG5NAkFGCDbb4wl06ONAhUHpSosfyuf5Aq2eprAdlZuvB7mSUw
	ya6FZmlYv1V2mBcTlosIsAOc8nQJe/c=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599730332; a=rsa-sha256;
	cv=none;
	b=EtoXx+mcklSKQ+IKQb4DDO1zuJSXTaAMoIfXfvj6LAgJRRpiZ/KCLfK9rq22IscCeh5uwX
	oXGK9vSV2Y7d5LQKjkTtx9TxvOUhw8pcoDgmTcD6fB+tcQcUF8WQtH6tWrhwKdRFie9NyV
	/RUzzmgPr0N6etVNVVa43DIbz+Srx1w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: X44MTXE65W7SOVRF72EWX7YOWCXZM73G
X-Message-ID-Hash: X44MTXE65W7SOVRF72EWX7YOWCXZM73G
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/X44MTXE65W7SOVRF72EWX7YOWCXZM73G/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2266084.Gcmbeqm8zX
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday, September 9, 2020 5:27:56 PM CEST Linus L=FCssing wrote:
> On Wed, Sep 09, 2020 at 02:15:51PM +0200, Simon Wunderlich wrote:
> > On Friday, September 4, 2020 8:28:03 PM CEST Linus L=FCssing wrote:
> > > @@ -1626,7 +1626,8 @@ bool batadv_bla_check_bcast_duplist(struct
> > > batadv_priv *bat_priv, if (entry->crc !=3D crc)
> > >=20
> > >                         continue;
> > >=20
> > > -               if (batadv_compare_eth(entry->orig, bcast_packet->ori=
g))
> > > +               if (!is_zero_ether_addr(entry->orig) &&
> > > +                   batadv_compare_eth(entry->orig, orig))
> > >=20
> > >                         continue;
> > >                =20
> > >                 /* this entry seems to match: same crc, not too old,
> >=20
> > Shouldn't this check also be skipped if the orig parameter is a zero mac
> > address? i.e.:
> >=20
> > if (!is_zero_ether_addr(orig)) {
> >=20
> > 	if (!is_zero_ether_addr(entry->orig) && batadv_compare_eth(entry->orig,
> >=20
> > orig))
> >=20
> > 		continue;
> >=20
> > }
>=20
> Would be redundant. If entry->orig is non-zero and
> the compare_eth() says they are equal, then orig must also be
> non-zero.

OK good point, that's not really obvious (at least to me).

>=20
> I initially wanted to leave the code as unchanged as possible for
> net / maint. Should I do the restructuring to enhance readability, with
> the bool in this patch or in additional patch for net-next?

Personally, I would prefer having a bit more readability or verbose comment=
s=20
in front of those kind of logic if statements. Or avoid those logic=20
connections and have multiple "ifs" in a row where possible to enhance=20
readbility.

This patch is pretty heavy already as is, adding a bool doesn't make a big=
=20
difference IMHO.

Cheers,
       Simon


--nextPart2266084.Gcmbeqm8zX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl9Z8pgACgkQoSvjmEKS
nqG0WQ/+Ognd7uRujDLikRbIQbgfVJZM6z33riXjzdZibmliOVX1hE8rQ2jLZNgE
PlvigY1S2ILd7YOI/Kc3Nfe6Xh52AevE7XU7hLXyQU4cqriMM0HUmsp6LGAT1MfR
oWJ2hemxUGD4KmDyxM6Fp8verutwOeQnrnPhIWmIKDlw5ipx3nB4GBdj8eHBqvMm
LyY7lQetH0kH4PlSwsnyCbrTAEMdLzfdyj2ugf6ePCh9suBw+XC2bdTTEHNu2R+r
yfppKanUZxEcJYryzM+wJ6aWO/XaMoX0kdKd04AlaIXq59l05KkA9mfqmF9pJlB3
5K4TXUz/OnWi0IxklLHeb9CgRPq3BdZf2ObLRBwx+dspqzsXd8ULATMfAl5BQCYJ
qkwN+JwnqiMb3FKi23vVfS6sR8TLvLtmHsx57aMLWPoFBjsL4TUOKGkiiJ3yXaJQ
rp8PgWup6QENpEP/kbWNa4MAS3ecRj1cu5lsjRP/GnU/cSnSM8tIExF+CqiwjMl8
/dwVsqC+fnPYmv5KUnbvTxtvaiwM6wYdBZ6UhbGyI81J4+xkadZ9422jWcYmWXO8
TsLbuXTWnKlVzvrqC4A4/+4QT90yP/wYWHLS84W+Wrgit7+kRkAikCxzO8Sqoax3
HmPb1m18ZhP8LzEuL/3Y9i1ePSuTt7zCXr96ue2MYscbbeRGrzg=
=cfK7
-----END PGP SIGNATURE-----

--nextPart2266084.Gcmbeqm8zX--


