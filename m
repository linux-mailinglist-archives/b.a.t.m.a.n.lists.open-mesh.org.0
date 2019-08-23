Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5631A9AF93
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 23 Aug 2019 14:35:09 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0832582197;
	Fri, 23 Aug 2019 14:35:03 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id A9E5F80BF9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 23 Aug 2019 14:34:57 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f900:6112:16df:1e13:517c])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 37D611FE29;
 Fri, 23 Aug 2019 12:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1566563697;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=jqMDwbC+gu82hMvu9y9Ns1wc9BHHu7/sGvY/gDsN7sU=;
 b=lCtv7bFNGdTXWsvFiVvFuxP8JPZVxEPIEd+4FRdhrEPz3pBC9rKPQ85yRxdXY7EHAJSSOi
 Z4nOOEPAw6U3s+BOZSlD8dVKI4uvb9ZWhArNVjmUFI2yHAU/bEZWCRGWiRviTypcL0SOBX
 6sDv1OgLk2iotuZqI9XynwYwdLRxWsE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 1/2] batman-adv: Only read OGM tvlv_len after buffer len
 check
Date: Fri, 23 Aug 2019 14:34:27 +0200
Message-Id: <20190823123428.8076-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1566563697;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=jqMDwbC+gu82hMvu9y9Ns1wc9BHHu7/sGvY/gDsN7sU=;
 b=D4K6IaVPC3h9BumZDhjRpjIygaXS3v4vjZkl4jJI61vNtUfboNRJEgzxhal6mYnA2/9Z2/
 x+8oEtDO7SsnzH4f9LZr+HV9kSdw4fYP4nwP/vWDW3VTooVexROvm4DAr3r4/FteTU8omA
 NF+pfDbZJ5aDxWZVaJt/qBPNvDgkLa0=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1566563697; a=rsa-sha256; cv=none;
 b=dP20pId4GSiK9TKMIMdPE7UZjQPetx9HzSDnUw78Z9AKZtlfQmPHvGDzSsGd4BcvMsTvkx
 j5UiDA9j/oVn8BIOfQCC4ZcDss8ND8lwRFfYa8wOXJgnoY/Op7WVfhXWv+PJGelaUc1qPF
 7pc1b7EvsMxa9743yzzFDrEOdtdUI5M=
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
v2:

* change __be16 pointer parameter to const const struct batadv_ogm_packet

 net/batman-adv/bat_iv_ogm.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 240ed709..d78938e3 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -277,17 +277,23 @@ static u8 batadv_hop_penalty(u8 tq, const struct batadv_priv *bat_priv)
  * batadv_iv_ogm_aggr_packet() - checks if there is another OGM attached
  * @buff_pos: current position in the skb
  * @packet_len: total length of the skb
- * @tvlv_len: tvlv length of the previously considered OGM
+ * @ogm_packet: potential OGM in buffer
  *
  * Return: true if there is enough space for another OGM, false otherwise.
  */
-static bool batadv_iv_ogm_aggr_packet(int buff_pos, int packet_len,
-				      __be16 tvlv_len)
+static bool
+batadv_iv_ogm_aggr_packet(int buff_pos, int packet_len,
+			  const struct batadv_ogm_packet *ogm_packet)
 {
 	int next_buff_pos = 0;
 
-	next_buff_pos += buff_pos + BATADV_OGM_HLEN;
-	next_buff_pos += ntohs(tvlv_len);
+	/* check if there is enough space for the header */
+	next_buff_pos += buff_pos + sizeof(*ogm_packet);
+	if (next_buff_pos > packet_len)
+		return false;
+
+	/* check if there is enough space for the optional TVLV */
+	next_buff_pos += ntohs(ogm_packet->tvlv_len);
 
 	return (next_buff_pos <= packet_len) &&
 	       (next_buff_pos <= BATADV_MAX_AGGREGATION_BYTES);
@@ -315,7 +321,7 @@ static void batadv_iv_ogm_send_to_if(struct batadv_forw_packet *forw_packet,
 
 	/* adjust all flags and log packets */
 	while (batadv_iv_ogm_aggr_packet(buff_pos, forw_packet->packet_len,
-					 batadv_ogm_packet->tvlv_len)) {
+					 batadv_ogm_packet)) {
 		/* we might have aggregated direct link packets with an
 		 * ordinary base packet
 		 */
@@ -1704,7 +1710,7 @@ static int batadv_iv_ogm_receive(struct sk_buff *skb,
 
 	/* unpack the aggregated packets and process them one by one */
 	while (batadv_iv_ogm_aggr_packet(ogm_offset, skb_headlen(skb),
-					 ogm_packet->tvlv_len)) {
+					 ogm_packet)) {
 		batadv_iv_ogm_process(skb, ogm_offset, if_incoming);
 
 		ogm_offset += BATADV_OGM_HLEN;
-- 
2.20.1

