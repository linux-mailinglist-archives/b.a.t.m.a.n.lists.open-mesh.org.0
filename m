Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zm7sKYjZH2pFrAAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:36:40 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 53864635466
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:36:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=OSYALhgv;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 30CB585619
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:36:40 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780472200;
 b=gJyvDKKdqW9PPHT9tlq4PeT80E7ZUl2g2xZwQ918u6I9kWJ7sBgPjDZ8S3bTwDOpMa/FM
 LMd3qSVtPHNBoi3ObvN4aISsyZYNJtT5/6ZN+/ajHq1gadRAReDta60K0ZqvHhwd63ZAXLt
 HMlXPQVPx5unqkRabRnrJI/OaLSmivY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780472200; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=8ulgidNTatzgbV+pIO5rkwxfSaR0IyvSe4n67ApgCno=;
 b=BDc2vDg4EaLoqhMNlwKpjZQQE0/wzEbF7CV9GU584/c9ldjeuo9uycQ24nUzWKD8LL0zH
 rdIYNry3l0ACm27BLHIxX88O9pPgjTguNEdAockGln6zSYCUW9+8ruZmlzWaKJdI6k3Kgc7
 ip19rawhfbhgVk0Jn9cFrck4ITHh3n8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 47DE78070F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 09:25:39 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780471539;
	b=YCpzvkUdbOE1iNJ3ca8mePU38jeVsvMFfZ+3YgFjwdlBEKqRhQEb5N8qExefF8Daxx6s3f
	/756VVQbW97qP5DaGJzpSlypMS5ocrdbSJ8l8L/k19LIkNGZuVzYHCyoxC0rCIe2FayfGC
	XUEnU7Y5kh0WbNaISpSRj9wcxn+xeRw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=OSYALhgv;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780471539;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8ulgidNTatzgbV+pIO5rkwxfSaR0IyvSe4n67ApgCno=;
	b=jQSglMDjf4PvACgOGcvOQ2gGIK9k3K3kICCqQKdK5feLp4z7nI7XrtR58us67mUmNUmSsg
	G0j3kjNDpPSN1Vf0QiGV6XXYXzjX+IkGUrteuDX/kE91jKOMdhRMs1pcWZfZJlhPTQ8WfS
	XDsVM7ivv/eUkJK8ayw/BqxGYXeOUBE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780471538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8ulgidNTatzgbV+pIO5rkwxfSaR0IyvSe4n67ApgCno=;
	b=OSYALhgv/h9x5avi10rzV7YQBTGlIvE4j4pksJ3l/ZAs9Libpq3Yd15nuZ6g2jONmxpzM/
	ztLIFnZHXEMp0Y7/yBqhyMMhw+TSrIQhD+Q6By3a4hWUKJUCfBMlukp0pZ/9I0waN2abDA
	du/co0qqe7XS2J7tHX1tMDvS+q4WbqYcy62ROV3egliS6rUJTvRtFnfxoVeRcWOPLvhdlt
	vSfr1FTQW/UnNTI2lNKQFvSgnfAI2GOkayeaevy8mdCQ6AKPFIg6bQG0yDA/tz28/7QfuR
	hC5HcuDMWgkyRr2LqbUMwv1KXgCQU80zAeg41OErZRGtMcg0tvwimLaSU0M21w==
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
Subject: [PATCH net-next 14/15] batman-adv: tt: sync local and global tvlv
 preparation return values
Date: Wed,  3 Jun 2026 09:25:25 +0200
Message-ID: <20260603072527.174487-15-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260603072527.174487-1-sw@simonwunderlich.de>
References: <20260603072527.174487-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: C7DDVVPQ3NDALMYQUQNTGYLKFEE57AO7
X-Message-ID-Hash: C7DDVVPQ3NDALMYQUQNTGYLKFEE57AO7
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/C7DDVVPQ3NDALMYQUQNTGYLKFEE57AO7/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,simonwunderlich.de:mid,simonwunderlich.de:dkim,simonwunderlich.de:from_mime,simonwunderlich.de:email];
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
X-Rspamd-Queue-Id: 53864635466

From: Sven Eckelmann <sven@narfation.org>

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
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/translation-table.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 5e134d08a80fd..44bbaa3bb37d1 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -797,21 +797,22 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
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
@@ -827,12 +828,14 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
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
@@ -867,6 +870,7 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 
 out:
 	spin_unlock_bh(&orig_node->vlan_list_lock);
+
 	return tvlv_len;
 }
 
@@ -896,13 +900,13 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
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
@@ -910,6 +914,7 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 
 		if (check_add_overflow(vlan_entries, total_entries, &sum_entries)) {
 			tvlv_len = 0;
+			*tt_len = 0;
 			goto out;
 		}
 
@@ -925,12 +930,14 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 
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
 
@@ -964,6 +971,7 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 
 out:
 	spin_unlock_bh(&bat_priv->meshif_vlan_list_lock);
+
 	return tvlv_len;
 }
 
-- 
2.47.3

