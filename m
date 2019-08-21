Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 0852E97ACA
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 21 Aug 2019 15:30:25 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CFA158181E;
	Wed, 21 Aug 2019 15:30:20 +0200 (CEST)
Received: from mail.mail.packetmixer.de (packetmixer.de [79.140.42.25])
 by open-mesh.org (Postfix) with ESMTPS id A2B24800E7
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 21 Aug 2019 15:30:17 +0200 (CEST)
Received: from kero.packetmixer.de
 (p200300C597103800A1B6E4CD9D830B1A.dip0.t-ipconnect.de
 [IPv6:2003:c5:9710:3800:a1b6:e4cd:9d83:b1a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mail.packetmixer.de (Postfix) with ESMTPSA id 3B44762053;
 Wed, 21 Aug 2019 15:30:17 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/1] pull request for net: batman-adv 2019-08-21
Date: Wed, 21 Aug 2019 15:30:14 +0200
Message-Id: <20190821133015.12778-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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

here is a pull request with Erics bugfix from last week which we would
like to have integrated into net. We didn't get anything else, so it's
a short one this time. :)

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit f7af86ccf1882084293b11077deec049fd01da63:

  batman-adv: Fix deletion of RTR(4|6) mcast list entries (2019-07-22 21:34:58 +0200)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-for-davem-20190821

for you to fetch changes up to 3ee1bb7aae97324ec9078da1f00cb2176919563f:

  batman-adv: fix uninit-value in batadv_netlink_get_ifindex() (2019-08-14 19:27:07 +0200)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - fix uninit-value in batadv_netlink_get_ifindex(), by Eric Dumazet

----------------------------------------------------------------
Eric Dumazet (1):
      batman-adv: fix uninit-value in batadv_netlink_get_ifindex()

 net/batman-adv/netlink.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
