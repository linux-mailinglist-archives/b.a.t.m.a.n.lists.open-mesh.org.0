Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E9E2747BE
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 22 Sep 2020 19:51:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7A27A807FB;
	Tue, 22 Sep 2020 19:51:25 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 05B4180091
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 22 Sep 2020 19:51:21 +0200 (CEST)
Date: Tue, 22 Sep 2020 19:51:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1600797081;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zCM5VxHkCIoBQeDJlIyw4juC1TJgd0X5qSumEOZ5cdQ=;
	b=ipbW8ktr8x318xBdJvWFr4qPkL452gpIHsDdF3J32VjU7bTntUOieHxevcgOR+BvdjaCl6
	nO8NG59iip3n7eGDrLawIxbFoX0IBFfi11wbkClVA7vl1hn5pCwnp94dk2P8sMhfV8ePM9
	sp+Lu+eW+NEns8yJOA6ZEqAuMvfBxajboF2g9HWuDJ+8CP2Gpkh9p6ioC1hHKloRBHoOu9
	7zYbsY8OcfNgLjED8MjndpiscdZRtlIHY1qKXYD4frwq6epkS/0AH3LvCDdWrrDI1GLlye
	iagt4ajRj8F0cPxPsVp/Pw6zIPkYb/lVrsiqaQeSoOYrDCGO9c+Hz8UgpoQ/Fg==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH net-next v2 06/16] net: bridge: mcast: rename br_ip's u
 member to dst
Message-ID: <20200922175119.GA10212@otheros>
References: <20200922073027.1196992-1-razor@blackwall.org>
 <20200922073027.1196992-7-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200922073027.1196992-7-razor@blackwall.org>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600797082;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=zCM5VxHkCIoBQeDJlIyw4juC1TJgd0X5qSumEOZ5cdQ=;
	b=I8sJIjv/vRpOXyViztrUxcpTviwBihIFwUB7FEAVMa9y3OcRupA6UhO+bMx2OTrbHSM+tg
	vZ9KpTwHlUlHrsDxepCykFz2XDGbSB7KdzungPiwbJdC4HKOOxWpDXamf5Vnk7gjaksjzD
	bxtwR7Hi51TqrfR2MsodBg+MzUb5WAk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600797082; a=rsa-sha256;
	cv=none;
	b=SpsjveBtOznYSZ81h/mtGrIOFTVwTIKavwTpkSMgl6qoMrM6oO7/fOJz4gzuCmGlPz8m+1
	VEDgFY7oJqSxHzp9ljamYEOdMKkqK3wTOElH8syOIA6aH0J6RlijwneA+WidqOL/9DYzod
	W8/MxyeQ9jFWY3kMb7l7/I4zPAzMkhQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=ipbW8ktr;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Message-ID-Hash: 6A4KCKOCOS4SNQV6KUBNITVZNDWKNZVE
X-Message-ID-Hash: 6A4KCKOCOS4SNQV6KUBNITVZNDWKNZVE
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, roopa@nvidia.com, davem@davemloft.net, bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6A4KCKOCOS4SNQV6KUBNITVZNDWKNZVE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, Sep 22, 2020 at 10:30:17AM +0300, Nikolay Aleksandrov wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Since now we have src in br_ip, u no longer makes sense so rename
> it to dst. No functional changes.
> 
> v2: fix build with CONFIG_BATMAN_ADV_MCAST

Hi Nikolay,

I don't see a "src" in br_ip in net-next/master at the moment. Or
is that supposed to be added with your IGMPv3 implementation in
the future?

(which btw. is awesome, really looking forward to full IGMPv3(+MLDv2)
support, as source-specific-multicast would allow us to implement
some neat, way more efficient algorithms than with any-source-multicast
for multicast in batman-adv in the future, too)

Regards, Linus
