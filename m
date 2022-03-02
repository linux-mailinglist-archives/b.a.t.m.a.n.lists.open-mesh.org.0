Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5121B4CAA5D
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 17:35:28 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1668784483;
	Wed,  2 Mar 2022 17:35:27 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D50B080871
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 17:35:24 +0100 (CET)
Received: from kero.packetmixer.de (p200300C597470fc0d439fbe5C3508408.dip0.t-ipconnect.de [IPv6:2003:c5:9747:fc0:d439:fbe5:c350:8408])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 8F306FA74B;
	Wed,  2 Mar 2022 17:35:24 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 0/4] pull request for net-next: batman-adv 2022-03-02
Date: Wed,  2 Mar 2022 17:35:18 +0100
Message-Id: <20220302163522.102842-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646238924; a=rsa-sha256;
	cv=none;
	b=hmXVhlBiWC8dxaIgeGSes9SPNjRQS1tSIHsIEikNp1lK3oJEd/k9aMGh+/adD/jrRZLdfm
	pEMlqDTEPCTUS6B7/LQrJWOAQpjk2gywPkk9g+FlZnTFPCqd78knZMgk8s5v8aiOBH4DHO
	/suAai8zvVCb+szgiXmN4NcZ5zMNrrU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646238924;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=im7TRfPdCcIt8P075pMjJkjJzMyZ6sj70uIgKDr1LyY=;
	b=LIkbH8ApEZ+i3T+9lvI7dFYt9i59C4N4ySPPdHp7UCni/dJU+YPf6I3wmul/wrMzxFYVYt
	B1XOeWU+Xpav/yAej5peyDMw/RWg4krOM2u49SmOvYj6CldFaaLmka3MkUiSWHkpYwZu+y
	Zls2L1G0R3VgwZIGPa9qtY4TVXJT3V4=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 6PRLMQLVSICPA2KJ53JGLIZUZAV5RIJW
X-Message-ID-Hash: 6PRLMQLVSICPA2KJ53JGLIZUZAV5RIJW
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6PRLMQLVSICPA2KJ53JGLIZUZAV5RIJW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Jakub, hi David,

here is a little cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

There might be a small merge conflict between the net and net-next pull
requests which I both send today, specifically those two commits:

* (batadv/net) 690bb6fb64f5 ("batman-adv: Request iflink once in batadv-o=
n-batadv check")
* (batadv/net-next) 6ee3c393eeb7 ("batman-adv: Demote batadv-on-batadv sk=
ip error message")

They should be resolved like this:=20

--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -167,13 +167,7 @@
 		return false;
=20
 	/* recurse over the parent device */
-<<<<<<<
-	parent_dev =3D __dev_get_by_index((struct net *)parent_net,
-					dev_get_iflink(net_dev));
-=3D=3D=3D=3D=3D=3D=3D
 	parent_dev =3D __dev_get_by_index((struct net *)parent_net, iflink);
-	/* if we got a NULL parent_dev there is something broken.. */
->>>>>>>
 	if (!parent_dev) {
 		pr_warn("Cannot find parent device. Skipping batadv-on-batadv check fo=
r %s\n",
 			net_dev->name);

Thank you,
      Simon

The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac=
07:

  Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-pullrequest-20=
220302

for you to fetch changes up to 6ee3c393eeb7d16a3c228c4fa23913b76c7e7df3:

  batman-adv: Demote batadv-on-batadv skip error message (2022-03-02 09:0=
0:17 +0100)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - Remove redundant 'flush_workqueue()' calls, by Christophe JAILLET

 - Migrate to linux/container_of.h, by Sven Eckelmann

 - Demote batadv-on-batadv skip error message, by Sven Eckelmann

----------------------------------------------------------------
Christophe JAILLET (1):
      batman-adv: Remove redundant 'flush_workqueue()' calls

Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (2):
      batman-adv: Migrate to linux/container_of.h
      batman-adv: Demote batadv-on-batadv skip error message

 net/batman-adv/bat_iv_ogm.c            | 2 +-
 net/batman-adv/bat_v_elp.c             | 2 +-
 net/batman-adv/bat_v_ogm.c             | 2 +-
 net/batman-adv/bridge_loop_avoidance.c | 1 +
 net/batman-adv/distributed-arp-table.c | 2 +-
 net/batman-adv/gateway_client.c        | 1 +
 net/batman-adv/hard-interface.c        | 6 +++---
 net/batman-adv/main.c                  | 2 +-
 net/batman-adv/main.h                  | 2 +-
 net/batman-adv/multicast.c             | 1 +
 net/batman-adv/network-coding.c        | 2 +-
 net/batman-adv/originator.c            | 2 +-
 net/batman-adv/send.c                  | 2 +-
 net/batman-adv/soft-interface.c        | 2 +-
 net/batman-adv/tp_meter.c              | 2 +-
 net/batman-adv/translation-table.c     | 2 +-
 net/batman-adv/tvlv.c                  | 2 +-
 17 files changed, 19 insertions(+), 16 deletions(-)
