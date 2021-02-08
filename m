Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E67B31492C
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Feb 2021 07:58:09 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BCB4B80636;
	Tue,  9 Feb 2021 07:58:07 +0100 (CET)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A3BC480421
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  8 Feb 2021 19:00:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=MnHx+6OqNYGrQaMqs/3p4P8jUMaYpTZeoSWmjdztnUo=; b=d0HmsUj97tcOhSDVZs3CCWv/SK
	lDyMaf8pnGdUjScqbgkGW0xOCPY1ihltD2rvCuOAQTjcT6dL+j7nPH3puxpaYod4LdbDEhwWNybsW
	83VW6nY9SyhQoiQHaUVZDZsx5EXgMsL/zmFq8THxUkGLmmqQfyEAureArvOajdqQNrWbeWZ0eGp0T
	nG2TiDR3EDpnaN27BiF3WflbeBudMMTXjqLEJO6Moi0dPgtgSODM2lrVFq88aBAt0IDqUz4ZMdvG7
	wxzVEcNhRbo89AEaS9asquP9U7wGOhJIrgYz3RYj2Qt2m6/Tv7M0Rucdlnz6JyQsDkYL14Vths6XI
	YaVFtfBg==;
Received: from [2601:1c0:6280:3f0::cf3b]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9AqC-0007xm-QX; Mon, 08 Feb 2021 18:00:53 +0000
Subject: Re: [PATCH 4/4] batman-adv: Fix names for kernel-doc blocks
To: Simon Wunderlich <sw@simonwunderlich.de>, kuba@kernel.org,
 davem@davemloft.net
References: <20210208165938.13262-1-sw@simonwunderlich.de>
 <20210208165938.13262-5-sw@simonwunderlich.de>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <44df86a7-e7a9-246a-e941-a7ec6f4c8774@infradead.org>
Date: Mon, 8 Feb 2021 10:00:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210208165938.13262-5-sw@simonwunderlich.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=d0HmsUj9;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612807259;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=MnHx+6OqNYGrQaMqs/3p4P8jUMaYpTZeoSWmjdztnUo=;
	b=kbmFHecQrbWQ/xN7xs5GCgw2AL0/DMM9mXS2F/p0mQTvy/RgnymxLlMAfD1tNA8VQBxyTm
	f3IYeY7QxOHxMlNUWMZpI0EHysa+r45Lho4zx2jf2auRJQzmV92UHopj1ssMCU0OjWicPs
	4J3J39NYkuWhcd+nKBQW6aOf8fEZYrY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612807259; a=rsa-sha256;
	cv=none;
	b=C7WqI0C3Fx9CjITVNfKT208vFWbiwksLJrZFOKUHpCJl80Mjw7WzoaJZrEYmmL8Vr8Izpk
	X6jW1QmsxEkMX9/+31+7sKsUKxErN8rjx7UQK8IyCGpOGGCJuS/vPNytP/CTuq8uZ3JF3l
	I3UilzfgeWm+hL3XBSJSaggehqo2YJU=
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: V73FZ3SJNUDFF3F3RDWO32ELHIZ7UPIM
X-Message-ID-Hash: V73FZ3SJNUDFF3F3RDWO32ELHIZ7UPIM
X-Mailman-Approved-At: Tue, 09 Feb 2021 06:58:06 +0100
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/V73FZ3SJNUDFF3F3RDWO32ELHIZ7UPIM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 2/8/21 8:59 AM, Simon Wunderlich wrote:
> From: Sven Eckelmann <sven@narfation.org>
> 
> kernel-doc can only correctly identify the documented function or struct
> when the name in the first kernel-doc line references it. But some of the
> kernel-doc blocks referenced a different function/struct then it actually
> documented.
> 
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

> ---
>  net/batman-adv/distributed-arp-table.c | 2 +-
>  net/batman-adv/multicast.c             | 2 +-
>  net/batman-adv/netlink.c               | 4 ++--
>  net/batman-adv/tp_meter.c              | 2 +-
>  net/batman-adv/types.h                 | 3 ++-
>  5 files changed, 7 insertions(+), 6 deletions(-)


-- 
~Randy
