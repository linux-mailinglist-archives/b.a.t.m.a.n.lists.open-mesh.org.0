Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EC42501E3
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 24 Aug 2020 18:21:23 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 89233803DF;
	Mon, 24 Aug 2020 18:21:18 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 39CD1803AE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Aug 2020 18:21:15 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970d68d0e0160e8a82c5fd76.dip0.t-ipconnect.de [IPv6:2003:c5:970d:68d0:e016:e8a:82c5:fd76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 394C562016;
	Mon, 24 Aug 2020 18:21:14 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/3] pull request for net: batman-adv 2020-08-24
Date: Mon, 24 Aug 2020 18:21:08 +0200
Message-Id: <20200824162111.29220-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598286075;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=98AYfr6GzdtSAhVC23O8ikQuuCHNuQRuIe/iDSTmgiA=;
	b=s0OqATrIVe6EflDDEl4eugwLnWPe5jo+htqUO1rlJ19MW+Q/70KW3/qV5QOsi4BSkdRe1j
	rvJy/lS0Cu9bgNKHHc6dfHFivMLJOW2aJBUevnjJujgHS06wGEFoJz/L1qsbvTc3tCMMoP
	wqzs1z+Ij0ZS+ZGzCCAladvzJ/UFkQc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598286075; a=rsa-sha256;
	cv=none;
	b=YW+qqRCwDykj2ZHHo1jOOgqeyriVxAclUeAkSi06o7g3do8DuASl3tGKV4J8/C+6CTXffY
	TilG4SRs2O4vkJZNuXo9UOVTns1G8sx2HDbMclgE8ZOGDY+qNRrbJ/lxRSFCXp6oNU6KNo
	gKoP3CmgWn54CMOvxQKD75F/mffTdIw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: YMUTODA5JTSK7CEOKPA7X6AVTHCGY6D3
X-Message-ID-Hash: YMUTODA5JTSK7CEOKPA7X6AVTHCGY6D3
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YMUTODA5JTSK7CEOKPA7X6AVTHCGY6D3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David,

here are some bugfixes which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 9123e3a74ec7b934a4a099e98af6a61c2f80bb=
f5:

  Linux 5.9-rc1 (2020-08-16 13:04:57 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-for-davem-20200=
824

for you to fetch changes up to 279e89b2281af3b1a9f04906e157992c19c9f163:

  batman-adv: bla: use netif_rx_ni when not in interrupt context (2020-08=
-18 19:40:03 +0200)

----------------------------------------------------------------
Here are some batman-adv bugfixes:

 - Avoid uninitialized memory access when handling DHCP, by Sven Eckelman=
n

 - Fix check for own OGM in OGM receive handler, by Linus Luessing

 - Fix netif_rx access for non-interrupt context in BLA, by Jussi Kivilin=
na

----------------------------------------------------------------
Jussi Kivilinna (1):
      batman-adv: bla: use netif_rx_ni when not in interrupt context

Linus L=C3=BCssing (1):
      batman-adv: Fix own OGM check in aggregated OGMs

Sven Eckelmann (1):
      batman-adv: Avoid uninitialized chaddr when handling DHCP

 net/batman-adv/bat_v_ogm.c             | 11 ++++++-----
 net/batman-adv/bridge_loop_avoidance.c |  5 ++++-
 net/batman-adv/gateway_client.c        |  6 ++++--
 3 files changed, 14 insertions(+), 8 deletions(-)
