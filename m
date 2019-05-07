Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id D91141584F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 06:20:13 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CE25982068;
	Tue,  7 May 2019 06:20:09 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 6B04F80728
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 06:20:08 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557202808; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt; bh=MkNtdJR0oPH54j4kcsev6wL9QMGsg5Hcn+A5xThLnI4=; 
 b=EY8711ZYp6FKPt3HAsrpieBFee3r4IDjdQgW896gxdWHFAlKttcgNzs17dcHiyDKquXY9E
 8xkMcJC2fPnAYDnOsDqxKLKhPjjhK7H8+sCir4LoCbwQrz0h2UuM8ca1UaFpn+ohigZJ8g
 YVBBtNs1NfLq4AkKJh1EXL8QYMisBDwtvTTOwE4mC1V6qlhcKl/1Qm8Mb/qnXWUP2hIToA
 cc6vkWWjeVFkEDHI6AAchqV1CljKePcWu3a+0Dd/y0Lv0587xuU+fOm37x3kzZ8otUva22
 jgu9SZEC16Rl+E820x0u2Q4RGuraajGsAl8eNvnQBfXk0sSw1jmU4P4e7fQrCg==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 0/2] batman-adv: Add routeable multicast optimizations
Date: Tue,  7 May 2019 06:20:02 +0200
Message-Id: <20190507042004.4219-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557202808; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt;
 bh=MkNtdJR0oPH54j4kcsev6wL9QMGsg5Hcn+A5xThLnI4=;
 b=lnhEBf2GE+TEO9pVdsL9t+KZmQa9fqo2QQ7TU60Uyo0s7sHtHr2mno8r+SA3JqyUQd5eS9
 rBgzFnqYj0zo2LiReADGyQGE2iitj5DfAppJzCxZLxDUMP4PW915mGlvS+uE8BQojZcbkd
 hS1IWzJMka7lqwtRzCX3HbX88X5nNNBIt8DRpRWf8HRNHvBCNnTw7VAP0X+0cbJoUqSz8R
 QC6o4O5yyDpIXV2V7zQzY1GRUAmKsWBkrEyP+h0Gg1fCdL9nL0sRgeMFRPfF/ZNZFPyRfk
 WU06Y1BDV0dH5fcIJCK8qYN4qOzj3f9Q0DOxjPvVcKlG1MsugBtWqIwOYfGpMA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557202808; a=rsa-sha256; cv=none;
 b=MPF3UA5e9J9sgHEwpWewJQLiWEvLdkGnj/WUfmvyVnSq7UMlBMwi9zFFALcfZ17BIZoYC9
 jNC8RmNYOlIM0sqUDXOBL9QaGljA5mnoM4NWagdlHbG04zFVYBQAAyQGlXZwBXGxZcJ4la
 7Eg0HhsURVJtPvSzoZBjuyacQiTg9lH8gJq50MutVBX117zyPbj3/hisMrHPniY6DzFYK7
 bXMBZj1pHOTuSJQgIG2c/ByQS89NaPvKjSpqLvaWAIi1y38hQN9QaSu2AoXFxFwwCItHJB
 6q1fuQN0WxIG9CHTBUw+evqKoxPj4Uxl0HlcWKFZ9zI9MqF6HoFecmrBkf2qGA==
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

"[PATCH v3 0/3] batman-adv: routeable multicast preparations"
https://patchwork.open-mesh.org/project/b.a.t.m.a.n./list/?series=252


Regards, Linus

[0]: https://www.open-mesh.org/projects/batman-adv/wiki/Multicast-optimizations-tech#Handling-rules-depending-on-multicast-address

---

Changelog v2:

* rebased to master
* split patchset in two with the intention to ease reviewing
  (no code changes, just the last two patches here)

* removed unncessarilly added newline in batadv_mcast_flags_log()
  [PATCH 5/6] / [PATCH v2 1/2]
* kerneldoc: @BATADV_MCAST_NO_WANT_ALL_RTR6 -> -"NO_"
  in enum batadv_mcast_flags [PATCH 5/6] / [PATCH v2 1/2]


