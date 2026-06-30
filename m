Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yn8eLDjPQ2qZiwoAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:14:16 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF246E549D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:14:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=F1SjhFgo;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 37CE480CFF
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:14:16 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782828856;
 b=Icr7fbT3MvXsg0DQReTqV2I5Iv2215L+M/8Pnyx6Z2Gc5n/PNwa4rYzhzW9LniaeiVHWQ
 vKbg445NI8UWursDjURcnRJT1B+t/Kon1aXxfm2soiJlJy9LnJr4NzWtQKTCjUziYO705vf
 U3BzIE2D8hRhOChxk/Bz8krjdkLS/ls=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782828856; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=q3ZGFfO0pQVo955cy4QHxZ8eqU7mZNLw3Z/Xfs0q5Gs=;
 b=pTR8Z2E8hH3gukrHlqmoOPSoCGVU2yVhhai3fyDY97nsFG5Y1M6piTJYVcjSKFRGa0V5T
 yYTb8ySz1Hx5NI+L30hK3XoIyxfZGbJg4wZCOCP7ypFcWkjYU91ms7L+UEkFOKfMzKq4iG/
 jfKJ36QXLCJRBjrAkU3PzZCZ+By9ozg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3DDE58110E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2026 16:06:33 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782828393;
	b=qJuDU7ZtTuby7Hd0fUl1Mtc6kGAtBS+6DTJhUXbtfUgwAL6d2EvWDdFnlj33lo4qL9cR66
	FuRCuW2cpfyGFbwKOEjnv3LMiIZ0p71XGjCvx24pDIXXfjgWkqDSjz+zLc7SelLhHcjfVT
	qRzMu6mdSZTaTV+cCyA5rgokL3n8hMQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782828393;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=q3ZGFfO0pQVo955cy4QHxZ8eqU7mZNLw3Z/Xfs0q5Gs=;
	b=NKnsbk17ONvQcKpKkO1g9qlRc7FAEga6Kc9uwm52yIlkLEc9Z13kfQNIEVMuk130FQhyFo
	B+KY4Wb9kYILJeVx2Ndv2WY1ZukIEoyXUhslwxpk7jVPaotS01rpCsJjEIws0WlRlyqbwD
	Co8rOgJYNXlqF++Za3F1o6ptJm0aeRk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=F1SjhFgo;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1782828392;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q3ZGFfO0pQVo955cy4QHxZ8eqU7mZNLw3Z/Xfs0q5Gs=;
	b=F1SjhFgorajQuLw1hBE/7t6k8QR1AH1GMD1zBCegXqAddqVw20wPiQ0s1cZENV+mdzuavJ
	pzFCBWFAJtgNnk+aZJcXzHHMFW+/QiX4VMlYsTiGLrv6V0wwBqsoqJMtrFxazHOcRU8Med
	41WHxV6P+Lcb9hV6HK0Bx6OL4TG1cxfzeO/T1cHDQxzBkjSSAUd7LT1JmqnY6lSs5QAOtk
	PKPQ23+dDEKx4VZVGGnDqc0dZpk5EVJ6J3ShD41t7dEZLa61Orrsaiy2vSYIqdKfr7KOlK
	6lqYEMnpqcLPYXbJFU8Tuh38IfgaCtLobqMDICvH0TCJ06QXNQa2v2VTyC9Fhg==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 10/15] batman-adv: tvlv: extract tvlv header iterator
Date: Tue, 30 Jun 2026 16:06:18 +0200
Message-ID: <20260630140623.88431-11-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260630140623.88431-1-sw@simonwunderlich.de>
References: <20260630140623.88431-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: VCO6MKTSJZSONOZZ5EYYMZSOWV2BJGJT
X-Message-ID-Hash: VCO6MKTSJZSONOZZ5EYYMZSOWV2BJGJT
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VCO6MKTSJZSONOZZ5EYYMZSOWV2BJGJT/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:from_mime,lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:email];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5BF246E549D

From: Sven Eckelmann <sven@narfation.org>

batadv_tvlv_containers_contain() and batadv_tvlv_containers_process() are
using the same code to iterate through the TVLV containers. To simplify the
code, extract the shared portions of both functions.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/tvlv.c | 86 +++++++++++++++++++++++++------------------
 1 file changed, 51 insertions(+), 35 deletions(-)

diff --git a/net/batman-adv/tvlv.c b/net/batman-adv/tvlv.c
index 1c9fb21985f6a..49bf2ed9ecdc3 100644
--- a/net/batman-adv/tvlv.c
+++ b/net/batman-adv/tvlv.c
@@ -442,6 +442,54 @@ static int batadv_tvlv_call_handler(struct batadv_priv *bat_priv,
 	return NET_RX_SUCCESS;
 }
 
+/**
+ * batadv_tvlv_hdr_next() - move a tvlv buffer cursor to the next container
+ * @tvlv_value: cursor into the tvlv buffer, advanced past the returned
+ *  container's content on success
+ * @tvlv_value_len: remaining length of the tvlv buffer, reduced by the returned
+ *  container's size on success
+ *
+ * Parses a single container header at the current cursor position and, if a
+ * complete container is available, advances the cursor and remaining length
+ * past it. The returned header stays valid; its content is located at
+ * (returned header + 1) and is ntohs(hdr->len) bytes long.
+ *
+ * Return: pointer to the next tvlv container header, or NULL if no further
+ * complete container is present in the buffer.
+ */
+static struct batadv_tvlv_hdr *batadv_tvlv_hdr_next(void **tvlv_value, u16 *tvlv_value_len)
+{
+	struct batadv_tvlv_hdr *tvlv_hdr;
+	u16 tvlv_value_cont_len;
+	void *tvlv_value_cont;
+	u16 tvlv_len;
+
+	tvlv_value_cont = *tvlv_value;
+	tvlv_len = *tvlv_value_len;
+
+	if (tvlv_len < sizeof(*tvlv_hdr))
+		return NULL;
+
+	tvlv_hdr = tvlv_value_cont;
+	tvlv_value_cont_len = ntohs(tvlv_hdr->len);
+	tvlv_value_cont = tvlv_hdr + 1;
+	tvlv_len -= sizeof(*tvlv_hdr);
+
+	if (tvlv_value_cont_len > tvlv_len)
+		return NULL;
+
+	/* the next tvlv header is accessed assuming (at least) 2-byte
+	 * alignment, so it must start at an even offset.
+	 */
+	if (tvlv_value_cont_len & 1)
+		return NULL;
+
+	*tvlv_value = (u8 *)tvlv_value_cont + tvlv_value_cont_len;
+	*tvlv_value_len = tvlv_len - tvlv_value_cont_len;
+
+	return tvlv_hdr;
+}
+
 /**
  * batadv_tvlv_containers_contain() - check if a tvlv buffer holds a container
  * @tvlv_value: tvlv content
@@ -457,28 +505,10 @@ static bool batadv_tvlv_containers_contain(void *tvlv_value,
 					   u8 version)
 {
 	struct batadv_tvlv_hdr *tvlv_hdr;
-	u16 tvlv_value_cont_len;
-
-	while (tvlv_value_len >= sizeof(*tvlv_hdr)) {
-		tvlv_hdr = tvlv_value;
-		tvlv_value_cont_len = ntohs(tvlv_hdr->len);
-		tvlv_value = tvlv_hdr + 1;
-		tvlv_value_len -= sizeof(*tvlv_hdr);
-
-		if (tvlv_value_cont_len > tvlv_value_len)
-			break;
-
-		/* the next tvlv header is accessed assuming (at least) 2-byte
-		 * alignment, so it must start at an even offset.
-		 */
-		if (tvlv_value_cont_len & 1)
-			break;
 
+	while ((tvlv_hdr = batadv_tvlv_hdr_next(&tvlv_value, &tvlv_value_len))) {
 		if (tvlv_hdr->type == type && tvlv_hdr->version == version)
 			return true;
-
-		tvlv_value = (u8 *)tvlv_value + tvlv_value_cont_len;
-		tvlv_value_len -= tvlv_value_cont_len;
 	}
 
 	return false;
@@ -511,20 +541,8 @@ int batadv_tvlv_containers_process(struct batadv_priv *bat_priv,
 	u8 cifnotfound = BATADV_TVLV_HANDLER_OGM_CIFNOTFND;
 	int ret = NET_RX_SUCCESS;
 
-	while (tvlv_value_len >= sizeof(*tvlv_hdr)) {
-		tvlv_hdr = tvlv_value;
+	while ((tvlv_hdr = batadv_tvlv_hdr_next(&tvlv_value, &tvlv_value_len))) {
 		tvlv_value_cont_len = ntohs(tvlv_hdr->len);
-		tvlv_value = tvlv_hdr + 1;
-		tvlv_value_len -= sizeof(*tvlv_hdr);
-
-		if (tvlv_value_cont_len > tvlv_value_len)
-			break;
-
-		/* the next tvlv header is accessed assuming (at least) 2-byte
-		 * alignment, so it must start at an even offset.
-		 */
-		if (tvlv_value_cont_len & 1)
-			break;
 
 		tvlv_handler = batadv_tvlv_handler_get(bat_priv,
 						       tvlv_hdr->type,
@@ -532,11 +550,9 @@ int batadv_tvlv_containers_process(struct batadv_priv *bat_priv,
 
 		ret |= batadv_tvlv_call_handler(bat_priv, tvlv_handler,
 						packet_type, orig_node, skb,
-						tvlv_value,
+						tvlv_hdr + 1,
 						tvlv_value_cont_len);
 		batadv_tvlv_handler_put(tvlv_handler);
-		tvlv_value = (u8 *)tvlv_value + tvlv_value_cont_len;
-		tvlv_value_len -= tvlv_value_cont_len;
 	}
 
 	if (packet_type != BATADV_IV_OGM &&
-- 
2.47.3

