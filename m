Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EF539FA9D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Jun 2021 17:27:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id ECC1D80C32;
	Tue,  8 Jun 2021 17:27:05 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A77108062B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 17:27:02 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970dd3e020a52263b5aabfb3.dip0.t-ipconnect.de [IPv6:2003:c5:970d:d3e0:20a5:2263:b5aa:bfb3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 06F8B17401E;
	Tue,  8 Jun 2021 17:27:02 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 00/11] pull request for net-next: batman-adv 2021-06-08
Date: Tue,  8 Jun 2021 17:26:49 +0200
Message-Id: <20210608152700.30315-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623166022; a=rsa-sha256;
	cv=none;
	b=BvE3j/JWIU8hO30+id7NEdOyMHchfagFTqdZ+7DY56UEmRrRDWT+3gXKRy1SiG9q4E0IQI
	2Qc3Db88prgqpt7j5RD+GayO9ebabOTiTJNHD6iVm1gIe+9Qz6fKmbEBS4XD4v8qV7/h1k
	26HZZRpg6ekTqIchkbA5NOBT9nOisK0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623166022;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=K7C1jeaw7jQ7ZthWmQm48yqY72+EKAmEWXNuKjzO104=;
	b=j/ll33mz/82gcQrGHdCf+aEPSDuKApYM8A8+psQGhJetrMU29AxT1wdyavyeR+iti//l0b
	BxWX58eBF1m0kfrcJRWDShtIir0yWj67FsG2Tz7ben5P3TApwyGLokaFBSvzstd4IHV6Er
	msub5oyNeMvynpNkCP4AHhNTABoKLU8=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ETAKUBF2SKZYPYRE3IF73VBR7L2N44W3
X-Message-ID-Hash: ETAKUBF2SKZYPYRE3IF73VBR7L2N44W3
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ETAKUBF2SKZYPYRE3IF73VBR7L2N44W3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Jakub, hi David,

here is a feature/cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 30515832e987597eae354f6ffcdb3374bdfde1=
6d:

  net: bridge: fix build when IPv6 is disabled (2021-05-14 10:38:59 -0700=
)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-pullrequest-20=
210608

for you to fetch changes up to 020577f879be736bc87e1f48dfad7220923401c0:

  batman-adv: Drop reduntant batadv interface check (2021-06-02 22:25:45 =
+0200)

----------------------------------------------------------------
This feature/cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - consistently send iface index/name in genlmsg, by Sven Eckelmann

 - improve broadcast queueing, by Linus L=C3=BCssing (2 patches)

 - add support for routable IPv4 multicast with bridged setups,
   by Linus L=C3=BCssing

 - remove repeated declarations, by Shaokun Zhang

 - fix spelling mistakes, by Zheng Yongjun

 - clean up hard interface handling after dropping sysfs support,
   by Sven Eckelmann (4 patches)

----------------------------------------------------------------
Linus L=C3=BCssing (3):
      batman-adv: bcast: queue per interface, if needed
      batman-adv: bcast: avoid skb-copy for (re)queued broadcasts
      batman-adv: mcast: add MRD + routable IPv4 multicast with bridges s=
upport

Shaokun Zhang (1):
      batman-adv: Remove the repeated declaration

Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (5):
      batman-adv: Always send iface index+name in genlmsg
      batman-adv: Drop implicit creation of batadv net_devices
      batman-adv: Avoid name based attaching of hard interfaces
      batman-adv: Don't manually reattach hard-interface
      batman-adv: Drop reduntant batadv interface check

Zheng Yongjun (1):
      batman-adv: Fix spelling mistakes

 net/batman-adv/bat_iv_ogm.c            |   6 +
 net/batman-adv/bat_v.c                 |  10 +
 net/batman-adv/bridge_loop_avoidance.c |   4 +-
 net/batman-adv/bridge_loop_avoidance.h |   1 -
 net/batman-adv/hard-interface.c        |  65 +-----
 net/batman-adv/hard-interface.h        |   3 +-
 net/batman-adv/hash.h                  |   2 +-
 net/batman-adv/main.h                  |   3 +-
 net/batman-adv/multicast.c             |  41 +---
 net/batman-adv/netlink.c               |   8 +
 net/batman-adv/routing.c               |   9 +-
 net/batman-adv/send.c                  | 374 ++++++++++++++++++++++-----=
------
 net/batman-adv/send.h                  |  12 +-
 net/batman-adv/soft-interface.c        |  49 +----
 net/batman-adv/soft-interface.h        |   2 -
 15 files changed, 310 insertions(+), 279 deletions(-)
