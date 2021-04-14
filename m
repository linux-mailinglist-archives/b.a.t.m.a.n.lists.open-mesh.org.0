Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 385A635F282
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 14 Apr 2021 13:36:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E9646809ED;
	Wed, 14 Apr 2021 13:36:05 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B04798041C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 14 Apr 2021 13:35:56 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 895A13E885
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 14 Apr 2021 13:35:55 +0200 (CEST)
Date: Wed, 14 Apr 2021 13:35:53 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: How to mesh over ethernet VLAN?
Message-ID: <20210414113553.GA4886@otheros>
References: <CAEX-Y1Z8vHvj_TD-EL-Y9AiSeKV9WHb=BxJMwJx0h5z0xfk5OA@mail.gmail.com>
 <20210406195122.GG2742@otheros>
 <CAEX-Y1YfhoLgcwMJAg11H7f785kum6LUrYq=YrKg0C-9vXZ-ZQ@mail.gmail.com>
 <20210409112432.GJ2742@otheros>
 <CAEX-Y1ZnouWOpjrT4n8q4BVaRWSP30GLMbT_78Kn3_KoFELp9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAEX-Y1ZnouWOpjrT4n8q4BVaRWSP30GLMbT_78Kn3_KoFELp9g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1618400163; a=rsa-sha256;
	cv=none;
	b=YjLs/hPVUkbpUhwh6VgCZYsbY+zAaQoQS/J2roEkMCBTDiLRgIc1P5W8qGeQj/Bs22VM2J
	tkUCl2jSNa/+RJu/mPq3NMLcReUDJIMWRarapoyTYdAtz5hZSrqIx038oLvmG3pORDe8r0
	WLjfPOMBgDtCXh4DdfJVlADdNnuso3A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1618400163;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UcC4nM31vzdJmadZAiqAe0KgOah/z0RiKCgwz/8NFxs=;
	b=B1uIsBA+g6a4AxoRDnK5BNbd9QxQnibeqQXIy5UWjsBq9sd29yTmmPoiWYQMsZY/GM0VHX
	xNeqMXpbYP8je5IxqZ3skhMiZRcf4M9kl2QbWps8bwL4T43Xa/dS9MWo81avKb3R8s+teA
	j9bXkSTN3Q2yYw2rEM6taLs2KRVAIDk=
Message-ID-Hash: EE6GX2XM6S22ARYNEXPBCXPL55YVCJ46
X-Message-ID-Hash: EE6GX2XM6S22ARYNEXPBCXPL55YVCJ46
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EE6GX2XM6S22ARYNEXPBCXPL55YVCJ46/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri, Apr 09, 2021 at 03:38:15PM +0200, Andi Depressivum wrote:
> Actual OpenWRT trunk on TP-Link C7 / C2600 devices. Can decrease to
> anything lower than 1500 but cannot raise above 1500.

Hm, yes, many/most ethernet devices don't support jumbo frames.

You could test with iperf3 and its --set-mss option if smaller,
unfragmented frames have a better performance.

A few more options to solve this are then:

* using the DHCP MTU option on the DHCP server (though many
  DHCP clients do not properly support this)
* use iptables MSS clamping (only works for TCP and routed
  traffic)
* on a gateway router, set a route to the internet with a lower
  MTU, which then results in "ICMP packet too big" messages back
  to the client with containing the desired MTU and the initial
  host should retry with a smaller packet size
  (only works for routed traffic)

Or if you have full control of all hosts in the network you can
also reduce the MTU on the hosts.

Also note batman-adv v2021.0 had some performance
improvements for frames fragmented by batman-adv:

https://www.open-mesh.org/news/100 ->
* https://git.open-mesh.org/batman-adv.git/commit/92064deda9b063ca2d5a53b307c6127a9453357c
* https://git.open-mesh.org/batman-adv.git/commit/0966d5424bb87e863037301488519ccdd69e4d26
* https://git.open-mesh.org/batman-adv.git/commit/3e3ff987876d3be70d928561acbefe5a48ab1654

Regards, Linus
