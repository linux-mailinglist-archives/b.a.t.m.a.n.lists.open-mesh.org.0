Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D2521A917
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  9 Jul 2020 22:33:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 56E0380DDE;
	Thu,  9 Jul 2020 22:33:48 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A8F6A8003B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  9 Jul 2020 22:33:45 +0200 (CEST)
Date: Thu, 9 Jul 2020 22:33:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1594326825;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gWuww8XBZFDto/Akovu3NJni6Zq6+zfa5zLKEQKWfBk=;
	b=nY8ZHMXxNRq6pq3uwc0Qrqef/ArEszW0m0VR+E1PDzoNyMKcMihryvScPWmOOJmpqp4iDd
	pZ+rz8tz0e7ERWsljHMPg3AoN5+Hh3s6ER74cgp0KwnarQa9LFPuUtOMmi3fND9PDwQoqW
	aZlYchnSjtPcpTfYy0Amm6zKqnxCogYq6BoU606CNJOec7GT2dSStNKkQDmFcocYHaAdrU
	uUzXne/d52qpm9a2HqH4tHYuoqzU4P7sZN6Fi6QyC97dExiNmEROZCQxJ5Git8N//3Li/L
	HFh0nC4ppR+jkjNepVm8A2sf0D8YdTzemC9FPg+PDJm4FTx1s3ix8am8cF3HMw==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Batman_V Originator Loop Issue
Message-ID: <20200709203344.GB2269@otheros>
References: <5716273.fDpRzsxG9E@prime>
 <20200708152649.1176.81859@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200708152649.1176.81859@diktynna.open-mesh.org>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1594326825;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=gWuww8XBZFDto/Akovu3NJni6Zq6+zfa5zLKEQKWfBk=;
	b=e0E/MnUpZwMNYI25MAYHePyp3pvEPoBQvI/zZPV4l1QaAZSLRoiEYyubRgrsQ/nZCNd4U2
	EGTOhaHtCaeHLEy1EwSXaF1KNEhIR16ItdHppwwWOS4Sh7PeyNNIV6f8d25ItMp/gM1bBl
	2rKM3480awlZyd5WYDU4UMVwfl/CRb4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1594326825; a=rsa-sha256;
	cv=none;
	b=priQM4pkOw8MOX4e9RhSseoHmXaBR0/qi9KCO3WzvtRIZh2DViax0BzisKeGnkEj/P4ZMf
	aT4MZBzjPpO3nJjALhShaoPsX6ruMfklOJhXqaB5CnspCiSymJEMJ6rrrrDR5INubTP4UT
	RA14DSRR2vKdPYD1prf/1eqd6TYYj70=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=nY8ZHMXx;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Message-ID-Hash: F5Z43YAVD36OA7FEJQMPRPZZH47KOIMZ
X-Message-ID-Hash: F5Z43YAVD36OA7FEJQMPRPZZH47KOIMZ
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/F5Z43YAVD36OA7FEJQMPRPZZH47KOIMZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Luke,

On Wed, Jul 08, 2020 at 03:26:49PM -0000, lavincent15@gmail.com wrote:
> Simon,
> 
> When I enable DAT on all of my nodes, the network breaks down. With DAT disabled on all the nodes, the network works fine.
> 
> As I develop my project, I would like to take advantage of the mesh wide ARP caching feature DAT. Is there any way I can fix things to where DAT will work on my network?
> 
> Thanks,
> Luke

Would it be possible for you to try an older version of
batman-adv, like v2019.0? There were a few new feature additions
for DAT after that one.

Btw. did you also try disabling aggregation with your batman-adv
2020.1 version? That didn't make a difference, right?

(disabling aggregation for BATMAN_V in v2019.0 won't make a difference
as it wasn't implemented there yet, so if you could try that with
2020.1 would be great)

Regards, Linus
