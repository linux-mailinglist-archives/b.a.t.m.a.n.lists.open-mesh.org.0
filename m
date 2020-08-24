Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C162E2502BF
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 24 Aug 2020 18:35:50 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A7C22803C3;
	Mon, 24 Aug 2020 18:35:49 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A0B7D8026E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Aug 2020 18:35:46 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970d68d0e0160e8a82c5fd76.dip0.t-ipconnect.de [IPv6:2003:c5:970d:68d0:e016:e8a:82c5:fd76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 1B9C862070;
	Mon, 24 Aug 2020 18:27:46 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/5] pull request for net-next: batman-adv 2020-08-24
Date: Mon, 24 Aug 2020 18:27:36 +0200
Message-Id: <20200824162741.880-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598286946;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0uhr2FioQeZ1zmTomS11EnEEwT2ZJczhdkT0QcsmXco=;
	b=zJ8qEn2zmyyhT0uqAWwFENA+aS9Th4oX8uibM8QgMCChBgfAf15hLGEJgY/3p7L54waSfY
	CqtasC+oiUdPsx1RDxtZByC9pbBZKAFzn80W8JpBHm24ZkkFYFdn7H++iylx9WtTi6ZX3H
	/St5KZQYPmjh+AgOM8SSGVPWOdMNQKg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598286946; a=rsa-sha256;
	cv=none;
	b=d1BUzYEyhhXu+A3fNRT40jThUxv/a6GvFbDw0SeOUY8kIXLB8DQif2SQb+yWZp1FtskVfw
	ujZszzEyGVccFW6Y6R4BKbDT2FvrKcpu/DGI3TD6oz8va6X+/kxfxXFZe0vy/gqva6UDJI
	Yzstl4DbI/9eaWEWM9BJNNwhlFGz3Hs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: MTMBKUC5MYCRDC53PUEA3VAV3U5YZCVF
X-Message-ID-Hash: MTMBKUC5MYCRDC53PUEA3VAV3U5YZCVF
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MTMBKUC5MYCRDC53PUEA3VAV3U5YZCVF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David,

here is a small cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 9123e3a74ec7b934a4a099e98af6a61c2f80bb=
f5:

  Linux 5.9-rc1 (2020-08-16 13:04:57 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-for-davem-2020=
0824

for you to fetch changes up to 0093870aa891594d170e1dc9aa192a30d530d755:

  batman-adv: Migrate to linux/prandom.h (2020-08-18 19:39:54 +0200)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - Drop unused function batadv_hardif_remove_interfaces(),
   by Sven Eckelmann

 - delete duplicated words, by Randy Dunlap

 - Drop (even more) repeated words in comments, by Sven Eckelmann

 - Migrate to linux/prandom.h, by Sven Eckelmann

----------------------------------------------------------------
Randy Dunlap (1):
      batman-adv: types.h: delete duplicated words

Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (3):
      batman-adv: Drop unused function batadv_hardif_remove_interfaces()
      batman-adv: Drop repeated words in comments
      batman-adv: Migrate to linux/prandom.h

 net/batman-adv/bat_iv_ogm.c            |  1 +
 net/batman-adv/bat_v_elp.c             |  1 +
 net/batman-adv/bat_v_ogm.c             |  1 +
 net/batman-adv/bridge_loop_avoidance.c |  2 +-
 net/batman-adv/fragmentation.c         |  2 +-
 net/batman-adv/hard-interface.c        | 19 +------------------
 net/batman-adv/hard-interface.h        |  1 -
 net/batman-adv/main.c                  |  1 -
 net/batman-adv/main.h                  |  2 +-
 net/batman-adv/multicast.c             |  2 +-
 net/batman-adv/network-coding.c        |  4 ++--
 net/batman-adv/send.c                  |  2 +-
 net/batman-adv/soft-interface.c        |  4 ++--
 net/batman-adv/types.h                 |  4 ++--
 14 files changed, 15 insertions(+), 31 deletions(-)
