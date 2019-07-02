Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 844CA5DDCD
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  3 Jul 2019 07:45:54 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 8B4BF826E2;
	Wed,  3 Jul 2019 07:45:49 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id A334F80C11
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  3 Jul 2019 01:13:13 +0200 (CEST)
Date: Wed, 3 Jul 2019 01:13:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1562109193;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LoksQgMuk2Kt4j2B5li4KJCxEkwEChyK4NytrrYLJM0=;
 b=Iqv5pj9XwiKR2p5lOawMUFRwc1opH1IlECd+4FMHaJFhM5WSe3XO4/94//FDQFKNLXhxHP
 8ax+nnciW8IOALXXh6gy9RdPB9qZDKumLnbd86RF4QAPhFmxr2rKQOuo2J4ZBEHCLgyw4L
 dlg7J5ddPmdXEfQV1PQF13JFBboIsMa1N1AwVg35Jzzh7kIs1oZNb2UqWXM6rrrfTHtJ+D
 sTNalTQO+ncEaaIpSDpJmQAX+vkuAUMAHIq1IuTK4u0FUqDgWR7CRiQHC98BlmciwPaqVm
 2uVf6aLxnjLqigUypqCBzyKOhdu30SO/6PSw5+CCk0+dRoj8SjmA8OnU/W3/nw==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Ido Schimmel <idosch@idosch.org>
Subject: Re: [RFC net-next] net: dsa: add support for MC_DISABLED attribute
Message-ID: <20190702231308.GA2414@otheros>
References: <20190620235639.24102-1-vivien.didelot@gmail.com>
 <5d653a4d-3270-8e53-a5e0-88ea5e7a4d3f@gmail.com>
 <20190621172952.GB9284@t480s.localdomain>
 <20190623070949.GB13466@splinter>
 <20190623072605.2xqb56tjydqz2jkx@shell.armlinux.org.uk>
 <20190623074427.GA21875@splinter> <20190629162945.GB17143@splinter>
 <20190630165601.GC2500@otheros> <20190702171158.GA7182@splinter>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190702171158.GA7182@splinter>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1562109193;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LoksQgMuk2Kt4j2B5li4KJCxEkwEChyK4NytrrYLJM0=;
 b=a9gS49Yb9weEfHppeepZG2yMIdjpwfv0Ueb/TV/GxSyhyTiC5oe7bDAoL1rIx/dIpHkuoU
 PqORwd+LIp762cLa4VZ6AzPq5vl4BIBqs2PR/VIKpkgxwBodvJSodDP+HKfpi21hHW34qu
 u0r8KUIk69pFiCCPAu7e/a/WWLEYXZkqsmXr/uBGpGzeiUL5PRG1O2yIYD+ZkVI4SPnBbK
 hY/bU0LImkp6Z0/6pSbfnwDmELNJM8xiZ0dEe2y5w8j4+of64aleIgBNMgnnoqim6hGHmD
 4wLD4hIVtTUc9DUgsoWLcNzcvuIaA9oAUYOF+OPwjPGHi3R2IFI1/6zN3/d/DA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1562109193; a=rsa-sha256; cv=none;
 b=MtuRRV7GjdMQEWsuR6RxU2DEJs6i7+QsB7805P0xNg7lxugQoGNk1fClJGngHjoa4crcPC
 NpBPrGF2RIvY4k8dqYlS7wbAHd89hjPJVmkFX9eMnfwJeScxhwuS9CxFhvUmR4jn7yK1Jy
 jkyPjd/luymSNtSuhPZA9OoKZVwA3MYqq6Tfp5xiQVQgcEfYWuQ/6+URv3cH/pbChPCu9Y
 3KLnYeoDBfrL53+p5QBXMM/h2twuql9erZiY8h+Nlq/EyzSzAr19kcO1g9srYWuA5AoZ1m
 7dsNNCtLHojxv/p53ZSy6FrCh5EFHTrCAP3Ktx5Ch20HuvCxd6dkkngbpREewQ==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-Mailman-Approved-At: Wed, 03 Jul 2019 07:45:46 +0200
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 b.a.t.m.a.n@lists.open-mesh.org, nikolay@cumulusnetworks.com,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 bridge@lists.linux-foundation.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@mellanox.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi Ido,

> Do you differentiate between IPv4 and IPv6 in batman-adv?

For most things, yes: The querier state is kept separately for
IPv4 and IPv6. And we do have something like a "router node"
flag to signalize that a node needs all multicast traffic, which
is split into IPv4 and IPv6.

The "MDB" equivalent in batman-adv (multicast entries in our "TT",
translation table) are on MAC address base right now, not on an IP
address base yet, so that sounds similar to what you do in mlxsw?

Regarding querier state, we periodically ask the
bridge via "br_multicast_has_querier_anywhere(dev, ETH_P_IP)"
and "br_multicast_has_querier_anywhere(dev, ETH_P_IPV6)".

(Something more event based with handler functions would probably
be nicer, but this was the easier thing to start with.)


> 1. All the IPv6 MDB entries need to be removed from the device. At least
> in mlxsw, we do not have a way to ignore only IPv6 entries. From the
> device's perspective, an MDB entry is just a multicast DMAC with a
> bitmap of ports packets should be replicated to.

Ah, I see, yes. We had a similar "issue". Initially we just always
added any multicast entry into our translation table offered by
the IP stack or bridge, no matter what a querier state or "router
node" state said. Which would have led to a node receiving two
copies of a multicast packet if it were both a querier or router
and were also having a listener announced via IGMP/MLD.

So there we also just recently changed that, to filter out
IPv6 multicast TT entries if this node were also announcing itself as
an MLD querier or IPv6 router. And same, independently for
IPv4/IGMP.

> 2. We need to split the flood tables used for IPv4 and IPv6 unregistered
> multicast packets. For IPv4, packets should only be flooded to mrouter
> ports whereas for IPv6 packets should be flooded to all the member
> ports.

This one I do not fully understand yet. Why don't you apply the
"flood to all ports" (in the no IGMP querier present case)
for IPv4, too?

Sure, for IPv4 nothing "essential" will break, as IPv4 unicast
does not rely on multicast (contrary to IPv6, due to NDP, as you
mentioned). But still there would be potential multicast packet loss
for a 239.x.x.x listener on the local link, for instance, wouldn't
there?


If I'm not mistaken, we do not apply differing behaviour for IPv4
vs. IPv6 in the bridge either and would flood on all ports for IPv4
with no querier present, too.

Regards, Linus
