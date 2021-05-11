Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4A537A5BE
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 11 May 2021 13:29:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9CFAC83F26;
	Tue, 11 May 2021 13:28:59 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5884C8051D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 11 May 2021 13:28:57 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 711293E8F5;
	Tue, 11 May 2021 13:28:56 +0200 (CEST)
Date: Tue, 11 May 2021 13:28:54 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [net-next v2 09/11] net: bridge: mcast: split multicast router
 state for IPv4 and IPv6
Message-ID: <20210511112854.GA2222@otheros>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
 <20210509194509.10849-10-linus.luessing@c0d3.blue>
 <f2f1c811-0502-bde4-8ece-e47b3e30dc66@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f2f1c811-0502-bde4-8ece-e47b3e30dc66@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620732537; a=rsa-sha256;
	cv=none;
	b=AihGXo93BGVkDjCkF7HctIQ5nfI037kZ7WCx2xnKxAMdKHNOlNhEwg1sTvuVouFOsxryGR
	1ONk3RUCB6v8kB37KiDwiUmsR9fR03dsS5HmSDqevDC7TI/+8VZZmbyJ646tMGri/sumjI
	9tcR5v6Cqed91YdBAQs8d8lSG/g3cZ4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620732537;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=44UrMKOpEgYUiNO89savLvoTA2ZPcTWprUDBxfbb6WU=;
	b=thpMgWcwuG+0+/j3fk+tP9LuwM96L4uv1QsXOClnhUqSpxJboqOGlmAOEI5Izt+C92lwmZ
	EPkkfw2Pz6KadDhoKSsMNDQ2LjPO7oknCExqbVPzR3XIGkL9wXNymwbrIt7uX8EgWUAGVH
	zFALBFYJHNLI1zSSr8qVPgCNTUGQf00=
Message-ID-Hash: AVMWYWPGYICR5EMDV2NC7IPV265A74UZ
X-Message-ID-Hash: AVMWYWPGYICR5EMDV2NC7IPV265A74UZ
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AVMWYWPGYICR5EMDV2NC7IPV265A74UZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, May 11, 2021 at 12:29:41PM +0300, Nikolay Aleksandrov wrote:
> [...]
> > -static void br_multicast_mark_router(struct net_bridge *br,
> > -				     struct net_bridge_port *port)
> > +#if IS_ENABLED(CONFIG_IPV6)
> > +struct hlist_node *
> > +br_ip6_multicast_get_rport_slot(struct net_bridge *br, struct net_bridge_port *port)
> > +{
> > +	struct hlist_node *slot = NULL;
> > +	struct net_bridge_port *p;
> > +
> > +	hlist_for_each_entry(p, &br->ip6_mc_router_list, ip6_rlist) {
> > +		if ((unsigned long)port >= (unsigned long)p)
> > +			break;
> > +		slot = &p->ip6_rlist;
> > +	}
> > +
> > +	return slot;
> > +}
> 
> The ip4/ip6 get_rport_slot functions are identical, why not add a list pointer
> and use one function ?

Hi Nikolay,

Thanks for all the feedback and reviewing again! I'll
remove (most of) the inlines as the router list modifications are
not in the fast path.

For the get_rport_slot functions, maybe I'm missing a simple
solution. Note that "ip6_rlist" in hlist_for_each_entry() is not a
pointer but will be expanded by the macro. I currently don't see
how I could solve this with just one hlist_for_each_entry().

Regards, Linus
