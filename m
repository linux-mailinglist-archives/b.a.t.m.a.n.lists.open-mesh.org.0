Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9932C70C7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 28 Nov 2020 21:06:27 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 49C6F80E1E;
	Sat, 28 Nov 2020 21:06:26 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E0685806FB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 28 Nov 2020 20:58:23 +0100 (CET)
Received: from kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AAF21221FF;
	Sat, 28 Nov 2020 19:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1606593501;
	bh=3EmyCw5/ovjNwmz7PMcHck8AiiBEKqRovP4BafAmUz4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Up8/Atkoxtq0i1P2paK/Rsd6ZRU3kmg+OD7xSBb/nzwHw+963X2mTOWxbyLOdpSyg
	 Pm1mJesTvoB7z9kZwvTsn1X9zglmFkSLhTDEV72mFXveIpz/T5CWJeHu5qbZjvxYkq
	 +f0O1J4JgrpKB3w2Iao20I60Z8lBzH1hc9gOBplY=
Date: Sat, 28 Nov 2020 11:58:20 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Simon Wunderlich <sw@simonwunderlich.de>
Subject: Re: [PATCH 0/3] pull request for net: batman-adv 2020-11-27
Message-ID: <20201128115820.081b16d7@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201127173849.19208-1-sw@simonwunderlich.de>
References: <20201127173849.19208-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606593504;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=cW7Nlh/O+0aD3svLqHcqDCSWihWI+CrK3s6KpWmWI5c=;
	b=CpWzaeMczNan3hNh70EPovl9xUu8NCMtGWft5E8LuQsSI7+FWJzF51hF7N5k3lcEtTbtbC
	zcwQGPh3/P3g9hkpRh/L08/83etLk5rA4/kRYZTSOFmJpcWZdT3ghR0wQPiqDkeB+VnVz/
	8TxZLjumGSsy7YlR/JdH5090uiUYr1E=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606593504; a=rsa-sha256;
	cv=none;
	b=rGUoIRJp4lxiWwzSCuExP/QqAfkFFr73gKhyJYfZdHMeMrHNuXHPoOCweRvhzvTz6xrGjm
	VQapunM0Q9fLarDPq+MuKbTDu6Be5RdWLRY0x7jDYqVTCTt90TQFkrDlXwNUI/X8wNi1p9
	30bHHL5EDu85ADDxQgqCrTkhbdDkPic=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=Up8/Atko;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: Y7FYBSSUJO4MVDEDJBMBVNFRXO7TWLP6
X-Message-ID-Hash: Y7FYBSSUJO4MVDEDJBMBVNFRXO7TWLP6
X-Mailman-Approved-At: Sat, 28 Nov 2020 20:06:24 +0100
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y7FYBSSUJO4MVDEDJBMBVNFRXO7TWLP6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri, 27 Nov 2020 18:38:46 +0100 Simon Wunderlich wrote:
> here are some more bugfixes for batman-adv which we would like to have integrated into net.
> 
> Please pull or let me know of any problem!> 
> ----------------------------------------------------------------
> Here are some batman-adv bugfixes:
> 
>  - Fix head/tailroom issues for fragments, by Sven Eckelmann (3 patches)

Pulled, thanks!
