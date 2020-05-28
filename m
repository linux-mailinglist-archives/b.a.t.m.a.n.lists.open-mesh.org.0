Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BE11E6CFC
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2020 22:59:15 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B39FD82287;
	Thu, 28 May 2020 22:59:14 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C734180290
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2020 22:59:11 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
	id 5A73D4024C; Thu, 28 May 2020 16:59:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1590699551; bh=a/e+VlHyTNXSFAl87j0E0M1zQCj+cJ0j/Had3dy0ZFs=;
	h=Reply-To:Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=aSOobiLeCi5rQA//dJZsP53gsgR+IgdJ5qbA6gb6Cd8IZ1fL4I9askOyQ3sz1OjZl
	 SDXM9NtlEIyxSF0XI6Kv3abWZ77bfkD0bGQ2KZ2Q2QwS/pFvntkxfiJnQFhVHVOF4e
	 /b2hzQrqyLxmbNCrU8DsCGpVjH8LJDeyCaB2XUkN66Y0bn4y4s9dVLOM4yNojLGhCm
	 3TY1hPxoxTQwdL2OIS1gqgNAe+ETOSVrTvjpOF607GH3gTYB6OCg566Awn5U+Ybhtn
	 Cnv/nPZLPjjrnYUaQHu1UXNqfFYb235nZoZxiO2P6roTSXmVTdcRtrUavmWLJKU4/m
	 W5/dTdqm6ycvA==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Received: from [192.168.2.68] (unknown [38.21.219.2])
	by ory.petesbox.net (Postfix) with ESMTPSA id DC3004024C;
	Thu, 28 May 2020 16:59:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1590699547; bh=a/e+VlHyTNXSFAl87j0E0M1zQCj+cJ0j/Had3dy0ZFs=;
	h=Reply-To:Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=Fg23B5ranMvLNe3S7qI8wR0GvRpWGFegA7tOIWWm78qMfUuBTX9D5QS6wCNpY2Idj
	 uHJfwCE5gO6x3d8udTyDtrd8F+lNe4aD/83KTCFE9RGKJpu5BylIF8gQbENizTEFJq
	 uj4ijftZEhr6pQ1ZPVx11yd568a5WMap5I+958fU2/5zddPN1U//2Eij6JhX62FCbt
	 DhRW0jExZ3PL+DX3tqJ7JiNMqTSu2Jm5MvuHa2fSmoKstlbovvUd/9IZzSxqjmrAh4
	 epcdQ66ppUm5+1a5YKUtBR6T6A16VB1P4GUFHqP9UdnDEFR5Kv2VGwB0lt1Gh0fGU2
	 /8awNgmxdJ5Hg==
Subject: Re: Network stops passing traffic randomly
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <20200525083512.832.13419@diktynna.open-mesh.org>
 <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <1970963.L7oaDoOIKM@sven-edge>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <04932e2f-d727-46ce-ef68-2c79062cf196@coolheads.com>
Date: Thu, 28 May 2020 16:59:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1970963.L7oaDoOIKM@sven-edge>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590699551;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=a/e+VlHyTNXSFAl87j0E0M1zQCj+cJ0j/Had3dy0ZFs=;
	b=I7tKhleeAUHiFqu5/+MF3TBIM2rBclogErFB2HvkVkX1qoa6/WWLiWq5NwfwBXy5J3+nku
	t9FJC+6b6jh77tf3JS9NvgYiUrS9iWyPnot3M38Zj8oolc+7j8i0dYYFOUYuXg60yzOJ++
	oh6yCfrI+92fTJVyih8KMoUmJ6KQqPQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590699551; a=rsa-sha256;
	cv=none;
	b=Q9idO71eCE2m3qEIYh1sihl+pD98hCyVqY42AG/xc+vB0FQRufCuz0cK1QuqnrkIsiNgbJ
	7ts+ZyHalTThFDghyAAvvIubZCwbfgC2+6JZNsVcBWIddkKpyqw/hlNJzlzaeKJBPEh/yK
	FJ1ziUtSTXHuN9bSZXymR9wXWFBQbBc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=petesbox.net header.s=ory header.b=aSOobiLe;
	dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory header.b=Fg23B5ra;
	spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 6UEXJPK6A2U6ZIORZCEBYMNRNPMMRDGB
X-Message-ID-Hash: 6UEXJPK6A2U6ZIORZCEBYMNRNPMMRDGB
X-MailFrom: srn@coolheads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: smartwires@gmail.com, greearb@candelatech.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: srn@coolheads.com, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6UEXJPK6A2U6ZIORZCEBYMNRNPMMRDGB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 5/28/20 3:19 PM, Sven Eckelmann wrote:
> On Thursday, 28 May 2020 21:03:20 CEST Steve Newcomb wrote:
>> I have seen Sven's remark about unicast packets.  I'm not sanguine abo=
ut
>> getting Qualcomm to fix a driver for an older product.
> I am slightly confused now about the mentioning of the candelatech driv=
er.
>
> Just to sync both of you up:
>
> * Are you using ath10k-ct with the ath10k-firmware*-ct or are you using=
 ath10k
>    with the ath10k-firmware*?
> * And are you using IBSS or 802.11s (meshpoint with mesh_fwding=3D0)? I=
s this
>    encrypted or not encrypted?
Speaking only for myself:

CONFIG_PACKAGE_ath10k-firmware-qca988x=3Dy
CONFIG_PACKAGE_kmod-ath10k=3Dy
# CONFIG_PACKAGE_ath10k-firmware-qca988x-ct is not set
# CONFIG_PACKAGE_kmod-ath10k-ct is not set

option mesh_fwding '0'
option encryption 'psk2+ccmp'

>
>> The Candela
>> Technologies driver refuses to function on the DFS channels (100, 116,
>> 132), which in my large, populous US residential environment work far,
>> far better than channels 36 or 149.
> Was this reported to Ben Greear?
Not yet, no.=A0 I am planning to do that when I can get serious about=20
testing the adhoc alternative.=A0 I tried it just long enough to discover=
=20
that DFS didn't work (log message was something like "forbidden" (can't=20
remember exactly what it said right now, but that was the sense of it),=20
although I had specified country 'US' and the driver seemed to be aware=20
of the corresponding hex code.=A0 No such log message appeared when=20
channel was 36 or 149.=A0 I said to myself: hmmm, at least the QCA driver=
=20
*sort-of* works in my environment and returned to it.
>
> Kind regards,
> 	Sven
