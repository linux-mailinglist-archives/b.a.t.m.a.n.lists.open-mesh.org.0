Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB911E75D3
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2020 08:20:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1AE1D82919;
	Fri, 29 May 2020 08:20:29 +0200 (CEST)
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C40F380299
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2020 23:28:52 +0200 (CEST)
Received: from [192.168.254.4] (unknown [50.34.197.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail3.candelatech.com (Postfix) with ESMTPSA id EA27313C2B0;
	Thu, 28 May 2020 14:28:50 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com EA27313C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
	s=default; t=1590701331;
	bh=PjGujFNCXQsng6JhwtYHXONl7oKC2bCYEexz/4dL334=;
	h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
	b=nApZCQZBK5p7G86mNC7jxLLYJ0+g9MrTggj6Iw7VRepaHqjLRKb1WS8vKDGylcG2D
	 d/pD8VSIBPl37TRH3EBEfsju3wiFvHi+tsssD6MUoojRRNG6Jc0/Z/DF3bwjRtmDPU
	 xSbna6G9xhMmUAAq17iVX4p9mLusBaInhOQ+08lY=
Subject: Re: Network stops passing traffic randomly
To: srn@coolheads.com, Sven Eckelmann <sven@narfation.org>,
 b.a.t.m.a.n@lists.open-mesh.org
References: <20200525083512.832.13419@diktynna.open-mesh.org>
 <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <1970963.L7oaDoOIKM@sven-edge>
 <04932e2f-d727-46ce-ef68-2c79062cf196@coolheads.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <41ed807d-5bbf-8cd0-53e8-0951c84b4889@candelatech.com>
Date: Thu, 28 May 2020 14:28:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <04932e2f-d727-46ce-ef68-2c79062cf196@coolheads.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590701333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=puPFUQoSY+OMcBISWpRlyAj+Dj4gTH8EXR+kVamm1+8=;
	b=GshoN4qbMXGS9c6PzQ7pZRv+fnRNt8WxVN3IUz9NXiBgB0NobJGbAvMyGXjXobt+Q63WP0
	PIElJvLEPjdO0KZQxEgubQamdU0caZ5tAPsL8KqoMEZq2I1A025t7n8z2apebLhFfzNObP
	MtmcHXvHJYjH0YhJgvCRbaSzfhd3/lU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590701333; a=rsa-sha256;
	cv=none;
	b=wd3hOA08gCZwNzueqeCi4MaK7YrgVnrm/yGEPbm5jDzc2IutzehIP89bkUmbFfT6lkgfME
	AwEqGjsVnwjasPxaygE2E4g4HBGeQtf8SF7IDR67rSBKaY+G1unKPOYRo1Pzj95s2OUoZq
	mUeF4CqmRLwvkNBxrRWYfth1tCIgN4Q=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=candelatech.com header.s=default header.b=nApZCQZB;
	spf=pass (diktynna.open-mesh.org: domain of greearb@candelatech.com designates 208.74.158.173 as permitted sender) smtp.mailfrom=greearb@candelatech.com
X-MailFrom: greearb@candelatech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: IJRB6GZVTZORTRI2DBWXCNIR7I4R3SRF
X-Message-ID-Hash: IJRB6GZVTZORTRI2DBWXCNIR7I4R3SRF
X-Mailman-Approved-At: Fri, 29 May 2020 06:20:27 +0200
CC: smartwires@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IJRB6GZVTZORTRI2DBWXCNIR7I4R3SRF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 05/28/2020 01:59 PM, Steve Newcomb wrote:
>
>
> On 5/28/20 3:19 PM, Sven Eckelmann wrote:
>> On Thursday, 28 May 2020 21:03:20 CEST Steve Newcomb wrote:
>>> I have seen Sven's remark about unicast packets.  I'm not sanguine about
>>> getting Qualcomm to fix a driver for an older product.
>> I am slightly confused now about the mentioning of the candelatech driver.
>>
>> Just to sync both of you up:
>>
>> * Are you using ath10k-ct with the ath10k-firmware*-ct or are you using ath10k
>>    with the ath10k-firmware*?
>> * And are you using IBSS or 802.11s (meshpoint with mesh_fwding=0)? Is this
>>    encrypted or not encrypted?
> Speaking only for myself:
>
> CONFIG_PACKAGE_ath10k-firmware-qca988x=y
> CONFIG_PACKAGE_kmod-ath10k=y
> # CONFIG_PACKAGE_ath10k-firmware-qca988x-ct is not set
> # CONFIG_PACKAGE_kmod-ath10k-ct is not set
>
> option mesh_fwding '0'
> option encryption 'psk2+ccmp'

wave-1 ath10k-ct does not support mesh, and while it supports ADHOC, it has issues
sometimes, especially when using encryption, and I have not had interest to debug it
so far.

wave-2 firmware supports mesh, and I think adhoc is stable as well.  I have not done
any serious testing on either mesh nor adhoc though.

I've tested DFS in STA/AP mode and that works fine on my driver/firmware, possibly
due to us setting the regdom as a fwcfg option, I suppose.

Thanks,
Ben

>
>>
>>> The Candela
>>> Technologies driver refuses to function on the DFS channels (100, 116,
>>> 132), which in my large, populous US residential environment work far,
>>> far better than channels 36 or 149.
>> Was this reported to Ben Greear?
> Not yet, no.  I am planning to do that when I can get serious about testing the adhoc alternative.  I tried it just long enough to discover that DFS didn't work (log message was something like "forbidden" (can't remember exactly what it said right now, but that was the sense of it), although I had specified country 'US' and the driver seemed to be aware of the corresponding hex code.  No such log message appeared when channel was 36 or 149.  I said to myself: hmmm, at least the QCA driver *sort-of* works in my environment and returned to it.
>>
>> Kind regards,
>>     Sven
>

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com
