Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNZhDqNRAGoaGQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 11:36:35 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A5A5035DE
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 11:36:34 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B8D6285C28
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 11:36:34 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778405794;
 b=smGq+oOgGpOeYjDf019MdeBkyx8t/haq6QThLqQJZEqIdXLCQyub76+ZAOKCBT5fiFg5h
 7vD3+Z6o9rdks1JjyZDMT4XdzFCkgujMA+LEXj53a3iyyU03FdyGKcFXFYlrLTrPoGhZkX/
 hQ1QgOUF1tyoTwe8J4F0VfIQqQ8idbY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778405794; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=BuZvFWw1MbKJMcgf8OOAeF/pAwjRrYLsKUqU3J2KTpY=;
 b=3FuBZb5JT5n+OsE7QZuwnVvWZTCkaooR5k4yvAhQ3Y80y9wU+aic+yiGIwGFiiFZjDeUH
 qUTDtIUoAY+mrbtz/sqWr6ucLFZy7NTi1+YRiIEqT43ml7d7kj82+CuTCeAWZbk8DK/jz8x
 mJ9Fqkeb3eSB8SJrByPhY0Xbc+kasVQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id C9B9385AD5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 10 May 2026 11:31:20 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778405480;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BuZvFWw1MbKJMcgf8OOAeF/pAwjRrYLsKUqU3J2KTpY=;
	b=xWTu70csE9Y89dFihhdHgXPpY/0647eQO4WXgIIc1usd1DopfCoKSfMJbaShx+SUgBHJyb
	PVDb6yZ8k4Pyvf2MsRAiYmLiVcf3JHPPb7o1dH+uP93GI474vx+crqv/jUxtto3RC31/y1
	PrneIhIWyfoZ5QIj3IUTuJrFSdjX+sk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Ytjg+PLw;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778405480;
	b=yL6dU8sp8N8vBfcpDo+OuWxg+/WC8yrmwJTCW+Uzsz0he1gDiiq+NCTqjtfxkAKsR+XTs2
	/obMOPeOxYO/1+bxcpKBUryG2FGyef9b6kyRlKyIyS65YJn1eDC+Fpg9lvw5VLqW5LY9nI
	6GJkHmT6yqWk2/s9KXi76vvmFuRxvDA=
Received: by dvalin.narfation.org (Postfix) id 8AE36201FE;
	Sun, 10 May 2026 09:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778405480;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BuZvFWw1MbKJMcgf8OOAeF/pAwjRrYLsKUqU3J2KTpY=;
	b=Ytjg+PLwAgs6FrisYIqu3TyAy2tXT//ZR3Umy07/15xeNXqapfIes9zQmQMxQytG3W4reW
	2b86fR9XfUR3r00JFdYQC9HkCJbGMYAowaWsuk6rzGzO1hfREVMK4wNjLrmunnNCo5DihL
	m4WtbGNusAw1AOJtg06dSW1GOn/LwqY=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 10 May 2026 11:31:02 +0200
Subject: [PATCH batadv v3 6/7] batman-adv: tt: prevent TVLV entry number
 overflow
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260510-fixes-followup-v3-6-1079a93bc964@narfation.org>
References: <20260510-fixes-followup-v3-0-1079a93bc964@narfation.org>
In-Reply-To: <20260510-fixes-followup-v3-0-1079a93bc964@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2279; i=sven@narfation.org;
 h=from:subject:message-id; bh=kaFQlN362gjem1e9G+GWtQRzBDLiT2gsLPe7GCBtQ2M=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkMASFh73Y+99R2VhHPCy0qu3FN63lz7dXtO1lthFLuu
 qRbzLLoKGVhEONikBVTZNlzJf/8Zva38p+nfTwKM4eVCWQIAxenAExkhR0jw2KzAHeXb11nv+e6
 XLjLUpYqZ3hlwfKwqjVvXPn/PKw0MGL4X3rpGjfn3wN8DXkC32bZGzpLclyfan/6i53bam9PLtY
 cBgA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: UAEMG4X3R3USOCN32BCZTG2GABV2C6FG
X-Message-ID-Hash: UAEMG4X3R3USOCN32BCZTG2GABV2C6FG
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UAEMG4X3R3USOCN32BCZTG2GABV2C6FG/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: E3A5A5035DE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

The helpers to prepare the buffers for the local and global TT based
replies are trying to sum up all TT entries which can be found for each
VLAN. In theory, this sum can be too big for an u16 and therefore overflow.
A too small buffer would then be allocated for the TVLV.

The too small buffer will be handled gracefully by
batadv_tt_tvlv_generate() and is not causing a buffer overflow - just a
truncated reply. But this overflow shouldn't have happened in the first and
the too small buffer should never have been allocated when an overflow was
detected.

Fixes: 21a57f6e7a3b ("batman-adv: make the TT CRC logic VLAN specific")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/translation-table.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 66c2bf3d..d72adda4 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -844,11 +844,18 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 	u16 total_entries = 0;
 	u8 *tt_change_ptr;
 	int vlan_entries;
+	u16 sum_entries;
 
 	spin_lock_bh(&orig_node->vlan_list_lock);
 	hlist_for_each_entry(vlan, &orig_node->vlan_list, list) {
 		vlan_entries = atomic_read(&vlan->tt.num_entries);
-		total_entries += vlan_entries;
+
+		if (check_add_overflow(vlan_entries, total_entries, &sum_entries)) {
+			*tt_len = 0;
+			goto out;
+		}
+
+		total_entries = sum_entries;
 		num_vlan++;
 	}
 
@@ -933,15 +940,22 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 	struct batadv_meshif_vlan *vlan;
 	size_t change_offset;
 	u16 num_vlan = 0;
-	u16 vlan_entries = 0;
 	u16 total_entries = 0;
 	u16 tvlv_len;
 	u8 *tt_change_ptr;
+	int vlan_entries;
+	u16 sum_entries;
 
 	spin_lock_bh(&bat_priv->meshif_vlan_list_lock);
 	hlist_for_each_entry(vlan, &bat_priv->meshif_vlan_list, list) {
 		vlan_entries = atomic_read(&vlan->tt.num_entries);
-		total_entries += vlan_entries;
+
+		if (check_add_overflow(vlan_entries, total_entries, &sum_entries)) {
+			tvlv_len = 0;
+			goto out;
+		}
+
+		total_entries = sum_entries;
 		num_vlan++;
 	}
 

-- 
2.47.3

