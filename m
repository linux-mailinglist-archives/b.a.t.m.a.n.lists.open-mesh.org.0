Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0AD457E5A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:40:39 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 609D28166D;
	Sat, 20 Nov 2021 13:40:08 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3A69383E07
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637412006;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qLLq3fj17J46k64ugYLdpOib5/vxhkCELZ10FySSXSw=;
	b=xG2R9qv8bGF/CTNE6S8dXRfpVg4QajF99KEs4aMixdkERi6Ah1wgMl3MH7LJjpUY18jvHe
	80hAcYrKMi8G6KgIORCYcHK3mvHCL72Kq1RzDz/SoP+ei0IwV/3HHBdE0Q67lLGKO7jrQ5
	RC8krL2j37dfd7cFPYHgoLftV/TnCM0=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.9 0/7] batman-adv: Fixes for stable/linux-4.9.y
Date: Sat, 20 Nov 2021 13:39:51 +0100
Message-Id: <20211120123958.260826-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637412006; a=rsa-sha256;
	cv=none;
	b=hRB0xMaEd+/ShjvT9Gdk/mXle3LePCXGfHuy6ZZjR6cdt7zcxdTwAuv6aUNxmQipR786AP
	C8mM272qCuiQkmSUv6z/SB7nOhXmbexnDdifaueO3eWH2SE0lXSg+PRqiY9XBJw/W4cNVZ
	noIwQf4cOGNf8VmOksF+KzI4GJWvfdw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637412006;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=qLLq3fj17J46k64ugYLdpOib5/vxhkCELZ10FySSXSw=;
	b=mr+JZq8OHAPZYbeX5huurohOP9enj+W7GA8nz8Ma3qIIfWr4yCpCZGhvKE4yvxqRuTstJ/
	l90RMOeaYazx3rCmPHrwanw98vmVdDi5AnhqmLP7IloBKWcu1xBL4ZYJp3UcZwVhw9HiwS
	XEUGNbHog6GWHMl1c5xiPEri0xMnVxY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=xG2R9qv8;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: KKSKJQDRWVU626KSHQR4HLWPNCS4XMEJ
X-Message-ID-Hash: KKSKJQDRWVU626KSHQR4HLWPNCS4XMEJ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KKSKJQDRWVU626KSHQR4HLWPNCS4XMEJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

I went through  all changes in batman-adv since v4.9 with a Fixes: line
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

Linus L=C3=BCssing (3):
  batman-adv: Fix own OGM check in aggregated OGMs
  batman-adv: mcast: fix duplicate mcast packets in BLA backbone from
    LAN
  batman-adv: mcast: fix duplicate mcast packets from BLA backbone to
    mesh

Sven Eckelmann (4):
  batman-adv: Keep fragments equally sized
  batman-adv: Consider fragmentation for needed_headroom
  batman-adv: Reserve needed_*room for fragments
  batman-adv: Don't always reallocate the fragmentation skb head

 net/batman-adv/bat_v_ogm.c             |  11 +--
 net/batman-adv/bridge_loop_avoidance.c | 103 +++++++++++++++++++++----
 net/batman-adv/fragmentation.c         |  42 ++++++----
 net/batman-adv/hard-interface.c        |   3 +
 net/batman-adv/multicast.c             |  31 ++++++++
 net/batman-adv/multicast.h             |  15 ++++
 net/batman-adv/soft-interface.c        |   5 +-
 7 files changed, 172 insertions(+), 38 deletions(-)

--=20
2.30.2
