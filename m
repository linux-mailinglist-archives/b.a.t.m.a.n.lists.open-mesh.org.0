Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB873A824
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 Jun 2019 18:57:22 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 65E2C8266E;
	Sun,  9 Jun 2019 18:57:16 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 03F3482540
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 Jun 2019 18:57:12 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 07FB21100D0;
 Sun,  9 Jun 2019 18:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560099431;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JjNXFA8zWg1IHa5NTP+hN0Wm6uNUnF/RnL7cAoHkeUI=;
 b=Krgi52okNW/G7qhNnx3M7Tta1sPzi2fHMz0Uc51t+7/R2b4ogHKlRpCad97n8UGOU4Vb1E
 ptQFhTkRVqHLcKXIBYbcF/3xmc+HCUKyOexl8mJ/Ltieuh4ajLecEFf2k3LmmKlHqDRp77
 EDV6C2eQ9IcBvU2q7yDZM0yJllg+29E=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/3] batctl: tcpdump: Add support for unicast fragmentation
Date: Sun,  9 Jun 2019 18:56:51 +0200
Message-Id: <20190609165652.12841-3-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190609165652.12841-1-sven@narfation.org>
References: <20190609165652.12841-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560099431;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JjNXFA8zWg1IHa5NTP+hN0Wm6uNUnF/RnL7cAoHkeUI=;
 b=PHZT69dqF5sdR6raoaA19koKMnbRJHOB1GVNx1cTcua5qghhX0Zm5n0WtnosqNbbhKgJKz
 jlA3x7Cue+AAgCrSgZQjHBGC+ywmYMTWmOG6IWUuuqhxoabmedAfHuK2niqOH+fbzKCX3z
 vt1mWLNU0mHqorD743OJFfd3sb2kleA=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560099431; a=rsa-sha256; cv=none;
 b=OcImqairPJoLbyY20FvimutdSV623LzMceBmR+DkNCpRByQ2DnCoPD6LLd6Ry0cUEIWLX3
 0TM3MbHWFBHsAJ54VTBJGHgoJJocOeRjM6X49CLNco2KEY392WAQERwfCRqvCtYRHyncHK
 AgljdfzSDdixg3IHFXqPvTwAcgh6868=
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
Cc: =?UTF-8?q?Martin=20Hundeb=C3=B8ll?= <martin@hundeboll.net>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

The support for unicast fragmentation was implemented in commit
9b3eab61754d ("batman-adv: Receive fragmented packets and merge"). The
support to identify such packets by batctl's tcpdump was never implemented.

This minimal implementation allows to identify these packets but is not
able to reassemble the packets. Wireshark should be used when this advanced
feature is required.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Cc: Martin Hundebøll <martin@hundeboll.net>

 tcpdump.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/tcpdump.c b/tcpdump.c
index 9153fc4..7d04dd5 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -930,6 +930,30 @@ static void dump_batman_ucast(unsigned char *packet_buff, ssize_t buff_len, int
 		      read_opt, time_printed);
 }
 
+static void dump_batman_ucast_frag(unsigned char *packet_buff, ssize_t buff_len, int read_opt, int time_printed)
+{
+	struct batadv_frag_packet *frag_packet;
+	struct ether_header *ether_header;
+
+	LEN_CHECK((size_t)buff_len - sizeof(*ether_header),
+		  sizeof(*frag_packet), "BAT UCAST FRAG");
+
+	ether_header = (struct ether_header *)packet_buff;
+	frag_packet = (struct batadv_frag_packet *)(packet_buff + sizeof(*ether_header));
+
+	if (!time_printed)
+		time_printed = print_time();
+
+	printf("BAT %s > ",
+	       get_name_by_macaddr((struct ether_addr *)ether_header->ether_shost,
+				   read_opt));
+
+	printf("%s: UCAST FRAG, seqno %d, no %d, ttl %hhu\n",
+	       get_name_by_macaddr((struct ether_addr *)frag_packet->dest,
+				   read_opt),
+	       frag_packet->seqno, frag_packet->no, frag_packet->ttl);
+}
+
 static void dump_batman_bcast(unsigned char *packet_buff, ssize_t buff_len, int read_opt, int time_printed)
 {
 	struct ether_header *ether_header;
@@ -1041,6 +1065,10 @@ static void parse_eth_hdr(unsigned char *packet_buff, ssize_t buff_len, int read
 			if (dump_level & DUMP_TYPE_BATUCAST)
 				dump_batman_ucast(packet_buff, buff_len, read_opt, time_printed);
 			break;
+		case BATADV_UNICAST_FRAG:
+			if (dump_level & DUMP_TYPE_BATFRAG)
+				dump_batman_ucast_frag(packet_buff, buff_len, read_opt, time_printed);
+			break;
 		case BATADV_BCAST:
 			if (dump_level & DUMP_TYPE_BATBCAST)
 				dump_batman_bcast(packet_buff, buff_len, read_opt, time_printed);
-- 
2.20.1

