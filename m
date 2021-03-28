Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E9A34BF3C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Mar 2021 23:19:04 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9AE7A8063F;
	Sun, 28 Mar 2021 23:19:02 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7A0E48063F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Mar 2021 23:18:58 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B4BA33EB00
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Mar 2021 23:18:57 +0200 (CEST)
Date: Sun, 28 Mar 2021 23:18:56 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Batman adv selective broadcast mechanism
Message-ID: <20210328211856.GB2742@otheros>
References: <20210324132721.GC2174@otheros>
 <20210325125815.1198.28247@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210325125815.1198.28247@diktynna.open-mesh.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616966338; a=rsa-sha256;
	cv=none;
	b=WcX+zx0EDjgI/NBUWloGjoNTuXrjpDJRMspgkK5NCwaqlxkq/HuuVo42JzIWuxOeHSqqRn
	8b3VjL8edeAfqrCVi6PpDsfIWIIiitM7UVN9s1e7l4vohTBu6NICaa0nxpb8sDhu33HkTM
	WoWwjSilLtT5p4t/rlOEmPzu/jZhjjw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616966338;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=07pGe6ff5hC4ovrL7PbcsZRn9bK1bAhtBNyFujw8GVE=;
	b=eV9WmWxxxOTkO1YC9IwLzwYayDukxlFpFHCbJKzO1kU+a68M4U5R1ZTZJEVyxgeI63HRe2
	PSM1lsEF0YG91jqjAh13dRiuI2yR5yHljwNX1Jx3iTwlKOWOw6/2veZCIirUCDrpt13KPL
	aEJ58dpx9EBR1dO2tL75NL/6JUD0Iks=
Message-ID-Hash: BV5ECUQ5KBONRNTCPJKDGEGE6FXMJR7Y
X-Message-ID-Hash: BV5ECUQ5KBONRNTCPJKDGEGE6FXMJR7Y
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BV5ECUQ5KBONRNTCPJKDGEGE6FXMJR7Y/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Oytun,

Are you able to recompile the kernel module and batctl? If so, I
could have a look at updating that patch for a more recent
batman-adv version.

Actually, I'm also kind of curious about your use-case. Sounds
like it's not 802.11 wifi you are using, right?

Regards, Linus


On Thu, Mar 25, 2021 at 12:58:15PM -0000, oytunyapar@hotmail.com wrote:
> Hi Linus,
> 
>     Thank you for the answer. Configuring batman-adv from /sys is deprecated in the last version (batctl is the only way now). I am not sure how to apply this patch. What do you suggest as a proper way of doing this?
> 
> Regards.
> Oytun
