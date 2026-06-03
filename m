Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5SmfEjStH2ptogAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:27:32 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E974D63424B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:27:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="TDQc7Og/";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C6CD6847E4
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:27:31 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780460851;
 b=EI43W4iUQkw67DDi95fjpp4lTU9XMojtXXLgFkoDNmkmVgeKpBN0z/1l46jU0v6+Dy30A
 7fl6CbEqHoV+knjMStyWskWGSWTTDnipEjZAXySulW7yiNe6dIRW01VfsgBcQgOBe3Jj/H7
 W47fiqH6WZeNtzrJY9WZipAbBNFoqOc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780460851; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=aASCykFn1xMfk8pGjReOsPriH5sokTg5Z2PeI8aCMx4=;
 b=3/TS1nqUhe0xP0CT9KIYuQOc0PUgq0hwhwWSeOl00S117xnyKdSHpgniVrrkEDETWAZIN
 HYj5mHN3yPlmIhkx5AN2YWU6G6fC9vOVSPtHLOiwROncq+JEBgFwpEq+ENZveIICMTNfeuE
 pZ5gtmhldKgGFlccTZnyeMLAxERZjX8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0857E8408E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 06:18:54 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780460334;
	b=4M78lS4/DD6wbcMD+JemjMEw6dATQQRMZ7iQIxYoi0rgGtddC81HvxG3ol/1C8qoPZQN2h
	5SIzGLyvHWpbaTxNth2/fEabjyj4s2xoK+VMup3cu2JrGDxDJZ2syGJVfiDB2bbh4UzBGZ
	cVcb2y+qXy+db3v26ftu1fpplGdvM6I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="TDQc7Og/";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780460334;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=aASCykFn1xMfk8pGjReOsPriH5sokTg5Z2PeI8aCMx4=;
	b=fDkbWm+OFkaq/0LkBBpWhJWW7ANE23a82GiWpwx4NxBFOns6VIPewDch2tn8Kmz2bOY44x
	ssmEhi0RgFCO3EFdC7wZhf9QpUYn3VrJJrEQHWbwdMijvL7yBcejq+614kq850bclT8dqv
	7HX5M+bGaxvl2wx7Ly2uYDlFwHDjYLY=
Received: by dvalin.narfation.org (Postfix) id 270EE1FFFB;
	Wed, 03 Jun 2026 04:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780460333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aASCykFn1xMfk8pGjReOsPriH5sokTg5Z2PeI8aCMx4=;
	b=TDQc7Og/QOD4uSLdZTCAZR0dE5PM+eI+FRxQURWfl5GG2Hjj/6ECHEVv30w6gUAaqAlKSV
	pR9zO7GoVSiJny46d5GSQBD8Li7fQGqwfn44587ZZMc2OE7nf5Huzl2XFq4ZQuorylrdDO
	q9fZVMzv1S50pzhiErh3h8nJ+DzaGjE=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 03 Jun 2026 06:18:50 +0200
Subject: [PATCH batadv] batman-adv: tt: sync local and global tvlv
 preparation return values
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-tvlv-global-data-return-v1-1-6a4edaa3cf82@narfation.org>
X-B4-Tracking: v=1; b=H4sIACmrH2oC/yWMQQrDIBBFrxJm3QG1KLRXKV1onKRTxJTRSCHk7
 jHt8n3+exsUEqYC92EDocaFl9xBXwYYXz7PhBw7g1HGKacM1pYazmkJPmH01aNQXSWjuoXJWa3
 t1Vro9kdo4u+v/IDQj7HB87+XNbxprGcW9v0Afh4Is4MAAAA=
X-Change-ID: 20260602-tvlv-global-data-return-09bf65115355
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3848; i=sven@narfation.org;
 h=from:subject:message-id; bh=5TjU31i+ZTDgEpTcO39iRynSyehxRba7Tf0UNupZe/I=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnyq7XylK/a2D+IPVzF+/S0GOuRx3sSL20JO2SarFN7+
 MQ52wrLjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBElGYwMkxc/MVwvpduSe/0
 1exZvlJre16ZpmQt3rfj6IM9iwpu2wFVNAndu3jxZ+fPH7cnubM9N5G9Mu/rz1Vvl77P27W0pzL
 JkRkA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: JWKQLUO7QRXRVXHUD7NUCO5FW6NZ5DZO
X-Message-ID-Hash: JWKQLUO7QRXRVXHUD7NUCO5FW6NZ5DZO
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JWKQLUO7QRXRVXHUD7NUCO5FW6NZ5DZO/>
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
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E974D63424B

The batadv_tt_prepare_tvlv_local_data() and
batadv_tt_prepare_tvlv_global_data() functions are supposed to work the
same - just with different sources for the TT entries. But both handled the
return values completely different. The global variant only made sure that
the *tt_len parameter was set to 0 and didn't care about the actual return
value of the function.

The local function never made sure that the *tt_len value was set to some
value when the operation failed. The callers were handling these
differences and made sure that they didn't access the incorrectly
initialized variable.

Sync both function as good as possible to avoid problems with new code
which might not be aware of these differences in the behavior.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/translation-table.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 25acbb34..e6bfcd05 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -837,21 +837,22 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 				   struct batadv_tvlv_tt_change **tt_change,
 				   s32 *tt_len)
 {
-	u16 num_vlan = 0;
-	u16 tvlv_len = 0;
 	struct batadv_tvlv_tt_vlan_data *tt_vlan;
 	struct batadv_orig_node_vlan *vlan;
 	u16 total_entries = 0;
 	size_t change_offset;
 	u8 *tt_change_ptr;
+	u16 num_vlan = 0;
 	int vlan_entries;
 	u16 sum_entries;
+	u16 tvlv_len;
 
 	spin_lock_bh(&orig_node->vlan_list_lock);
 	hlist_for_each_entry(vlan, &orig_node->vlan_list, list) {
 		vlan_entries = atomic_read(&vlan->tt.num_entries);
 
 		if (check_add_overflow(vlan_entries, total_entries, &sum_entries)) {
+			tvlv_len = 0;
 			*tt_len = 0;
 			goto out;
 		}
@@ -867,12 +868,14 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 		*tt_len = batadv_tt_len(total_entries);
 
 	if (check_add_overflow(*tt_len, change_offset, &tvlv_len)) {
+		tvlv_len = 0;
 		*tt_len = 0;
 		goto out;
 	}
 
 	*tt_data = kmalloc(tvlv_len, GFP_ATOMIC);
 	if (!*tt_data) {
+		tvlv_len = 0;
 		*tt_len = 0;
 		goto out;
 	}
@@ -907,6 +910,7 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 
 out:
 	spin_unlock_bh(&orig_node->vlan_list_lock);
+
 	return tvlv_len;
 }
 
@@ -936,13 +940,13 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 {
 	struct batadv_tvlv_tt_vlan_data *tt_vlan;
 	struct batadv_meshif_vlan *vlan;
-	size_t change_offset;
-	u16 num_vlan = 0;
 	u16 total_entries = 0;
-	u16 tvlv_len;
+	size_t change_offset;
 	u8 *tt_change_ptr;
+	u16 num_vlan = 0;
 	int vlan_entries;
 	u16 sum_entries;
+	u16 tvlv_len;
 
 	spin_lock_bh(&bat_priv->meshif_vlan_list_lock);
 	hlist_for_each_entry(vlan, &bat_priv->meshif_vlan_list, list) {
@@ -950,6 +954,7 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 
 		if (check_add_overflow(vlan_entries, total_entries, &sum_entries)) {
 			tvlv_len = 0;
+			*tt_len = 0;
 			goto out;
 		}
 
@@ -965,12 +970,14 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 
 	if (check_add_overflow(*tt_len, change_offset, &tvlv_len)) {
 		tvlv_len = 0;
+		*tt_len = 0;
 		goto out;
 	}
 
 	*tt_data = kmalloc(tvlv_len, GFP_ATOMIC);
 	if (!*tt_data) {
 		tvlv_len = 0;
+		*tt_len = 0;
 		goto out;
 	}
 
@@ -1004,6 +1011,7 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 
 out:
 	spin_unlock_bh(&bat_priv->meshif_vlan_list_lock);
+
 	return tvlv_len;
 }
 

---
base-commit: bba80ddd693e6d82a0b1f456511904cfefd5df24
change-id: 20260602-tvlv-global-data-return-09bf65115355

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

