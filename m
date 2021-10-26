Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A2B43AC77
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 Oct 2021 08:51:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 62C9F80423;
	Tue, 26 Oct 2021 08:51:53 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9411A8061C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 Oct 2021 02:49:53 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6282B60C4B;
	Tue, 26 Oct 2021 00:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1635209391;
	bh=L6/2soJkbNzpkTcZ7/gxJpFJX00HzVfIOo2Grjkb+XE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fMudTksHnfmxzOvxePrGwgpeHW4iC8wzK2Cr2/+tc66jkUEB1TVnTwqatgCWczfyw
	 U80Z3PYQm2ZfMM321iTywUvOUk3dhaNxGRKWp7TgUDG4uLPnGAvGnz9zFYiJWfR5UM
	 wfGsSm5hxlWSqlvBADlJ7ka0IAMxSUeBDxHe0VoH/Pe2iagg/TKWRfRsGK3sNwT56b
	 r2K9BZSEYBhYI55X1OCAEwhSr0g/GqfFRrKdCQlnPkOWFRS3Anh72maJGAdZyGeh8O
	 YkX2wHBH/RQuZfYEOEI08L6MurYOF8xc/F5sx8ZxcfRdGl1IGhAFOUq3gFcLi3gkYc
	 rmdiGxDX8L9uQ==
Date: Mon, 25 Oct 2021 17:49:50 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Sven Eckelmann <sven@narfation.org>, mareklindner@neomailbox.ch
Subject: Re: [PATCH] net: batman-adv: fix error handling
Message-ID: <20211025174950.1bec22fb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <2526100.mKikVBQdmv@sven-l14>
References: <2056331.oJahCzYEoq@sven-desktop>
	<20211024131356.10699-1-paskripkin@gmail.com>
	<2526100.mKikVBQdmv@sven-l14>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635209393;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=PiAZLT4WaOQq0hkqRmc6wScwimSQUXkZg0si78kEQrQ=;
	b=SpA6OFx2ykxAg1ICrRtCDwwHMA+vxZNdsK807AbavnsZgOXyVgTWS4/5KpMccBMx7+kGqu
	G8G0Xnh/XGB4yzasLa/UM77VS/jZQIVqoDe+bmi4yMgt22Jm7UjSGxg/9/i0q2he9Gh12X
	cRqiaJW1x0JJ1v6qei9gfQdO3zcRvjw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fMudTksH;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635209393; a=rsa-sha256;
	cv=none;
	b=L2dHys2YWQaKfAk69PeEI1raXkot7KBuSaA88X/oitRrxhK573s7fMNUNsAyM+aQWDXunv
	tTuQYrurlI4/imDkqtnsm/gJ4ozHWGvQnmCDGDQiEXQbE0lwgcKRyHMEwh2ATxUGvx5CWD
	U5IgChZhemwhVbwRNThlGyfvp6L5aNg=
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: IIZVA2Z3A5HKR74X7PG3Q2WNQPALDNNW
X-Message-ID-Hash: IIZVA2Z3A5HKR74X7PG3Q2WNQPALDNNW
X-Mailman-Approved-At: Tue, 26 Oct 2021 06:51:51 +0200
CC: a@unstable.cc, davem@davemloft.net, Pavel Skripkin <paskripkin@gmail.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IIZVA2Z3A5HKR74X7PG3Q2WNQPALDNNW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sun, 24 Oct 2021 16:58:30 +0200 Sven Eckelmann wrote:
> On Sunday, 24 October 2021 15:13:56 CEST Pavel Skripkin wrote:
> > Syzbot reported ODEBUG warning in batadv_nc_mesh_free(). The problem was
> > in wrong error handling in batadv_mesh_init().
> > 
> > Before this patch batadv_mesh_init() was calling batadv_mesh_free() in case
> > of any batadv_*_init() calls failure. This approach may work well, when
> > there is some kind of indicator, which can tell which parts of batadv are
> > initialized; but there isn't any.
> > 
> > All written above lead to cleaning up uninitialized fields. Even if we hide
> > ODEBUG warning by initializing bat_priv->nc.work, syzbot was able to hit
> > GPF in batadv_nc_purge_paths(), because hash pointer in still NULL. [1]
> > 
> > To fix these bugs we can unwind batadv_*_init() calls one by one.
> > It is good approach for 2 reasons: 1) It fixes bugs on error handling
> > path 2) It improves the performance, since we won't call unneeded
> > batadv_*_free() functions.
> > 
> > So, this patch makes all batadv_*_init() clean up all allocated memory
> > before returning with an error to no call correspoing batadv_*_free()
> > and open-codes batadv_mesh_free() with proper order to avoid touching
> > uninitialized fields.
> > 
> > Link: https://lore.kernel.org/netdev/000000000000c87fbd05cef6bcb0@google.com/ [1]
> > Reported-and-tested-by: syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com
> > Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
> > Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>  
> 
> Acked-by: Sven Eckelmann <sven@narfation.org>

FWIW I'm marking this as "Awaiting upstream" in netdev patchwork,
please LMK if you prefer for it to be applied directly.
