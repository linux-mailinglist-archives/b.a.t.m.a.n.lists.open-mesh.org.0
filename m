Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A06F5037B8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Apr 2022 19:27:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1571682EB5;
	Sat, 16 Apr 2022 19:27:04 +0200 (CEST)
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3DF4582EAC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Apr 2022 19:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=EjdC8GHfnpW2+ESFyB0V6FgpCsJX831aMf+z2y3qGX8=; b=reKHTq2vXr8ZMrBpPevTT0i9DJ
	lJ+xAs2VDXgNUZjhcTAksJxjfRxGEVFa3EhGtPVaQPo4OxEEdacpJT7PkTlFjPr6bXTqVyc7NIP81
	PKNK/an3wcxrxPkqKp5ZYUNRHdXN87NrRrjCNmSX6bv1AxHPwUMU3qLjBa6g8QorErno=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1nfmCJ-00G83m-Cd; Sat, 16 Apr 2022 19:26:59 +0200
Date: Sat, 16 Apr 2022 19:26:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] batman-adv: Don't skb_split skbuffs with frag_list
Message-ID: <Ylr8YwkBAS+6iozm@lunn.ch>
References: <20220416122434.33061-1-sven@narfation.org>
 <YlrQ306LD4luXaeJ@lunn.ch>
 <2248548.8ZbxvZVH5L@sven-l14>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2248548.8ZbxvZVH5L@sven-l14>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650130020; a=rsa-sha256;
	cv=none;
	b=GIrJMGGYYOzLTIdMvqltQlKHFxr/OVkxMoMG6cZHNyXbmO42b3Q2joNLkRS8/84exy60dT
	hvE6xikyo7B5aXGvThzMblV+HrZqoD89IAVYMZJKGFUOc9IHKUFW7q+SmgGtUS6lfbPuBi
	8QmIGp6htHy27Cy3cHUgiOvqJWNi2S4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=lunn.ch header.s=20171124 header.b=reKHTq2v;
	spf=pass (diktynna.open-mesh.org: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650130020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=EjdC8GHfnpW2+ESFyB0V6FgpCsJX831aMf+z2y3qGX8=;
	b=e7iVnA7mzwslKrdGy4SJAZowx9kHZsO+opgZsVlcLF3vY1OOICikOMBzci8dJfZsmW3e/W
	cQWMSOo21sUSXfrQOofTvr0uEK3sCCr5WT6gcvWwrH7TH1OiK0bn1mow7E3ZxG1I4NxomN
	mVWnYUEQu7D5OIW/pcT9Wp7u8tYRz4E=
Message-ID-Hash: SYTZZOBWXCYWR6XQEO6NPBXKDJSCIZ3X
X-Message-ID-Hash: SYTZZOBWXCYWR6XQEO6NPBXKDJSCIZ3X
X-MailFrom: andrew@lunn.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SYTZZOBWXCYWR6XQEO6NPBXKDJSCIZ3X/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sat, Apr 16, 2022 at 07:17:28PM +0200, Sven Eckelmann wrote:
> On Saturday, 16 April 2022 16:21:19 CEST Andrew Lunn wrote:
> > This is not an area of the kernel i'm very familiar with. But i'm
> > wondering, is this a BATMAN specific problem, or a generic problem?
> > Should the fix be in BATMAN, or the core?
> 
> I understand what you mean. But let me cite two places which required to 
> operate on parts of the frag lists:
> 
> 	/* If we need update frag list, we are in troubles.
> 	 * Certainly, it is possible to add an offset to skb data,
> 	 * but taking into account that pulling is expected to
> 	 * be very rare operation, it is worth to fight against
> 	 * further bloating skb head and crucify ourselves here instead.
> 	 * Pure masohism, indeed. 8)8)
> 	 */
> 
> 	/* Misery. We are in troubles, going to mincer fragments... */
> 
> 
> And since I cannot reproduce this here at the moment, I've decided not to 
> start with that.

O.K. The BUG_ON() should at least catch other drivers hitting the same
issue, and hopefully a search engine will point to this discussion.

However, i suggest you post the fix to netdev, and see what others
think.

	Andrew
