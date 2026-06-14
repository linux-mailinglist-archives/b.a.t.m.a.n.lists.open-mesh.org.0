Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KZmLAOyCLmqyxwQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 14 Jun 2026 12:31:08 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C65680DB2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 14 Jun 2026 12:31:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nQZp1VrY;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 450DD841DC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 14 Jun 2026 12:31:07 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781433067;
 b=luvqyBqFd4zuz7Qcz+k2x5e4pSqcnL2Y8Za1M1+UVY2HBkVmtVrXCu26JxeHaK4fUEEa2
 srVpvgJ7rpuuXoJq/n5KOPA+o1mk8Gm/gMWet6P8SqHXR2R6FmuW7Et2b/ikpFeUEDQb+Ue
 mDmG4BRNXgcEE44iF2f9UE8KiQECocc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781433067; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=bBha+afNM1QRfDKO1ERQwkUACutpG2kUt7HgjSnBHKs=;
 b=RPvILoY2R770FU1QPFByGeCfSuIfW+5HOQX1WAiJ2NuaE4iRjUngW6LnQiqR06+C8Xbbd
 MfQpO5jZrGhgxTZ0r9P2316dsuz/WtxmSa+vpNdpWuPD7zfPwZ2sK7c6IyTILuM4YdWUrdm
 4WZM5LgUWOIS9Feiy5rSh7dfVYZFKvs=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 82BC0808FA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 14 Jun 2026 12:30:55 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781433060;
	b=yxriPlMe54QaQBDn8qJV0OsdlpS0RJXVUb0khIk8tnMNGxG4HJFcx2ajbypqgMvCDPu6x6
	3xKWBbFrSVQ2toFlVbBhw3a8/cL2ch3Vo6VictCbKCscT2K1FiluKTeNH8JnN73aZEeqzJ
	WJeJn+v8z4Fdc9jm0O7D0M30E/KISos=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781433060;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=bBha+afNM1QRfDKO1ERQwkUACutpG2kUt7HgjSnBHKs=;
	b=DR87DJLcxVYv6Tu4+aH/b7wt6dpjb4VGxImF+mUvXq36WdpuegrWQIss94Zqogj7QFCMj4
	NYI980oX7TGP5CrkoWPDZdjP59ekZdO5ZqiLDeDETBGm1ZYvhepjUqik2DseCViERLWnL8
	U3JxmvGNB43uilS4NjEj/KUnO7WTXDI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nQZp1VrY;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 1802220299;
	Sun, 14 Jun 2026 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781433054;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bBha+afNM1QRfDKO1ERQwkUACutpG2kUt7HgjSnBHKs=;
	b=nQZp1VrY9y2jsyBu8e0+c/DIaUKoIqYG0uGUifyIXShR8eZKONcYuh2DunZ8wu8SFa55ub
	JGIpKJ7mvNloDIDSI2NXCuo5rEQYj3hGBWKGrQn1KzgR77VvgrAkklMlLh2Ut1LykiZgI6
	aqnjoo9gFFBARKDworbB1o/t+Oc5pjE=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 14 Jun 2026 12:30:40 +0200
Subject: [PATCH batadv 1/2] batman-adv: tvlv: avoid race of cifsnotfound
 handler state
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260614-tvlv-non-const-flags-v1-1-251abea59176@narfation.org>
References: <20260614-tvlv-non-const-flags-v1-0-251abea59176@narfation.org>
In-Reply-To: <20260614-tvlv-non-const-flags-v1-0-251abea59176@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4982; i=sven@narfation.org;
 h=from:subject:message-id; bh=M4JtDjz1fJqQAH9AeZdDMSg0bZF/gpYVuB2eKi/p3R8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl6TddTO+zDT3L/6Zm1cYPO6fmM5RpP5GWPzLi60WquT
 f9iM/2bHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJlKQw/C/qKliss+zddB3Z
 LUtZmMRnLBZ0mzrD4OK3dZvPZYqurTzE8D/xwiYLOe67r5Yly9eaPI5RsQyZoLFyxqXL21i4J9/
 5vIYPAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: MA73M74SI4HRB2J4XVKA3KD6SH25XOGQ
X-Message-ID-Hash: MA73M74SI4HRB2J4XVKA3KD6SH25XOGQ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MA73M74SI4HRB2J4XVKA3KD6SH25XOGQ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 88C65680DB2

TVLV handlers can have the flag BATADV_TVLV_HANDLER_OGM_CIFNOTFND set to
signal that the OGM handler should be called (with NULL for data) when the
specific TVLV container was not found in the OGM. This is used by:

* DAT
* GW
* Multicast (OGM + Tracker)

The state whether the handler was executed was stored in the struct
batadv_tvlv_handler. But the TVLV processing is started without any lock.
Multiple parallel contexts processing TVLVs would therefore overwrite each
others BATADV_TVLV_HANDLER_OGM_CALLED flag in the shared
batadv_tvlv_handler.

Drop the shared BATADV_TVLV_HANDLER_OGM_CALLED flag and instead determine,
per TVLV buffer, whether a matching container was present by scanning the
packet's buffer.

Fixes: 0b6aa0d43767 ("batman-adv: tvlv - basic infrastructure")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tvlv.c  | 63 +++++++++++++++++++++++++++++++++++++++++++++-----
 net/batman-adv/types.h |  7 ------
 2 files changed, 57 insertions(+), 13 deletions(-)

diff --git a/net/batman-adv/tvlv.c b/net/batman-adv/tvlv.c
index a957555d8958d..1c9fb21985f6a 100644
--- a/net/batman-adv/tvlv.c
+++ b/net/batman-adv/tvlv.c
@@ -411,7 +411,6 @@ static int batadv_tvlv_call_handler(struct batadv_priv *bat_priv,
 		tvlv_handler->ogm_handler(bat_priv, orig_node,
 					  BATADV_NO_FLAGS,
 					  tvlv_value, tvlv_value_len);
-		tvlv_handler->flags |= BATADV_TVLV_HANDLER_OGM_CALLED;
 		break;
 	case BATADV_UNICAST_TVLV:
 		if (!skb)
@@ -443,6 +442,48 @@ static int batadv_tvlv_call_handler(struct batadv_priv *bat_priv,
 	return NET_RX_SUCCESS;
 }
 
+/**
+ * batadv_tvlv_containers_contain() - check if a tvlv buffer holds a container
+ * @tvlv_value: tvlv content
+ * @tvlv_value_len: tvlv content length
+ * @type: tvlv container type to look for
+ * @version: tvlv container version to look for
+ *
+ * Return: true if a container of the given type and version is present in the
+ * tvlv buffer, false otherwise.
+ */
+static bool batadv_tvlv_containers_contain(void *tvlv_value,
+					   u16 tvlv_value_len, u8 type,
+					   u8 version)
+{
+	struct batadv_tvlv_hdr *tvlv_hdr;
+	u16 tvlv_value_cont_len;
+
+	while (tvlv_value_len >= sizeof(*tvlv_hdr)) {
+		tvlv_hdr = tvlv_value;
+		tvlv_value_cont_len = ntohs(tvlv_hdr->len);
+		tvlv_value = tvlv_hdr + 1;
+		tvlv_value_len -= sizeof(*tvlv_hdr);
+
+		if (tvlv_value_cont_len > tvlv_value_len)
+			break;
+
+		/* the next tvlv header is accessed assuming (at least) 2-byte
+		 * alignment, so it must start at an even offset.
+		 */
+		if (tvlv_value_cont_len & 1)
+			break;
+
+		if (tvlv_hdr->type == type && tvlv_hdr->version == version)
+			return true;
+
+		tvlv_value = (u8 *)tvlv_value + tvlv_value_cont_len;
+		tvlv_value_len -= tvlv_value_cont_len;
+	}
+
+	return false;
+}
+
 /**
  * batadv_tvlv_containers_process() - parse the given tvlv buffer to call the
  *  appropriate handlers
@@ -462,7 +503,9 @@ int batadv_tvlv_containers_process(struct batadv_priv *bat_priv,
 				   struct sk_buff *skb, void *tvlv_value,
 				   u16 tvlv_value_len)
 {
+	u16 tvlv_value_start_len = tvlv_value_len;
 	struct batadv_tvlv_handler *tvlv_handler;
+	void *tvlv_value_start = tvlv_value;
 	struct batadv_tvlv_hdr *tvlv_hdr;
 	u16 tvlv_value_cont_len;
 	u8 cifnotfound = BATADV_TVLV_HANDLER_OGM_CIFNOTFND;
@@ -506,12 +549,20 @@ int batadv_tvlv_containers_process(struct batadv_priv *bat_priv,
 		if (!tvlv_handler->ogm_handler)
 			continue;
 
-		if ((tvlv_handler->flags & BATADV_TVLV_HANDLER_OGM_CIFNOTFND) &&
-		    !(tvlv_handler->flags & BATADV_TVLV_HANDLER_OGM_CALLED))
-			tvlv_handler->ogm_handler(bat_priv, orig_node,
-						  cifnotfound, NULL, 0);
+		if (!(tvlv_handler->flags & BATADV_TVLV_HANDLER_OGM_CIFNOTFND))
+			continue;
 
-		tvlv_handler->flags &= ~BATADV_TVLV_HANDLER_OGM_CALLED;
+		/* if the corresponding container was present then the handler
+		 * was already called from the loop above
+		 */
+		if (batadv_tvlv_containers_contain(tvlv_value_start,
+						   tvlv_value_start_len,
+						   tvlv_handler->type,
+						   tvlv_handler->version))
+			continue;
+
+		tvlv_handler->ogm_handler(bat_priv, orig_node,
+					  cifnotfound, NULL, 0);
 	}
 	rcu_read_unlock();
 
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 3de3c1ac0244f..b1f9f8964c3fd 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -2294,13 +2294,6 @@ enum batadv_tvlv_handler_flags {
 	 *  will call this handler even if its type was not found (with no data)
 	 */
 	BATADV_TVLV_HANDLER_OGM_CIFNOTFND = BIT(1),
-
-	/**
-	 * @BATADV_TVLV_HANDLER_OGM_CALLED: interval tvlv handling flag - the
-	 *  API marks a handler as being called, so it won't be called if the
-	 *  BATADV_TVLV_HANDLER_OGM_CIFNOTFND flag was set
-	 */
-	BATADV_TVLV_HANDLER_OGM_CALLED = BIT(2),
 };
 
 #endif /* _NET_BATMAN_ADV_TYPES_H_ */

-- 
2.47.3

