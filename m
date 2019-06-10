Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC9A3AC95
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 Jun 2019 02:45:55 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 21D6982004;
	Mon, 10 Jun 2019 02:45:47 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id A3543813E3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jun 2019 02:45:40 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1560127540;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=8yxwBPICUCTm9HUIf95fhfzaPiHBjiafcmBzwouLCoI=;
 b=HCvupkFGZRkpJSH4x6rIMe7shjF7p7iFkCADvuHJjLc/H3EVUE2cPhciHLsDJLRuIG8lit
 cH0bYH9Z60Ups6EC8PBj5xcK22fRsn3HddhtLytYNtE4cX/OzEp+8QBFOn1dkaOeRXi8Vm
 uNpw4s4q15CY/FYD0IMQxMHC0UuFtMO+ciQmqa4Z+h+hmE1gpFKfSVTSK+IEfZblATJruH
 PfjSL7jDF+s8ePhsNgSRKcfX/ag6yBhDGl/+2KdnueBW/A3hCTy8qgn/ZMkI2sSqlf0AF2
 gJ2EJFbh6gs8kfnr6b9NIgR3332vWw9bS9vmrJgsd05bOrRRCOjyZqc4dmLiIA==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v4 0/2] batman-adv: Add routeable multicast optimizations
Date: Mon, 10 Jun 2019 02:45:33 +0200
Message-Id: <20190610004535.13725-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1560127540;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=8yxwBPICUCTm9HUIf95fhfzaPiHBjiafcmBzwouLCoI=;
 b=I5F7YdtsbNAfv7TY0rihT3IhQXg/E8f47UU3qkDqFUNAM8eaHYbxBre1nn5iw9rBe6cUtq
 +NWFoSsMmxjyKL8i174t5xmgfYzI4BhKD9WmWw9BqXD+m72YYdJKfLxKUHRR1HG5FBeeW8
 iOeAkftkGMMUIOpBbB/zyO6kxSFQgsi5uGaNs6D1g0nF9LUaFvR85KlRuiWwf7W0UnBjFW
 owXDalWPaXMT0qeE6Jlc+cr+9VubCVyyNwU4UYnJeblBQXxF5x2xFsA9vfJ9BKphxE98pl
 cVwL06FpI4BR347CXdgwBn/9HdjB/fNZ14sioWLnY19S0rRgT5rosJ+vnlPbDQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1560127540; a=rsa-sha256; cv=none;
 b=I2IjWJGdwBbsS0Jg9IKDcF9oXyxNilvlwFBGigFVJgXjamMJDWA0C/5eUvUtxxQjHNuJPg
 MQeZGW22B7mmIcfggqDRMRhzcEL5NBe6UjPu20RKcoOecTLR1aM+OrFdBi62d8jLNVxOaN
 4iwQlPh6YTDiR5trlDzVjXBYDbHjG7UvSlWi1kFdmUrGXjM7H76YykAR2X4mE9sczv3VxR
 MIHF5/fBJ0d5YOxLj3tos5Ud9KJfYFJ5FqqIlggMYggj/KBXTGYrqgSAgjybzEvUPK2VnL
 YedwT05ffVxLqBkF0BJbyCDr5xdAJxDKw2k5acU+crrIB0anHzqB644GngJDoA==
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

Regards, Linus

[0]: https://www.open-mesh.org/projects/batman-adv/wiki/Multicast-optimizations-tech#Handling-rules-depending-on-multicast-address

---

Changelog v4:

* rebased to master
* BATADV_MCAST_WANT_ALL_RTR{4,6} -> BATADV_MCAST_WANT_NO_RTR{4,6}
  => swapped the name of this flag and according logic in the code in [PATCH 1/2]
  => swapped the name in the kerneldoc in [PATCH 2/2]

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


