Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6585A995
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 29 Jun 2019 10:28:39 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 851BE826FE;
	Sat, 29 Jun 2019 10:28:28 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 8895D80A11
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 29 Jun 2019 10:28:23 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 21205110115;
 Sat, 29 Jun 2019 10:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1561796903;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=xaoG+1z5bmyHuo/2rdCV1wGJG1Rko59PBV3HHGsY4GA=;
 b=as0oG0/BegRF3wbovrOx0/C3mX6UL0d37QsPtLAKXwnVumGXW0E750YZ5QaAxv8YjwQoDR
 jcCNb6HfnpfMYLmOzhPuvY81vCx/Mtj+mipQcDPApwShvO8b26yzoNgBKjCT41uRjDwBrO
 bT2r16kPS+HemAe5afENZbEPmifoRzI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/2] batctl: tcpdump: Add support for MCASTv2 RTR(4|6) flags
Date: Sat, 29 Jun 2019 10:28:17 +0200
Message-Id: <20190629082818.29466-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1561796903;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=xaoG+1z5bmyHuo/2rdCV1wGJG1Rko59PBV3HHGsY4GA=;
 b=nL06M5Kr+qoSSprBZM8yB8BWw4ByKKSh9e3+YaOfXHaWnDfctsY6lY8zbWnaxV71GV6odG
 3Qzhr/ckChJSUDzHt1nKZXswahfcAv0we+nkmQxLlxRyHSFmWXyHkCaDd4qdGv19EmJ0i1
 Y9vz+YX3+5/kZ6iKHdY9m7OHIWcT36A=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1561796903; a=rsa-sha256; cv=none;
 b=e6u4xDSBLkOQyz2/NawjFW62Nr53oThapOsWiWHytp6CRz9MjDbkEJiLTLB/6CFhD7GvX9
 3w5KsiX2wMPXKxqo35jXp0pKwsz5Qx8TN/cIZ1Agzv7mCXsC4dA7enxs/fgx13QE5qpKcG
 NzRhufm8LSlY0lwOW6wNlYaSb7vHfFw=
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

batctl's tcpdump requires support for it to make debugging of
router-to-router multicast problems in networks easier.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/tcpdump.c b/tcpdump.c
index 158b82e..0e2ae8e 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -230,10 +230,12 @@ static void batctl_tvlv_parse_mcast_v2(void *buff, ssize_t buff_len)
 
 	flags = tvlv->flags;
 
-	printf("\tTVLV MCASTv2: [%c%c%c]\n",
+	printf("\tTVLV MCASTv2: [%c%c%c%s%s]\n",
 	       flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES ? 'U' : '.',
 	       flags & BATADV_MCAST_WANT_ALL_IPV4 ? '4' : '.',
-	       flags & BATADV_MCAST_WANT_ALL_IPV6 ? '6' : '.');
+	       flags & BATADV_MCAST_WANT_ALL_IPV6 ? '6' : '.',
+	       !(flags & BATADV_MCAST_WANT_NO_RTR4) ? "R4" : ". ",
+	       !(flags & BATADV_MCAST_WANT_NO_RTR6) ? "R6" : ". ");
 }
 
 typedef void (*batctl_tvlv_parser_t)(void *buff, ssize_t buff_len);
-- 
2.20.1

