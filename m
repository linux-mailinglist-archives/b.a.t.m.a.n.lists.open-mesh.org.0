Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BA0503710
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Apr 2022 16:21:25 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C539D82E7D;
	Sat, 16 Apr 2022 16:21:24 +0200 (CEST)
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 41E2082832
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Apr 2022 16:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=pIkxUfBd9og1mttPYy1XFMzd8Nf60u+JQ2zumMFTEGM=; b=zMqBfkDaGBcCmpsGt2IY3G8yxc
	FtdddOojNGPCnL08ExR99cU1MJvgVlDkA12EdGxlha+wyvbSUTSddLQGRiJn+Qp5A2OJRgjkfS7R8
	QvcbKhTPuN6/44POMYIHtLlQu3GTaSjVe7ABto3k27s7W2EJFgcEUmigCVBsFELwzfQk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1nfjId-00G6sg-KN; Sat, 16 Apr 2022 16:21:19 +0200
Date: Sat, 16 Apr 2022 16:21:19 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Sven Eckelmann <sven@narfation.org>, Felix Kaechele <felix@kaechele.ca>
Subject: Re: [PATCH] batman-adv: Don't skb_split skbuffs with frag_list
Message-ID: <YlrQ306LD4luXaeJ@lunn.ch>
References: <20220416122434.33061-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220416122434.33061-1-sven@narfation.org>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650118881; a=rsa-sha256;
	cv=none;
	b=q1Vo8pdyBdma5QnLv1rsxmA0vKBe73p18YOW5RIxsAQpTm2bj6XLQnzI4OGBUxlgJM0CyP
	Y6vt6UGN1mT8E4mEAcT3WoGtaziCjFmzmlFWRqe+DhZs4dNdtpdnGYKAMdEAMrtUikQagX
	8mS6WE+M7Syd8w4UxeyHKfH6buSaFnY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=lunn.ch header.s=20171124 header.b=zMqBfkDa;
	spf=pass (diktynna.open-mesh.org: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650118881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=pIkxUfBd9og1mttPYy1XFMzd8Nf60u+JQ2zumMFTEGM=;
	b=Ml/06FnP+k3wvs7LDR3V37kRUXlBbFXNMqGfKN4rsYrLCyUySfqNROE6atq50RB3JY7pvb
	QOGYuZmaH7YtNnob0rXjsxKdx4uh3kkKDsTUUjSww+BP5Qs8bVC96gR/FEfTPGDpLKC3XL
	gmynxAD2CRrvyBByxVI8b6MTy4yIHCk=
Message-ID-Hash: 5HVNKUBTSBMGQQ4MDRFRMVETS6FKJJPT
X-Message-ID-Hash: 5HVNKUBTSBMGQQ4MDRFRMVETS6FKJJPT
X-MailFrom: andrew@lunn.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5HVNKUBTSBMGQQ4MDRFRMVETS6FKJJPT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sat, Apr 16, 2022 at 02:24:34PM +0200, Sven Eckelmann wrote:
> The receiving interface might have used GRO to receive more fragments than
> MAX_SKB_FRAGS fragments. In this case, these will not be stored in
> skb_shinfo(skb)->frags but merged into the frag list.
> 
> batman-adv relies on the function skb_split to split packets up into
> multiple smaller packets which are not larger than the MTU on the outgoing
> interface. But this function cannot handle frag_list entries and is only
> operating on skb_shinfo(skb)->frags. If it is then still trying to split
> such an skb and xmit'ing it on an interface without support for
> NETIF_F_FRAGLIST then validate_xmit_skb() will try to linearize it. But
> this fails due to inconsistent information and __pskb_pull_tail will
> trigger a BUG_ON after skb_copy_bits() returns an error.
> 
> In case of entries in frag_list, just linearize the skb before operating on
> it with skb_split().

Hi Sven

This is not an area of the kernel i'm very familiar with. But i'm
wondering, is this a BATMAN specific problem, or a generic problem?
Should the fix be in BATMAN, or the core?

       Andrew
