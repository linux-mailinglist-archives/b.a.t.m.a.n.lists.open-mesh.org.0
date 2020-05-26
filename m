Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BEF1E1F4E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2020 12:06:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 390C58253B;
	Tue, 26 May 2020 12:06:04 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C358481DD7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 May 2020 12:05:54 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c597221100fc44a592f3d496ba.dip0.t-ipconnect.de [IPv6:2003:c5:9722:1100:fc44:a592:f3d4:96ba])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 4B37162059;
	Tue, 26 May 2020 12:00:09 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/3] pull request for net-next: batman-adv 2020-05-26
Date: Tue, 26 May 2020 12:00:04 +0200
Message-Id: <20200526100007.10501-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590487554;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+rZ2pwgAO/y1kVyKkHcXUdBxbZ0vuPd12wRdSysufi8=;
	b=P28870JY9RvvxntZdyNbpVpGf44kywxS4yHeqTGOcwqC6cysuQ8fRoxnbj9L/AcA6EIdRC
	v24fghzLeTdWP0+5kyd26x09kcFrHUUR83z90Hrj5psH1j+Q6zASYFrGghzUrhBXfGO0r7
	nDKwQS3qEPK41wTzaQUoYCO13lV0wvc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590487554; a=rsa-sha256;
	cv=none;
	b=yXXcDSlG1Tt3Impcb5/N/oDX2+ASW1HjfT3MwOvBrho+hDRUTN68yFPgddOm2AlKjdPPIg
	29NF3i8z9E9pPWD0dZH51nXcT8cWSXOV6z9U1z9jDxXpIPYraXCfL5RN2Y8P4CJcK082Zt
	/SQ1NxwmT8zaonUt+14lE2BmAxMyzuY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DNFYDHTVVTENSYYQL74GOBGTER4T465K
X-Message-ID-Hash: DNFYDHTVVTENSYYQL74GOBGTER4T465K
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DNFYDHTVVTENSYYQL74GOBGTER4T465K/>
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

The following changes since commit 1a33e10e4a95cb109ff1145098175df3113313=
ef:

  net: partially revert dynamic lockdep key changes (2020-05-04 12:05:56 =
-0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-for-davem-2020=
0526

for you to fetch changes up to 9ad346c90509ebd983f60da7d082f261ad329507:

  batman-adv: Revert "disable ethtool link speed detection when auto nego=
tiation off" (2020-05-26 09:23:33 +0200)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - Fix revert dynamic lockdep key changes for batman-adv,
   by Sven Eckelmann

 - use rcu_replace_pointer() where appropriate, by Antonio Quartulli

 - Revert "disable ethtool link speed detection when auto negotiation
   off", by Sven Eckelmann

----------------------------------------------------------------
Antonio Quartulli (1):
      batman-adv: use rcu_replace_pointer() where appropriate

Sven Eckelmann (2):
      batman-adv: Revert "Drop lockdep.h include for soft-interface.c"
      batman-adv: Revert "disable ethtool link speed detection when auto =
negotiation off"

 net/batman-adv/bat_v_elp.c      | 15 +--------------
 net/batman-adv/gateway_client.c |  4 ++--
 net/batman-adv/hard-interface.c |  4 ++--
 net/batman-adv/routing.c        |  4 ++--
 net/batman-adv/soft-interface.c |  1 +
 5 files changed, 8 insertions(+), 20 deletions(-)
