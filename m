Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 40164A30F7
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 30 Aug 2019 09:27:53 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 25C0B823C4;
	Fri, 30 Aug 2019 09:27:42 +0200 (CEST)
Received: from mail.mail.packetmixer.de (packetmixer.de [79.140.42.25])
 by open-mesh.org (Postfix) with ESMTPS id 184C38065C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 30 Aug 2019 09:27:39 +0200 (CEST)
Received: from kero.packetmixer.de
 (p200300C5970B8500250C6283C70837BA.dip0.t-ipconnect.de
 [IPv6:2003:c5:970b:8500:250c:6283:c708:37ba])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mail.packetmixer.de (Postfix) with ESMTPSA id CCE5362075;
 Fri, 30 Aug 2019 09:27:38 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/1] batman-adv: Add Sven to MAINTAINERS file
Date: Fri, 30 Aug 2019 09:27:36 +0200
Message-Id: <20190830072736.18535-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190830072736.18535-1-sw@simonwunderlich.de>
References: <20190830072736.18535-1-sw@simonwunderlich.de>
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
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
 Antonio Quartulli <a@unstable.cc>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Sven is taking care of tracking our patches and merging most of them in
our tree. Let's add him to the MAINTAINERS file so he will get all
patch e-mails.

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Acked-by: Antonio Quartulli <a@unstable.cc>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 783569e3c4b4..ce8316cbe3b2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2911,6 +2911,7 @@ BATMAN ADVANCED
 M:	Marek Lindner <mareklindner@neomailbox.ch>
 M:	Simon Wunderlich <sw@simonwunderlich.de>
 M:	Antonio Quartulli <a@unstable.cc>
+M:	Sven Eckelmann <sven@narfation.org>
 L:	b.a.t.m.a.n@lists.open-mesh.org (moderated for non-subscribers)
 W:	https://www.open-mesh.org/
 B:	https://www.open-mesh.org/projects/batman-adv/issues
-- 
2.20.1

