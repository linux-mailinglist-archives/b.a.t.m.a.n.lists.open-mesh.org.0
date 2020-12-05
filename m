Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A472D0186
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  6 Dec 2020 09:06:27 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B0D2780B83;
	Sun,  6 Dec 2020 09:06:25 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0F11C8010F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  6 Dec 2020 00:11:23 +0100 (CET)
Date: Sat, 5 Dec 2020 15:11:20 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1607209881;
	bh=Ywby+8XMzP0Av2thUOEP6ZXttQZb//VuVq4y2k1chKg=;
	h=From:To:Cc:Subject:In-Reply-To:References:From;
	b=fYnalPWsf3DujLmB/JviIIvLqekXPIYxkUiQ0v2V4mgkWPxPe7uGTjHwJ1xUBD5k7
	 u15QImMLiY7zKujwzQIxWWz0rJYiRba3b6D7wuUJndRMjdRIBL/ANwDxsGFC5OQiOw
	 vI9wwHXeb3sgl0+Mkqh+Y7YkS1Bukb0OfahyskHAb0AqrmvWy2XTTKfD0rTdLVKJic
	 36d2AcqOlovGcJ41cnPNl5ISbPjavh/IobDlY0MEUdHC9SdT/3tIB/xwBIaq4cadys
	 BlfA6zPoTZzQeSszzgKYG1DFRb6yEIgVLs1VzrTGZkk3VMJLi5rc3Vw9ZcWix5Auap
	 VpVky8d/r4TFw==
From: Jakub Kicinski <kuba@kernel.org>
To: Simon Wunderlich <sw@simonwunderlich.de>
Subject: Re: [PATCH 0/8] pull request for net-next: batman-adv 2020-12-04
Message-ID: <20201205151120.7e51413f@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201204154631.21063-1-sw@simonwunderlich.de>
References: <20201204154631.21063-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1607209883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JOYDsRiDTLgl8TXfBxLcJUNKAfHV5ONM2KYH/zTj1T8=;
	b=VDtrfl4RJuLejuLaUn0XUO4QKhQ2jsJxj6grfVOa5wr7OBt0zXkd47qMPS1XkPJCJBWXfA
	V5vg7398aQ8KJttQPNRpn+MsGCnO+IJSREB7KfE3+NJ1SHTQfEXXsK9PQ719W+kT0MJr0c
	D+bsmXNzHaEbjdiTl2VFlM9DKUuivmo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fYnalPWs;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1607209883; a=rsa-sha256;
	cv=none;
	b=bxbH0j7yaYZCFJpwgN/z1CLN3pGsR4mZ1AMWQQqLz8H0yjHnbRmnGoQG+23ABrO9RXHlmi
	nsmcGHcU7SIoFWeV8dxncJhOG9kypbxzRuz85FA7W8V5KLyAMJhi4ZXbcyidodnNZsRWv7
	CH5PFxhY6ufN0ZUodtpAMJlBomkEnAE=
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: PRKP74SLLU2Y3TO2NB5XAFFV6T2Z2X4N
X-Message-ID-Hash: PRKP74SLLU2Y3TO2NB5XAFFV6T2Z2X4N
X-Mailman-Approved-At: Sun, 06 Dec 2020 08:06:23 +0100
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PRKP74SLLU2Y3TO2NB5XAFFV6T2Z2X4N/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri,  4 Dec 2020 16:46:23 +0100 Simon Wunderlich wrote:
> This cleanup patchset includes the following patches:
> 
>  - bump version strings, by Simon Wunderlich
> 
>  - update include for min/max helpers, by Sven Eckelmann
> 
>  - add infrastructure and netlink functions for routing algo selection,
>    by Sven Eckelmann (2 patches)
> 
>  - drop deprecated debugfs and sysfs support and obsoleted
>    functionality, by Sven Eckelmann (3 patches)
> 
>  - drop unused include in fragmentation.c, by Simon Wunderlich

Pulled, thanks!
