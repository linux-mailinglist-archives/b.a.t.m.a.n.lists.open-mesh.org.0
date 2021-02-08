Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C452B314932
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Feb 2021 07:58:17 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E3DD4832E9;
	Tue,  9 Feb 2021 07:58:15 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 135C580605
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  8 Feb 2021 20:35:37 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D42B364E85;
	Mon,  8 Feb 2021 19:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1612812935;
	bh=dKwjlNm+i5RciyQ00XGdrJFeGKcf1FLx4AW0D7t73Ck=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=OKTyWXW/DPHe+OgplOgQf/rsaTUMYDTd01QhWMLXnLI6dL2/HY1mghC3l6wK0EQ/O
	 TwWMbXIRW+b38ItfeVQphMPBYsW3M1Zs0Ys50r2+OSEEKcM2dGuVa3zKhKbsZ/tgQH
	 RsWJBXDWyPinF3OnGJgyAsxWCA7anVv1QLa7elWq6uDjfAaHn+xqkHfUdiC1lzxEUU
	 98Gj4yqOuD/QadXwCJIdLTUVQV0b9wQ9FNM3RzvDhZVcuPysTTlYtBnOugD4UE393G
	 LUv2ZrYsm0JRvGFBD/MndKBmza9D+OgLefIkGjWbonSPoBkHrdBf3mFb0RPLRzFyXR
	 +8CbCQR//vSRg==
Date: Mon, 8 Feb 2021 11:35:34 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH 4/4] batman-adv: Fix names for kernel-doc blocks
Message-ID: <20210208113534.5a1a11ae@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <44df86a7-e7a9-246a-e941-a7ec6f4c8774@infradead.org>
References: <20210208165938.13262-1-sw@simonwunderlich.de>
	<20210208165938.13262-5-sw@simonwunderlich.de>
	<44df86a7-e7a9-246a-e941-a7ec6f4c8774@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="OKTyWXW/";
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612812937;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ENxJqjtBc+juZckjRoKFUSqFHGvk2A/w++k7KToiFJc=;
	b=AjHqEbuHaTgmp613RdpnnXzFQ9uEtn62o6SOjt9kcWGTQ2ho3egsLE45922fB05VONXG9n
	b50paiUCnkM2fT+Auq8R7aDzX1MLt7R3ruInxo0+UHuUS2C4jC/+v3aawTYQyNOQX9wmVW
	ZBvAaum2A2+jXYUX6UA77w0qI/lsTNA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612812937; a=rsa-sha256;
	cv=none;
	b=dS7Wpcas5hUHKtYbSFLTmvF2oqLhp+q9TUN+ozNe7Aa9rxXlW+KBQWqgxYaesgIgtLA4AU
	8xbVWGioWQOlG81IIdJkiiX1cH8mTeT1Z40a9yTKna1l0UfTzJi5BtJdcUzzb3bvKQmc/5
	9JGPjgHumvaTxZoStHuHQ1LbuJUihT4=
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: PT3FF6OGFZW2UTHASUQO6CI3DW3ZIHUJ
X-Message-ID-Hash: PT3FF6OGFZW2UTHASUQO6CI3DW3ZIHUJ
X-Mailman-Approved-At: Tue, 09 Feb 2021 06:58:14 +0100
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PT3FF6OGFZW2UTHASUQO6CI3DW3ZIHUJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Mon, 8 Feb 2021 10:00:48 -0800 Randy Dunlap wrote:
> On 2/8/21 8:59 AM, Simon Wunderlich wrote:
> > From: Sven Eckelmann <sven@narfation.org>
> > 
> > kernel-doc can only correctly identify the documented function or struct
> > when the name in the first kernel-doc line references it. But some of the
> > kernel-doc blocks referenced a different function/struct then it actually
> > documented.
> > 
> > Signed-off-by: Sven Eckelmann <sven@narfation.org>
> > Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>  
> 
> Reviewed-by: Randy Dunlap <rdunlap@infradead.org>

Thanks!

Just FWIW since this is a pull request I can't add tags on individual
patches in git, but it will be recorded on the list, I guess..
