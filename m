Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFD33FE390
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  1 Sep 2021 22:13:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8B4F2807C2;
	Wed,  1 Sep 2021 22:12:59 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1195880671
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  1 Sep 2021 22:12:56 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6C4FD3EA72
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  1 Sep 2021 22:12:54 +0200 (CEST)
Date: Wed, 1 Sep 2021 22:12:53 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Dynamic DHCP server assignment and spin-up on batman-adv mesh
 network
Message-ID: <YS/exTf/6NOMuH5N@sellars>
References: <20210831172841.1195.74688@diktynna.open-mesh.org>
 <YS/afIp1Lrc4JNvv@sellars>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YS/afIp1Lrc4JNvv@sellars>
X-Last-TLS-Session-Version: TLSv1.3
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1630527176; a=rsa-sha256;
	cv=none;
	b=LQPKdDOviYKlMBX59A67/GVTzKGdZQT/k9fJzp+n04xvVdDWI1ADIBeItgplYelVE4e/LC
	VQR1VhqX5FZEyoXR3xKVQU0p6cuGn5x+0QhP2bIdc6ggztcsArOafeqwrnjx1Da5pTtmcY
	6MZrM3cw1Zg+C43YUEyEuJvFCO9zAdA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1630527176;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9ncA739fca0WdfrbmNHztq+plvS5WcXzwu6+wapPMao=;
	b=o2olsOFsYsw5jsOm5yHeX1JVSenb3b3+5Owg7rcb6sJyPG3lbcnok43dwd7gq9/sKtrk14
	dD8r4PXRi55irZXMVzhNnEdjginsOvVJcPMVH7C6zMyNJoWYF9jNft2EVt4wWPj+tRwX8/
	ZJ0Y8zIew88lGJLLPJg4g2Xr4BNnxys=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: O6KUV36KYH4O3LMR34JL22DEQPWQV3EF
X-Message-ID-Hash: O6KUV36KYH4O3LMR34JL22DEQPWQV3EF
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O6KUV36KYH4O3LMR34JL22DEQPWQV3EF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, Sep 01, 2021 at 09:54:36PM +0200, Linus L=C3=BCssing wrote:
> On Tue, Aug 31, 2021 at 05:28:41PM -0000, tanner.perkins@cnftech.com wr=
ote:
> > If this is not the best place to ask questions regarding mesh network=
s utilizing the batman-adv kernel module, I apologies and please point me=
 to where I need to be.
> >=20
> > I'm looking to set up distributed mesh network using the batman-adv L=
inux kernel module. However, I don't want to have to statically assign IP=
 addresses to all my nodes therefore my first thought was to use DHCP. Th=
e problem arises in my scenario that any node could come and go in the me=
sh network as they move in and out range of the network. Therefore manual=
ly allocating a single or even a few DHCP servers isn't realistic as that=
 DHCP server may drop out of the network at anytime. Is there a dynamic w=
ay to reassign the DHCP server based on the nodes still within the networ=
k when the previous DHCP server drops from the network?
>=20
> Tricky question. DHCP was probably not designed with highly
> dynamic networks in mind back then.
>=20
> Typically people run a few DHCP servers on hosts with a high
> availability and not mesh nodes that might go offline at "random"
> times. And then use the batman-adv gateway feature to stear DHCP
> requests to the "best" one [0]. For some topologies people also
> make use of the batman-adv "Bridge Loop Avoidance" [1] feature
> and place the DHCP server(s) on a common LAN backbone to which
> multiple nodes are connected via cable, which can add some
> extra fault tolerance. And maybe set the lease interval to
> something faster then the usual defaults.
>=20
> Someone had also been writing DDHCP, a "Distributed DHCP Daemon" here
> [2] but I'm not sure if it is actually used by anyone at the moment.
> The original idea was to integrate it into the OpenWrt based
> mesh routing framework "Gluon" [3], so that every node would be a
> DHCP server for all its locally connected client devices and the
> DHCP requests from the client devices would be filtered from
> entering the mesh directly. And the DDHCP servers would
> organize leases among themselves. But there hasn't been a PR for
> Gluon yet. But it was tested (and developed) at Freifunk Kiel
> at some point. If you were to try it out, I'd be very interested to hea=
r
> what your experiences with it are.
>=20
> Next there is also AHCP [4] which was built for/with BABEL I
> think. But don't know how it actually works and if it could be
> useful on layer 2 at all or if it is only usable with a layer 3
> mesh routing protocol.
>=20
> Regards, Linus
>=20
> [0]: https://www.open-mesh.org/projects/batman-adv/wiki/Gateways
> [2]: https://github.com/sargon/ddhcpd
> [3]: https://www.open-mesh.org/projects/batman-adv/wiki/Bridge-loop-avo=
idance-II#Situation
> [4]: https://www.irif.fr/~jch/software/ahcp/

Sorry, links and numberings are off, should have been:

[0]: https://www.open-mesh.org/projects/batman-adv/wiki/Gateways
[1]: https://www.open-mesh.org/projects/batman-adv/wiki/Bridge-loop-avoid=
ance-II#Situation
[2]: https://github.com/sargon/ddhcpd
[3]: https://github.com/freifunk-gluon/gluon/
[4]: https://www.irif.fr/~jch/software/ahcp/
