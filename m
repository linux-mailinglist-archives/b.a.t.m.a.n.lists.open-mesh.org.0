Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D194A99C27E
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Oct 2024 10:05:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A615E83C68
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Oct 2024 10:05:32 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1728893132;
 b=dod64VGDUm1ykIjaUQDTLDyncawFKfpW2pkQEPADA0wvZHp7uO8fhBUNy0Vn1zHbmDXh7
 VapoCVt8ASg++EnhWWRpqZ1+N3qp9IzaRJl5E4Yxg7LnYHm0VCA3K5utqMfyaJRvB5TPM6/
 Z6K0cUzOO0MUc4cV3BYVzPcbJmH/ydU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1728893132; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=zyaTDsN1XoKhBPqzkBTu2vo53snDIfUEQ3rGqDhYYKY=;
 b=UDT1rnYETOtHb5x2E+fmTqrAZhSuRn8hIHoJS9z2rn/f9Q48Zn8jrrjhJk062tHB05zO0
 j2LtRjU7V0hmrzYQnHEviyKwGCnCBrO24Gmo1HK5+v6NbYBfduzFRCaTsYlAh4aqjJXUHI0
 Nn0LjDkcmlJDhvS4u0Y+LzK0hwNGsUQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=fail (ARC-Seal[1] did not validate);
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=fail (ARC-Seal[1] did not validate);
 dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E4EDB8164E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Oct 2024 10:05:24 +0200 (CEST)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1728893125; a=rsa-sha256;
	cv=none;
	b=Zu3cotPh1OCcxjLSNExyA0hcR1Lm0jh8LrVOEnwZxnK4Hvv8PAfxaiFSBV/f7kEEMi4FvT
	pT/zP9hsnaayxJFSM/7DXDdFTwvYat8aaOUv5TQaPJqG4UpkHmUMXpUB11giXYXk+umLTg
	8+QuiexEC/IZwhs8XfCtEtJVb4/OgUA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nOZ1ZQvu;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1728893125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=zyaTDsN1XoKhBPqzkBTu2vo53snDIfUEQ3rGqDhYYKY=;
	b=JlkJqF+/TMMZLxDkw2w0rbGz7MIifaa2xNPBNRbX0xGO92FoxVfG8dOL3U40GQzB5D1OOr
	ifQVgf4drWdpOQD2csg3p/3LkfLK/jXHRWXOjKvcxkmCFLCRBVALwtJTpCA/fZkgLCDN/9
	8PrFyfuWQvIeBSn591CP5OjySTbiK7Y=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1728893124;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zyaTDsN1XoKhBPqzkBTu2vo53snDIfUEQ3rGqDhYYKY=;
	b=nOZ1ZQvuRBsUvKB9OayMwB2dpSItOfv3z27X2LC5efvLcjRZLYHH+7cT2fYvb/gJ7DXTus
	1PQ1Hzcf6NZi6iMKvnq5+CawKmcTto0lb7Q3yuhkOd6k0PxMm+A/aByKGouR8txBbDt8Xr
	ERg9gfPmpg6IIgpWiaZEdt7L5hqIMxE=
From: Sven Eckelmann <sven@narfation.org>
To: Marek Lindner <mareklindner@neomailbox.ch>,
	Julia Lawall <Julia.Lawall@inria.fr>
Cc: Sven Eckelmann <sven@narfation.org>,
	kernel-janitors@vger.kernel.org,
	vbabka@suse.cz,
	paulmck@kernel.org,
	Antonio Quartulli <a@unstable.cc>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	b.a.t.m.a.n@lists.open-mesh.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 06/17] batman-adv: replace call_rcu by kfree_rcu for
 simple kmem_cache_free callback
Date: Mon, 14 Oct 2024 10:03:41 +0200
Message-Id: <172889278843.62571.16579786403204721631.b4-ty@narfation.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241013201704.49576-7-Julia.Lawall@inria.fr>
References: <20241013201704.49576-1-Julia.Lawall@inria.fr>
 <20241013201704.49576-7-Julia.Lawall@inria.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-ID-Hash: HETL44OUNAOHSBFIGXDPOMXPOWY7L5NL
X-Message-ID-Hash: HETL44OUNAOHSBFIGXDPOMXPOWY7L5NL
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HETL44OUNAOHSBFIGXDPOMXPOWY7L5NL/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


On Sun, 13 Oct 2024 22:16:53 +0200, Julia Lawall wrote:
> Since SLOB was removed and since
> commit 6c6c47b063b5 ("mm, slab: call kvfree_rcu_barrier() from kmem_cache_destroy()"),
> it is not necessary to use call_rcu when the callback only performs
> kmem_cache_free. Use kfree_rcu() directly.
> 
> The changes were made using Coccinelle.
> 
> [...]

Applied, thanks!

[06/17] batman-adv: replace call_rcu by kfree_rcu for simple kmem_cache_free callback
        commit: 356c81b6c494a359ed6e25087931acc78c518fb9

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>
