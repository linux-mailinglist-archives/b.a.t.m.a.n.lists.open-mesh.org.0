Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 33549457E34
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:39:45 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D9F8382605;
	Sat, 20 Nov 2021 13:39:43 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 071AA810FC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637411980;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qIZ4ceWhobrZ6dhjhEaCuwWdHu5EaAIxG28AL/vsizY=;
	b=DYqfkyaiUM/9LdZVw01GhURx7Pqzo3TIhAA6eKkvPJcQDnhDcFMrdumIkLll8RsUlujt5F
	bXBkwrxzyBmDQQ3CtMzYWEoLNhL0wbLlH/SNtkYhpqZHMB8rWflSJWfRx4L7qkHQn9WHzX
	NAGAww2zJam1IHrjQQXpM2cVrAy0L/o=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.4 00/11] batman-adv: Fixes for stable/linux-4.4.y
Date: Sat, 20 Nov 2021 13:39:28 +0100
Message-Id: <20211120123939.260723-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637411981; a=rsa-sha256;
	cv=none;
	b=CqVUBcuFBf+bGEfXa/QnvXtMgMJwqfFoPN1G3/9hlb59O7VNhroOz6BklpbEkrbJ9Y79b1
	hCjXPzmuc10MtgPCcL+p2lqNahKvyFKP6XGzqSHqAfKoHEiJX7m+MYA3q4Ej2+z3e0x3vD
	Ln/TaowLycw4A7hfu2Ai7LjYt+/UHfM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637411981;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=qIZ4ceWhobrZ6dhjhEaCuwWdHu5EaAIxG28AL/vsizY=;
	b=e3zorudSnuMAbvJk55LYRjcP5aMcTOHVANVMC0jLuKcOHvWiOF3F6gFCjlQeXfnPg/gJZV
	ialHKhLTIxHQmMHCVyXMA5AAYd3T/ZUK9YvvURSpqiu/B/z49rC+mFQmAQVajJAvlY7oU6
	jH1ZSUrPhXOa3IjiHzXWGgUBaQ6AkKY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=DYqfkyai;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7DBBVUTOCOUZEIPOEY43HH56CMB6FE3I
X-Message-ID-Hash: 7DBBVUTOCOUZEIPOEY43HH56CMB6FE3I
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7DBBVUTOCOUZEIPOEY43HH56CMB6FE3I/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

I went through  all changes in batman-adv since v4.4 with a Fixes: line
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

Linus L=C3=BCssing (4):
  batman-adv: Fix multicast TT issues with bogus ROAM flags
  batman-adv: mcast: fix duplicate mcast packets in BLA backbone from
    LAN
  batman-adv: mcast: fix duplicate mcast packets in BLA backbone from
    mesh
  batman-adv: mcast: fix duplicate mcast packets from BLA backbone to
    mesh

Sven Eckelmann (6):
  batman-adv: Keep fragments equally sized
  batman-adv: Prevent duplicated softif_vlan entry
  batman-adv: Consider fragmentation for needed_headroom
  batman-adv: Reserve needed_*room for fragments
  batman-adv: Don't always reallocate the fragmentation skb head
  batman-adv: Avoid WARN_ON timing related checks

Taehee Yoo (1):
  batman-adv: set .owner to THIS_MODULE

 net/batman-adv/bat_iv_ogm.c            |   4 +-
 net/batman-adv/bridge_loop_avoidance.c | 133 ++++++++++++++++++++-----
 net/batman-adv/bridge_loop_avoidance.h |   4 +-
 net/batman-adv/debugfs.c               |   1 +
 net/batman-adv/fragmentation.c         |  41 +++++---
 net/batman-adv/hard-interface.c        |   3 +
 net/batman-adv/multicast.c             |  31 ++++++
 net/batman-adv/multicast.h             |  15 +++
 net/batman-adv/soft-interface.c        |  31 +++---
 net/batman-adv/translation-table.c     |   6 +-
 10 files changed, 215 insertions(+), 54 deletions(-)

--=20
2.30.2
