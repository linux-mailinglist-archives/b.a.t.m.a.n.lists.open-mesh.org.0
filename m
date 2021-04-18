Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFDD363780
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 18 Apr 2021 22:17:34 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C8DAD80EB0;
	Sun, 18 Apr 2021 22:17:33 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0CA9F80737
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 18 Apr 2021 22:17:31 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 82C7C3E885
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 18 Apr 2021 22:17:30 +0200 (CEST)
Date: Sun, 18 Apr 2021 22:17:28 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [RFC PATCH] batman-adv: convert ifmcaddr6 to RCU
Message-ID: <20210418201728.GB8165@otheros>
References: <20210418201422.8415-1-linus.luessing@c0d3.blue>
 <20210418201607.GA8165@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210418201607.GA8165@otheros>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1618777051; a=rsa-sha256;
	cv=none;
	b=eQwS+Bh4WuBe9YsmyBFqss4HvNQSqt5jwpp4wIu4ecUEd2k1t/Mna51ckROp7i0vRM2HF7
	X7+o8GSXkVZnZfiCadTFVmLdIp/aCd2viclD96/QRQaqY5K2FuafnpBCtkS3D2QadHoIE8
	D83z3E+LjMG/wAph4mlHX+H4GgXS+t8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1618777051;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ro/FWojgQYGmNtR5b5AYtGNG9wAsc610R5rW74Fbt/k=;
	b=YYsfDimOxl47hcPFNFtMsl9qmjMWfI6mCUPH6C96f3f4ymdIFwUEske7diTrlswwvPaW86
	ULIfEsRmh0Fqif1pJb8RyOv8Z9HtXT38t32QAb619LyH26+8z4mNnH9aMgy4+e5uJfPYJ/
	+84FMLLFm9HbukoeO0qvzm7svUIlb5k=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: YRQML3TQKD5HGY7HRH23AK33WAGHZI3U
X-Message-ID-Hash: YRQML3TQKD5HGY7HRH23AK33WAGHZI3U
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YRQML3TQKD5HGY7HRH23AK33WAGHZI3U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sun, Apr 18, 2021 at 10:16:07PM +0200, Linus L=C3=BCssing wrote:
> On Sun, Apr 18, 2021 at 10:14:22PM +0200, Linus L=C3=BCssing wrote:
> > [...]
> > diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
> > index 28166402..1d63c8cb 100644
> > --- a/net/batman-adv/multicast.c
> > +++ b/net/batman-adv/multicast.c
> > @@ -454,8 +454,9 @@ batadv_mcast_mla_softif_get_ipv6(struct net_devic=
e *dev,
> >  		return 0;
> >  	}
> > =20
> > -	read_lock_bh(&in6_dev->lock);
> > -	for (pmc6 =3D in6_dev->mc_list; pmc6; pmc6 =3D pmc6->next) {
> > +	for (pmc6 =3D rcu_dereference(in6_dev->mc_list);
> > +	     pmc6;
> > +	     pmc6 =3D rcu_dereference(pmc6->next)) {
> >  		if (IPV6_ADDR_MC_SCOPE(&pmc6->mca_addr) <
> >  		    IPV6_ADDR_SCOPE_LINKLOCAL)
> >  			continue;
> > @@ -484,7 +485,6 @@ batadv_mcast_mla_softif_get_ipv6(struct net_devic=
e *dev,
> >  		hlist_add_head(&new->list, mcast_list);
> >  		ret++;
> >  	}
> > -	read_unlock_bh(&in6_dev->lock);
> >  	rcu_read_unlock();
> > =20
> >  	return ret;
> > --=20
>=20
> Ups, accidentally added this. Will remove that in the next
> version.

Ah, no, sorry, should be in there, changed my mind :D.

Sorry for the noise.
