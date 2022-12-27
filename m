Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E63E656A38
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 27 Dec 2022 12:58:49 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0BB1F847A8;
	Tue, 27 Dec 2022 12:58:48 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 77C7E806A4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 27 Dec 2022 12:58:45 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672142325;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gJtxPmBtm03Mj4CDDF5PhJED1qflkAPV0C2uiEWFsKc=;
	b=XI0V7G326JAjT7tF5Hl6AEGR8d7TzBUAiHN23ZjFGGqbILwiPNZmNwaN5nRcmkC9Jx81J7
	eBNP1h+MtlA3rvvLJQK3U2RJw5BlOu7uKIP7n4zapQJfPaQG5UWeqLzOUraV305AgQp2Hx
	QdOQa03CYcp6ok68N9avTKC7obvrR0o=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672142325; a=rsa-sha256;
	cv=none;
	b=w4XjW9NTZ4K9fP2qShMWc56scCDwMPy4tIurjc87l7eMlvGaQzbbKHDtiEd66wlfNtiv+0
	agoXY1CDOAq+xAEpKDKM0MaWgveeTbkqa70ITeypRjiLTrwSaZg4FYM286S6q9kgt0P3fd
	hzjH0OLXBDRNN3GXdhcNwX/MGpqLPBs=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DD9E93EC75
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 27 Dec 2022 12:58:44 +0100 (CET)
Date: Tue, 27 Dec 2022 12:58:41 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH v3 3/5] batman-adv: mcast: implement multicast packet
 reception and forwarding
Message-ID: <Y6rd8cwPi8JqTbkN@sellars>
References: <20221226204237.10403-1-linus.luessing@c0d3.blue>
 <20221226204237.10403-4-linus.luessing@c0d3.blue>
 <8399468.NyiUUSuA9g@sven-l14>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8399468.NyiUUSuA9g@sven-l14>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: DDXNQQUITPXLK6OCIOJOQZJJOXDDTWLL
X-Message-ID-Hash: DDXNQQUITPXLK6OCIOJOQZJJOXDDTWLL
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DDXNQQUITPXLK6OCIOJOQZJJOXDDTWLL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, Dec 27, 2022 at 10:07:36AM +0100, Sven Eckelmann wrote:
> ecsv/pu: checkpatch ./net/batman-adv/multicast_forw.c
> -----------------------------------------------------
> 
>     CHECK: Macro argument reuse 'num_dests' - possible side-effects?
>     #25: FILE: ./net/batman-adv/multicast_forw.c:25:
>     +#define batadv_mcast_forw_tracker_for_each_dest(dest, num_dests) \
>     +   for (; num_dests; num_dests--, (dest) += ETH_ALEN)
>     
>     total: 0 errors, 0 warnings, 1 checks, 274 lines checked
> 

For this I'm not quite sure how to best silence this. I tried
the workaround of passing num_dests as a pointer and dereferencing
it inside the macro:

#define batadv_mcast_forw_tracker_for_each_dest(dest, num_dests) \
        for (; (*(num_dests)); (*(num_dests))--, (dest) += ETH_ALEN)

So just like you'd do if you would want intentional side-effects with
a normal function. But seems like checkpatch does not recoginze it.

Also all the other for_each macros in the kernel code have
side-effects, as far as I know?

Or would you have another idea?
