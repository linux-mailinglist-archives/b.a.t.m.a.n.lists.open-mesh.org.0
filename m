Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDBF1E6B07
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2020 21:32:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CB34482303;
	Thu, 28 May 2020 21:32:09 +0200 (CEST)
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3A44480438
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2020 21:23:03 +0200 (CEST)
Received: from [192.168.254.4] (unknown [50.34.197.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail3.candelatech.com (Postfix) with ESMTPSA id 3364F13C2B0;
	Thu, 28 May 2020 12:23:02 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 3364F13C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
	s=default; t=1590693782;
	bh=fH4CA5LbIeE+f8y1vXnW4Iz8KZNNaPdkAgIYpI6uPSY=;
	h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
	b=H6Pa3lXEo/kgEnW3+pL94Y0N764CYcDqJJYDzre58tIYtSymk/+3IElb1zaTEUma8
	 Xq19vqR03v3vYSsaRqrTrE6jJ5MzcIpUP81VnubmmTbuda9KEZfZOPaIszeo15UgUq
	 wXrWnqh0MrBNYDEVsRStecF5qKuS/pSdSoXjXZmA=
Subject: Re: Network stops passing traffic randomly
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org,
 srn@coolheads.com
References: <20200525083512.832.13419@diktynna.open-mesh.org>
 <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <1970963.L7oaDoOIKM@sven-edge>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <70ed129e-5ba9-cef4-7c24-161152ce8e06@candelatech.com>
Date: Thu, 28 May 2020 12:22:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1970963.L7oaDoOIKM@sven-edge>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590693785;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=P4jtmVHjeE4cFLT2neTmmh4iEwaTbWcd//PJ0a2hF/0=;
	b=rA2RMq2jnpjgOc0tvW079O31tqiJCwzksx8AzsfvEK0i5MeROHsPjSxknDHttkmrRHzGvZ
	eUfGoy8wcCiPsc4H8aZ/qog+DMP5aL+99rj8AaMazQlFUU/JN5GZRwDo8yLtgfskx/AQ2g
	QAkToj5bwm15mt9lCGVCD/HjdBPiAoE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590693785; a=rsa-sha256;
	cv=none;
	b=lG7pjDwo1WIXae+Cgj+wCuN+sR8RXwIO9Hu8wJDdttUZOrPSZH1GGBCJj9JG9cIPXrV/La
	vLcQZpTksu/5U4bZyYuIjk0SL1l+6FtRMDL3p+Np+oZHB1B4+1upJFJ0nEa0wKa3RF0chq
	KAzI9WW1kMUVPeBxOK7AigEAdt8Xz4s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=candelatech.com header.s=default header.b=H6Pa3lXE;
	spf=pass (diktynna.open-mesh.org: domain of greearb@candelatech.com designates 208.74.158.173 as permitted sender) smtp.mailfrom=greearb@candelatech.com
X-MailFrom: greearb@candelatech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: LZX2PNOX3FLG6L4D3WLRZYEULKD5IEF5
X-Message-ID-Hash: LZX2PNOX3FLG6L4D3WLRZYEULKD5IEF5
X-Mailman-Approved-At: Thu, 28 May 2020 19:32:08 +0200
CC: smartwires@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LZX2PNOX3FLG6L4D3WLRZYEULKD5IEF5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 05/28/2020 12:19 PM, Sven Eckelmann wrote:
> On Thursday, 28 May 2020 21:03:20 CEST Steve Newcomb wrote:
>> I have seen Sven's remark about unicast packets.  I'm not sanguine about
>> getting Qualcomm to fix a driver for an older product.
>
> I am slightly confused now about the mentioning of the candelatech driver.
>
> Just to sync both of you up:
>
> * Are you using ath10k-ct with the ath10k-firmware*-ct or are you using ath10k
>   with the ath10k-firmware*?
> * And are you using IBSS or 802.11s (meshpoint with mesh_fwding=0)? Is this
>   encrypted or not encrypted?
>
>> The Candela
>> Technologies driver refuses to function on the DFS channels (100, 116,
>> 132), which in my large, populous US residential environment work far,
>> far better than channels 36 or 149.
>
> Was this reported to Ben Greear?
>
> Kind regards,
> 	Sven

If you are using my firmware, what chipset are you using?

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com
