Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1032F433F12
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Oct 2021 21:14:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DCE0380DA8;
	Tue, 19 Oct 2021 21:14:24 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8A58E807ED
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 Oct 2021 21:06:57 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7B9D36128B;
	Tue, 19 Oct 2021 19:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1634670415;
	bh=AXSOkY7Mcf7e8JYLN4hVaBs7Lp9bwvDRFybLH77JABA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=onAcnHjpFPVGjsIIlUEbPv72fc1H6A+wfqosFMSCH0mmWJzaJLigqAFBuB1A5GkQk
	 Qsjo3Y+vSRZBkBxVNRDi9MK7aqcU292AwSVftd7hmWafiWIvOn74O4Pga86Rb1DTXJ
	 0lA9MFJ+LXfrjtDNSzuV7dNSDs9MKvFEZQUoZrT9U2u3w2BTeHDXRsdupjKMGkXNPY
	 KiAR+Z1h+MSj4jgUvcOK2NHLnmkqpxwLtcgXwFlQ7JB64aIgrOTrWTH1yDkvqP/Jui
	 YfzpyGou4hziijkjXcQfZLp+aAbnJPbMOlfqko5d/JkTu9TlbMByy4PDfBmUjNqz6K
	 Xxr8cVXQvkcQA==
Date: Tue, 19 Oct 2021 12:06:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: sven@narfation.org
Subject: Re: [PATCH] batman-adv: use eth_hw_addr_set() instead of
 ether_addr_copy()
Message-ID: <20211019120654.6dee21b5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211019163927.1386289-1-kuba@kernel.org>
References: <20211019163927.1386289-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634670417;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=weBa4lDjsbuX0S2tiK0Q21RmNqOD5qSA/NFuYO/OgwY=;
	b=AoWThPRNqN9OdPhYunszga45yrkIXAVKel5AOtvRhrlTFaeTKZDDBdxo7BhU8kVmVDOIXw
	I8olxq3cS5TAn0J4xIjrA1LSeVGF3FzCz+VaX9YIYfO/fNoO33J80MO1WR9KGJTRBAPmaP
	TaakFAIO+fXy+an85kfpcauQPY1oPoE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=onAcnHjp;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634670417; a=rsa-sha256;
	cv=none;
	b=XuvubuhiMV4Ea1YDlwgvL9JohWDFhEgmE0+mnR9nQVWNqcalmbOckgEM2BgOnuxB/ts/Bq
	bXl1/xc9p1/o9n5or6LWdJTxp3WX/g13R2FEbHe9q4xK8d6PsQgCwImWS6y25TPZ82sh8l
	iPSxles8BnFZO+1WbufMgP3bQD/Vtf4=
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 37P6TCKSETW6OTGACV7RXVRPIJVJO5R4
X-Message-ID-Hash: 37P6TCKSETW6OTGACV7RXVRPIJVJO5R4
X-Mailman-Approved-At: Tue, 19 Oct 2021 19:14:21 +0200
CC: netdev@vger.kernel.org, mareklindner@neomailbox.ch, b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/37P6TCKSETW6OTGACV7RXVRPIJVJO5R4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, 19 Oct 2021 09:39:27 -0700 Jakub Kicinski wrote:
> Commit 406f42fa0d3c ("net-next: When a bond have a massive amount
> of VLANs...") introduced a rbtree for faster Ethernet address look
> up. To maintain netdev->dev_addr in this tree we need to make all
> the writes to it got through appropriate helpers.
> 
> Convert batman from ether_addr_copy() to eth_hw_addr_set():
> 
>   @@
>   expression dev, np;
>   @@
>   - ether_addr_copy(dev->dev_addr, np)
>   + eth_hw_addr_set(dev, np)
> 
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>

Extending CC list.

> diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
> index 0604b0279573..7ee09337fc40 100644
> --- a/net/batman-adv/soft-interface.c
> +++ b/net/batman-adv/soft-interface.c
> @@ -134,7 +134,7 @@ static int batadv_interface_set_mac_addr(struct net_device *dev, void *p)
>  		return -EADDRNOTAVAIL;
>  
>  	ether_addr_copy(old_addr, dev->dev_addr);
> -	ether_addr_copy(dev->dev_addr, addr->sa_data);
> +	eth_hw_addr_set(dev, addr->sa_data);
>  
>  	/* only modify transtable if it has been initialized before */
>  	if (atomic_read(&bat_priv->mesh_state) != BATADV_MESH_ACTIVE)
