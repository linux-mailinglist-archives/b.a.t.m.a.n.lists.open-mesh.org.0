Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D721457E6B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:41:12 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9083983DB1;
	Sat, 20 Nov 2021 13:40:22 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F1CF383DB1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:40:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637412019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mzoIfXxpdajHJCIiXm9bxvB8pLJXA0fgVxfBe0FftLg=;
	b=yNMq/zAi2atq7kiTRU+e3vUj4mo/ZXMhcsd6e65yX41VWoq47b/HhixsAWZ6NIKfB1LEaT
	kgJHoGabSqzm/0Mr7gNXDmiwOcN/2Jw3Iz0H/BNX+MHASv3pyYvbNabgMcnUU4e7p/5DtP
	8xcPkSShhFLhikNPOhY4qggwiTYm3HA=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.14 0/5] batman-adv: Fixes for stable/linux-4.14.y
Date: Sat, 20 Nov 2021 13:40:13 +0100
Message-Id: <20211120124018.260907-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637412020; a=rsa-sha256;
	cv=none;
	b=u2bni8/g4atN2+nWC4NVuzpxrS/JzwCbJ3ZqiZ7NUs8CcQ2IlH4Fj8osPIW8X7b0eyAFgR
	SW5xfFqhC0NmRBIVFW1adly8p6asLcqEC2mVjWZGNqveKAtNV9d7XL+Z/2x8NoE5jPNDLm
	5gTICbSHldssRKOFYyvGFd8+rS6NhME=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637412020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=mzoIfXxpdajHJCIiXm9bxvB8pLJXA0fgVxfBe0FftLg=;
	b=wv6bEFaCdDsuPZYAPZLzIW/l27jTYKhv/I0iJ6tcRKwoLFRGr4Sqj5G5SGkBvfqxD77HoA
	yL2Q1Tz6fCE9pRmten2qB5wP9fOq322nDIcTiJiwXi6mRtuSHsvx02KgSzXwbrkxLxTn4M
	KcyHJmXo6cLaekTFRSf/+CyjC9Vbpp8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="yNMq/zAi";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: AM7GYVDQXYMNPAGMDBZUUV6KV7KGRYDL
X-Message-ID-Hash: AM7GYVDQXYMNPAGMDBZUUV6KV7KGRYDL
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AM7GYVDQXYMNPAGMDBZUUV6KV7KGRYDL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

I went through  all changes in batman-adv since v4.14 with a Fixes: line
and checked whether they were backported to the LTS kernels. The ones whi=
ch
weren't ported and applied to this branch are now part of this patch seri=
es.

There are also following three patches included:

* batman-adv: Consider fragmentation for needed_headroom
* batman-adv: Reserve needed_*room for fragments
* batman-adv: Don't always reallocate the fragmentation skb head

which could in some circumstances cause packet loss but which were create=
d
to fix high CPU load/low throughput problems. But I've added them here
anyway because the corresponding VXLAN patches were also added to stable.
And some stable kernels also got these fixes a while back.

Kind regards,
	Sven

Linus L=C3=BCssing (2):
  batman-adv: mcast: fix duplicate mcast packets in BLA backbone from
    LAN
  batman-adv: mcast: fix duplicate mcast packets from BLA backbone to
    mesh

Sven Eckelmann (3):
  batman-adv: Consider fragmentation for needed_headroom
  batman-adv: Reserve needed_*room for fragments
  batman-adv: Don't always reallocate the fragmentation skb head

 net/batman-adv/bridge_loop_avoidance.c | 103 +++++++++++++++++++++----
 net/batman-adv/fragmentation.c         |  26 ++++---
 net/batman-adv/hard-interface.c        |   3 +
 net/batman-adv/multicast.c             |  31 ++++++++
 net/batman-adv/multicast.h             |  15 ++++
 net/batman-adv/soft-interface.c        |   5 +-
 6 files changed, 154 insertions(+), 29 deletions(-)

--=20
2.30.2
