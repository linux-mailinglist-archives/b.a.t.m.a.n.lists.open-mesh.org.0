Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id F0170EF9DD
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  5 Nov 2019 10:46:08 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B792680C35;
	Tue,  5 Nov 2019 10:45:33 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
 by open-mesh.org (Postfix) with ESMTPS id 77CB3801B9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  5 Nov 2019 10:45:22 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F5D00F0ACF07C9CF9C7D8.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:5d00:f0ac:f07c:9cf9:c7d8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 8B56862058;
 Tue,  5 Nov 2019 10:35:33 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/5] pull request for net-next: batman-adv 2019-11-05
Date: Tue,  5 Nov 2019 10:35:26 +0100
Message-Id: <20191105093531.11398-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1572947122;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=DxTiNEkMUG6MV0PgtFPtoJvsxzdpB75KQaiVxGcAe1k=;
 b=zTlokv9DcIfW077+j4up/OQgtyZBvVy2SgAQOE3XrrNcATna/KxeMXV0flyGc5v8uDuPai
 MQQbr23HWDrD2/cKWub4WlRjinBHcPeL6muQOHD6PX5AK5ad9ZiRsjt2DLoGwRbAORkU6J
 jKquRT4PYVDKzfYX+EbRCSCV7fc6SdI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572947122; a=rsa-sha256; cv=none;
 b=Q+BrFMusWX1ZUmoER6pCxWyqD66fGnu8FRTkDBi5Wo67a6MnWwofN+ESh2p8Et/YR7zGRQ
 2y+QeFCpczV5O7ebPSxSmSL6HZxIS+rwIivIcfwALp27R63PeVudOoou2OJmZcQIOwdspS
 tClreFqB6FdbAdsJBdRinmOUjvdLy7o=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of sw@simonwunderlich.de designates
 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
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

here is a little cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 1204c70d9dcba31164f78ad5d8c88c42335d51f8:

  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net (2019-11-01 17:48:11 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-for-davem-20191105

for you to fetch changes up to 5759af0682b3395e64cf615e062d6ecad01428dc:

  batman-adv: Drop lockdep.h include for soft-interface.c (2019-11-03 08:30:58 +0100)

----------------------------------------------------------------
This feature/cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - Simplify batadv_v_ogm_aggr_list_free using skb_queue_purge,
   by Christophe Jaillet

 - Replace aggr_list_lock with lock free skb handlers,
   by Christophe Jaillet

 - explicitly mark fallthrough cases, by Sven Eckelmann

 - Drop lockdep.h include from soft-interface.c, by Sven Eckelmann

----------------------------------------------------------------
Christophe JAILLET (2):
      batman-adv: Simplify 'batadv_v_ogm_aggr_list_free()'
      batman-adv: Axe 'aggr_list_lock'

Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (2):
      batman-adv: Use 'fallthrough' pseudo keyword
      batman-adv: Drop lockdep.h include for soft-interface.c

 net/batman-adv/bat_v.c          |  1 -
 net/batman-adv/bat_v_ogm.c      | 34 +++++++++++++++-------------------
 net/batman-adv/main.h           |  2 +-
 net/batman-adv/multicast.c      |  2 +-
 net/batman-adv/soft-interface.c |  5 ++---
 net/batman-adv/types.h          |  3 ---
 6 files changed, 19 insertions(+), 28 deletions(-)
