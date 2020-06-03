Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A04D1ED49B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  3 Jun 2020 18:57:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A56E481520;
	Wed,  3 Jun 2020 18:57:57 +0200 (CEST)
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1323780206
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  3 Jun 2020 18:42:47 +0200 (CEST)
Received: from [192.168.254.4] (unknown [50.34.197.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail3.candelatech.com (Postfix) with ESMTPSA id D777813C2B0;
	Wed,  3 Jun 2020 09:42:45 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com D777813C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
	s=default; t=1591202566;
	bh=5vv14ndclhzMfMTSYLAbw+TZLWwt0wux7KmQ9IEHfBM=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=rJimRW1XrNrnh81AhjsTcMQrWee4K9sPi+AEcujd8a8jSyL46iDVFfGgIdDtZUc9a
	 I+PDeEf+r5Yz0gCRZq6CcUYTfCDeroJshLlcv9jgj9HYhXaf1qoDJW6gB8288g9nNr
	 6iZiOKGLbTiYG5Z2fkKcUgzA7D5N+vjnGGSEHTf8=
Subject: Re: Network stops passing traffic randomly
To: srn@coolheads.com, b.a.t.m.a.n@lists.open-mesh.org, smartwires@gmail.com
References: <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <20200529001302.832.66710@diktynna.open-mesh.org>
 <174b4bab-d84e-899d-3ecf-34bfdccff4fd@coolheads.com>
 <8cb674e5-26b2-e992-61e6-5969cc50358f@candelatech.com>
 <f99daabf-2081-c6af-779d-580f8d352b59@coolheads.com>
 <92655f2e-4ec4-5e1b-4ea9-b1df87a88aac@candelatech.com>
 <c917d6e6-d3c1-61f5-1846-794f6cc06824@coolheads.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <3659b31b-1f8b-1e21-43f5-b47f6e11d338@candelatech.com>
Date: Wed, 3 Jun 2020 09:42:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <c917d6e6-d3c1-61f5-1846-794f6cc06824@coolheads.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591202568;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=+eqPhVuZZ4RFfdnjva3Toyl8EREwcZ94ZHD7zak4glI=;
	b=xeunwtkHTOuyOcwTOJ9D6jSPQ55Ofzvne6iXw5JKX1a4as7izaUOSHzFZt31zV/4yVzk3L
	/pbmqX4Y58vdJF72/HNi7htO6WO1YSX+JVa+fr93HPcAf61fVXWl9/RriWkQxm+C7TTLGG
	EFcEG5ALvAQU6f2ktbO6jCSr1OlOyHs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591202568; a=rsa-sha256;
	cv=none;
	b=a8+eBQ/i8c14Jx3U2eTVRJGl+Iq+P4kI68zfetglLGafV9TrRPe1w8vxmF9Ot87PG9XO4c
	Br8U+NLO80AWh1UoBH6v/tAm47ASEEtylwwLeYRTMqLVW56FOco8O78RFVtLdVm3FPtVON
	ZCTxvkytnKv+lhnGtUky8tlPW7jFcrA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=candelatech.com header.s=default header.b=rJimRW1X;
	spf=pass (diktynna.open-mesh.org: domain of greearb@candelatech.com designates 208.74.158.173 as permitted sender) smtp.mailfrom=greearb@candelatech.com
X-MailFrom: greearb@candelatech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 5YWAQD7QHVWC6BECXGHBLPDAUAGO7HH2
X-Message-ID-Hash: 5YWAQD7QHVWC6BECXGHBLPDAUAGO7HH2
X-Mailman-Approved-At: Wed, 03 Jun 2020 16:57:55 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5YWAQD7QHVWC6BECXGHBLPDAUAGO7HH2/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 06/03/2020 08:35 AM, Steve Newcomb wrote:
>
>
> On 6/3/20 8:48 AM, Ben Greear wrote:
>> I'm working with the TIP project, which aims to provide stable OpenWrt capable hardware, among lots of other things.
>>
>> I know some others in that group are interested in low cost solutions, so curious to know what price you think is
>> viable for your market...
>>
>> https://telecominfraproject.com/wifi/
>
> Ben, your question is appropriately industrial, but I've already given my answer, which is: "Less is more."  The lower the price, the more human capital is protected from the abyss of the digital divide.
>
> True, the primary problem is not so much the one-time cost of a cheap radio.  However, one way to address the primary problem is to give public-spirited digital-haves a way to lift up their digital-have-not neighbors.  With mesh computing, that means purchasing multiple routers and making gifts of at least one of them, along with the gift of access.  What can the digital-haves afford to give, besides access?  Typically, not much.
>
> What follows is a rant.  Advice: skip it.

If you are trying to lift up a broad swath of the world, then you need scale and vision, and part of that is how
to make it self sustaining.  Giving a few crumbs to folks is less useful in my mind than helping give them the means
to make their own bread.  Think someone starting a company that wants to deploy 10k hotspots with 40k satellite
wifi mesh nodes....

Open source software (and maybe hardware) with high volume, affordable, and solid hardware
is one of the core aims of TIP.  Think of a price and minimum hardware that meets your goals,
if I find someone that can make such a thing at such a price, I'll let you know.

If you want wave-1 ath10k to mesh, my advice is to use 7 virtual station vdevs and one AP on each radio.  ath10k-ct
firmware and software will support this nicely.  Have those 7 stations connect to peers' AP vdevs.  Do routing mesh
magic through this topology.  Then you don't care about anything other than STA + AP working.  This might also scale to other platforms
that don't support IBSS or MESH well.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com
