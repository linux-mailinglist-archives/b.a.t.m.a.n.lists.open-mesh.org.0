Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F238FDC4
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 16 Aug 2019 10:26:38 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C5BEB81863;
	Fri, 16 Aug 2019 10:26:30 +0200 (CEST)
Received: from mail.mail.packetmixer.de (packetmixer.de [79.140.42.25])
 by open-mesh.org (Postfix) with ESMTPS id C1D4081062
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 16 Aug 2019 10:26:27 +0200 (CEST)
Received: from kero.packetmixer.de
 (p200300C597109F0058E8B1B94AE0E6C2.dip0.t-ipconnect.de
 [IPv6:2003:c5:9710:9f00:58e8:b1b9:4ae0:e6c2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mail.packetmixer.de (Postfix) with ESMTPSA id 70F9A62056;
 Fri, 16 Aug 2019 10:26:27 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Add Sven to MAINTAINERS file
Date: Fri, 16 Aug 2019 10:26:26 +0200
Message-Id: <20190816082626.11537-1-sw@simonwunderlich.de>
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Sven is taking care of tracking our patches and merging most of them in
our tree. Let's add him to the MAINTAINERS file so he will get all
patch e-mails.

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4b1b53d5..9f0f421e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2,6 +2,7 @@ BATMAN ADVANCED
 M:	Marek Lindner <mareklindner@neomailbox.ch>
 M:	Simon Wunderlich <sw@simonwunderlich.de>
 M:	Antonio Quartulli <a@unstable.cc>
+M:	Sven Eckelmann <sven@narfation.org>
 L:	b.a.t.m.a.n@lists.open-mesh.org (moderated for non-subscribers)
 W:	https://www.open-mesh.org/
 B:	https://www.open-mesh.org/projects/batman-adv/issues
-- 
2.20.1

