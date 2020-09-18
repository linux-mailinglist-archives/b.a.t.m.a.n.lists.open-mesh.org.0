Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AD74526FE18
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 18 Sep 2020 15:20:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 61E8C80691;
	Fri, 18 Sep 2020 15:20:02 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CE8D8800F2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 18 Sep 2020 15:19:58 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c59714ead05d12fb7f5a0314d0.dip0.t-ipconnect.de [IPv6:2003:c5:9714:ead0:5d12:fb7f:5a03:14d0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 7B1E06206B;
	Fri, 18 Sep 2020 15:19:58 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/6] pull request for net: batman-adv 2020-09-18
Date: Fri, 18 Sep 2020 15:19:50 +0200
Message-Id: <20200918131956.21598-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600435198;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OtEKOMFOuR1MJs7gmQjZxz3tdawycKC4HzaKoxUAzhw=;
	b=quXBosDT4kL7TdYY1ZiH8S0HTCq48CcOLbndjKB+dIH3Afm5gJjFDwPSGdi5gwYBjm5UQ0
	GAuAAML4eUWWFronb0/bqwAg9htD412Sw4iNBTJvXVJHRBT22QSWV+maGyisN1w41yfMUb
	mK+8YwFMix8t2AAmACNBldSQQQyopZE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600435198; a=rsa-sha256;
	cv=none;
	b=2Df7JCx3ANwNLUluTfyUh8xMjUKuXTbxg1RbRlu2JpOUt4DnxQEWAsOlIQHbMyXX8E2tzp
	r/k3opBnJEoKtYQ3SXnDWCvYiESWrvBsdcYQsnCoQNonQo9ei8tkBnKgiY6TgzAIOUQImP
	e/lOOSEl4emsKV4vjTt4VF15Q5Tryvk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: AVJNEBAY7IWKCWSGCY6X7YRVVMOVC3FF
X-Message-ID-Hash: AVJNEBAY7IWKCWSGCY6X7YRVVMOVC3FF
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AVJNEBAY7IWKCWSGCY6X7YRVVMOVC3FF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David,

here are some late bugfixes which we would like to have integrated into n=
et.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 279e89b2281af3b1a9f04906e157992c19c9f1=
63:

  batman-adv: bla: use netif_rx_ni when not in interrupt context (2020-08=
-18 19:40:03 +0200)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-for-davem-20200=
918

for you to fetch changes up to 2369e827046920ef0599e6a36b975ac5c0a359c2:

  batman-adv: mcast: fix duplicate mcast packets from BLA backbone to mes=
h (2020-09-15 10:05:24 +0200)

----------------------------------------------------------------
Here are some batman-adv bugfixes:

 - fix wrong type use in backbone_gw hash, by Linus Luessing

 - disable TT re-routing for multicast packets, by Linus Luessing

 - Add missing include for in_interrupt(), by Sven Eckelmann

 - fix BLA/multicast issues for packets sent via unicast,
   by Linus Luessing (3 patches)

----------------------------------------------------------------
Linus L=C3=BCssing (5):
      batman-adv: bla: fix type misuse for backbone_gw hash indexing
      batman-adv: mcast/TT: fix wrongly dropped or rerouted packets
      batman-adv: mcast: fix duplicate mcast packets in BLA backbone from=
 LAN
      batman-adv: mcast: fix duplicate mcast packets in BLA backbone from=
 mesh
      batman-adv: mcast: fix duplicate mcast packets from BLA backbone to=
 mesh

Sven Eckelmann (1):
      batman-adv: Add missing include for in_interrupt()

 net/batman-adv/bridge_loop_avoidance.c | 145 ++++++++++++++++++++++++++-=
------
 net/batman-adv/bridge_loop_avoidance.h |   4 +-
 net/batman-adv/multicast.c             |  46 ++++++++---
 net/batman-adv/multicast.h             |  15 ++++
 net/batman-adv/routing.c               |   4 +
 net/batman-adv/soft-interface.c        |  11 ++-
 6 files changed, 179 insertions(+), 46 deletions(-)
