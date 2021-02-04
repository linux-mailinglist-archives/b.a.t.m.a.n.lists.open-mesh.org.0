Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 215F330ED37
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Feb 2021 08:23:02 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B08B783BEA;
	Thu,  4 Feb 2021 08:22:53 +0100 (CET)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2B317800EE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Feb 2021 01:37:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=qwg4QQZ7XRMJiRRzGJQU77n4xzzXW3novYX5Rxcv9B0=; b=OmFRSw9otw3SjZR+E+w6wJCVVF
	VWg8CvoO7eEe3EKobiFeZZn+g8VoOehZrQi/UdBqIabLwEKn28MCx30Io3Y7SPTpskR0QuAVhl4+s
	ZZSS4+Vm4cOPD88bJPAvgi/krlkhLgpDr6MWkT6pXkyhluC1/te7bJeLSBzKc08CIQxVZPWeSy9II
	yyyZdteblM1bOZtbRpyIbc00ByEZ81Aw/HIP8coGuoDlreP2ccHZkkJwGAjDXhYMn0dB4kBqQJscJ
	X9idYaWbve2Oh4bhRw2AjGsJg8VcIj+AZGcK4LHjvYH4z9Egl1hZ+kPPZiVaVmGrtQq+Nuk6pmVDO
	bNGrWvEw==;
Received: from [2601:1c0:6280:3f0::aec2]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7SeO-0004RZ-D2; Thu, 04 Feb 2021 00:37:36 +0000
Subject: Re: [PATCH 2/4] batman-adv: Update copyright years for 2021
To: Jakub Kicinski <kuba@kernel.org>, Simon Wunderlich <sw@simonwunderlich.de>
References: <20210202174037.7081-1-sw@simonwunderlich.de>
 <20210202174037.7081-3-sw@simonwunderlich.de>
 <20210203163506.4b4dbff0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20cbceb3-2910-662b-1751-86ada5d05a4a@infradead.org>
Date: Wed, 3 Feb 2021 16:37:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210203163506.4b4dbff0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612399059; a=rsa-sha256;
	cv=none;
	b=eLhYvVVk6nn7GznEIeLtK4rXIKAytrlg0Ft1v+jug4LTIWBC/MHQw3/eEXKtCe16vf+pxc
	+54I/fMeo+ZHCWGYwYrQphdJUIzi7t9rWWPuhVATjqaydPP4hA2GCkqsxv49sDoa227fO8
	yjgMQqjV6i1xJxwDPRVPtWlq7fvIoLQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=OmFRSw9o;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612399059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=qwg4QQZ7XRMJiRRzGJQU77n4xzzXW3novYX5Rxcv9B0=;
	b=yuA3r/NSMp5OOtQ4fOLPLUE91qNHyOoKyk1q+mDXzsF/548QsGhvyB2AMd8kyDIrPeNSDk
	7wu0VYEgoyKN7mN9btcUI7ZDRiu+e57tvjfrFFz4kyb4TIdev1KPIqAeR8OH3rM7hbSZr/
	4W6QQaSCvZlmR5Ztveo3mtP71mqhFw4=
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: FECFYKEA7GVOSBPZQZOOCF3C64W56NME
X-Message-ID-Hash: FECFYKEA7GVOSBPZQZOOCF3C64W56NME
X-Mailman-Approved-At: Thu, 04 Feb 2021 07:22:49 +0100
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FECFYKEA7GVOSBPZQZOOCF3C64W56NME/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 2/3/21 4:35 PM, Jakub Kicinski wrote:
> On Tue,  2 Feb 2021 18:40:34 +0100 Simon Wunderlich wrote:
>> From: Sven Eckelmann <sven@narfation.org>
>>
>> Signed-off-by: Sven Eckelmann <sven@narfation.org>
>> Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
>> ---
>>  include/uapi/linux/batadv_packet.h     | 2 +-
>>  include/uapi/linux/batman_adv.h        | 2 +-
>>  net/batman-adv/Kconfig                 | 2 +-
>>  net/batman-adv/Makefile                | 2 +-
>>  net/batman-adv/bat_algo.c              | 2 +-
>>  net/batman-adv/bat_algo.h              | 2 +-
>>  net/batman-adv/bat_iv_ogm.c            | 2 +-
>>  net/batman-adv/bat_iv_ogm.h            | 2 +-
>>  net/batman-adv/bat_v.c                 | 2 +-
>>  net/batman-adv/bat_v.h                 | 2 +-
>>  net/batman-adv/bat_v_elp.c             | 2 +-
>>  net/batman-adv/bat_v_elp.h             | 2 +-
>>  net/batman-adv/bat_v_ogm.c             | 2 +-
>>  net/batman-adv/bat_v_ogm.h             | 2 +-
>>  net/batman-adv/bitarray.c              | 2 +-
>>  net/batman-adv/bitarray.h              | 2 +-
>>  net/batman-adv/bridge_loop_avoidance.c | 2 +-
>>  net/batman-adv/bridge_loop_avoidance.h | 2 +-
>>  net/batman-adv/distributed-arp-table.c | 2 +-
>>  net/batman-adv/distributed-arp-table.h | 2 +-
>>  net/batman-adv/fragmentation.c         | 2 +-
>>  net/batman-adv/fragmentation.h         | 2 +-
>>  net/batman-adv/gateway_client.c        | 2 +-
>>  net/batman-adv/gateway_client.h        | 2 +-
>>  net/batman-adv/gateway_common.c        | 2 +-
>>  net/batman-adv/gateway_common.h        | 2 +-
>>  net/batman-adv/hard-interface.c        | 2 +-
>>  net/batman-adv/hard-interface.h        | 2 +-
>>  net/batman-adv/hash.c                  | 2 +-
>>  net/batman-adv/hash.h                  | 2 +-
>>  net/batman-adv/log.c                   | 2 +-
>>  net/batman-adv/log.h                   | 2 +-
>>  net/batman-adv/main.c                  | 2 +-
>>  net/batman-adv/main.h                  | 2 +-
>>  net/batman-adv/multicast.c             | 2 +-
>>  net/batman-adv/multicast.h             | 2 +-
>>  net/batman-adv/netlink.c               | 2 +-
>>  net/batman-adv/netlink.h               | 2 +-
>>  net/batman-adv/network-coding.c        | 2 +-
>>  net/batman-adv/network-coding.h        | 2 +-
>>  net/batman-adv/originator.c            | 2 +-
>>  net/batman-adv/originator.h            | 2 +-
>>  net/batman-adv/routing.c               | 2 +-
>>  net/batman-adv/routing.h               | 2 +-
>>  net/batman-adv/send.c                  | 2 +-
>>  net/batman-adv/send.h                  | 2 +-
>>  net/batman-adv/soft-interface.c        | 2 +-
>>  net/batman-adv/soft-interface.h        | 2 +-
>>  net/batman-adv/tp_meter.c              | 2 +-
>>  net/batman-adv/tp_meter.h              | 2 +-
>>  net/batman-adv/trace.c                 | 2 +-
>>  net/batman-adv/trace.h                 | 2 +-
>>  net/batman-adv/translation-table.c     | 2 +-
>>  net/batman-adv/translation-table.h     | 2 +-
>>  net/batman-adv/tvlv.c                  | 2 +-
>>  net/batman-adv/tvlv.h                  | 2 +-
>>  net/batman-adv/types.h                 | 2 +-
>>  57 files changed, 57 insertions(+), 57 deletions(-)
>>
>> diff --git a/include/uapi/linux/batadv_packet.h b/include/uapi/linux/batadv_packet.h
>> index 9c8604c5b5f6..67b773ea0ec3 100644
>> --- a/include/uapi/linux/batadv_packet.h
>> +++ b/include/uapi/linux/batadv_packet.h
>> @@ -1,5 +1,5 @@
>>  /* SPDX-License-Identifier: (GPL-2.0 WITH Linux-syscall-note) */
>> -/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
>> +/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
>>   *
>>   * Marek Lindner, Simon Wunderlich
>>   */
> 
> Is this how copyright works? I'm not a layer, but I thought it was
> supposed to reflect changes done to given file in a given year.

I'm not a lawyer either, but that is how we usually do it (as
Jakub describes).

-- 
~Randy
