Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFBD51EDC2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  8 May 2022 15:26:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A273F82760;
	Sun,  8 May 2022 15:26:20 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8888F81243
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  8 May 2022 15:26:17 +0200 (CEST)
Received: from kero.packetmixer.de (p200300Fa271a310000945df34724C077.dip0.t-ipconnect.de [IPv6:2003:fa:271a:3100:94:5df3:4724:c077])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 4B6BCFA1FF;
	Sun,  8 May 2022 15:26:17 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 0/2] pull request for net-next: batman-adv 2022-05-08
Date: Sun,  8 May 2022 15:26:14 +0200
Message-Id: <20220508132616.21232-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652016377; a=rsa-sha256;
	cv=none;
	b=ECULeW/WjoD0fncIL8ikUEmfNmMUMgtFNgRVuwd/NqwrkCIlJF9wpmr2uh9FE9Ssou79Pn
	fKu39PeTekYYBjrA0ZWcYX3TiPfS2DL6P7zL0kO5B6Qq1vd6gG0hmHwlqhINpkexNyP5Q3
	x9jychPattgtMB9Pi4uLk6+PQxofFYE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652016377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VxqGpjdHGimc8mnyKV5M47dq87oTdqtP6J9OedUm+TQ=;
	b=VL3+h5GZXW9lKTWWj8xT9npwaus88QSKvvClrM3wWFj+/Id9bJSlCnxNJsx/pSn9OaWuvD
	AnpGMXlx/BrnDMqOFpNzSpyp5rHjtKWFFlKuUVXoFVJfbs4tcNox6n9HeOnesmZ5BuUHl4
	fWDxnxVLSRdV343qfD8y36dMWtJWS5g=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: PVEKEITSWD7ZOPESKDFWPMRPMYXMYPME
X-Message-ID-Hash: PVEKEITSWD7ZOPESKDFWPMRPMYXMYPME
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PVEKEITSWD7ZOPESKDFWPMRPMYXMYPME/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Jakub, hi David,

here is a very little cleanup pull request of batman-adv to go into net-n=
ext.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 3123109284176b1532874591f7c81f3837bbdc=
17:

  Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-pullrequest-20=
220508

for you to fetch changes up to 8864d2fcf04385cabb8c8bb159f1f2ba5790cf71:

  batman-adv: remove unnecessary type castings (2022-04-22 11:23:46 +0200=
)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - remove unnecessary type castings, by Yu Zhe

----------------------------------------------------------------
Simon Wunderlich (1):
      batman-adv: Start new development cycle

Yu Zhe (1):
      batman-adv: remove unnecessary type castings

 net/batman-adv/bridge_loop_avoidance.c |  4 ++--
 net/batman-adv/main.h                  |  2 +-
 net/batman-adv/translation-table.c     | 12 ++++++------
 3 files changed, 9 insertions(+), 9 deletions(-)
