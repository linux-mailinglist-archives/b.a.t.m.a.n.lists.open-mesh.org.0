Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id BC72198BC4
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 22 Aug 2019 08:55:45 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 53DA1821A1;
	Thu, 22 Aug 2019 08:55:42 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 0FC908020A
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 22 Aug 2019 08:55:40 +0200 (CEST)
Received: from sven-desktop.home.narfation.org
 (p200300C5971513EC0000000000000E2E.dip0.t-ipconnect.de
 [IPv6:2003:c5:9715:13ec::e2e])
 by dvalin.narfation.org (Postfix) with ESMTPSA id A95701FD99;
 Thu, 22 Aug 2019 06:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1566456939;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=FMn+RfPMeAqBgyZlnmvB4Tl2rHx0PxOqnQpMDgjHen4=;
 b=CoAVau8158DOk9gyr+Fr3oIxndgNyGc434vl/ExE5FZ9Hj3AN4yOfdbGkoGPq3dCMk1RYd
 5nn/0Ev4/69MACdrmFb3jjmsYIFhlfzoDeCT/ce4cgCl7COyIrQaGgZmdj2sSkvQx/sy7i
 17VO0PyVjz9gvu99PdT3xMASamgPA2M=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint] batman-adv: Only read tvlv_len after checking buffer
 size
Date: Thu, 22 Aug 2019 08:55:36 +0200
Message-Id: <20190822065536.18926-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1566456939;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=FMn+RfPMeAqBgyZlnmvB4Tl2rHx0PxOqnQpMDgjHen4=;
 b=o1FsfxrW0baC3BoGXnUO1BasjlAPeh6UXtCfvapQcuKjcxGw2ftWrRF75C1eCv78Ma2Ctu
 jixY+MET11+dSENhY0Yn+LT2mwkkdnnPFmR/mPtDvea1H+nYWeZvzbAjQIl1zwxa/2bkXk
 mant5wpBcRrZG+zA72sbBqyN5vh2Hxk=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1566456939; a=rsa-sha256; cv=none;
 b=WS9lhN3mzjVGOl0D1zh149NS4jBfNtlFJWXxloGfHCWEfUk2fA1vphQD130dyh8NJE75lh
 NzIbyzY7tq0wTaP0gDVz9ndxXAKCxC9U8AJWyaZ4euQPc1mHPrV2sLf0UsJKzqKl5NSSA6
 WEh7kxULzL2IGvObufpT3iZ7oWnphRs=
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
Cc: syzbot+355cab184197dbbfa384@syzkaller.appspotmail.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Multiple batadv_ogm_packet can be stored in an skbuff. The functions
batadv_iv_ogm_send_to_if()/batadv_iv_ogm_receive() use
batadv_iv_ogm_aggr_packet() to check if there is another additional
batadv_ogm_packet in the skb or not before they continue processing the
packet.

The length for such an OGM is BATADV_OGM_HLEN +
batadv_ogm_packet->tvlv_len. The check must first check that at least
BATADV_OGM_HLEN bytes are available before it accesses tvlv_len (which is
part of the header. Otherwise it might try read outside of the currently
available skbuff to get the content of tvlv_len.

Fixes: 0b6aa0d43767 ("batman-adv: tvlv - basic infrastructure")
Reported-by: syzbot+355cab184197dbbfa384@syzkaller.appspotmail.com
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Please check this thoroughly. I just made this change while waiting for
something else to finish. So I have not tested it at all.

Bug for this can be found under https://www.open-mesh.org/issues/398
---
 net/batman-adv/bat_iv_ogm.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 240ed709..61836143 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -277,17 +277,22 @@ static u8 batadv_hop_penalty(u8 tq, const struct batadv_priv *bat_priv)
  * batadv_iv_ogm_aggr_packet() - checks if there is another OGM attached
  * @buff_pos: current position in the skb
  * @packet_len: total length of the skb
- * @tvlv_len: tvlv length of the previously considered OGM
+ * @tvlv_len: tvlv length of the considered OGM
  *
  * Return: true if there is enough space for another OGM, false otherwise.
  */
 static bool batadv_iv_ogm_aggr_packet(int buff_pos, int packet_len,
-				      __be16 tvlv_len)
+				      __be16 *tvlv_len)
 {
 	int next_buff_pos = 0;
 
+	/* check if there is enough space for the header */
 	next_buff_pos += buff_pos + BATADV_OGM_HLEN;
-	next_buff_pos += ntohs(tvlv_len);
+	if (next_buff_pos > packet_len)
+		return false;
+
+	/* check if there is enough space for the optional TVLV */
+	next_buff_pos += ntohs(*tvlv_len);
 
 	return (next_buff_pos <= packet_len) &&
 	       (next_buff_pos <= BATADV_MAX_AGGREGATION_BYTES);
@@ -315,7 +320,7 @@ static void batadv_iv_ogm_send_to_if(struct batadv_forw_packet *forw_packet,
 
 	/* adjust all flags and log packets */
 	while (batadv_iv_ogm_aggr_packet(buff_pos, forw_packet->packet_len,
-					 batadv_ogm_packet->tvlv_len)) {
+					 &batadv_ogm_packet->tvlv_len)) {
 		/* we might have aggregated direct link packets with an
 		 * ordinary base packet
 		 */
@@ -1704,7 +1709,7 @@ static int batadv_iv_ogm_receive(struct sk_buff *skb,
 
 	/* unpack the aggregated packets and process them one by one */
 	while (batadv_iv_ogm_aggr_packet(ogm_offset, skb_headlen(skb),
-					 ogm_packet->tvlv_len)) {
+					 &ogm_packet->tvlv_len)) {
 		batadv_iv_ogm_process(skb, ogm_offset, if_incoming);
 
 		ogm_offset += BATADV_OGM_HLEN;
-- 
2.20.1

