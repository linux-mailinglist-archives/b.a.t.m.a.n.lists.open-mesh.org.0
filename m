Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC355A996
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 29 Jun 2019 10:28:49 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 4D0A1827C8;
	Sat, 29 Jun 2019 10:28:32 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 228BD80729
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 29 Jun 2019 10:28:26 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id D2E2F110115;
 Sat, 29 Jun 2019 10:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1561796905;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hZW0KB0OzN7gJOOo57JPeUK+7ZdCH2MuXCdtTcp5mfw=;
 b=P43S25wah4t3yJy7eGdQQJ21iA1L7yg5subd7RSBLTpRHPQIieMaOivy3KPcgCLR8Il+A0
 Gv3T+CYh9ISfa+9eNocf6rWAgmZQduovyuYCK0GM11gd7Tk3aKktLgKbOcI3ILduUcRgIX
 71Ukz9HutkvfWjR/OUdk5gpxtEGbLPI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/2] batctl: mcast_flags: Add support for MCASTv2 RTR(4|6)
 flags
Date: Sat, 29 Jun 2019 10:28:18 +0200
Message-Id: <20190629082818.29466-2-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190629082818.29466-1-sven@narfation.org>
References: <20190629082818.29466-1-sven@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1561796905;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hZW0KB0OzN7gJOOo57JPeUK+7ZdCH2MuXCdtTcp5mfw=;
 b=iSDpdqhrTEjr6LWxaxu4FebvaFV4859GYSyN7wcaGaLKrpOLHsx1lr4Unz5Yz/Q1oxMkFN
 MaHI8qcKNo668ZNKjzASO4Cx7/rlGXosA99L2CHFf8fkDtSsACR7Z9j+R0gI6+wXJgoB0p
 JzLTHKJ5jjXlhSNfl1qZGaF4nUTIYmI=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1561796905; a=rsa-sha256; cv=none;
 b=aS7NOHJCe0/wLjsQp/JKk+C5vXBQtBBgehjgvY4Y43sl9b2Q0UNeW0SQnBZDR3oawadsDr
 sUpYqt20fQ9pghQlP+oiqRg4yODv+f4XzanpAWlDb+ybCLyFTg8zIcWc8iTLHZnL+VS74T
 3vogrZS+EbfQTJjr1SZ6eCviM0jjEuI=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
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

The batman-adv commit 0a7733468f95 ("batman-adv: mcast: detect, distribute
and maintain multicast router presence") added support for two new flags
BATADV_MCAST_WANT_NO_RTR4 and BATADV_MCAST_WANT_NO_RTR6. These are
announced in IV_OGM and OGMv2.

The mcast_flags debug table requires support for it to make debugging of
router-to-router multicast problems in networks easier.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 mcast_flags.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/mcast_flags.c b/mcast_flags.c
index a1fdf31..6af544b 100644
--- a/mcast_flags.c
+++ b/mcast_flags.c
@@ -80,10 +80,12 @@ static int mcast_flags_callback(struct nl_msg *msg, void *arg)
 	if (attrs[BATADV_ATTR_MCAST_FLAGS]) {
 		flags = nla_get_u32(attrs[BATADV_ATTR_MCAST_FLAGS]);
 
-		printf("[%c%c%c]\n",
+		printf("[%c%c%c%s%s]\n",
 		       flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES ? 'U' : '.',
 		       flags & BATADV_MCAST_WANT_ALL_IPV4 ? '4' : '.',
-		       flags & BATADV_MCAST_WANT_ALL_IPV6 ? '6' : '.');
+		       flags & BATADV_MCAST_WANT_ALL_IPV6 ? '6' : '.',
+		       !(flags & BATADV_MCAST_WANT_NO_RTR4) ? "R4" : ". ",
+		       !(flags & BATADV_MCAST_WANT_NO_RTR6) ? "R6" : ". ");
 	} else {
 		printf("-\n");
 	}
@@ -124,7 +126,7 @@ static int netlink_print_mcast_flags(struct state *state, char *orig_iface,
         }
 
 	ret = asprintf(&header,
-		"Multicast flags (own flags: [%c%c%c])\n"
+		"Multicast flags (own flags: [%c%c%c%s%s])\n"
 		 "* Bridged [U]\t\t\t\t%c\n"
 		 "* No IGMP/MLD Querier [4/6]:\t\t%c/%c\n"
 		 "* Shadowing IGMP/MLD Querier [4/6]:\t%c/%c\n"
@@ -133,6 +135,8 @@ static int netlink_print_mcast_flags(struct state *state, char *orig_iface,
 		 (mcast_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES) ? 'U' : '.',
 		 (mcast_flags & BATADV_MCAST_WANT_ALL_IPV4) ? '4' : '.',
 		 (mcast_flags & BATADV_MCAST_WANT_ALL_IPV6) ? '6' : '.',
+	         !(mcast_flags & BATADV_MCAST_WANT_NO_RTR4) ? "R4" : ". ",
+	         !(mcast_flags & BATADV_MCAST_WANT_NO_RTR6) ? "R6" : ". ",
 		 bridged ? 'U' : '.',
 		 querier4, querier6, shadowing4, shadowing6,
 		 "Originator", "Flags");
-- 
2.20.1

