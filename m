Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB2820F077
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2020 10:27:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E06B4809F2;
	Tue, 30 Jun 2020 10:27:54 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DB91B803B2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2020 10:27:51 +0200 (CEST)
Received: from kero.packetmixer.de (p4fd575ab.dip0.t-ipconnect.de [79.213.117.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 87C3C6205B;
	Tue, 30 Jun 2020 10:27:51 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/4] pull request for net-next: batman-adv 2020-06-26
Date: Tue, 30 Jun 2020 10:27:27 +0200
Message-Id: <20200630082731.2397-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593505671;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nJ2LZxHSA7ZegoQbPNZJcsUM4sw8yBB5ymA9GxqVekU=;
	b=cb3XKw9zSTpyQhbfiN/q7KdWiD/54JbxxcjvLqeS6RsAjjbPljQ4VY4mD73QF96eP0etBh
	CtAX3tVnICfh6poq9umn6KlDhi66G4QEgRR2RLR2GIZQLKe1kTGAc2jJdpL8E0uaS3IROV
	7NL5bLoe2W+PitOJXEdARI6tGUR/lug=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593505671; a=rsa-sha256;
	cv=none;
	b=HXz8UDmXdinFprGgAZ6Z2Eu7w7NMmmyjYJTsLqzZ8ZP9H6BG+7MoCwFHXyFSKmvKAlYCPl
	kuo8qHvnKXTL3imlvyXzGRlYcIg4dxyt4ngZULEWiYhpjETunPUMbctegQcKPNXQOO8eII
	T98j+y8RVT/3dB67a4SfB5dpOhLGFKo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: MCMCG5DKA7D2DJRDNUVLVWXSLDR5FZPM
X-Message-ID-Hash: MCMCG5DKA7D2DJRDNUVLVWXSLDR5FZPM
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MCMCG5DKA7D2DJRDNUVLVWXSLDR5FZPM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David,

here is a little feature/cleanup pull request of batman-adv to go into ne=
t-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c74=
07:

  Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-for-davem-2020=
0630

for you to fetch changes up to 3bda14d09dc5789a895ab02b7dcfcec19b0a65b3:

  batman-adv: Introduce a configurable per interface hop penalty (2020-06=
-26 10:37:11 +0200)

----------------------------------------------------------------
This feature/cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - update mailing list URL, by Sven Eckelmann

 - fix typos and grammar in documentation, by Sven Eckelmann

 - introduce a configurable per interface hop penalty,
   by Linus Luessing

----------------------------------------------------------------
Linus L=C3=BCssing (1):
      batman-adv: Introduce a configurable per interface hop penalty

Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (2):
      batman-adv: Switch mailing list subscription page
      batman-adv: Fix typos and grammar in documentation

 Documentation/networking/batman-adv.rst |  8 +++---
 include/uapi/linux/batadv_packet.h      | 50 ++++++++++++++++-----------=
------
 include/uapi/linux/batman_adv.h         |  7 +++--
 net/batman-adv/bat_iv_ogm.c             | 25 +++++++++--------
 net/batman-adv/bat_v_elp.c              | 10 +++----
 net/batman-adv/bat_v_ogm.c              | 27 +++++++++++-------
 net/batman-adv/bridge_loop_avoidance.c  |  6 ++--
 net/batman-adv/distributed-arp-table.c  |  2 +-
 net/batman-adv/fragmentation.c          |  6 ++--
 net/batman-adv/hard-interface.c         | 16 ++++++-----
 net/batman-adv/log.h                    |  6 ++--
 net/batman-adv/main.c                   |  2 +-
 net/batman-adv/main.h                   |  8 +++---
 net/batman-adv/multicast.c              | 21 +++++++-------
 net/batman-adv/netlink.c                | 14 +++++++--
 net/batman-adv/network-coding.c         | 14 ++++-----
 net/batman-adv/originator.c             |  8 +++---
 net/batman-adv/routing.c                |  4 +--
 net/batman-adv/send.c                   |  4 +--
 net/batman-adv/soft-interface.c         |  2 +-
 net/batman-adv/tp_meter.c               | 12 ++++----
 net/batman-adv/translation-table.c      | 10 +++----
 net/batman-adv/tvlv.c                   |  4 +--
 net/batman-adv/types.h                  | 18 ++++++++----
 24 files changed, 156 insertions(+), 128 deletions(-)
