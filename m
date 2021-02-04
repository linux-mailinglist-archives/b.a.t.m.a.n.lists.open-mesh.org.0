Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B592430ED36
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Feb 2021 08:22:57 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7A65A83BE2;
	Thu,  4 Feb 2021 08:22:52 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2D940800A1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Feb 2021 01:35:09 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DADE764F5F;
	Thu,  4 Feb 2021 00:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1612398907;
	bh=8+QLYOxMOAblaY/j4tkADQtzjWFhpCgjixr2ZiiRo8k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=g6eXqKDLNk6XZmr9qVtU16c6bHNtk5rK2ZSjUBHJZo+pJ5NRhCrvi3gkVOUK3qkDa
	 bl7SgDxNZIbHP8pVa1Kw1FzCH1e72o78gLMvSyiJ6kUEsEPXPCMjDAzmbfoPbe75XJ
	 IujqvS9hPgbht3rFeOegrFuaekWIN7a9QKjFkkUlXB+mhmKMnsEf/LaKPvvluzdGW4
	 a6JO/XfmUyIwT8q4bU/PkZKG+vmLWKHBlariPQqDZmV+wMI7a0ikgU8H9XwuK09/TC
	 +GTu6dNsIU7bA/O/NaNuV/XceZX4IaS054ZGGlqE5g3IueAA6u6WRFaWdeGVrC29f3
	 gUno5vD59EEhg==
Date: Wed, 3 Feb 2021 16:35:06 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Simon Wunderlich <sw@simonwunderlich.de>
Subject: Re: [PATCH 2/4] batman-adv: Update copyright years for 2021
Message-ID: <20210203163506.4b4dbff0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210202174037.7081-3-sw@simonwunderlich.de>
References: <20210202174037.7081-1-sw@simonwunderlich.de>
	<20210202174037.7081-3-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612398909; a=rsa-sha256;
	cv=none;
	b=bgAPoILEOEIRNbF2GiY6WljVvsPJ4j1C+nWmcUUjmKswQrxSzijS4JUlgqKXDRWnqJ4X7J
	zIGcZfBIwtRoblZtbxOYRHXpGEf8mC8yXrygGbt5AOgSUEOb21Zb7L5UwcC3HsJYmH1sTX
	6Bgp/cZ1e24+NDhAhAn+bwqSCW0hVdQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=g6eXqKDL;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612398909;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JZm/E4uFTSr7DoLt+Z/p61zN4xWIkd2y8S3nMppQmyI=;
	b=Qr2ILcLMywRZD39h+3Ku1pGEyScxQUrrJWiqQ8D7pUky5C1u0x+qPOYHxdXCcUB8S+TDUf
	GKmnk/SoLSY0ChwC8RcFolMwQ1jUoVcGagsgckN84rgh4WdjCTT5hEcU9mNtQ61qNxpNj0
	RI6v7mz+9Y5ZUbOtZZA2fIBIAO9miH8=
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: JU4LUCLYBORQY5PC6URPEWWUKBN7APQJ
X-Message-ID-Hash: JU4LUCLYBORQY5PC6URPEWWUKBN7APQJ
X-Mailman-Approved-At: Thu, 04 Feb 2021 07:22:49 +0100
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JU4LUCLYBORQY5PC6URPEWWUKBN7APQJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue,  2 Feb 2021 18:40:34 +0100 Simon Wunderlich wrote:
> From: Sven Eckelmann <sven@narfation.org>
> 
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
> ---
>  include/uapi/linux/batadv_packet.h     | 2 +-
>  include/uapi/linux/batman_adv.h        | 2 +-
>  net/batman-adv/Kconfig                 | 2 +-
>  net/batman-adv/Makefile                | 2 +-
>  net/batman-adv/bat_algo.c              | 2 +-
>  net/batman-adv/bat_algo.h              | 2 +-
>  net/batman-adv/bat_iv_ogm.c            | 2 +-
>  net/batman-adv/bat_iv_ogm.h            | 2 +-
>  net/batman-adv/bat_v.c                 | 2 +-
>  net/batman-adv/bat_v.h                 | 2 +-
>  net/batman-adv/bat_v_elp.c             | 2 +-
>  net/batman-adv/bat_v_elp.h             | 2 +-
>  net/batman-adv/bat_v_ogm.c             | 2 +-
>  net/batman-adv/bat_v_ogm.h             | 2 +-
>  net/batman-adv/bitarray.c              | 2 +-
>  net/batman-adv/bitarray.h              | 2 +-
>  net/batman-adv/bridge_loop_avoidance.c | 2 +-
>  net/batman-adv/bridge_loop_avoidance.h | 2 +-
>  net/batman-adv/distributed-arp-table.c | 2 +-
>  net/batman-adv/distributed-arp-table.h | 2 +-
>  net/batman-adv/fragmentation.c         | 2 +-
>  net/batman-adv/fragmentation.h         | 2 +-
>  net/batman-adv/gateway_client.c        | 2 +-
>  net/batman-adv/gateway_client.h        | 2 +-
>  net/batman-adv/gateway_common.c        | 2 +-
>  net/batman-adv/gateway_common.h        | 2 +-
>  net/batman-adv/hard-interface.c        | 2 +-
>  net/batman-adv/hard-interface.h        | 2 +-
>  net/batman-adv/hash.c                  | 2 +-
>  net/batman-adv/hash.h                  | 2 +-
>  net/batman-adv/log.c                   | 2 +-
>  net/batman-adv/log.h                   | 2 +-
>  net/batman-adv/main.c                  | 2 +-
>  net/batman-adv/main.h                  | 2 +-
>  net/batman-adv/multicast.c             | 2 +-
>  net/batman-adv/multicast.h             | 2 +-
>  net/batman-adv/netlink.c               | 2 +-
>  net/batman-adv/netlink.h               | 2 +-
>  net/batman-adv/network-coding.c        | 2 +-
>  net/batman-adv/network-coding.h        | 2 +-
>  net/batman-adv/originator.c            | 2 +-
>  net/batman-adv/originator.h            | 2 +-
>  net/batman-adv/routing.c               | 2 +-
>  net/batman-adv/routing.h               | 2 +-
>  net/batman-adv/send.c                  | 2 +-
>  net/batman-adv/send.h                  | 2 +-
>  net/batman-adv/soft-interface.c        | 2 +-
>  net/batman-adv/soft-interface.h        | 2 +-
>  net/batman-adv/tp_meter.c              | 2 +-
>  net/batman-adv/tp_meter.h              | 2 +-
>  net/batman-adv/trace.c                 | 2 +-
>  net/batman-adv/trace.h                 | 2 +-
>  net/batman-adv/translation-table.c     | 2 +-
>  net/batman-adv/translation-table.h     | 2 +-
>  net/batman-adv/tvlv.c                  | 2 +-
>  net/batman-adv/tvlv.h                  | 2 +-
>  net/batman-adv/types.h                 | 2 +-
>  57 files changed, 57 insertions(+), 57 deletions(-)
> 
> diff --git a/include/uapi/linux/batadv_packet.h b/include/uapi/linux/batadv_packet.h
> index 9c8604c5b5f6..67b773ea0ec3 100644
> --- a/include/uapi/linux/batadv_packet.h
> +++ b/include/uapi/linux/batadv_packet.h
> @@ -1,5 +1,5 @@
>  /* SPDX-License-Identifier: (GPL-2.0 WITH Linux-syscall-note) */
> -/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
> +/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
>   *
>   * Marek Lindner, Simon Wunderlich
>   */

Is this how copyright works? I'm not a layer, but I thought it was
supposed to reflect changes done to given file in a given year.
