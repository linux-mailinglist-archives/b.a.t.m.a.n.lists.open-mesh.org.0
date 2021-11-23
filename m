Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C4145A2AD
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:33:16 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 23DBE816A0;
	Tue, 23 Nov 2021 13:33:15 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1745A80392
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:33:11 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B254261028;
	Tue, 23 Nov 2021 12:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637670790;
	bh=OQq6rH9FZx3qiPTDKlia4gm2UADleOIdpgdC75f3TB0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=twOffTAe/I8+7M9wZFlZ4LZVZ3JIylKvP28AVWkO7q0D6Gq69qSvVRzed0Mj/Q690
	 Ka2juNYEJWg0OJX+hIh5Ha8U/8sxJxdQwH7+Y9oC4td+knrYJwzq07IT7L+gd/Q9Nc
	 WSIyK+i0DUfEqxgIJX2dwlOxdcrcJc1YbrUHNdy4=
Date: Tue, 23 Nov 2021 13:33:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 5.4 0/3] batman-adv: Fixes for stable/linux-4.19.y
Message-ID: <YZzfgzhgkOM4Yypx@kroah.com>
References: <20211120124053.261156-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211120124053.261156-1-sven@narfation.org>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637670792; a=rsa-sha256;
	cv=none;
	b=hHN6/hh2tdM+rEGY7t0dRM7osuPTBtSWj7FEVoLX/K9AXK+c+QIRMwJO2qtbzYn/OkzLMB
	IsrP39hLavJm/bHaEnuZZqXGsnjIWa5Uo+9OinzCr3AZm3Uv4WNgfA01jC5pNaNBKcss9y
	NDk/l6KObRKDDz0X9wfMvfkKrij87jA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637670792;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=z+bFyFSUggywhl00aFYJGeqkiRIIhb5Oyh+q8YpDX+w=;
	b=amaLeb8f2/IXdhiUgBovZ+ZiBvXHuBUudTumAKN/mJg52ftGH9uTSY4EFW2FsrI11AYjd7
	feY9vattkG2n8ZaQpzeP4iPwIkhYBXEkgMbGRJvzLD6qCiUEGPLyXQevJCJEtUDJJ99ZJH
	5//mzltohPOc2Idzfg3oY1RqlFc07PU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=twOffTAe;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Message-ID-Hash: MSWCBUVSRFCTBQ7RFYSS7IB43M4SV4YN
X-Message-ID-Hash: MSWCBUVSRFCTBQ7RFYSS7IB43M4SV4YN
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MSWCBUVSRFCTBQ7RFYSS7IB43M4SV4YN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sat, Nov 20, 2021 at 01:40:50PM +0100, Sven Eckelmann wrote:
> Hi,
> 
> I went through  all changes in batman-adv since v4.19 with a Fixes: line
> and checked whether they were backported to the LTS kernels. The ones which
> weren't ported and applied to this branch are now part of this patch series.
> 
> For this kernel version, I only found following three patches:
> 
> * batman-adv: Consider fragmentation for needed_headroom
> * batman-adv: Reserve needed_*room for fragments
> * batman-adv: Don't always reallocate the fragmentation skb head
> 
> which could in some circumstances cause packet loss but which were created
> to fix high CPU load/low throughput problems. But I've added them here
> anyway because the corresponding VXLAN patches were also added to stable.
> And some stable kernels also got these fixes a while back.
> 
> Kind regards,
> 	Sven
> 
> Sven Eckelmann (3):
>   batman-adv: Consider fragmentation for needed_headroom
>   batman-adv: Reserve needed_*room for fragments
>   batman-adv: Don't always reallocate the fragmentation skb head

Now queued up, thanks.

greg k-h
