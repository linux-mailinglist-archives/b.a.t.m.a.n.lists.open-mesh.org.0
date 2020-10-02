Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 748BE2848C6
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  6 Oct 2020 10:46:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4543180143;
	Tue,  6 Oct 2020 10:46:02 +0200 (CEST)
Received: from us-smtp-delivery-44.mimecast.com (us-smtp-delivery-44.mimecast.com [207.211.30.44])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 171B0802E1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  2 Oct 2020 11:07:19 +0200 (CEST)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-595-_R0Z6NCAP1-zqcVdsmLQ3A-1; Fri, 02 Oct 2020 05:07:15 -0400
X-MC-Unique: _R0Z6NCAP1-zqcVdsmLQ3A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA7EC1DDF1;
	Fri,  2 Oct 2020 09:07:12 +0000 (UTC)
Received: from bistromath.localdomain (ovpn-115-83.ams2.redhat.com [10.36.115.83])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D298B5C1D0;
	Fri,  2 Oct 2020 09:07:08 +0000 (UTC)
Date: Fri, 2 Oct 2020 11:07:03 +0200
From: Sabrina Dubroca <sd@queasysnail.net>
To: Stephen Hemminger <stephen@networkplumber.org>
Subject: Re: [PATCH net 00/12] net: iflink and link-netnsid fixes
Message-ID: <20201002090703.GD3565727@bistromath.localdomain>
References: <cover.1600770261.git.sd@queasysnail.net>
 <20201001142538.03f28397@hermes.local>
MIME-Version: 1.0
In-Reply-To: <20201001142538.03f28397@hermes.local>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sd@queasysnail.net
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: queasysnail.net
Content-Type: text/plain; charset=UTF-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601629640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2txwA1izpr7GQ2eIvbiErY8mKsYWVRQO8xn2aTDLY/Q=;
	b=zdzFEeoSmNh1oRR17y1VpNavWwpuA/1BQ+vfm1qQz975q1R5V7QWkVcMWV5ICEQh6cCl6Y
	siQpCAesy1MoDUcNRfg4lkdI3yz2Nbm4SzazLLDvlG/Shsynq91iAqGbbSq4/KLv4X6SRU
	LPLBH6XPQejbARLJxFz+61FCT2dhgt8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601629640; a=rsa-sha256;
	cv=none;
	b=h5IcHHfmNILGSAIX9uExgP8Ts5vZuzuEPeGTPW+HKawpKDUN61N9FtnYSNqwEpfeol2baE
	CGiwSF3dqTW+rGJa5aWB5ga6vwEfNbQhXvZEcOsPk/l/KKDg9NvbL79cLxtRy49iHhjrri
	96cGQkzUssDJKuQDu37PmN36TKO4KKs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of sd@queasysnail.net has no SPF policy when checking 207.211.30.44) smtp.mailfrom=sd@queasysnail.net
X-MailFrom: sd@queasysnail.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: SQOYRVFDHKSBVVR6GCAMNYEPJMZOXADA
X-Message-ID-Hash: SQOYRVFDHKSBVVR6GCAMNYEPJMZOXADA
X-Mailman-Approved-At: Tue, 06 Oct 2020 08:45:59 +0200
CC: netdev@vger.kernel.org, Nicolas Dichtel <nicolas.dichtel@6wind.com>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SQOYRVFDHKSBVVR6GCAMNYEPJMZOXADA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

2020-10-01, 14:25:38 -0700, Stephen Hemminger wrote:
> On Thu,  1 Oct 2020 09:59:24 +0200
> Sabrina Dubroca <sd@queasysnail.net> wrote:
>=20
> > In a lot of places, we use this kind of comparison to detect if a
> > device has a lower link:
> >=20
> >   dev->ifindex !=3D dev_get_iflink(dev)
>=20
>=20
> Since this is a common operation, it would be good to add a new
> helper function in netdevice.h
>=20
> In your patch set, you are copying the same code snippet which
> seems to indicate that it should be a helper.
>=20
> Something like:
>=20
> static inline bool netdev_has_link(const struct net_device *dev)
> {
> =09const struct net_device_ops *ops =3D dev->netdev_ops;
>=20
> =09return ops && ops->ndo_get_iflink;
> }

Good idea, I'll add that in v2.

--=20
Sabrina
