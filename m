Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7D71ED111
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  3 Jun 2020 15:43:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B20CC81086;
	Wed,  3 Jun 2020 15:43:40 +0200 (CEST)
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 635A880095
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  3 Jun 2020 14:48:26 +0200 (CEST)
Received: from [192.168.254.4] (unknown [50.34.197.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail3.candelatech.com (Postfix) with ESMTPSA id 0A51D13C2B0;
	Wed,  3 Jun 2020 05:48:25 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 0A51D13C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
	s=default; t=1591188505;
	bh=UN7FbsGUdJwJj0DH+Q6G6RTbBh69IMS15XOucGMmwb0=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=Bq1jTSVpwVn20zqXip6JUiBqBCisrwaaKA7Vopmitd4rpdAVh+cTtZdrcpZJbYZDx
	 Z5jkZyJDHiBJCAL5EzBIfJJ17XfbhkoMKAyRXd85icd3x6AMqt8EF5ohtG509A8Dnl
	 sqVOINNYbmoDYp2IeqfOjznQi4ot3sLuyBfxN4/Y=
Subject: Re: Network stops passing traffic randomly
To: srn@coolheads.com, b.a.t.m.a.n@lists.open-mesh.org, smartwires@gmail.com
References: <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <20200529001302.832.66710@diktynna.open-mesh.org>
 <174b4bab-d84e-899d-3ecf-34bfdccff4fd@coolheads.com>
 <8cb674e5-26b2-e992-61e6-5969cc50358f@candelatech.com>
 <f99daabf-2081-c6af-779d-580f8d352b59@coolheads.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <92655f2e-4ec4-5e1b-4ea9-b1df87a88aac@candelatech.com>
Date: Wed, 3 Jun 2020 05:48:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <f99daabf-2081-c6af-779d-580f8d352b59@coolheads.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591188507;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=i3kQj/FzsaK+Qt5Ve3dEEgEbUzEAaHGic9fnxAxsqRk=;
	b=PbMaZdcHUk2D8U2UIA8A9h1r/DHkLe311aaQB78uBz0jDRhaCwzQRrsQ7Q00tQ7NFcLDFi
	oTAuU89Z1Jtl+aZzClyQXs5e/4RBZQy4TM/SUrFFtMJfFxpzNOnWM3fbOI2Ft6he3FGsge
	eysZ3voachbGl8iNjsVblk4E5WL8z2A=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591188507; a=rsa-sha256;
	cv=none;
	b=utDo50fyNRnq+y6RiN1UPmuJh16Qv4ucz+s/urn3X5KZQWapCbXjkmnahEX1ZW/r8WwmrR
	KZnI6EMT23HUZkceYF6U+T4ZXAH3arwNC8cEc1aHLUSKIWUy/iIihCC2WU4idVRrZi5QGt
	OpnrBJc+qxBBjQSeaNhNNabi4Mt4O1s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=candelatech.com header.s=default header.b=Bq1jTSVp;
	spf=pass (diktynna.open-mesh.org: domain of greearb@candelatech.com designates 208.74.158.173 as permitted sender) smtp.mailfrom=greearb@candelatech.com
X-MailFrom: greearb@candelatech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: VFLGZGITWOZ55QUBOHRMU4A4JBAVLZE7
X-Message-ID-Hash: VFLGZGITWOZ55QUBOHRMU4A4JBAVLZE7
X-Mailman-Approved-At: Wed, 03 Jun 2020 13:43:38 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VFLGZGITWOZ55QUBOHRMU4A4JBAVLZE7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 06/02/2020 07:06 PM, Steve Newcomb wrote:
>
>
> On 6/2/20 4:02 PM, Ben Greear wrote:
>> Have you tried using IPQ4019 based systems?  They seem pretty affordable, and the 3-radio Linksys MR8300 & EA8300 seem pretty stable
>> in my testing recently (in AP mode, not tested mesh).
> No.  Used, on E-bay, the cheaper of the two, the EA8300  is at least twice as expensive as what we're using now.  To buy a dozen or so in hope of getting them to work with Batman is out of the question, alas.
>
> Ben, I fully understand your lack of incentive to spend your time on drivers for older hardware.  This is not your problem, really. (Unless, like me, you are seeking ways to address the digital divide, where low entry cost is the key consideration.  Every dollar cheaper means more people can connect, which was important even before the pandemic began.  I selected these Archer [AC]7 v[245] units because there are so many of them for sale that they are kind of hard to sell.  True, I didn't know the QCA driver would limit me to 3 nodes per mesh, nor did I know your driver couldn't support encryption nor DFS, at least not out of the box.  It looked like a reasonable bet at the time; with 2 drivers to choose from, what could go wrong?  Oh, well, nothing worthwhile was ever easy.)
>
> Steve

I'm working with the TIP project, which aims to provide stable OpenWrt capable hardware, among lots of other things.

I know some others in that group are interested in low cost solutions, so curious to know what price you think is
viable for your market...

https://telecominfraproject.com/wifi/

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com
