Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id A084F5806E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Jun 2019 12:31:38 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 8A10081F50;
	Thu, 27 Jun 2019 12:31:29 +0200 (CEST)
Received: from mail.mail.packetmixer.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id B073C80A35
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 12:31:25 +0200 (CEST)
Received: from kero.packetmixer.de (ip-109-41-128-179.web.vodafone.de
 [109.41.128.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mail.packetmixer.de (Postfix) with ESMTPSA id 3616962059;
 Thu, 27 Jun 2019 12:31:25 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/2] pull request for net: batman-adv 2019-06-27
Date: Thu, 27 Jun 2019 12:31:17 +0200
Message-Id: <20190627103119.6969-1-sw@simonwunderlich.de>
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

here are some bugfixes which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-for-davem-20190627

for you to fetch changes up to 9e6b5648bbc4cd48fab62cecbb81e9cc3c6e7e88:

  batman-adv: Fix duplicated OGMs on NETDEV_UP (2019-06-02 13:33:48 +0200)

----------------------------------------------------------------
Here are some batman-adv bugfixes:

 - fix a leaked TVLV handler which wasn't unregistered, by Jeremy Sowden

 - fix duplicated OGMs when interfaces are set UP, by Sven Eckelmann

----------------------------------------------------------------
Jeremy Sowden (1):
      batman-adv: fix for leaked TVLV handler.

Sven Eckelmann (1):
      batman-adv: Fix duplicated OGMs on NETDEV_UP

 net/batman-adv/bat_iv_ogm.c        | 4 ++--
 net/batman-adv/hard-interface.c    | 3 +++
 net/batman-adv/translation-table.c | 2 ++
 net/batman-adv/types.h             | 3 +++
 4 files changed, 10 insertions(+), 2 deletions(-)
