Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 750BE2AB49
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 26 May 2019 18:48:51 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CFE3381B20;
	Sun, 26 May 2019 18:48:46 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 09B3780597
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 26 May 2019 18:48:44 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1558889323;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2RTlnFGKaEgz/4ypJQsINVWnqw2HXOxns7sBPkJ4wNM=;
 b=RqRZKP0QMrwCr6Vm9QnJZoMz3yV4lrpH6gia8JdmaALXaiekj4d3I4ZstoOAk/C2nOnT4i
 ux2lC00vFpBTe5mQuCH5HwVD7PwuxXqy2Kudg4MazFH3j9dvYyEMRUgeDcET4POfzPbPdU
 QvfMJkjcosTCgaSKqJcwOQ3D8iqqksY0eMc5stYOJ9Dz2Jfi+w3OH34GW/RjMl+XIlEgaa
 i9MT/53SmNxE/9y4MFZlbJh0ynRSVB2jBDhZ4NfigmteV9NH8OpNgzmDkXt+A474BKTszz
 OfoMMmFJyYtYC57pi3oMXuyKe58LIkiNEZC36ZybTMLlDRSMLNZpvOjsNDcDug==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v3 0/2] batman-adv: Add routeable multicast optimizations
Date: Sun, 26 May 2019 18:48:27 +0200
Message-Id: <20190526164829.4247-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1558889323;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2RTlnFGKaEgz/4ypJQsINVWnqw2HXOxns7sBPkJ4wNM=;
 b=CXbdc0cwTLCdHzJI4FIlaQgqgq7PDKAflciBfKbP6LULZBtlP3u6c6ZXiUJOyeGh0ykvD9
 RbIdTeJEj9Yfh8gQ9JgyHJ6VU/BD+eQu6VKhBa0JincluB0JY8Ngr4WoWu7JBGwK2y3UeG
 1usipfkgMY75Jz1x6xTdYuxu1tfuZ5srrkXzfZvw3+9PUQhOeZEmBrsATPABGtMcsy5Zds
 huwZ+6AUSuNCvJkHtBcP9z9KdEqw1S8G/jk5v7uO2w1Sa2opnilV+PXeYnhdzmJ0hAfFzr
 gJXS+McYawCUBdqWiYrymm7kYft6myB4AO8UwmnzBB2KLzZ3kp1Bpp3FvC+4hA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1558889323; a=rsa-sha256; cv=none;
 b=XXSXevE3f02xkNZ48TVn8Hb+OlivdYltiIqPxmhvThvtEasThuDUP0w88aQ8sNj32lnWFx
 hhccp8lydDDBG0ZmcQfXR7HP7XFSqonqYq2yRQa9OHHzqcBliUt+yaLkFHlyL3/6FyskQE
 fJ30BJjwRSjhU1askvtroFSSR6tVOrmqhLHq/YBDl/v6ytTILFxoKqoALIxt+6NMWqrOXz
 LT8AAT4nzcTahVahfOdRFJT79N5+mJW7RcMHxuY+DPnSRvmLHHLdPcsSfGtKMC9yC861eq
 4E76WJDI/j6LeYiMlYbWtEazn6qfbAFmcU9GwhQdhlsrEslpkwNRjOIdU/B7TA==
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

The following patchset fills the next gaps in the multicast address
rules page by adding support for group-aware optimizations for
multicast addresses of scope greater than link-local. So far, only
link-local addresses were optimized as packets with routeable
addresses not only need to be forwarded to local multicast listeners
but also multicast routers.

"Handling rules depending on multicast address:" [0]

Before:

* Ipv4, link-local: supported without bridges
* IPv6, link-local: supported
* IPv4, routeable: support planned.
* IPv6, routeable: support planned.

After:

* Ipv4, link-local: supported without bridges
* IPv6, link-local: supported
* IPv4, routeable: supported without bridges.
* IPv6, routeable: supported.

Patch 1 adds the detection of multicast routers and announces
them via two new flags in its multicast TVLV. TVLV receivers will
memorize this and fill lists similar to how we already do for the
WANT_ALL_IPV4/IPV6 flags. Currently the detection for bridged-in
IPv6 multicast routers is not quite what the RFC for multicast router
discovery suggests. But once the MRD implementation in the Linux bridge
has matured a bit, I'm going to swap this simplified approach with
tapping into the bridge once more, asking the bridge for the presence of
multicast routers on the link. (This will then also add support for
"IPv4, routeable, with bridges")

Then patch 2 implements the changes to the forwarding plane,
utilizing the new information we have gathered with the second patch.

This patchset is rebased to:

"[PATCH v4 0/2] batman-adv: routeable multicast preparations"
https://patchwork.open-mesh.org/project/b.a.t.m.a.n./list/?series=262


Regards, Linus

[0]: https://www.open-mesh.org/projects/batman-adv/wiki/Multicast-optimizations-tech#Handling-rules-depending-on-multicast-address

---

Changelog v3:

* rebased to master + routeable multicast preparations v4
* fixed build errors with CONFIG_IPV6_MROUTE disabled
* fixed build errors with CONFIG_IPV6 disabled

Changelog v2:

* rebased to master
* split patchset in two with the intention to ease reviewing
  (no code changes, just the last two patches here)

* removed unncessarilly added newline in batadv_mcast_flags_log()
  [PATCH 5/6] / [PATCH v2 1/2]
* kerneldoc: @BATADV_MCAST_NO_WANT_ALL_RTR6 -> -"NO_"
  in enum batadv_mcast_flags [PATCH 5/6] / [PATCH v2 1/2]



