Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1858E5808B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Jun 2019 12:39:50 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 5E9D6826E6;
	Thu, 27 Jun 2019 12:39:45 +0200 (CEST)
Received: from mail.mail.packetmixer.de (packetmixer.de [79.140.42.25])
 by open-mesh.org (Postfix) with ESMTPS id 356C880851
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 12:39:42 +0200 (CEST)
Received: from kero.packetmixer.de (ip-109-41-128-179.web.vodafone.de
 [109.41.128.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mail.packetmixer.de (Postfix) with ESMTPSA id CE89062070;
 Thu, 27 Jun 2019 12:39:41 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 00/10] pull request for net-next: batman-adv 2019-06-27
Date: Thu, 27 Jun 2019 12:39:28 +0200
Message-Id: <20190627103938.7488-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

here is a feature and cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-for-davem-20190627

for you to fetch changes up to 8a8a79f53b4210c55557d1148e925b0f385c1bf7:

  batman-adv: mcast: apply optimizations for routable packets, too (2019-06-14 20:24:11 +0200)

----------------------------------------------------------------
This feature/cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - fix includes for _MAX constants, atomic functions and fwdecls,
   by Sven Eckelmann (3 patches)

 - shorten multicast tt/tvlv worker spinlock section, by Linus Luessing

 - routeable multicast preparations: implement MAC multicast filtering,
   by Linus Luessing (2 patches)

 - remove return value checks for debugfs_create, by Greg Kroah-Hartman

 - add routable multicast optimizations, by Linus Luessing (2 patches)

----------------------------------------------------------------
Greg Kroah-Hartman (1):
      batman-adv: no need to check return value of debugfs_create functions

Linus Lüssing (5):
      batman-adv: mcast: shorten multicast tt/tvlv worker spinlock section
      batman-adv: mcast: collect softif listeners from IP lists instead
      batman-adv: mcast: avoid redundant multicast TT entries with bridges
      batman-adv: mcast: detect, distribute and maintain multicast router presence
      batman-adv: mcast: apply optimizations for routable packets, too

Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (3):
      batman-adv: Fix includes for *_MAX constants
      batman-adv: Add missing include for atomic functions
      batman-adv: Use includes instead of fwdecls

 include/uapi/linux/batadv_packet.h     |    8 +
 net/batman-adv/bat_algo.h              |    7 +-
 net/batman-adv/bat_v.c                 |    3 +-
 net/batman-adv/bat_v_elp.h             |    4 +-
 net/batman-adv/bat_v_ogm.h             |    3 +-
 net/batman-adv/bridge_loop_avoidance.h |    9 +-
 net/batman-adv/debugfs.c               |   99 +--
 net/batman-adv/debugfs.h               |    9 +-
 net/batman-adv/distributed-arp-table.h |    7 +-
 net/batman-adv/fragmentation.h         |    3 +-
 net/batman-adv/gateway_client.h        |    9 +-
 net/batman-adv/gateway_common.c        |    1 +
 net/batman-adv/gateway_common.h        |    3 +-
 net/batman-adv/hard-interface.c        |    7 +-
 net/batman-adv/hard-interface.h        |    5 +-
 net/batman-adv/hash.h                  |    3 +-
 net/batman-adv/icmp_socket.c           |   20 +-
 net/batman-adv/icmp_socket.h           |    5 +-
 net/batman-adv/log.c                   |   17 +-
 net/batman-adv/log.h                   |    1 +
 net/batman-adv/main.h                  |   12 +-
 net/batman-adv/multicast.c             | 1086 +++++++++++++++++++++++++-------
 net/batman-adv/multicast.h             |    6 +-
 net/batman-adv/netlink.c               |    4 +-
 net/batman-adv/netlink.h               |    3 +-
 net/batman-adv/network-coding.c        |   29 +-
 net/batman-adv/network-coding.h        |   14 +-
 net/batman-adv/originator.c            |    4 +-
 net/batman-adv/originator.h            |    7 +-
 net/batman-adv/routing.h               |    3 +-
 net/batman-adv/send.h                  |    3 +-
 net/batman-adv/soft-interface.c        |    6 +-
 net/batman-adv/soft-interface.h        |    7 +-
 net/batman-adv/sysfs.c                 |    1 +
 net/batman-adv/sysfs.h                 |    5 +-
 net/batman-adv/tp_meter.c              |    1 +
 net/batman-adv/tp_meter.h              |    3 +-
 net/batman-adv/translation-table.h     |    9 +-
 net/batman-adv/tvlv.h                  |    3 +-
 net/batman-adv/types.h                 |   69 +-
 40 files changed, 1035 insertions(+), 463 deletions(-)
