Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E695355C8C
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  6 Apr 2021 21:51:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 404A4806F6;
	Tue,  6 Apr 2021 21:51:28 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1BC958026E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  6 Apr 2021 21:51:26 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 22F573E885
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  6 Apr 2021 21:51:25 +0200 (CEST)
Date: Tue, 6 Apr 2021 21:51:22 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: How to mesh over ethernet VLAN?
Message-ID: <20210406195122.GG2742@otheros>
References: <CAEX-Y1Z8vHvj_TD-EL-Y9AiSeKV9WHb=BxJMwJx0h5z0xfk5OA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAEX-Y1Z8vHvj_TD-EL-Y9AiSeKV9WHb=BxJMwJx0h5z0xfk5OA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617738686; a=rsa-sha256;
	cv=none;
	b=JesuLGyyr/kptC5FGMdzomQlPmvwkeOA+SmXGctZpqWCBepOulT69nu1j6mCO8wt9Xvu4e
	joznV5fPvlm4V/FYopqWD9Akk+dJbjn9/fO6PfI5OgELVzSSS8hr8AcyYjUL1tqKRdVqbq
	92QF9jfwj3yTEx22wnY98OCDLx1aACs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617738686;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lTLEtfaNqad1cVxDOXzkLka/OZ718tsES0L4FQ1OkpU=;
	b=s2cFVi1LnS440fjI+xUae3iHzJPo13N6fC8khLQa6Hd3MpIsMm4nsC/3q5x1lOA2F8Riq8
	iSfol5C8B8WQ9dngdKkWkHx7Fk+/gWri9Qb40qACROpBt8y07fw990Nt2eijGHHSG1ORvP
	XHm96RWh+AefIpb9m7zjB0vCKb8RLcA=
Message-ID-Hash: VXSVADIBBNTLYY3IHP7OB73EPREMLT3N
X-Message-ID-Hash: VXSVADIBBNTLYY3IHP7OB73EPREMLT3N
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VXSVADIBBNTLYY3IHP7OB73EPREMLT3N/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sun, Apr 04, 2021 at 07:52:35PM +0200, Andi Depressivum wrote:
> Hello everybody,
> 
> What's the correct setup to mesh also over an existing ethernet VLAN link?
> 
> My core network with all routers & servers is running on VLAN 3
> (eth0.3 in the routers). How do I have to setup batman-adv to a) mesh
> also over this existing link and b) propagate this VLAN also over
> wireless links. Bridging eth0.3 with bat0.3 and adding eth0.3 also as
> a hardif doesn't work, as it will remove eth0.3 from the bridge.

Right, that is not supported. That goes in the direction of
creating an encapsulating loop. It's best to avoid sharing a link for both
the payload frames and the mesh layer.

One option could be to add an extra VLAN, like VLAN 4, dedicated
for the mesh layer with the batman-adv frames, parallel to the
VLAN 3.

Or if most/all hosts are running batman-adv, so if architecturally
batman-adv is forming the backbone of your network, you could
run batman-adv over this VLAN 3 only. And then either run
batman-adv on the servers themselves or bridge the servers into the
batman-adv mesh on their adjacent mesh router(s).

Regards, Linus
