Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 14717263004
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Sep 2020 16:54:04 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D406E8070E;
	Wed,  9 Sep 2020 16:54:02 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D46128027F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Sep 2020 16:53:59 +0200 (CEST)
Date: Wed, 9 Sep 2020 16:53:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1599663239;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ocRfSJ8W2mnwt6QPb22PwL1g9c/6Uj+L78tmmW6oUWM=;
	b=ZCzYkogBXAewulb8D1jJ6XKcdz77KAVK0agv9ladoZAV6m29lJSlRlrMuAOQBietYgtmJK
	3TNpxPH43VGe2JIbyJLsIFWYwVW2gpQVGo9GHd86odi9fpKdUWuTmAfYvIVcVWtGHAaDpI
	dwPdR55N6+fiInzTXXxxlQPQCGGHLNrVMCO8S7CZxS6eEMcqD4WqRoA2HVGQWJg5zobs1F
	3AqpsdQ/KcytVFIxcNeClxpMdj5+5Xm+vlhQHWLi5rTnrIbWl57rTsnu8M68yrZ15kp/hT
	UaJ2yJXLcT9VxiYh7REJ5UpHibC1jqWXCcyaja+rYK6BPX068DzL8OIOvCiKvA==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH maint v2 3/4] batman-adv: mcast: fix duplicate mcast
 packets in BLA backbone from mesh
Message-ID: <20200909145357.GB2391@otheros>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue>
 <20200904182803.8428-4-linus.luessing@c0d3.blue>
 <2973088.WcO1NEu1zB@prime>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2973088.WcO1NEu1zB@prime>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599663239;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ocRfSJ8W2mnwt6QPb22PwL1g9c/6Uj+L78tmmW6oUWM=;
	b=tTTcT6EEHsThjL3KEg7/fd7SVo6qxj7iS5WrBnev94CFp+R12IqF0I3PFaghMgLz5LI7es
	kp3WUncHwodeA2ScGWmi2JdZKXzaGI7lN+GWif4h5GsRYltfiqQerZiKsCzxeO0KOEHwxY
	gl0kdiBON2fibqprLBzQGEuwofSDvNo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599663239; a=rsa-sha256;
	cv=none;
	b=3EO8yQud3+WU8dJuGHq6FXfkoGD6m5C728YzRJpclwFPSPaVvysDcc+yL6TYZxpufror4Z
	qjb6X3IpL1CTVoZxNGWRfcJQ2EUpNAc1gJvyU4Y1AmfudmZAzRvG8zm8i7dPLuEmRnaGXZ
	P7t6iHv8jevl0taLOLjdfODElblL71g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=ZCzYkogB;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: WK2J4Y7W43UHRBUDC2XAS2HL6WVTDOGI
X-Message-ID-Hash: WK2J4Y7W43UHRBUDC2XAS2HL6WVTDOGI
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WK2J4Y7W43UHRBUDC2XAS2HL6WVTDOGI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, Sep 09, 2020 at 02:06:06PM +0200, Simon Wunderlich wrote:
> >         if (unlikely(atomic_read(&bat_priv->bla.num_requests)))
> >                 /* don't allow broadcasts while requests are in fligh=
t */
> > -               if (is_multicast_ether_addr(ethhdr->h_dest) && is_bca=
st)
> > +               if (is_multicast_ether_addr(ethhdr->h_dest) &&
> > +                   (!is_broadcast_ether_addr(ethhdr->h_dest) || is_b=
cast))
> >                         goto handled;
>=20
> Isn't this exactly the same logic as it was before?
>=20
> is_multicast =3D=3D 0, is_bcast =3D 0 =3D> 0
> is_multicast =3D=3D 0, is_bcast =3D 1 =3D> 0
> is_multicast =3D=3D 1, is_bcast =3D 0 =3D> 0
> is_multicast =3D=3D 1, is_bcast =3D 1 =3D> 1

The 3rd one should be different. Note that "is_bcast" is not the same as
is_broadcast_ether_addr(ethhdr->h_dest). The former refers to the
batman-adv packet header, while the latter refers to the
destination MAC of the inner ethernet header.


> On Friday, September 4, 2020 8:28:02 PM CEST Linus L=C3=BCssing wrote:
> > For DHCPv6: This is even trickier... DHCPv6 potentially uses
> > non-broadcast multicast addresses. However according to RFC8415, sect=
ion
> > 7.1 it seems that currently multicast is only used from a DHCPv6 clie=
nt
> > to a DHCPv6 server, but not the other way round.
> >=20
> > Working through the gateway feature part in batadv_interface_tx() it =
can
> > be inferred that a DHCPv6 packet to a DHCP client would have been the=
 only
> > option for a DHCPv6 multicast packet to be sent via unicast through t=
he
> > gateway feature. Ergo, the newly introduced claim check won't wrongly
> > drop a DHCPv6 packet received via the gateway feature either.
>=20
> I also don't get this part. Maybe it helps if you can explain the two=20
> directions (client -> server, server -> client), and in which cases the=
re can=20
> be multicast, and then describe why your check is sufficient?

Hm, actually it's not just the description that is messed up, I
think. server->client is ok, but client->server isn't...

* DHCPv6 server -> client:
-> Easy, according to RFC8415, section 7.1 this would always be
   unicast. So neither the Gateway nor Multicast feature would
   touch it.

* DHCPv6 client -> server:
-> Actually both the gateway feature and multicast feature can use
   it. I misread the code...

I'm a bit uncertain how to solve the latter now... I see no way to
distinguish gw vs. mcast feature as is. We also have no flags
or reserved space in the batadv_unicast_packet available to make
them distinguishable.

So the only solution I could think of for now is
excluding DHCPv6 from multicast feature in TX of the originator...
(in batadv_mcast_forw_mode_check_ipv6(), adding excludes for
ff02::1:2 and ff05::1:3).

(Even though having the multicast feature handling it would
have been nice(r) as it'd work without needing a user to
set and maintain the gateway mode properly.)
