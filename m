Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A431336C9A
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Mar 2021 07:57:02 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2D21D83CCF;
	Thu, 11 Mar 2021 07:57:02 +0100 (CET)
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6BC01807CB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 10 Mar 2021 18:49:21 +0100 (CET)
Date: Wed, 10 Mar 2021 18:49:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1615398561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=D4BuYqNlEsBPgrePRD9SEIzSabZYocJs/y0xYMYBJfM=;
	b=C8nMbdb7GMp4api1whF4L6MSTldTGn0LISBcM5LesuFwa7U7nTTIVd9leqfZXUJ1yNA1Ak
	53BAbqqJaIGuj5DoTBEtQZkcHgkcPH6QCz7P1tewws+ycQ9WHQzuxfuxXFFvNtAJim4X+w
	VZ7hB55iOQewUdsKe/+Nrp62+YGDILfEgndhwcN8tq7HBmdyUI1l+RVYKbabL1Y8XGa8FJ
	O5ne2xWpA5P3iPuRZLqorIVLK4CnfTvUq9I2b+wM0XFGvduZ4Q5yDSB4WDXmVm4eHvAeHA
	Y4jcuoiUsNZIfXI2q8JDN/UoJLYzts3Jnmj10BtrIGRwZEgr9TD5GddGgi1oGw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1615398561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=D4BuYqNlEsBPgrePRD9SEIzSabZYocJs/y0xYMYBJfM=;
	b=o6XPd6k2Ul+DGsjwzj/nHqyU9cYVgSRaeVH70Ig1SyM0TKu6HPJeRUF8Nh7kHV/rU0G3P2
	Npkl5q3xeY3q5VDw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] batman-adv: Use netif_rx_any_context().
Message-ID: <20210310174919.5iwcumc2gozapw5c@linutronix.de>
References: <20210213170204.3092113-1-bigeasy@linutronix.de>
 <10903423.uF0vj5h9zV@sven-edge>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <10903423.uF0vj5h9zV@sven-edge>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1615398561; a=rsa-sha256;
	cv=none;
	b=LebKKDSB5z64S0HQVOEKQpvWcTMTI9Sd/jt48InHvUhQgadA0UqmYCO4IIPxPSZb+lF6eH
	kLuC8IKZ0xwzHz0n4sXJkuV23VJ0djURmULyvGepHNoHQxW0imLGRrcoOFWbNFMxy63ZkH
	wB3dr8WlRuk2q1e2CkPm7UzF43cjaNQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=C8nMbdb7;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=o6XPd6k2;
	spf=pass (diktynna.open-mesh.org: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1615398561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=D4BuYqNlEsBPgrePRD9SEIzSabZYocJs/y0xYMYBJfM=;
	b=woB/wE8CUVBlYgpM3ndGmQLu3t3q4h4/HBAa4S0yHgYPEqKH1vtm8WaL9DWU1ZQglNkgyj
	ugifnLW0z8bcDMRle5qVRrO6V9CiapNZVXUu3nS1CPNkFYH+QkLUYrv0nYNrrYsYulZblZ
	VPNdLRVYoSrk3FcRHp4umKGVqlqsg2c=
X-MailFrom: bigeasy@linutronix.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 2OQU2GXLJ3BV4HZSM4ILEQCV4IWUATBO
X-Message-ID-Hash: 2OQU2GXLJ3BV4HZSM4ILEQCV4IWUATBO
X-Mailman-Approved-At: Thu, 11 Mar 2021 06:57:00 +0100
CC: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, Thomas Gleixner <tglx@linutronix.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2OQU2GXLJ3BV4HZSM4ILEQCV4IWUATBO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 2021-02-13 18:10:29 [+0100], Sven Eckelmann wrote:
> Thanks, queued up

Thank you for that but I don't see it in -next as of today. Did
something go wrong?

> Kind regards,
> 	Sven

Sebastian
