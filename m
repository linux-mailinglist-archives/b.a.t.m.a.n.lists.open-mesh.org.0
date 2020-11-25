Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B2E2C503D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 09:23:00 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9346C809AA;
	Thu, 26 Nov 2020 09:23:00 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 20463800FC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 25 Nov 2020 01:51:00 +0100 (CET)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E299320872;
	Wed, 25 Nov 2020 00:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1606265458;
	bh=yg12gmuir6M2ZpCWoMdS1rJ/4UMYDbpi5MyEOOXoDog=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qDk2M2z8c8QSIPlKDi5pekHHOZTeMRoCTHJ2KGmM1ijhttGnTrlyJAwxs6fhEPRs7
	 l1U7wgifboSY09yjArYFYlVp0kETYwbdhPhrVPxO99r+BIm3kkpAnNCM49mGRRuoOn
	 YojqEWyCq/GSInAYe4ZrL1JX52YZm7wtZj9y2qx0=
Date: Tue, 24 Nov 2020 16:50:57 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Simon Wunderlich <sw@simonwunderlich.de>
Subject: Re: [PATCH 0/1] pull request for net: batman-adv 2020-11-24
Message-ID: <20201124165057.0fa59de4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201124134417.17269-1-sw@simonwunderlich.de>
References: <20201124134417.17269-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606265460;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=EyHEGUbkIIAxGy0BcwVasoOqtrBCleQLk/0QKnSJjfs=;
	b=Kn5nCgLB0OfIZcPCcbFxUj+lR3WXRxqfG6LHj/omJjMPlcApHXKE5jGz5v1ikQgPQaEORu
	g5adQoYDwWaV+RuRr64XBg4vr1R0e9dyqGCXA3YZNJcj+K/l5aKjAXUqfkyefeqk6fT/3j
	SpFXziE34MrNdemkWnIgvzeCDcYbNwA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606265460; a=rsa-sha256;
	cv=none;
	b=S8Z+s8bL2u7NWIPSHTBU9eo6FM1YGOF9PmRUr0kpfDEb4SplGJiFs4Reo8nLyVL9NHcA3X
	Qdez8U7+4qMzSgxgqHegMcFpx18KGsStOvw1ZxKnkXrJnvHDU91KwAtgEkJeXWKHyWaS95
	8BMrCWeZ8Q3WEOmHJ4lD4dSb7mCl4Gg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=qDk2M2z8;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: DEUSUQAY3UGGL6WJES6OETMOWBE53CGY
X-Message-ID-Hash: DEUSUQAY3UGGL6WJES6OETMOWBE53CGY
X-Mailman-Approved-At: Thu, 26 Nov 2020 08:22:59 +0100
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DEUSUQAY3UGGL6WJES6OETMOWBE53CGY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, 24 Nov 2020 14:44:16 +0100 Simon Wunderlich wrote:
> Hi David, hi Jakub,
> 
> here is a bugfix for batman-adv which we would like to have integrated into net.

Pulled, thanks!
