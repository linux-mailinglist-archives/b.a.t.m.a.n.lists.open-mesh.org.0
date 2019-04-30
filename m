Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE9CFD73
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Apr 2019 18:07:38 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id DF9D88153C;
	Tue, 30 Apr 2019 18:07:34 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 5129F80559
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Apr 2019 18:07:32 +0200 (CEST)
Date: Tue, 30 Apr 2019 18:07:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1556640451; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KkKOr1kT2aFzwAxjoR5Rym7sXm6ucZ3hA0w3x+xBFcQ=;
 b=lujDgJBEI6SS/d9PUO96n1XTmrkQktkJeywkvR6hWi/yvIH0xgbOZ7qo0Oi1JOemurBDKx
 LBqzhSn3+1eUQTSFvW60pDGOQCGyGzBw5NWzTQvxXf1KnCOlO2szBuhh7CdphuifYFgx0P
 VOv6K+Pxr6k7PAzXrmPTHajxgTgunBqldojSI1a1SDLSpX+rWHifjEAYrQDtyff2+etx23
 Lb7oS0wyrdU9RFER6bTRFEgpzjDs9bnGDCCAPpISBRqMV8J/jQmuyiio4vcGJjM/xg7THB
 iKKFj8FHREIs1J/C2tvw45rB4wSqWXNL1Bs3YdYL8Go/rG/2VNAp3o1C74lXfg==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [B.A.T.M.A.N.] [PATCH] batman-adv: introduce "noflood" broadcast
 flood prevention option
Message-ID: <20190430160726.GD5267@otheros>
References: <20190426171231.18156-1-linus.luessing@c0d3.blue>
 <2852684.HY4pDEyiBM@sven-edge>
 <cb27fa9e-c7d2-db51-6f47-c717612b82af@darmstadt.freifunk.net>
 <20190430160121.GC5267@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190430160121.GC5267@otheros>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1556640451; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KkKOr1kT2aFzwAxjoR5Rym7sXm6ucZ3hA0w3x+xBFcQ=;
 b=LYcjMg/3JcTQSEUH0MgdejhiIF6reqkV55yOiIsVUe12fneVNfGNBXEbPFPjcJtLi6HrxC
 Fb9oRTTfd1umm8Wn9HKpiBFfg9OQ8ersWFP//3d0lJmXs2m+2MILjQQ6mZXa1mRVYCzQIW
 +0M1s2rQ15R/fnXGGqp9mUZWmEPGGMcXgfUF1gEzFuE60zfv+0DPrusfjEPGpeV+WArhXu
 oMjULHLED8K6cPc9RMhqt+cXwB0XL174KOTJzHqk4kC9xnwNBTQsTlQm9o7xPdBCWKx1aY
 pMZ54sFx15/T2IKDRA4pAHmQxx2PNPozChY/eKoBBG7zHgaMkogTsAPph3ohig==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1556640451; a=rsa-sha256; cv=none;
 b=HADS2Hn/GbgbnoOqVueM5uM4LSogQWc0R09d1Hd2HFF0tIcrnzvdLFLRjRlgHLBcNLMtx/
 d6msKlkPwo43Xns+0q5cJdzyNhkVydVrOHtjhRM0ogaztqyt9ffoLlcG5yIAdSHshDY9In
 63tk9ZlQxpfVnMTIsXLHw2qb6Fo4mXOfnQqZCJxI2HgghQLCH13+VoJ0bQyych+scn84j3
 qjdHcIE+yDBYLOfFAakqh+UYtpd0VkvIKOosY7awWStkxnr0uAddR0px3BP2ZO+gM1ZaDV
 PkRjD6d7twCIvKfcW3qyZtCKWB0jmr4/nncNPNgwPDbLXD+gDs3S4iha+qp3Ew==
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
X-Spam: Yes

On Tue, Apr 30, 2019 at 06:01:21PM +0200, Linus Lüssing wrote:
> So while that was the main use-case for me before the discussions
> we had last year on how to improve DAT, it's now more a minor one
> for me. Though it would still be nice to have / work towards a zero-broadcast
> mesh as RFC7772 for instance explains that frequent broadcasts
> have a quite significant impact on battery power for small, mobile
> devices. And the noflood option would be a quick and easy option
> for us for now to achieve this for ARP and other packet types.
> 
> [0]: https://tools.ietf.org/html/rfc7772

More precisely, RFC7772 section 4 has some estimates regarding power
cost for having frequent broadcast packets.
