Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFFFA30F5
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 30 Aug 2019 09:27:46 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CC7228222E;
	Fri, 30 Aug 2019 09:27:40 +0200 (CEST)
Received: from mail.mail.packetmixer.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id BD955803C1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 30 Aug 2019 09:27:38 +0200 (CEST)
Received: from kero.packetmixer.de
 (p200300C5970B8500250C6283C70837BA.dip0.t-ipconnect.de
 [IPv6:2003:c5:970b:8500:250c:6283:c708:37ba])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mail.packetmixer.de (Postfix) with ESMTPSA id 79AC16206F;
 Fri, 30 Aug 2019 09:27:38 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/1] pull request for net-next: batman-adv 2019-08-30
Date: Fri, 30 Aug 2019 09:27:35 +0200
Message-Id: <20190830072736.18535-1-sw@simonwunderlich.de>
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

here is a small maintenance pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 9cb9a17813bf0de1f8ad6deb9538296d5148b5a8:

  batman-adv: BATMAN_V: aggregate OGMv2 packets (2019-08-04 22:22:00 +0200)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-for-davem-20190830

for you to fetch changes up to 2a813f1392205654aea28098f3bcc3e6e2478fa5:

  batman-adv: Add Sven to MAINTAINERS file (2019-08-17 13:11:50 +0200)

----------------------------------------------------------------
This maintenance patchset includes the following patches:

 - Add Sven to the MAINTAINERS file, by Simon Wunderlich

----------------------------------------------------------------
Simon Wunderlich (1):
      batman-adv: Add Sven to MAINTAINERS file

 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)
