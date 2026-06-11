Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JUWOBy7wKmrNzgMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:28:14 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7EF673F77
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:28:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="RGk6f/mZ";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 97A44842B1
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:28:13 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781198893;
 b=i51CpkiN8lMgWGz8YHEWQa6TLrvJ29bRWM5W08WfeGyGBfCRHykOkhU2blpJJlbsXFmPq
 DbCeO9f7cnaZMApHjmA7Ama6W6lmTwHwbw+eSTEjNIPNxFEyKOzLOhwQPwTvsUVMPfia7wi
 HhHfUPs7sQD80MxebXBK0xoUQ3UNNQ4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781198893; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=iOmEK6s+yR1poRBalc6UhjHGTHO1eVnxw7apiBXLHA0=;
 b=RMQDOMAj8aWdtEMgsA0MtFDu0Gh1hD8WPtAlvvHMxavC6pvZdAgbjMa9xpoNdifTzbSq9
 SB1B086Zmrzz5+hXxMc34c5nX9nh1/GnAHP1b42AYuayYFcN4FQEtxw00jIRYz4v78JX+r5
 4YBoiinT4zo1/VsiCb10TJPg8AADfG0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id C465783CE2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 11 Jun 2026 19:24:40 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781198680;
	b=AqmZbVuZcoMITAT0jmUmW02knlu5HKmkJpX1QuzBnOD5wfbDyrEYAmm8j2het1qf4MZo+t
	Vdv24qk/y92z9EQwC3xBPW5WRbXTVhXFy9bV1zKhMFzgHHjNkMMQCTLZcZDXXFvhP0owMp
	V/07s7x/lhsifEGnxf7tBxITTacfPk4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781198680;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=iOmEK6s+yR1poRBalc6UhjHGTHO1eVnxw7apiBXLHA0=;
	b=w6W2oZ12tkkJnRTSwV7CNAbYNpPHU8nMFcr5ThmCyYJsf3WRGlUX146tRzJ5lH5KsFKSx/
	QadTe2pLiXyTfiOfX0IZbfSYPlNUV4FPR7sXbq6XU6+yoVdh1V27Qq3nE43QRlzuPnztxY
	+4QDoWS/a/VvhHO15frvbNOmzbOkabo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="RGk6f/mZ";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Received: by dvalin.narfation.org (Postfix) id 6EAD420019;
	Thu, 11 Jun 2026 17:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781198680;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iOmEK6s+yR1poRBalc6UhjHGTHO1eVnxw7apiBXLHA0=;
	b=RGk6f/mZy0s/9b1WW/Yol511nKkf9gVLJIDPcm/s2akttWY1SKUmUdRwnhlBauiq1lFBJL
	hRDw0oCsrDkbAS4rFbnF9dEWj32LX/XTOLV8+NxESm14dQWm2tKGulfoW9fGIzyNvzukpy
	MKxnZsK0yW0EPWDEPHitMcyimwJvK3A=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 11 Jun 2026 19:24:09 +0200
Subject: [PATCH batadv v2 4/9] batman-adv: tp_meter: handle overlapping
 packets
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260611-tp-unacked-list-v2-4-47389466c5c1@narfation.org>
References: <20260611-tp-unacked-list-v2-0-47389466c5c1@narfation.org>
In-Reply-To: <20260611-tp-unacked-list-v2-0-47389466c5c1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3864; i=sven@narfation.org;
 h=from:subject:message-id; bh=58RHP0wrkE6ATwG2GyPDQ8FXYmeMq8tUaIu+n7KLqKI=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFla763OJBkwNF/ZG34lZJHP1E1fbv1uerrl8tWDqwOVL
 znKf7Gr7ChlYRDjYpAVU2TZcyX//Gb2t/Kfp308CjOHlQlkCAMXpwBMRNWYkeFOvcCvub+yChZl
 7NvQU9AoonnPxPLuQqMlO13mhiqsdVzOyLB9TszXQ8d6u8w2KAmLbTbv3n79mKSrbsUWa1buSS4
 MLEwA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: GZVKPKTJGWAKFTQNQROT26HYW5QZRKMG
X-Message-ID-Hash: GZVKPKTJGWAKFTQNQROT26HYW5QZRKMG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GZVKPKTJGWAKFTQNQROT26HYW5QZRKMG/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BC7EF673F77

If the size of the packets would change during the transmission, it could
happen that some retries of packets are overlapping. In this case, precise
comparisons of sequence numbers by the receiver would be wrong. It is then
necessary to check if the start sequence number to the end sequence number
("seqno + length") would contain a new range.

If this is the case then this is enough to accept this packet. In all other
cases, the packet still has to be dropped (and not acked).

Fixes: 98d7a766b645 ("batman-adv: throughput meter implementation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 055aa1ee..c2eea7db 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -1392,7 +1392,8 @@ static int batadv_tp_send_ack(struct batadv_priv *bat_priv, const u8 *dst,
 /**
  * batadv_tp_handle_out_of_order() - store an out of order packet
  * @tp_vars: the private data of the current TP meter session
- * @skb: the buffer containing the received packet
+ * @seqno: sequence number of new received packet
+ * @payload_len: length of the received packet
  *
  * Store the out of order packet in the unacked list for late processing. This
  * packets are kept in this list so that they can be ACKed at once as soon as
@@ -1401,22 +1402,17 @@ static int batadv_tp_send_ack(struct batadv_priv *bat_priv, const u8 *dst,
  * Return: true if the packed has been successfully processed, false otherwise
  */
 static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
-					  const struct sk_buff *skb)
+					  u32 seqno, u32 payload_len)
 	__must_hold(&tp_vars->common.unacked_lock)
 {
-	const struct batadv_icmp_tp_packet *icmp;
 	struct batadv_tp_unacked *un, *new;
-	u32 payload_len;
 	bool added = false;
 
 	new = kmalloc_obj(*new, GFP_ATOMIC);
 	if (unlikely(!new))
 		return false;
 
-	icmp = (struct batadv_icmp_tp_packet *)skb->data;
-
-	new->seqno = ntohl(icmp->seqno);
-	payload_len = skb->len - sizeof(struct batadv_unicast_packet);
+	new->seqno = seqno;
 	new->len = payload_len;
 
 	/* if the list is empty immediately attach this new object */
@@ -1583,7 +1579,7 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 {
 	const struct batadv_icmp_tp_packet *icmp;
 	struct batadv_tp_receiver *tp_vars;
-	size_t packet_size;
+	u32 payload_len;
 	u32 to_ack;
 	u32 seqno;
 
@@ -1618,15 +1614,17 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 	/* if the packet is a duplicate, it may be the case that an ACK has been
 	 * lost. Resend the ACK
 	 */
-	if (batadv_seq_before(seqno, tp_vars->last_recv))
+	payload_len = skb->len - sizeof(struct batadv_unicast_packet);
+	to_ack = seqno + payload_len;
+	if (batadv_seq_before(to_ack, tp_vars->last_recv))
 		goto send_ack;
 
 	/* if the packet is out of order enqueue it */
-	if (ntohl(icmp->seqno) != tp_vars->last_recv) {
+	if (batadv_seq_before(tp_vars->last_recv, seqno)) {
 		/* exit immediately (and do not send any ACK) if the packet has
 		 * not been enqueued correctly
 		 */
-		if (!batadv_tp_handle_out_of_order(tp_vars, skb)) {
+		if (!batadv_tp_handle_out_of_order(tp_vars, seqno, payload_len)) {
 			spin_unlock_bh(&tp_vars->common.unacked_lock);
 			goto out;
 		}
@@ -1636,8 +1634,7 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 	}
 
 	/* if everything was fine count the ACKed bytes */
-	packet_size = skb->len - sizeof(struct batadv_unicast_packet);
-	tp_vars->last_recv += packet_size;
+	tp_vars->last_recv = to_ack;
 
 	/* check if this ordered message filled a gap.... */
 	batadv_tp_ack_unordered(tp_vars);

-- 
2.47.3

