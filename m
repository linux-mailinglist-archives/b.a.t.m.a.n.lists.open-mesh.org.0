Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBCEE4742
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 25 Oct 2019 11:31:32 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id F2D33807EA;
	Fri, 25 Oct 2019 11:31:20 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id 27DAF8020F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 25 Oct 2019 11:31:18 +0200 (CEST)
Received: from kero.packetmixer.de
 (p200300C5970A8C00492EDFEC592AE94F.dip0.t-ipconnect.de
 [IPv6:2003:c5:970a:8c00:492e:dfec:592a:e94f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id A568962016;
 Fri, 25 Oct 2019 11:22:17 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/2] pull request for net: batman-adv 2019-10-25
Date: Fri, 25 Oct 2019 11:22:14 +0200
Message-Id: <20191025092216.12791-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1571995878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=WDpbLMgh8hjV9IvBPB/8xXBGMaegJBI7g2XliiO3olw=;
 b=YMSX/nq6IAkFHPRb5yVUjVZxLxQHA/LLJW0f325vhuFRFye6xhxH+2ETogOOBWl06bEqZp
 BL9Y4Cel+0+l7zZ1FHWmzjIYWW9Cz8mQuRKHUGKIO+cueCswMAPMeiK+DHa/bgbgUR9RUq
 uzA1/T8zNcmuGGsutcpsuLmlTgKTm+A=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1571995878; a=rsa-sha256; cv=none;
 b=aUjlpJ7ccvX2FRGnpvArjPVV02tk9nihPbwPr4oluLeHbhcYpTdxL37qPve8KSuvfs7ZIq
 o6bOyZb2ul3BWXSUz1KQqBOX6ZREBrDd+PggDDCf9nH/ZdzblLSpdl1etOJzuW1uFYFydf
 uCwd8AfwYz/NQOw2Xxht0qrhlAdFAFY=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of sw@simonwunderlich.de designates
 2001:4d88:2000:24::c0de as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi David,

here are two bugfixes which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-for-davem-20191025

for you to fetch changes up to 40e220b4218bb3d278e5e8cc04ccdfd1c7ff8307:

  batman-adv: Avoid free/alloc race when handling OGM buffer (2019-10-13 21:00:07 +0200)

----------------------------------------------------------------
Here are two batman-adv bugfixes:

 * Fix free/alloc race for OGM and OGMv2, by Sven Eckelmann (2 patches)

----------------------------------------------------------------
Sven Eckelmann (2):
      batman-adv: Avoid free/alloc race when handling OGM2 buffer
      batman-adv: Avoid free/alloc race when handling OGM buffer

 net/batman-adv/bat_iv_ogm.c     | 61 +++++++++++++++++++++++++++++++++++------
 net/batman-adv/bat_v_ogm.c      | 41 +++++++++++++++++++++------
 net/batman-adv/hard-interface.c |  2 ++
 net/batman-adv/types.h          |  7 +++++
 4 files changed, 94 insertions(+), 17 deletions(-)
