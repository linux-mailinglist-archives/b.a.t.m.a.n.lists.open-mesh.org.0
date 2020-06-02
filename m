Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A3F1EC947
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  3 Jun 2020 08:12:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 878F880953;
	Wed,  3 Jun 2020 08:12:44 +0200 (CEST)
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 81A2F80128
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  2 Jun 2020 22:02:26 +0200 (CEST)
Received: from [192.168.254.4] (unknown [50.34.197.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail3.candelatech.com (Postfix) with ESMTPSA id D413813C2B0;
	Tue,  2 Jun 2020 13:02:24 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com D413813C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
	s=default; t=1591128145;
	bh=HDJv8TC+CUlOQ0d8yg4BwAnAEk7OO2dZD4zC/i8Bs3M=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=rulajP2NY0LXC1/nogxMKBQ8eaz+C90NoH2yCnXrZbzU9F0kOzF2xqOC7l+fiXgnB
	 Chj0F8DY0LJfSKT//700Pj0VGYerD+eJQVOvxZV6XDo6BIMnI68NBAcwd+3RLU/Wio
	 1Hobs4NYTjJhnKIU8v0zLoOiTNJWJMP4IYr9MmU4=
Subject: Re: Network stops passing traffic randomly
To: srn@coolheads.com, b.a.t.m.a.n@lists.open-mesh.org, smartwires@gmail.com
References: <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <20200529001302.832.66710@diktynna.open-mesh.org>
 <174b4bab-d84e-899d-3ecf-34bfdccff4fd@coolheads.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <8cb674e5-26b2-e992-61e6-5969cc50358f@candelatech.com>
Date: Tue, 2 Jun 2020 13:02:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <174b4bab-d84e-899d-3ecf-34bfdccff4fd@coolheads.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591128148;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=J32Kn9qcpyCXLdgryxIjVmjJHbs22s2Zypp8y/zGj3c=;
	b=xXT9UamsB78qZ1kqqkAUSfjZPOAd8rIjk84R/hYiY7VKakvFJn7xNAFGXN3pH9YPCqLjUZ
	gUzdTvHbDt0SQLFY0FuYEwozFjwYYkeontipSU36nFRT2ajej7aKiluUilSoGlQpyu+R2/
	Kx3kqVuL6FczvJs9OCnDvRgBvc/9S8Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591128148; a=rsa-sha256;
	cv=none;
	b=YcYvNZbk5lEFGa5l6X2T2meDW5Uvcdguawyumqlt498yB1pRI5sdbYXPbV2CftKLDLTd6h
	W+7l+2xPTYKaukcwy0huiLD/3b0Jce6uVit0JeuzrZeMhtUlk02tYMow+P6UySq6RT+hdF
	BHJrgllvuQ+YQq81zUlcT3bMVwHhxOQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=candelatech.com header.s=default header.b=rulajP2N;
	spf=pass (diktynna.open-mesh.org: domain of greearb@candelatech.com designates 208.74.158.173 as permitted sender) smtp.mailfrom=greearb@candelatech.com
X-MailFrom: greearb@candelatech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: RSBQ6L7V5N4UZDLKT3TZ7MCKSIGWRSLV
X-Message-ID-Hash: RSBQ6L7V5N4UZDLKT3TZ7MCKSIGWRSLV
X-Mailman-Approved-At: Wed, 03 Jun 2020 06:12:43 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RSBQ6L7V5N4UZDLKT3TZ7MCKSIGWRSLV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 06/01/2020 07:05 PM, Steve Newcomb wrote:
>
>
> On 5/28/20 8:13 PM, smartwires@gmail.com wrote:
>> Steve, I am also using ap with a QCA9558 SOC and Also using ath10k-firmware-qca988x . I have also considered using adhoc.
>
> I think I discovered something yesterday that explains everything, and it's very reproducible.  The mesh mode in the QCA firmware works reliably in the lab and in the field, but only when there are 3 or fewer nodes.  If I add one more node, the mesh will completely fail, either immediately or within a few hours.  If the nodes are strung out in a daisy chain, failure is usually, but not always, delayed for a while, and the links break in a piecemeal fashion, one at a time.  If the nodes are close enough to each other, total failure occurs quite quickly.  I surmise that the 802.11s implementation in the QCA driver was not tested with more than 3 nodes, or perhaps it wasn't designed to support more than 3 nodes.  Sigh.
>
> Sven, I think this epiphany obviates the need for your test (which I still haven't figured out how to execute in the field), but I'll return to that effort if you think I should.
>
> So in the end, unless I replace the hardware throughout the neighborhood with far more expensive hardware, I must find a way to use Ben's driver, or to have no mesh network with more than 3 nodes in it.

Have you tried using IPQ4019 based systems?  They seem pretty affordable, and the 3-radio Linksys MR8300 & EA8300 seem pretty stable
in my testing recently (in AP mode, not tested mesh).

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com
