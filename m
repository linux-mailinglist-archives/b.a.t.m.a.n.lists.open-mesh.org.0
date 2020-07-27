Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 369B722F7CF
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Jul 2020 20:36:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 06BB780BE7;
	Mon, 27 Jul 2020 20:36:31 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EA0E38040B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Jul 2020 20:36:27 +0200 (CEST)
Date: Mon, 27 Jul 2020 20:36:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1595874987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8plxXDPOwOK6w7UfOqFgHpjJVTnZZI43C9E1PdffOmM=;
	b=ouh0sUp/E2dVExGt1xuTgtsLNQnGmVRgmrMS1vacErrisxZVwTQ2ud05D8xlzxnNatmaxR
	JVg71/nXfDk0vKU8F+c1qyFlkUBoiU3xiBsYoNGsvz3wqHfu0W3HawJEbfX9xSKPt5ZO6n
	qOc+r71gJyxKtbt1uxh/jhv02IbEKFuYx95wJJw4gba4jwlKs+2aqPKZneniPrvsbMCTs5
	7DasFY86+xPsiyt4E8OfZUp+T3ZvoD5aupvzaU07G9P0Kyq75pccRIKTnHR1MPbEvnsc35
	iK7BSdK9DPJHzMqS2NgQfpha3Oi1/thJc1Mpijcdhv1Hk5rsyOVYWXoxejmWFA==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Batman_V Originator Loop Issue
Message-ID: <20200727183625.GA2340@otheros>
References: <20200724202356.GB2357@otheros>
 <20200727162815.30286.54503@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200727162815.30286.54503@diktynna.open-mesh.org>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1595874988;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8plxXDPOwOK6w7UfOqFgHpjJVTnZZI43C9E1PdffOmM=;
	b=biA3PSINVrU53EqQhe/9kNZEHA3trEPfeyOv3fVcl+MUnBL4dWdLV9rsPkz1qOZz/EeRo8
	Sfel2pGDJX6p9ysJJCQHqBRkCV5QBVTd5bXkIzmHIAeFs1BUjLpPmB5iSgv2RPd5WGG0qn
	BMD+dJW7J69MgTpVimt9YlRbnTkUMjE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1595874988; a=rsa-sha256;
	cv=none;
	b=BVnNVQV0FuULntc7VCQec3sku81Tp8lR2UFA1ZxkfZU520/NQNTDs+2XwmOHWEWFGxIChs
	t338Bx3wjuewD1BBWdQMONWUmYO4p9HpE1J0ZyJT/31G8qJmjnWRP2D1iPxrOQngQHIRg6
	yZ4DfFSmL0SU8j9ucjLtPak2cB69xvQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=ouh0sUp/;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Message-ID-Hash: ANCHKYNCKCUCNHC555CNFFJ2PAYKXAUX
X-Message-ID-Hash: ANCHKYNCKCUCNHC555CNFFJ2PAYKXAUX
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ANCHKYNCKCUCNHC555CNFFJ2PAYKXAUX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Mon, Jul 27, 2020 at 04:28:15PM -0000, lavincent15@gmail.com wrote:
> Linus
> 
> I would love to try it out and help with the development, but unfortunately I do not have the time to do that. My internship is coming to a close, and I need to use a version I know works to provide good data.

Oh, okay, good luck with the results then!

> Side note* Do you think you could provide me with a rough equation for when a node decides to use a hop instead of a direct connection? I'm particularly interested in how the nodes use the hop penalty in the equation. Does speeding up the interval increase the speediness of its decision? I'm using this in a mobile node environment and I need it to dynamically switch to the most stable connection.

The metric, including the hop-penalty for BATMAN V is described here:

https://www.open-mesh.org/projects/batman-adv/wiki/Ogmv2#322-Metric-Update

Or here in the code, in this short function:

https://elixir.bootlin.com/linux/v5.7.8/source/net/batman-adv/bat_v_ogm.c#L470

And then the algorithm will compare if the resulting throughput
metric is higher via a direct connection or over another hop even
with the (either) hop or half-duplex penalty applied.

Hope that helps.

Regards, Linus
