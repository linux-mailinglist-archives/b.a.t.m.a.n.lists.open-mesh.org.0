Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFCE30ED34
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Feb 2021 08:22:52 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 34E75827FD;
	Thu,  4 Feb 2021 08:22:51 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8DEFB80313
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Feb 2021 01:33:05 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6DF3464F4C;
	Thu,  4 Feb 2021 00:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1612398783;
	bh=XlrQNpV7bf/3l1Dc4RbXW1wet5dcOjy37FCiV/h0PSg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=T4Ndx8xUN8vZienx46n/fUHVxfS1WxWtiS0G9Cz8IIjGiG1keVcRVBZVJF5AVVPXp
	 83/pDIQuzS4Qles8yy5jIpCyWORtGIlqcSFaSfmbEwhXvp7kUsR+FMMeSLlfB4ADxh
	 RO4h+GuKBkSOm4VRgiHnHtY1KyJT3BSlVHIDUYSI0gHFgcYxRphdHo58nSIgg9Fe4b
	 Qnw0SsOW9DreAy7znkQFWDLkFKAVFH39zw+yxEzzpq8C7uPMvOFfdstn8XykDH5EVc
	 GurwFeEOoh2RCC98cljRhHKMxmIvyyHdeNMsiLnyy0wzUAIobQnexZ+6LWh3k6uHaI
	 k1PglnT+ikhxg==
Date: Wed, 3 Feb 2021 16:33:02 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Simon Wunderlich <sw@simonwunderlich.de>
Subject: Re: [PATCH 1/4] batman-adv: Start new development cycle
Message-ID: <20210203163302.13e8a2a7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210202174037.7081-2-sw@simonwunderlich.de>
References: <20210202174037.7081-1-sw@simonwunderlich.de>
	<20210202174037.7081-2-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612398785; a=rsa-sha256;
	cv=none;
	b=D8jpZ0+mm0vxByowZcvSs2zWrHJ6mowxy+12mGiSwj8hqzbwZ8MGDRQM2Q8kPCwjQvNBg2
	sprZPcav/Eh0InpMp9VBBfetoSVsC9Kw536AutU5j4Yi2jftMm8Mw1DaBqzyNMvpxJ7l57
	W2ytrPuIGdPsVF0P6HgCXeuvSjffZZA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=T4Ndx8xU;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612398785;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=DReQEZ9Lepv5JRZ1vyDsSi1Q9F0GzuzWQVprnIN5F9E=;
	b=kfzt/OGlEL4j9MWN8bG7VyFYXDObTEmGcM3oVsDS6zE5LkdRRnGItZ/yKdr3BrnjoUUc2t
	vYMDhRnfTZqr1l75p/5vzbMYq28wklETVHHncyW4UUMML9JbZNBUEkZwVaP+40YytLmrvY
	JxoH8mbzUn8qCYRf0qjzNH6ypFW151Y=
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: TVYN5D7DFUIMPCP7FB2HZWRBSTAEFHGJ
X-Message-ID-Hash: TVYN5D7DFUIMPCP7FB2HZWRBSTAEFHGJ
X-Mailman-Approved-At: Thu, 04 Feb 2021 07:22:48 +0100
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TVYN5D7DFUIMPCP7FB2HZWRBSTAEFHGJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue,  2 Feb 2021 18:40:33 +0100 Simon Wunderlich wrote:
> Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
> ---
>  net/batman-adv/main.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
> index 288201630ceb..2486efe4ffa6 100644
> --- a/net/batman-adv/main.h
> +++ b/net/batman-adv/main.h
> @@ -13,7 +13,7 @@
>  #define BATADV_DRIVER_DEVICE "batman-adv"
>  
>  #ifndef BATADV_SOURCE_VERSION
> -#define BATADV_SOURCE_VERSION "2021.0"
> +#define BATADV_SOURCE_VERSION "2021.1"
>  #endif
>  
>  /* B.A.T.M.A.N. parameters */

For just comment adjustments and the sizeof() change?
