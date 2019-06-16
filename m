Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9A147553
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Jun 2019 16:53:28 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 2EFD7815AA;
	Sun, 16 Jun 2019 16:53:22 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 354E8806A8
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Jun 2019 16:53:18 +0200 (CEST)
Date: Sun, 16 Jun 2019 16:53:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1560696797;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fxPviMC/XJtempb8rwPsuhzYwXVhr/IQ7VmnG9S0Md0=;
 b=knMCDU6SWnKRRjKCivN9ogcrJpKAZUq0v7Xv071kRxKeKHC3Peg2Y19k3ZacZk7njgtBBi
 c03HQsAD0HThjZ+SpjYdprAVHJ1cCK+sejLeWvT+rj44UlGoME45sJ6g6BRCnvKKOVvQRn
 HZGkxXnazUY4BBjhCrZue+0S60m8R484jDWfYub+n9iQobgSiMg+yn97cV8N1VpAm4TLgy
 oDS6qkCZg28447Kp6VDJ3O5tYREA6ROgnogf422vakfs7Sn8WCVCZsw8wwZSzz0Nig9vv0
 U346zej8Ujq/VKwjGtteKvt1tYcQ3KswWIL5OR6IliTfiixH5tYfsAdmIkebZw==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH 2/4] batctl: Integrate hardif setting framework
Message-ID: <20190616145316.GB2727@otheros>
References: <20190613191217.28139-1-sven@narfation.org>
 <20190613191217.28139-3-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190613191217.28139-3-sven@narfation.org>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1560696797;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fxPviMC/XJtempb8rwPsuhzYwXVhr/IQ7VmnG9S0Md0=;
 b=ul8dR+uzNycGizkQAb7vR1MFK8v5YEKcXp/44U+SmMtg+82NMZBR9wg+Stfj+SeBjS6d3g
 uar2nQokHdqUMpxYwNApTBkCUE6FrDR7Iik6/JSLXvmpWsrU1MaiQNbsD/wMcGeIVfcrzO
 fza97iA6fOo2DKSd5TeMRaeOlAJtiYd7KcGCHAA4PwZYo1XBTAHAkZk7AP2XikMYOmsrrk
 NQQHqLyvYAjxAtC0u2K18awe6k+IHA0pVAzpx+eVp/JMlZj+gUALQQ6bP34GqFgWWkrzo1
 qhcM2ZMdqPddKiur6mZ17Ov/c+dzeUE6pjdPgOtEzlRRvN5o5efCBlmr+VCDjw==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1560696797; a=rsa-sha256; cv=none;
 b=s5Ud/FUYtU0kUI6S85WSEIZHLLkPFd62thEOkzHxcAXWkXj0qSp36p7bG0NAZGmVB2Jkm5
 YW5xDuYZMc9KTAElFnDuVfLKvOL+w03+GsqYgdGsHs66/oBVTEiKH9+UNYUbvlr94vshUw
 kJHjV0xH2w0k0WzbWxTOOQAN8uu79XXLTS2SWKxgYsBc8vyyMTTnOV5klGTe0NvaFyNrce
 ihWBcLJ+DckmaTt1YGl3ZC8WobvBgIoDEAa5CL2jWj44wayR/i8fR5FKdQ6tascpdXzUeS
 qDcdpznHN0ZuSg93/emcNL6xYRutFfWwsBWRhJiUSuMyxRPbUREbO4lGwJMmpw==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Thu, Jun 13, 2019 at 09:12:15PM +0200, Sven Eckelmann wrote:
> batctl currently supports settings which are either mesh interface or vlan
> specific. But B.A.T.M.A.N. V introduced two additional settings which are
> hard (slave) interface specific.
> 
> To support these, an additional command prefix called hardif is implemented
> for some sysfs commands:
> 
>   $ batctl -m bat0 hardif eth0 ...
> 
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> ---

Three thoughts/questions:

Currently we do not allow adding a hard-interface to two meshes,
right? So the "-m bat0" here is redundant?

Have we used the terminology "hard interface" in UI and
documentation before? Maybe it's just me, but I'm wondering
whether the terms "soft interface" and "hard interface" might be a
bit confusing to users, as these days people not only add
hardware interfaces but also virtual ones. And these terms are not
used in other projects (afaik). Maybe just stick to the more commonly
used term "slave interface" and keep "hard" and "soft" interface as
internal?

I'm wondering how it would look like if we were having settings
both applicable to a soft and hard interface. What about using a
"-s <slave-iface>", similar to the "-m <mesh-iface>" instead of
the "hardif" command prefix? So that you could do things like:

$ batctl [-m <mesh-iface>|-s <slave-iface>] multicast_fanout <int>

in the future, for instance.

Regards, Linus
