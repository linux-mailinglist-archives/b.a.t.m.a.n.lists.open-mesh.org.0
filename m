Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id ECECC9AF9D
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 23 Aug 2019 14:35:19 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C040D823C1;
	Fri, 23 Aug 2019 14:35:04 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 7B1858129D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 23 Aug 2019 14:35:00 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f900:6112:16df:1e13:517c])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 250C31FE29;
 Fri, 23 Aug 2019 12:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1566563700;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=61318wGHRRboaebwob1NvttQO48Un5z1nDa7sAFGl9k=;
 b=ZoDepX0edQaUfP9spKoSkl12asq9iHEPIKA87k4p0c+TIPY7jD/k4EMnbEsAZiRvXMiIS7
 xtrl8MChhlTkYJbxIm2Ym0zGhRKWYp8N31X61BFo5kh3jZxHaFrWNMhwrva0eBIe2SkoZs
 419JHL5sBNK1na5kymiWyplObp9zCP0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 2/2] batman-adv: Only read OGM2 tvlv_len after buffer len
 check
Date: Fri, 23 Aug 2019 14:34:28 +0200
Message-Id: <20190823123428.8076-2-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190823123428.8076-1-sven@narfation.org>
References: <20190823123428.8076-1-sven@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1566563700;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=61318wGHRRboaebwob1NvttQO48Un5z1nDa7sAFGl9k=;
 b=fhJuIEyfh5e+yhztjOG0gIbXU+Jsz1Z2Ma1iPWkpj/PF6NdDdR48SlxW3Hwinhj/s3xgQr
 YeePv5MWs9SzGDlUo8Y6sFswRmmUXc6nk27gAg39FdBm+038uz0VdhFGI+9DQilUJdzbqv
 cOpqxzPUFrErjy76qr8Z3qWQdtsIjm4=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1566563700; a=rsa-sha256; cv=none;
 b=BmcAX0VJ4mwg8zeBZOFNMAD5GNqolo/yX4vjxbaiHJfmZGOfgi0nPgbDkhpJ/OF1v7Db7V
 dbq8ghq3o0/ja8quMWwk2iR1/w7uVK0UgWWODjH/KGunY5SV3dJKUAhZZQooYqdebpohTd
 N3vtnFTmpjTAOUnBJyImrA3rKz7rv4Y=
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

Multiple batadv_ogm2_packet can be stored in an skbuff. The functions
batadv_v_ogm_send_to_if() uses batadv_v_ogm_aggr_packet() to check if there
is another additional batadv_ogm2_packet in the skb or not before they
continue processing the packet.

The length for such an OGM2 is BATADV_OGM2_HLEN +
batadv_ogm2_packet->tvlv_len. The check must first check that at least
BATADV_OGM2_HLEN bytes are available before it accesses tvlv_len (which is
part of the header. Otherwise it might try read outside of the currently
available skbuff to get the content of tvlv_len.

Fixes: 667996ebeab4 ("batman-adv: OGMv2 - implement originators logic")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_v_ogm.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 319249f0..dc4f7430 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -806,17 +806,23 @@ batadv_v_ogm_process_per_outif(struct batadv_priv *bat_priv,
  * batadv_v_ogm_aggr_packet() - checks if there is another OGM aggregated
  * @buff_pos: current position in the skb
  * @packet_len: total length of the skb
- * @tvlv_len: tvlv length of the previously considered OGM
+ * @ogm2_packet: potential OGM2 in buffer
  *
  * Return: true if there is enough space for another OGM, false otherwise.
  */
-static bool batadv_v_ogm_aggr_packet(int buff_pos, int packet_len,
-				     __be16 tvlv_len)
+static bool
+batadv_v_ogm_aggr_packet(int buff_pos, int packet_len,
+			 const struct batadv_ogm2_packet *ogm2_packet)
 {
 	int next_buff_pos = 0;
 
-	next_buff_pos += buff_pos + BATADV_OGM2_HLEN;
-	next_buff_pos += ntohs(tvlv_len);
+	/* check if there is enough space for the header */
+	next_buff_pos += buff_pos + sizeof(*ogm2_packet);
+	if (next_buff_pos > packet_len)
+		return false;
+
+	/* check if there is enough space for the optional TVLV */
+	next_buff_pos += ntohs(ogm2_packet->tvlv_len);
 
 	return (next_buff_pos <= packet_len) &&
 	       (next_buff_pos <= BATADV_MAX_AGGREGATION_BYTES);
@@ -993,7 +999,7 @@ int batadv_v_ogm_packet_recv(struct sk_buff *skb,
 	ogm_packet = (struct batadv_ogm2_packet *)skb->data;
 
 	while (batadv_v_ogm_aggr_packet(ogm_offset, skb_headlen(skb),
-					ogm_packet->tvlv_len)) {
+					ogm_packet)) {
 		batadv_v_ogm_process(skb, ogm_offset, if_incoming);
 
 		ogm_offset += BATADV_OGM2_HLEN;
-- 
2.20.1

