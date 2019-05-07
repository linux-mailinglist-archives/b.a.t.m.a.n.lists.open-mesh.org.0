Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1476E166D4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 17:35:08 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id E028B81B29;
	Tue,  7 May 2019 17:35:03 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id C73AF80559
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 17:35:00 +0200 (CEST)
Date: Tue, 7 May 2019 17:34:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557243300; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=CDGC2KkimBXXJR8bokbRU7Yj+E4K1iVhG82qmcrfVQI=;
 b=YaJKsfxl9+b1PQj5QevafAISSRU8nLff2gEtxm6pByNtMwE6TeJU8eAo2H1Dn2DM2Tmg1W
 FAe1a+m27nZIUWqAN2x7t7cXL/CycbUkDela41OyfrvSeSw6EWNqyUS1Rq8plAvLEl64/9
 gG6nEYwNdJxeYNPXnHhxQlHW/tW/5MtzDc6ZGOIlnmoRm1DCPNPvq6NgStC4N3MZY43bOS
 QDnzgRyRWhMk5mwTYc08PQHBZNWmWhHYA2X4X11qIPTV36bWwNbqNYBLJ2DdzYH3EOml0G
 ReDlhBEArihw3/WhoIE9XQ6IYK+GwzhDwFWkva4MmtCEb+xXC60NMfHtC9L0Rg==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH v2] batman-adv: Introduce no noflood mark
Message-ID: <20190507153459.GC1493@otheros>
References: <20190507072821.8147-1-linus.luessing@c0d3.blue>
 <3693433.LtgH54LjNc@bentobox> <3691280.TvIfeD7Em7@rousseau>
 <1895475.8kFdyZb9vl@bentobox> <20190507151723.GB1493@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190507151723.GB1493@otheros>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557243300; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=CDGC2KkimBXXJR8bokbRU7Yj+E4K1iVhG82qmcrfVQI=;
 b=s+IqwQ5NcVvuNMr0DWyQfHHfqVCk0Q0H/qvixaQ14bOdlk2XwDU/53IR+qrsSsPD30muWc
 Qjinx5lRAvoLZ/LyUWJsAcdt5swaV6VnW9kxMO4dIWbdST6lfHrWOkR7D02VDmr9AesECR
 3gP7/XQ9xCtsRpxSawr3jSSQBRCHE/Ui25PEyWvYgXlgyfxOPHcKPJqum5Z01HwVsDFw56
 Uh0pvWXRThOd5G/IeJbi1ubJw/BIxv1sRejZa5Xjvycz+QEUmBFxlafvAjolts7sgDGXhK
 NJ/xJloD7iDThvtIPR3Qx5QteGEC/Q4XbaBQOJU1f++a7z7aqLh9zSW5pgIwpA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557243300; a=rsa-sha256; cv=none;
 b=IHIyaV+OjQXUXIPC7wcnc61bPuSfCi+un2STiNNwncA9yUt9Wln59k90HTDwhI7lGirGqA
 GQ52s0ECJSqRWKmkcS4UYDaUh9p4Z1wN3tcEo5A/+WFBy/A1VIewBNXLNEVUTYAMbpVM05
 bjBMfIGFJ9Tm59RsKMc0e/SEe94soMEjvruErOunycMtiSULKCmj7hwT6mSs50AIrvFOXj
 nK6akgK8FSIgBNFtmxAwxvE102LN5gRLIjpF/yr+syqM14nFrkkY7NIa313IMtjtZPoW7V
 xGiFXs/tthjUb78Bu3/qL7hHSjw0wlRF89feDnD7jNjlVgr8GUbpeoWGF02e3w==
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
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Tue, May 07, 2019 at 05:17:23PM +0200, Linus Lüssing wrote:
> > This would even allow some fancy stuff like rate limiting or per hardif 
> > behavior. With the problem that there is no package yet which does this in 
> > gluon.
> 
> Ah, that's an interesting idea. So basically filtering on the
> hardif instead of in batman-adv via some custom compiled BPF
> filters. So basically similar to writing a small program like the
> gluon-radv-filterd with a BPF_* parser?
> 
> https://github.com/freifunk-gluon/gluon/blob/master/package/gluon-radv-filterd/src/gluon-radv-filterd.c#L223

And usability is of course different. Compared to writing a BPF
program it would just be an extra line in the firewall like here:

https://github.com/freifunk-gluon/gluon/pull/1357/files#diff-adbff50d8f3994ffbbac77f580ace41e

And setting the noflood_mark in batman-adv:

https://github.com/freifunk-gluon/gluon/pull/1357/files#diff-89c09eae71234dcaa46a6137d796048b

Also, we would not only need to package it for Gluon then but also
various Linux distributions used on gateways, I guess. To further
reduce the ARP broadcasts for vanished clients on gateways, for instance
(the second use-case).


Btw., I think rate-limiting would already be possible. We could
set the mark in a rate-limited fashion incoming on bat0 with
ebtables for instance.

Which could be useful to simplify gluon-ebtables-arp-limiter [0] a
bit. Currently there's a loop over the "batctl dat_cache" table
to add an exception to rate-limiting for addresses available in
the cache.

Regards, Linus


[0]: https://github.com/freifunk-gluon/gluon/tree/master/package/gluon-ebtables-limit-arp
