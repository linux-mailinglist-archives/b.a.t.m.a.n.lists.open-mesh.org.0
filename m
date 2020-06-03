Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D2B1ED380
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  3 Jun 2020 17:36:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7D4B08040D;
	Wed,  3 Jun 2020 17:36:05 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8E1428040D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  3 Jun 2020 17:36:02 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
	id 256EB40D7C; Wed,  3 Jun 2020 11:36:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591198562; bh=zzbE3YHMiizuJPS8ytCgGqfJ2lHMWHLggNYd3NG0loo=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=uQn6PuMeSgz9tO8UaE2138jcu4eM2ZH1cf8sHtF756+nyQmT7VM106mRXe0xvlzRM
	 o73UV6v7QUhWLyT+kAPsHpbOLv1hc23LGoxJy2ztwmo7Nc9CDMX9zkJl9cOUW4wM+M
	 AzDbmq2perPm3N1n/1smNB52P4EvvbQfRw4bhWx0vo0FzrSl7hZKFSPLQ4Y62f3idd
	 GgiUaXxafV+kyLDPdx1Sm0bLJzdgwY5+QF9639V13JxgJggFN1ndvIAZfKYkg0+h7R
	 Ag61fcUUiX8vyX3ymhPvayb8DqFJr4PPhk7lojb6IAAoPPJGlXr9Bgu6JDoKmaeAZ5
	 3eiVfKx+tmbYw==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Received: from [192.168.2.88] (unknown [38.21.219.2])
	by ory.petesbox.net (Postfix) with ESMTPSA id 8CC3440709;
	Wed,  3 Jun 2020 11:35:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591198556; bh=zzbE3YHMiizuJPS8ytCgGqfJ2lHMWHLggNYd3NG0loo=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=x9rUlb2thqH2EHTgJ2j54v6WgwuHgMfURyG3Vl/bVsEc0AqF5LLer+DDpFTQMjO56
	 s7UMT15t1GpJ3SaaBGk/rOdQEX2RU179osU7/oTluruwwoKAzHTgpBg4XEhMJb0ZkA
	 e3DXV++sz87aAc4xTF2IGMmVCRBBhP0nRst6RdxJifP3Oq+2m63AAQOU+/flKbflFS
	 xW2skm5IDBL1fki9JC2mtLMNIYznRwbHWvOGipJPpb2EBiy2VJMdFMIN2VmYyeADs7
	 wWtbnOXyvX9D8SMe7LQ24KwZrcEwvnO83kJR2th++3/Vr7KOP/KdlrA0LZGdDaiLLr
	 ZnAoRKKDjDG6w==
Subject: Re: Network stops passing traffic randomly
To: Ben Greear <greearb@candelatech.com>, b.a.t.m.a.n@lists.open-mesh.org,
 smartwires@gmail.com
References: <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <20200529001302.832.66710@diktynna.open-mesh.org>
 <174b4bab-d84e-899d-3ecf-34bfdccff4fd@coolheads.com>
 <8cb674e5-26b2-e992-61e6-5969cc50358f@candelatech.com>
 <f99daabf-2081-c6af-779d-580f8d352b59@coolheads.com>
 <92655f2e-4ec4-5e1b-4ea9-b1df87a88aac@candelatech.com>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <c917d6e6-d3c1-61f5-1846-794f6cc06824@coolheads.com>
Date: Wed, 3 Jun 2020 11:35:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <92655f2e-4ec4-5e1b-4ea9-b1df87a88aac@candelatech.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591198562;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=zzbE3YHMiizuJPS8ytCgGqfJ2lHMWHLggNYd3NG0loo=;
	b=F4sv5ZUEsl21jxiffzUPikO2jJzQYQuw/dxFilxIdwkp9/dnHSip8NtCFHUgTz8kicl3B/
	La3RdSFC0QPdD57yhX+WYuha2vQyUBzKgNt3+ycniOX40ma3wZHbH2Py0whPvLebqlhioJ
	kTdaDlzI+lbCjOcnKimP86cSDEeuxvs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591198562; a=rsa-sha256;
	cv=none;
	b=lWAYrgyrbv3DAwsl1i242j5TzD+wQyYvvqZdZzSyJ117gfykv5YTR/VYs4RkseMx/Jyy9+
	dzS8EI1GhICivjRyY+CG6Y+AxKrML2YNJt8oohNPxN25pbJXew/FCkrNn9yCg8KHJUUaZZ
	OKNevyEDDT/Tyj4yTz/W/C3lQAS9HCA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=petesbox.net header.s=ory header.b=uQn6PuMe;
	dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory header.b=x9rUlb2t;
	spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 6CO5VUQYN7IQUZ6IK2QX5ORMJT7IOHMD
X-Message-ID-Hash: 6CO5VUQYN7IQUZ6IK2QX5ORMJT7IOHMD
X-MailFrom: srn@coolheads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: srn@coolheads.com, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6CO5VUQYN7IQUZ6IK2QX5ORMJT7IOHMD/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 6/3/20 8:48 AM, Ben Greear wrote:
 > I'm working with the TIP project, which aims to provide stable=20
OpenWrt capable hardware, among lots of other things.
 >
 > I know some others in that group are interested in low cost=20
solutions, so curious to know what price you think is
 > viable for your market...
 >
 > https://telecominfraproject.com/wifi/

Ben, your question is appropriately industrial, but I've already given=20
my answer, which is: "Less is more."=C2=A0 The lower the price, the more=20
human capital is protected from the abyss of the digital divide.

True, the primary problem is not so much the one-time cost of a cheap=20
radio.=C2=A0 However, one way to address the primary problem is to give=20
public-spirited digital-haves a way to lift up their digital-have-not=20
neighbors.=C2=A0 With mesh computing, that means purchasing multiple rout=
ers=20
and making gifts of at least one of them, along with the gift of=20
access.=C2=A0 What can the digital-haves afford to give, besides access?=C2=
=A0=20
Typically, not much.

What follows is a rant.=C2=A0 Advice: skip it.

---------------------------------------------

Let me explain my perspective, here.

Personally, I believe that there is no difference between the=20
information highway and any other public highway.=C2=A0 The digital divid=
e is=20
compelling evidence of oppression of the poor by the wealthy.=C2=A0 The=20
nature of the oppression is comparable to highway tolls that restrict=20
the mobility of the poor.=C2=A0 Since the capture of US federal regulator=
y=20
bodies by the telecom industry, and in the absence of effective telecom=20
regulation in the public interest, the only course available to people=20
who want to relieve the damage caused by the exclusion of the=20
dispossessed is to work around the edges, which is what I'm doing.=C2=A0=20
While I would welcome industrial help, I expect none, because I'm only=20
interested in the prosperity of the *entire* public.=C2=A0 (In my retirem=
ent,=20
I can just barely afford to be.)

I'm unfamiliar with the Telecom Infra Project (TIP).=C2=A0 However, I spe=
nt=20
more than 20 years voluntarily working on ANSI and ISO information=20
interchange standards (ISO 10743, 10744, 13250), and I know exactly what=20
I'm talking about when I say that the public interest is unlikely to be=20
served by industrial consortia who say things like what the TIP website=20
says:

 =C2=A0=C2=A0=C2=A0=C2=A0 "We believe that accelerating innovation couple=
d with new business=20
approaches and cost efficiencies will help the industry build the=20
networks of the future and create business opportunities for new and=20
existing companies, alike."


Such information technology consortia are typically violators of the=20
spirit, and generally the letter, of the antitrust legislation that has=20
been on the books since the end of the gilded age that preceded the=20
current gilded age, and which no recent U.S. administration has seen fit=20
to enforce.=C2=A0 They are simply dog fights in which the public interest=
 has=20
no dog.=C2=A0 The reason for their existence is to form alliances between=
=C2=A0=20
aggregations of capital as they conspire against the market-leading=20
aggregations of capital.

ANSI (the American National Standards Institute) promulgates rules for=20
such activities that keep all participants from violating antitrust law=20
-- from being "conspiracies in restraint of trade" -- but you never hear=20
about ANSI standards any more because nobody bothers to avoid antitrust=20
prosecution.=C2=A0 There isn't any, basically.=C2=A0 Why put up with burd=
ensome=20
transparency rules?=C2=A0 Why put up with the sandbagging machinations of=
=20
representatives of the actual market leaders?=C2=A0 Open societies are=20
expensive, frustrating, and annoying.

The purpose of a business is to make a profit, and that incentive *does*=20
serve the public interest, but only in the context of regulation that=20
forces the public interest to be served by it.=C2=A0 In the case of the U=
S=20
telecom industry, and basically since the Consent Decree of 1982,=20
regulation has served the interests of its investors, but not the public=20
interest.=C2=A0 The history is appalling, really, and the story keeps get=
ting=20
worse.

That's just how things are these days, as we flush whole sections of=20
each generation's human potential down the toilet.=C2=A0 It bothers me a=20
lot.=C2=A0 For each succeeding generation, the cost of each generation's =
loss=20
is exponentially increased.=C2=A0 Try not to think about it.


