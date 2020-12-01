Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C75BB2C97D9
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  1 Dec 2020 08:12:28 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 729B4822FD;
	Tue,  1 Dec 2020 08:12:27 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id ED56F80303
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  1 Dec 2020 03:34:28 +0100 (CET)
Received: from kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com (unknown [163.114.132.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9E56F20857;
	Tue,  1 Dec 2020 02:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1606790066;
	bh=Kd1t+okwE/MH2CiDN460l9rohKwyUTumtY1RZ+TzwBo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=llPnV5dvRYi3b9Et/iTthzJpIrCovQfjSSwQrjQcnKZ5ZlgGKxV5w/majfMI/5Mqt
	 xSC74BkAHDDf3sLKkyfkX2buIXbXaNAGYlxSygMU5GFeA8fjbWJRFDBpUMovuJGXFt
	 rBDqXAjvNWzaAVC6sRtUL6f9hbVG3d+SsgKvzOkk=
Date: Mon, 30 Nov 2020 18:34:25 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 1/2] vxlan: Add needed_headroom for lower device
Message-ID: <20201130183425.7086ae00@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201126125247.1047977-1-sven@narfation.org>
References: <20201126125247.1047977-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606790069;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/N8VaooWyuVGSOs2MgNU7Zh1u4RWPwfeiJ6cVWjcsz4=;
	b=mcpuNSqwBHCjVJGp4uTk2LPhxWThhaAMxKJelNED1qgoFCpjZLpTDhhp1LWfnK1xzEo0fc
	/kZvwZsRbRquAEPNFwQFdoK7drIweIlVU5XkoEH8M3aMgXQl9i0Jtmsu3EuqgoHLONlGAP
	7sDmbxQWWJF5EvAFuCTIy5AfZVGA/mE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606790069; a=rsa-sha256;
	cv=none;
	b=gS3ESrx5yPSlA1w6/6aRXfvU3ZsgiiWnJJYJycfwotnJlWhiYutQislmbIz6hAY3ZBS4pR
	CPYgnuhcbeX15ZWd64CO9zvWHiz7+l6ARvo00g5Bic8UFrRqKI9HHJLc9CPbfDrOMGSpsS
	ajCEDeJ8dsRK1d8YDnZKVYLJaGGmWLY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=llPnV5dv;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: SOMOSPNWEZRYXULPBHQ42OB5RPLYR47B
X-Message-ID-Hash: SOMOSPNWEZRYXULPBHQ42OB5RPLYR47B
X-Mailman-Approved-At: Tue, 01 Dec 2020 07:12:25 +0100
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org, Annika Wickert <annika.wickert@exaring.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SOMOSPNWEZRYXULPBHQ42OB5RPLYR47B/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, 26 Nov 2020 13:52:46 +0100 Sven Eckelmann wrote:
> It was observed that sending data via batadv over vxlan (on top of
> wireguard) reduced the performance massively compared to raw ethernet or
> batadv on raw ethernet. A check of perf data showed that the
> vxlan_build_skb was calling all the time pskb_expand_head to allocate
> enough headroom for:
> 
>   min_headroom = LL_RESERVED_SPACE(dst->dev) + dst->header_len
>   		+ VXLAN_HLEN + iphdr_len;
> 
> But the vxlan_config_apply only requested needed headroom for:
> 
>   lowerdev->hard_header_len + VXLAN6_HEADROOM or VXLAN_HEADROOM
> 
> So it completely ignored the needed_headroom of the lower device. The first
> caller of net_dev_xmit could therefore never make sure that enough headroom
> was allocated for the rest of the transmit path.
> 
> Cc: Annika Wickert <annika.wickert@exaring.de>
> Signed-off-by: Sven Eckelmann <sven@narfation.org>

Applied both, thanks!
