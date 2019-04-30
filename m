Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D94FD5F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Apr 2019 18:01:34 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0BA558130C;
	Tue, 30 Apr 2019 18:01:30 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 3D65880597
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Apr 2019 18:01:26 +0200 (CEST)
Date: Tue, 30 Apr 2019 18:01:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1556640084; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oH1hIbi8XUXAuc1uoJ7+Jlf+5cg4uv6AzJc/Tc+LpgU=;
 b=jm3HkEY+AdR0iwsq0Co7p/bskrDH8RMTAluuGlhQBD3cOIbo8h8ChFlbULPVGTv5jHxFZ5
 m9XQwAaqd+y2AaHiDAMQ3HJBllEqzMShMn+HVAr+GREr2N5psMvJqTlaE7L28oG9VZh1R3
 tyntEobhU8FK8jw77PcyuN/tKQ3QBBF0RHCliS05FP+yV5ppOhh/r/DXSP01MI0hkopa9c
 5zRenvl8OJ4gH/5u5HWyII9S96UR45e2GIvml8yAzmTfUI03zuX2WsgfYXdEt/WIivbwoR
 wiOcoDVDTq5LJVnA34tpPwAU8xazD/TQF1zMqO0mB/efIuXaSNvKYl2WW57hIw==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [B.A.T.M.A.N.] [PATCH] batman-adv: introduce "noflood" broadcast
 flood prevention option
Message-ID: <20190430160121.GC5267@otheros>
References: <20190426171231.18156-1-linus.luessing@c0d3.blue>
 <2852684.HY4pDEyiBM@sven-edge>
 <cb27fa9e-c7d2-db51-6f47-c717612b82af@darmstadt.freifunk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cb27fa9e-c7d2-db51-6f47-c717612b82af@darmstadt.freifunk.net>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1556640084; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oH1hIbi8XUXAuc1uoJ7+Jlf+5cg4uv6AzJc/Tc+LpgU=;
 b=m29FNqNKQeOxc00VKl5hGOXq78OThSMHtyKXjZicSsVwiaLiBJ1QCbMFC4PUc2/642ZoQf
 suV7wNgDoViRJh8lCP0Q8K9VwwNGy9fImw0saGtmS0sd3MMsHX65Fr0zyLNXAVou61AlXW
 j1sq95oOXBsR61gYZ+WHN9TKs5huGr90Y4eFSsIljZiL/0y6nQaBbnSLfv2vcLRBseJyZy
 MgDzePZmPCkRZ8ZkcFEyIwc7hTPSZTqo2E7axhaI0xWM38p/gFa6VvZUttxA8Qo+HWewbC
 VD74O/Qt4McVjZZspbLgwjRO2MifQZsJc1+HlpGPNQrFSfa/VI6kyeDKx44Irg==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1556640084; a=rsa-sha256; cv=none;
 b=ODCjfLEAgmKdn4TlRTW4jHJHrmd9bgSwecsHAHwZjr7KuEmkogIObEB9pF+xkZmdyDNss2
 2v87T5xSHK6teBbm4YJcR5/eTsKIVJqVJKL/DvnN+RCAUzQ5CJqVnfNqBdDLQNX8Aee1y2
 OCHr1tTOcV0mIJjTeHzytp2RGAKfngt65yxAJ9w6fN3EPisyxz8PN5GKan30hDx8fVU3n+
 JKuatDbhsb8G/7VE7NL5yk8SfKJ6eNIXEjG30iDu6HVZuygLZclVJhhlM4+8DIzwbDFIDK
 p0e9XHxdSdlHe/L2eBuH80PGIqDgsMwKs47hl9ALv/sQZRN9oZzqBqeTathnLA==
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

On Sun, Apr 28, 2019 at 09:04:19PM +0200, Martin Weinelt wrote:
> We have been using the early noflood and DHCP snooping patches from
> Linus since roughly 2018/04. They were based on sockmarking packets that
> should be handled by noflood. This resulted in quite some amount of
> ebtables rules on our gateways, that marked addresses within DHCP ranges
> for noflood, since they were very likely already snooped. The result can
> be seen in graphs I provided to Linus back then, that are now visible at
> https://www.open-mesh.org/projects/batman-adv/wiki/DAT_DHCP_Snooping#Result.

Though to be fair, I'm expecting similar results with the DAT DHCP
snooping + pending DAT cache/DHT split patches. At least the
Total->unanswered->ok->last-reply->0...30min. and
Total->answered->"via DAT BCAST" in the link should go
away then (90.09% of all broadcast flooded ARP Replies in this link).

So while that was the main use-case for me before the discussions
we had last year on how to improve DAT, it's now more a minor one
for me. Though it would still be nice to have / work towards a zero-broadcast
mesh as RFC7772 for instance explains that frequent broadcasts
have a quite significant impact on battery power for small, mobile
devices. And the noflood option would be a quick and easy option
for us for now to achieve this for ARP and other packet types.

[0]: https://tools.ietf.org/html/rfc7772
