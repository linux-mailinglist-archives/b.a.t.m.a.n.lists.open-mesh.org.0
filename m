Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFD451EE98
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  8 May 2022 17:37:37 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BADC88001C;
	Sun,  8 May 2022 17:37:36 +0200 (CEST)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 43A9980398
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  8 May 2022 17:37:33 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DED50611FB;
	Sun,  8 May 2022 15:37:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CA5FC385AC;
	Sun,  8 May 2022 15:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1652024251;
	bh=kKkseH/4GiZ+mbisyxrteTvhJEqz1haap/QSwtQuZHM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=frzQcBEovWaD/jPmTEulu4FFsEyKUAcJTKy5h2AmFnxMx2dMuMM1XJg/L7ht5WsNl
	 8CYAUHjdeAA3ym+yhiflIknFg0PAnoKK8/l42ATsYYpSbok1pIGg4agWgZlqf35N1C
	 xgDV9Z/eKqK/zOfJss1jgnUgFLLve4VjkzTacedQ/5lCmWOOZXCgGnY2nLOdzZBCtD
	 cxTsUhqYNa8TwvG0ft0rST6Bw0JEfFd2usfneMUZ6n0jufCEn0+2uEJyWmMU1FZDS2
	 1TF3MPWQUn1KSNh7U49VmQxHMcpbrbwNSQ1iYDVsowq5AoowG0yCn1cyijKJ+KO0L4
	 TENE1mZAgBevQ==
Date: Sun, 8 May 2022 18:37:26 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Simon Wunderlich <sw@simonwunderlich.de>, kuba@kernel.org,
	davem@davemloft.net
Subject: Re: [PATCH 1/2] batman-adv: Start new development cycle
Message-ID: <YnfjtpuAaH+Zkf9S@unreal>
References: <20220508132616.21232-1-sw@simonwunderlich.de>
 <20220508132616.21232-2-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220508132616.21232-2-sw@simonwunderlich.de>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652024253; a=rsa-sha256;
	cv=none;
	b=UPn3W/bX0fGyhVNPX8KIdmADCOFHvWxqUCEyceEo7Hnhl92qMi8zeX21DQ5cJBXJW9qrmL
	Rn0IaNJ0RolKUecYfCptUp4z5r9YJ/ZJ+weyavv80fkYdSL1SH0xWLYLzWOKeIdqxCUG0s
	yuXRGepLDFJS9jCbtNJ+i5LFeATA9tc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=frzQcBEo;
	spf=pass (diktynna.open-mesh.org: domain of leon@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652024253;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hOSh+1KKvWKREKKGlh0+WRp+JtrFCMi6g/VlqR+tPyw=;
	b=upQ+ZXB88RpcQAXKrLIjyQvYAErvQSkkYKwrzz1Aqv4wTw75VTBFN+XpdhonqH0Hz2J3V2
	MmRNzjTpoSz6P+/58lIuaehmj6369ze867J73aG4qpIMPilCQhsj9ycPm1cCXkVAF4oCqR
	9poakG1aRW8GpmCQtwU2BcM6FLnjOdc=
Message-ID-Hash: BJ32NXWLHAMGRE6VAHCFXJHQZDPMHGYN
X-Message-ID-Hash: BJ32NXWLHAMGRE6VAHCFXJHQZDPMHGYN
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BJ32NXWLHAMGRE6VAHCFXJHQZDPMHGYN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sun, May 08, 2022 at 03:26:15PM +0200, Simon Wunderlich wrote:
> This version will contain all the (major or even only minor) changes for
> Linux 5.19.
> 
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at 0).
> 
> Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
> ---
>  net/batman-adv/main.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
> index f3be82999f1f..23f3d53f4b51 100644
> --- a/net/batman-adv/main.h
> +++ b/net/batman-adv/main.h
> @@ -13,7 +13,7 @@
>  #define BATADV_DRIVER_DEVICE "batman-adv"
>  
>  #ifndef BATADV_SOURCE_VERSION
> -#define BATADV_SOURCE_VERSION "2022.1"
> +#define BATADV_SOURCE_VERSION "2022.2"

It is so not kernel-style. I recommend to drop this patch.

Thanks

>  #endif
>  
>  /* B.A.T.M.A.N. parameters */
> -- 
> 2.30.2
> 
