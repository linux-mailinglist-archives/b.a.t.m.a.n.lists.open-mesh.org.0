Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5573A821
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 Jun 2019 18:57:15 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id E8716824D3;
	Sun,  9 Jun 2019 18:57:06 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 2B9B3821DA
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 Jun 2019 18:57:04 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id CC9DD1100D0;
 Sun,  9 Jun 2019 18:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560099421;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kXoLtvJNISlefRQ1aQfx7ffdnhPYbLQ0VeqAQN5TVQg=;
 b=on0rM7d36m5gLm1ipiClvNbBLYzeSkv09qDpkIksUyNy6rmXraLnWsVf9TPPlJVNA2c4cC
 hxF6B0OVG3eDy99RGRRAyYdLvIPACA+Ce7Vh8xWo2PA3EorIM975aqLI120EfQX2BMcpcC
 5zyEhlWRQV0vjh/xJ0Y1FlG9moH694c=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/3] batctl: tcpdump: Add support for MCAST TVLV
Date: Sun,  9 Jun 2019 18:56:50 +0200
Message-Id: <20190609165652.12841-2-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190609165652.12841-1-sven@narfation.org>
References: <20190609165652.12841-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560099423;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kXoLtvJNISlefRQ1aQfx7ffdnhPYbLQ0VeqAQN5TVQg=;
 b=qw5FQ0ZQ5Y3buhNH3qZshem6xEQ9R9yaLJUI2C0baiQ2MXK+vbDVDK/Ua7x0GbEGJUvOkn
 i1S/k0dOKZKODjleUb20wuXWM/nfcIpWa4nw5c11DT8fGNyt9vyyb8pwF4GjL16hQ1UIer
 gecPy+gHSvpIJWqMSwmnmD1HwmOTEEg=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560099423; a=rsa-sha256; cv=none;
 b=q8o5vWnevtZaNzSPfYhL4s/q7wi46NrKxSeMjl5wqKQF5oVEPW53pCrmGipQSxqT/ew8ii
 eQIB+guEmjxalRdMxIFIDEDODTzu+LeqRhRAukgZxX846ciQdsTIjO0b/PSwqk7xu6mIb3
 duamnD16lITtk7msUbct28MuY3s4gbc=
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

The multicast support in batman-adv was introduced in commit 77ec494490d6
("batman-adv: Announce new capability via multicast TVLV") but the tcpdump
parser was not updated to parse this TVLV container.

The parser requires support of parsing the current TVLV container (v2) and
the pre-bridging implementation (v1) to correctly show all TVLVs of OGMs
(and related packets).

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Cc: Linus Lüssing <linus.luessing@c0d3.blue>

 tcpdump.c | 49 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/tcpdump.c b/tcpdump.c
index 8106a64..9153fc4 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -196,6 +196,45 @@ static void batctl_tvlv_parse_roam_v1(void *buff, ssize_t buff_len)
 	       BATADV_PRINT_VID(ntohs(tvlv->vid)));
 }
 
+static void batctl_tvlv_parse_mcast_v1(void *buff __maybe_unused,
+				       ssize_t buff_len)
+{
+	struct batadv_tvlv_mcast_data *tvlv = buff;
+	uint8_t flags;
+
+	if (buff_len != sizeof(*tvlv)) {
+		fprintf(stderr, "Warning - dropping received %s packet as it is not the correct size (%zu): %zu\n",
+			"TVLV MCASTv1", sizeof(*tvlv), buff_len);
+		return;
+	}
+
+	flags = tvlv->flags;
+
+	printf("\tTVLV MCASTv1: [%c%c%c]\n",
+	       flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES ? 'U' : '.',
+	       flags & BATADV_MCAST_WANT_ALL_IPV4 ? '4' : '.',
+	       flags & BATADV_MCAST_WANT_ALL_IPV6 ? '6' : '.');
+}
+
+static void batctl_tvlv_parse_mcast_v2(void *buff, ssize_t buff_len)
+{
+	struct batadv_tvlv_mcast_data *tvlv = buff;
+	uint8_t flags;
+
+	if (buff_len != sizeof(*tvlv)) {
+		fprintf(stderr, "Warning - dropping received %s packet as it is not the correct size (%zu): %zu\n",
+			"TVLV MCASTv2", sizeof(*tvlv), buff_len);
+		return;
+	}
+
+	flags = tvlv->flags;
+
+	printf("\tTVLV MCASTv2: [%c%c%c]\n",
+	       flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES ? 'U' : '.',
+	       flags & BATADV_MCAST_WANT_ALL_IPV4 ? '4' : '.',
+	       flags & BATADV_MCAST_WANT_ALL_IPV6 ? '6' : '.');
+}
+
 typedef void (*batctl_tvlv_parser_t)(void *buff, ssize_t buff_len);
 
 static batctl_tvlv_parser_t tvlv_parser_get(uint8_t type, uint8_t version)
@@ -241,6 +280,16 @@ static batctl_tvlv_parser_t tvlv_parser_get(uint8_t type, uint8_t version)
 			return NULL;
 		}
 
+	case BATADV_TVLV_MCAST:
+		switch (version) {
+		case 1:
+			return batctl_tvlv_parse_mcast_v1;
+		case 2:
+			return batctl_tvlv_parse_mcast_v2;
+		default:
+			return NULL;
+		}
+
 	default:
 		return NULL;
 	}
-- 
2.20.1

