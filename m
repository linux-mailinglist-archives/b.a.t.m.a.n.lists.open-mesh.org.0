Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r5shO9DfQGqFiwkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 10:48:16 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AD46D372C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 10:48:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=j16ece2I;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6150583FC6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 10:48:16 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782636496;
 b=2tILV/bwQKx8vD/A1yrvYrSbPGzbTCP4WWajbC2QDVvpmN0Yvjtlcfbv5ulFI8UGwi4Y9
 cINgGA3KGU2rTNI/nwNzlUkQgjkFv08DF1wpU9vtftuIzg+K+zPzwM6DBe1NERA0e+Qw3JB
 fz1JJLOPT+NPG0zGSDOh805GxCNmqy0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782636496; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=uxJNDOk8Mrhoo+bTGePIGQFUt88Nx5d5MwuHozCcSq0=;
 b=BVROj9rvmrCelG7uYJXh0eIl6iD2gVOwVgpxGkzf9O2z19sMrO+620rJ21XU9QA/YXW8G
 G9XuKS18GtVrXxOQbEiyZV2e/NTmIUNXlVn1KfSdcWGVKQVJ9t/KLpYTmp9nW68qds0PI4v
 SK5lZ7aMN1f80XGN5eDZouIg7UWeGkE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 9D28B80347
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Jun 2026 10:47:48 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782636478;
	b=oNdAZJLtihpoid2kX3tMPYqBjkKl4y5UAkHOJu0KdAg3CpvJq5RUuAx7/AZ7w+1j2gYhTB
	QF5aGgtx8sr6IiFhSSOmfM2xOInzWmdTUpQXR5ahCd3tFxp+opNImPMVbPRm9i8uZS97du
	NhXbHhUVrpjxSV/N5Yuwe0WG7SQmxfs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782636478;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=uxJNDOk8Mrhoo+bTGePIGQFUt88Nx5d5MwuHozCcSq0=;
	b=NMXtH8Aq6/PwvcSsxupnQF3bMy8mszKL5712mDkfpalC63AaKG87AbRagOcdb3/xi+rD6C
	AaOUK7nzvx9blSyruni0h9NOJ1clP9d50bYn43ZUxQuY1HMt2CVDP2LCFZ4BOlCd88dj5Q
	Rdw3P91T+SyfP9JAzeGyzsoQrjbG9rE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=j16ece2I;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id D90EB203F3;
	Sun, 28 Jun 2026 08:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782636467;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uxJNDOk8Mrhoo+bTGePIGQFUt88Nx5d5MwuHozCcSq0=;
	b=j16ece2IUSPrE5H5pZuQ4RmCAeHscEPYJZWSZCG1RAafiZ55Hll+7YWKnDpHBClL9TlSkr
	0scqI5yB8/1m6PEozdXJjIH+IdWVkE5S7u/TJkYdTTiJptjYpHAYeuvzbtTj2Q+2t/izBj
	3Kp+kR5+NaMwJwwOSUUino0wo6tfOEs=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 28 Jun 2026 10:47:38 +0200
Subject: [PATCH batadv] batman-adv: dat: ensure accessible eth_hdr proto
 field
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260628-get_vid-eth_hdr-access-v1-1-1c1ed8c6c70b@narfation.org>
X-B4-Tracking: v=1; b=H4sIAKnfQGoC/yWMQQrCMBAAv1L27EJNQxW/IlI2yaZZD1WyMQilf
 2+qxxmYWUE5CyvcuhUyV1F5LQ3Opw58omVmlNAYTG/GfjRXnLlMVQJySVMKGcl7VkUerLNkL0O
 MFlr8zhzl+xvfwVGhUOHx9/pxT/bluMK27VkmCPmCAAAA
X-Change-ID: 20260628-get_vid-eth_hdr-access-e34b4a473ff4
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sashiko <sashiko-bot@kernel.org>, Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4204; i=sven@narfation.org;
 h=from:subject:message-id; bh=oUpbbWh1qxIK3qHRHpr31dUWBWpavpI9fymh4CeoUjQ=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkO91cnrOWdPOfXRi8lp3mF0uuuqjbyqu7zCeB7VhgSN
 VPEaMeOjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBEXkkz/C/+zxhr853xR/rM
 K+XfXx6zrOXZfeL8soNMJ53STr9LUlVnZDjE9GRGtfNul/Mih1nOGr8Sdk6ezPbr169jGXV7F8x
 3msgBAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: H3GXPUYZBLKCKGSWI6D7R4LOTRX65A3L
X-Message-ID-Hash: H3GXPUYZBLKCKGSWI6D7R4LOTRX65A3L
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/H3GXPUYZBLKCKGSWI6D7R4LOTRX65A3L/>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sashiko-bot@kernel.org,m:sven@narfation.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[narfation.org:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 89AD46D372C

When batadv_get_vid() accesses the proto field of the ethernet header, it
is not checking if the data itself is accessible. The caller is responsible
for it. But in contrast to other call sites, batadv_dat_get_vid() and its
caller didn't make sure this is true. This could have caused an
out-of-bounds access.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Fixes: 3e26722bc9f2 ("batman-adv: make the Distributed ARP Table vlan aware")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/distributed-arp-table.c | 23 +++++++++++++++++++++++
 net/batman-adv/main.c                  |  3 +++
 2 files changed, 26 insertions(+)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index f1066db8..973e6fe9 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -1144,6 +1144,9 @@ static u16 batadv_arp_get_type(struct batadv_priv *bat_priv,
  * @skb: the buffer containing the packet to extract the VID from
  * @hdr_size: the size of the batman-adv header encapsulating the packet
  *
+ * The caller must ensure that at least @hdr_size + ETH_HLEN bytes are
+ * accessible after skb->data.
+ *
  * Warning: This function calls batadv_get_vid() and may therefore reallocate
  * the skb data buffer. Any pointer into the skb data (e.g. obtained from
  * skb->data or eth_hdr()) before this call must be considered invalid
@@ -1237,6 +1240,10 @@ bool batadv_dat_snoop_outgoing_arp_request(struct batadv_priv *bat_priv,
 	if (!READ_ONCE(bat_priv->distributed_arp_table))
 		goto out;
 
+	/* first, find out the vid. */
+	if (!pskb_may_pull(skb, hdr_size + ETH_HLEN))
+		goto out;
+
 	vid = batadv_dat_get_vid(skb, &hdr_size);
 
 	type = batadv_arp_get_type(bat_priv, skb, hdr_size);
@@ -1338,6 +1345,10 @@ bool batadv_dat_snoop_incoming_arp_request(struct batadv_priv *bat_priv,
 	if (!READ_ONCE(bat_priv->distributed_arp_table))
 		goto out;
 
+	/* first, find out the vid. */
+	if (!pskb_may_pull(skb, hdr_size + ETH_HLEN))
+		return false;
+
 	vid = batadv_dat_get_vid(skb, &hdr_size);
 
 	type = batadv_arp_get_type(bat_priv, skb, hdr_size);
@@ -1407,6 +1418,10 @@ void batadv_dat_snoop_outgoing_arp_reply(struct batadv_priv *bat_priv,
 	if (!READ_ONCE(bat_priv->distributed_arp_table))
 		return;
 
+	/* first, find out the vid. */
+	if (!pskb_may_pull(skb, hdr_size + ETH_HLEN))
+		return;
+
 	vid = batadv_dat_get_vid(skb, &hdr_size);
 
 	type = batadv_arp_get_type(bat_priv, skb, hdr_size);
@@ -1462,6 +1477,10 @@ bool batadv_dat_snoop_incoming_arp_reply(struct batadv_priv *bat_priv,
 	if (!READ_ONCE(bat_priv->distributed_arp_table))
 		goto out;
 
+	/* first, find out the vid. */
+	if (!pskb_may_pull(skb, hdr_size + ETH_HLEN))
+		goto out;
+
 	vid = batadv_dat_get_vid(skb, &hdr_size);
 
 	type = batadv_arp_get_type(bat_priv, skb, hdr_size);
@@ -1926,6 +1945,10 @@ bool batadv_dat_drop_broadcast_packet(struct batadv_priv *bat_priv,
 	if (batadv_forw_packet_is_rebroadcast(forw_packet))
 		goto out;
 
+	/* first, find out the vid. */
+	if (!pskb_may_pull(forw_packet->skb, hdr_size + ETH_HLEN))
+		goto out;
+
 	vid = batadv_dat_get_vid(forw_packet->skb, &hdr_size);
 
 	type = batadv_arp_get_type(bat_priv, forw_packet->skb, hdr_size);
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 95ad4f41..f1ce1ac8 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -612,6 +612,9 @@ void batadv_recv_handler_unregister(u8 packet_type)
  * @skb: the buffer containing the packet
  * @header_len: length of the batman header preceding the ethernet header
  *
+ * The caller must ensure that at least @header_len + ETH_HLEN bytes are
+ * accessible after skb->data.
+ *
  * Warning: This function may reallocate the skb data buffer via
  * pskb_may_pull(). Any pointer into the skb data (e.g. obtained from skb->data
  * or eth_hdr()) before this call must be considered invalid afterwards and has

---
base-commit: a7159ed684ce052364c6308bf139603dfb24a7eb
change-id: 20260628-get_vid-eth_hdr-access-e34b4a473ff4

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

