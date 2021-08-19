Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF3D3F1CDD
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 19 Aug 2021 17:33:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 700E582607;
	Thu, 19 Aug 2021 17:33:44 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 25BEC8000A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 19 Aug 2021 17:33:41 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5971402c0773d8e0e2371531e.dip0.t-ipconnect.de [IPv6:2003:c5:9714:2c0:773d:8e0e:2371:531e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 80E3517401E;
	Thu, 19 Aug 2021 17:33:40 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 0/6] pull request for net-next: batman-adv 2021-08-19
Date: Thu, 19 Aug 2021 17:33:28 +0200
Message-Id: <20210819153334.18850-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629387221; a=rsa-sha256;
	cv=none;
	b=FlVbRrXl8yQ0CxjMIeG1PXUBvgFSBMp99sXHs3TTV+wLPBnKn2+DvJoZosGmKWQfBZ6n1Z
	A90dXcL3ap8jPR3IUWxRKHln+qvlqLXmyaPlwYToErokWvtKF1+oCRzFEtYYxmQrsVUmQL
	EDZ0vh8cXzf8wdq35fEFOEdm8Fh2M+0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629387221;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=k0iZHBMW2JV7mTEkSZgRLw126XaEjrX2MhLaMVm/jzY=;
	b=t1Zgb8uBVlH08OKq+MGqkaCcTTGT4zZdZxrXzAlIhGcTPs4TkrEzlgE2e+DkA3yHYd/oRu
	AP9Gpmu3k8Zhv1McAzruIJR3zocakOjuVyyQWBsMF3tflc0QjMY/ulPg4ox2qeWuDBDtXX
	VZfwZ2hNLVCoJL7xHwHeXR1YVZDY4W0=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: L52DIMXNFP35S6GPA73D3EEL4SW5XWHC
X-Message-ID-Hash: L52DIMXNFP35S6GPA73D3EEL4SW5XWHC
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/L52DIMXNFP35S6GPA73D3EEL4SW5XWHC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Jakub, hi David,

here is a little cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit b37a466837393af72fe8bcb8f1436410f3f173=
f3:

  netdevice: add the case if dev is NULL (2021-08-05 13:29:26 +0100)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-pullrequest-20=
210819

for you to fetch changes up to 808cfdfad57999c85f9ab13499a38d136d032232:

  batman-adv: bcast: remove remaining skb-copy calls (2021-08-18 18:39:00=
 +0200)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - update docs about move IRC channel away from freenode,
   by Sven Eckelmann

 - Switch to kstrtox.h for kstrtou64, by Sven Eckelmann

 - Update NULL checks, by Sven Eckelmann (2 patches)

 - remove remaining skb-copy calls for broadcast packets,
   by Linus L=C3=BCssing

----------------------------------------------------------------
Linus L=C3=BCssing (1):
      batman-adv: bcast: remove remaining skb-copy calls

Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (4):
      batman-adv: Move IRC channel to hackint.org
      batman-adv: Switch to kstrtox.h for kstrtou64
      batman-adv: Check ptr for NULL before reducing its refcnt
      batman-adv: Drop NULL check before dropping references

 Documentation/networking/batman-adv.rst |   2 +-
 MAINTAINERS                             |   2 +-
 net/batman-adv/bat_iv_ogm.c             |  75 ++++++++---------------
 net/batman-adv/bat_v.c                  |  30 ++++------
 net/batman-adv/bat_v_elp.c              |   9 +--
 net/batman-adv/bat_v_ogm.c              |  39 ++++--------
 net/batman-adv/bridge_loop_avoidance.c  |  33 +++++------
 net/batman-adv/distributed-arp-table.c  |  24 ++++----
 net/batman-adv/fragmentation.c          |   6 +-
 net/batman-adv/gateway_client.c         |  57 +++++-------------
 net/batman-adv/gateway_client.h         |  16 ++++-
 net/batman-adv/gateway_common.c         |   2 +-
 net/batman-adv/hard-interface.c         |  21 +++----
 net/batman-adv/hard-interface.h         |   3 +
 net/batman-adv/main.h                   |   2 +-
 net/batman-adv/multicast.c              |   2 +-
 net/batman-adv/netlink.c                |   6 +-
 net/batman-adv/network-coding.c         |  24 ++++----
 net/batman-adv/originator.c             | 102 +++++---------------------=
------
 net/batman-adv/originator.h             |  96 ++++++++++++++++++++++++++=
+---
 net/batman-adv/routing.c                |  39 ++++--------
 net/batman-adv/send.c                   |  33 ++++++-----
 net/batman-adv/soft-interface.c         |  27 ++-------
 net/batman-adv/soft-interface.h         |  16 ++++-
 net/batman-adv/tp_meter.c               |  27 ++++-----
 net/batman-adv/translation-table.c      | 100 +++++++++++---------------=
-----
 net/batman-adv/translation-table.h      |  18 +++++-
 net/batman-adv/tvlv.c                   |   9 ++-
 28 files changed, 364 insertions(+), 456 deletions(-)
