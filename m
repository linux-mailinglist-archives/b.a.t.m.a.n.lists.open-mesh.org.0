Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7072E27A292
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 27 Sep 2020 21:27:01 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 362B6800F2;
	Sun, 27 Sep 2020 21:27:00 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E59F58039B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 27 Sep 2020 21:26:56 +0200 (CEST)
Date: Sun, 27 Sep 2020 21:26:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1601234816;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NDdZhz23xZhXYITxE4t9LTZb27YnKJoVALsxZNh86Wc=;
	b=XIKbJOalfZCmDDKKKXA1O5ROxEy1CnUzPEoYcizAziyI8VNAeyQdNPLaQ43fE/v4xPirAR
	t+n4HS/4mlEkO0h4IFy8owcScXDJoDrDXq4Mpc93pH0rIQcMAdbK6RMnz2XSOox3FyTBxE
	mPIKYYPfic+LhEwGbS/S76PfECFPjWEQ3vo1RcPYsXYBjOlO8E35PtZwW9hJwsgKwAnKBI
	PDZc4Pcd6hNDMdE0kI6Pk/3LggvW7lMn4KCkr8iKIQtWp7L1akvpPLW3MZQ68qnP/1mec3
	IaYdJ2NJnRyRhZ3p+627NYPgyantxNjH0xdYktbb3zFX8hVRQQ06BrhfZfZayA==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH 2/2] batman-adv: mcast: rename br_ip's u member to dst
Message-ID: <20200927192656.GA2392@otheros>
References: <20200926081220.40779-1-sven@narfation.org>
 <20200926081220.40779-2-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200926081220.40779-2-sven@narfation.org>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601234817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=NDdZhz23xZhXYITxE4t9LTZb27YnKJoVALsxZNh86Wc=;
	b=J+iRK4iww3CYD5P6pFZpgAtncZpeUSFvrVcKl02pPaNDqG+UpMpuv9lzTd+eXCzjxMTqNf
	y0Xr1MzuhnFJhSCzVeQu20McoW2LQ62GLz4hEfMuyxelc/IC+mOoQyCFJmD2TlMc15VkP3
	yj9Gx/4UsMA7Og0cfwSZWePBA3WmhUc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601234817; a=rsa-sha256;
	cv=none;
	b=SSvlG/QRjq7XRRNHXDQPVjCxUR0ObhSq52HeQMUfHQpMhfXN6qZpd8nEdEB5ET4uB9AS7g
	PLackHNXn4wgW7kUJ+DshNpoRAzOwbR5Szu5kVoDZ44HwKfb/pkFnMBxuWXNAxc7eSb7eT
	sauae437L64uGDYcyMNf5LqSpeTOSy0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=XIKbJOal;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Message-ID-Hash: JFQX2KE4AZ3ZROEZTCVNVTFIJUQDBPLP
X-Message-ID-Hash: JFQX2KE4AZ3ZROEZTCVNVTFIJUQDBPLP
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Nikolay Aleksandrov <nikolay@nvidia.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JFQX2KE4AZ3ZROEZTCVNVTFIJUQDBPLP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sat, Sep 26, 2020 at 10:12:20AM +0200, Sven Eckelmann wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Since now we have src in br_ip, u no longer makes sense so rename
> it to dst. No functional changes.
> 
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> Signed-off-by: David S. Miller <davem@davemloft.net>
> [sven@narfation.org: Add compat code]
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> ---

Hi Sven,

The version I've just posted [1] should hopefully work without needing
to readd the source code patching infrastructure.

Regards, Linus

[1]: https://patchwork.open-mesh.org/project/b.a.t.m.a.n./patch/20200927191234.22423-1-linus.luessing@c0d3.blue/
