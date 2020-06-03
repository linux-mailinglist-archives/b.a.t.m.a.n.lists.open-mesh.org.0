Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB311EC70F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  3 Jun 2020 04:06:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 28C3D80126;
	Wed,  3 Jun 2020 04:06:50 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5384780126
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  3 Jun 2020 04:06:46 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
	id DA65D40815; Tue,  2 Jun 2020 22:06:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591150005; bh=DwW+JrZri2Dw1ApTSt3DRyDNnQuGoru1R9AvtPR/ve8=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=tLLoQ770Ie0WK9yBxg3NZH0pYJXwuTGMn3GrtNMOsUDMzVIhrJlzZmdL2ENiq7bG3
	 7XeZ8L6a4K4s+ByiBPrkrQlQ8neAcvknnViy6z502odB57mC0/MVMNxL/FVysx+1mK
	 esOVAF/OpRMpD5LqrxwfUZ4tBsUmCY/SiKPbGFD9AiQ/saHH18sEa07sy88lo0X1Ap
	 y3Xis2dxpAZKKlDqsjpGwPk/VAmEk/1iTAZSuF8ogL9+8VLmp+HLuAi8ZROV2pfXSm
	 9fTf2cPCpS88FxeezbF8aQ1UWPs3VnpvfBZZ8KjtgyoYXujVy6koknzEP0voCffYIg
	 hgsP/NxPRo9ww==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Received: from [192.168.2.88] (unknown [38.21.219.2])
	by ory.petesbox.net (Postfix) with ESMTPSA id 7E269403AD;
	Tue,  2 Jun 2020 22:06:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591150001; bh=DwW+JrZri2Dw1ApTSt3DRyDNnQuGoru1R9AvtPR/ve8=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=ZQbkRP/LmILrBda9GFOWhYq8X0WjDEGXfAHqVe1j8OFTCefa8EhDRUNMTvnqbHbla
	 +xyfHAQ4Ip1VuQ2yCppf1bJyJfH7mNOdxPaRWQKZk3sKN65LXT1gaHfgDgZ0Pxs5Lv
	 vigctKzPl1JlmahVZvNnxXHnz6/qlvWcyNtDcVwnGVltjd+dpoGIPZqf4PF9C6B4u3
	 +WaW/mDZvIEzehefulcdVZHamq+EU7tpDWV/lp5920/gWXKGymH8MdaUsX/kCDB4Bf
	 YFDG+Q4YdGWrZx63X32/EMRm1DeBMXUoDezz2fb2mxpyawHCjkt+8wEQHhZ57pDQzE
	 s0yjy/7mmyYig==
Subject: Re: Network stops passing traffic randomly
To: Ben Greear <greearb@candelatech.com>, b.a.t.m.a.n@lists.open-mesh.org,
 smartwires@gmail.com
References: <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <20200529001302.832.66710@diktynna.open-mesh.org>
 <174b4bab-d84e-899d-3ecf-34bfdccff4fd@coolheads.com>
 <8cb674e5-26b2-e992-61e6-5969cc50358f@candelatech.com>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <f99daabf-2081-c6af-779d-580f8d352b59@coolheads.com>
Date: Tue, 2 Jun 2020 22:06:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <8cb674e5-26b2-e992-61e6-5969cc50358f@candelatech.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591150006;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=DwW+JrZri2Dw1ApTSt3DRyDNnQuGoru1R9AvtPR/ve8=;
	b=bbrKG/64rTmYO2poZFEh2X9W0GHRsESFVDEbE2grua46NoPLoQd6A9MH95mIjDKnfmQzSH
	Dvinken26b7z0+v6MidedBt62rBaork1nMfLnOdpPCiq95YK+K3ZTSPrswDcGxgMTFLUmK
	q78rNSxFghY5aSRIIVAZJmlqMN1iohc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591150006; a=rsa-sha256;
	cv=none;
	b=Zpci0ylKOaB7oYzBQc1XxA8XmIxYOvpeGHuzK2u7ZgAMClx6LEyWilox0koI2VhxaJp10H
	300H86tG0ykBoRb40j4IMHfhK0rOQHTvjodOy9r5yVqgcF5E8PmFKEreIC7mAlrQgi/Jsw
	rZfYkMQWUBU258pk/gvHu7uYiZoHzwY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=petesbox.net header.s=ory header.b=tLLoQ770;
	dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory header.b=ZQbkRP/L;
	spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DIXSIMAESN6RYCD3WUQCZCGYO7YD4LPK
X-Message-ID-Hash: DIXSIMAESN6RYCD3WUQCZCGYO7YD4LPK
X-MailFrom: srn@coolheads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: srn@coolheads.com, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DIXSIMAESN6RYCD3WUQCZCGYO7YD4LPK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 6/2/20 4:02 PM, Ben Greear wrote:
> Have you tried using IPQ4019 based systems?=C2=A0 They seem pretty=20
> affordable, and the 3-radio Linksys MR8300 & EA8300 seem pretty stable
> in my testing recently (in AP mode, not tested mesh).
No.=C2=A0 Used, on E-bay, the cheaper of the two, the EA8300=C2=A0 is at =
least=20
twice as expensive as what we're using now.=C2=A0 To buy a dozen or so in=
=20
hope of getting them to work with Batman is out of the question, alas.

Ben, I fully understand your lack of incentive to spend your time on=20
drivers for older hardware.=C2=A0 This is not your problem, really. (Unle=
ss,=20
like me, you are seeking ways to address the digital divide, where low=20
entry cost is the key consideration.=C2=A0 Every dollar cheaper means mor=
e=20
people can connect, which was important even before the pandemic began.=C2=
=A0=20
I selected these Archer [AC]7 v[245] units because there are so many of=20
them for sale that they are kind of hard to sell.=C2=A0 True, I didn't kn=
ow=20
the QCA driver would limit me to 3 nodes per mesh, nor did I know your=20
driver couldn't support encryption nor DFS, at least not out of the=20
box.=C2=A0 It looked like a reasonable bet at the time; with 2 drivers to=
=20
choose from, what could go wrong?=C2=A0 Oh, well, nothing worthwhile was =
ever=20
easy.)

Steve
