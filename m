Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T9KyAr3QLWonkgQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Jun 2026 23:50:53 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 977FE67FD55
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Jun 2026 23:50:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=MMX+7Ynk;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7EDEC83E9E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Jun 2026 23:50:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781387452;
 b=iSuqUwuXn/LBcDaxzPrya6+fU9tM6VOoPfXCz3vRzmY14qO90N71+gTs1dOcxcpZRp6kJ
 Y/xuijxPoJ/OZISeFUy5jHriNxK7CT7Vrh/WWge10sS6k48FWHagZqKUdeBlA2jRsQZt2SG
 NwYl4m94HNE32bxPGUB9hUCS87/ITyg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781387452; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=DGmyL6xF3s1xNvwgDoUSTH7BfvelPMWkiGU5INzqDl4=;
 b=ihBd6yo+XJThdhyibJX3zr2+9kX57uGKQwKtjqQ7Lhmw8XezcIE7czQKwcoHT8/TZZ0n8
 577BdwvFqjCJImCMFJmZXqgfrKFvjgq/C1iYZvlgwKHruI+X66SNjCuvbCJA61wNJNwsXt/
 sfE8rXKj5k+nzSyFLOu5j+CiwL80CKQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 91F5280E25
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Jun 2026 23:50:32 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781387442;
	b=TvEdsf/S5F0jTcTjBFMPiZ1BzwrPnrPphyJF7NTiIKWYcyzdxnLS1ucNXLLSMRkjUL8Q9R
	VQ3Mro37LjS7319xwVf1CTIyzD8aDLuarYQDZnaxyWldsNvB88lErqmE1TsdyAW11PPKZJ
	8Rbel0yl1uAgP49XPu5mquNqckUh5rA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781387442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=DGmyL6xF3s1xNvwgDoUSTH7BfvelPMWkiGU5INzqDl4=;
	b=hGZLewy6MdFjtnbg2uCraSIKFtO2tl1SPD1cwqxMAnb56ctLzJSw+I1W9oYPYwLaeeQ7Rl
	69jwG/hT/M4sRgCsPCRCpqEdu22VpGe6wHD0xWY/1wcICcfzDdYZ6jQwKNIQ9+w/k9M75u
	MM2T07TTMkEZQ0oGwKCdmmStpigIfFU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=MMX+7Ynk;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id E3C781FDB1;
	Sat, 13 Jun 2026 21:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781387431;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DGmyL6xF3s1xNvwgDoUSTH7BfvelPMWkiGU5INzqDl4=;
	b=MMX+7YnkuAd2Xx8GuCxUOYn53sl+HXmKmZoVRWZaVPpKHAbe32NSyKcW/KQZzS4A4XNUgf
	w9CIQOENcHeYQLJAhfDdpQI6W7UGbMTzGAoZzWfGq8SJ/ZwNHxcw61p6i+6fqaeMsPfOBW
	WUFe/5m9gR9D4bEiL9mKCNWRs/mcydY=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 13 Jun 2026 23:50:28 +0200
Subject: [PATCH batadv] batman-adv: dat: prevent false sharing between
 VLANs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260613-dat-vid-v1-1-707fe3fa7d96@narfation.org>
X-B4-Tracking: v=1; b=H4sIAKPQLWoC/yWMwQqDMBAFf0Xe2UDMgrT9FfGQuNt2e7CSxCCI/
 25ajzMMsyNJVEl4NDuiFE36nSt0bYPp7eeXGOXKcNb1tu/IsM+mKBsippuQvUtwqPUS5anb/zQ
 g+Oy5YLx8WsNHpvzb4DhOgDHe73MAAAA=
X-Change-ID: 20260613-dat-vid-33d38e309eb2
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1771; i=sven@narfation.org;
 h=from:subject:message-id; bh=X17pmcp+SY07gZUyWZflmwFn2fjk+fzvUEvPcUsS2k0=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm6F5awqUyPF2vrc6izXT0z57Gm1oIfeqK/j4vvCjOfV
 CgafPteRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAinx8xMpw+kjqj1/mpQa2q
 +5d73bvfn9M5sOWlh2nf+5/PAwUq1ngyMqx4u3vvhOSF93N58rL5Lx/4vfO+5IoKjfOHFZW5U97
 rpbMCAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: VLF3OJ2GCXYWA5VAVGFJNV25UX36L5GG
X-Message-ID-Hash: VLF3OJ2GCXYWA5VAVGFJNV25UX36L5GG
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VLF3OJ2GCXYWA5VAVGFJNV25UX36L5GG/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 977FE67FD55

The local hash of DAT entries is supposed to be VLAN (VID) aware. But
the adding to the hash and the search in the hash were not checking the VID
information of the hash entries. The entries would therefore only be
correctly separated when batadv_hash_dat() didn't select the same buckets
for different VIDs.

Fixes: 3e26722bc9f2 ("batman-adv: make the Distributed ARP Table vlan aware")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/distributed-arp-table.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index aaea155b..ae39ceaa 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -215,10 +215,13 @@ static void batadv_dat_purge(struct work_struct *work)
  */
 static bool batadv_compare_dat(const struct hlist_node *node, const void *data2)
 {
-	const void *data1 = container_of(node, struct batadv_dat_entry,
-					 hash_entry);
+	const struct batadv_dat_entry *entry1;
+	const struct batadv_dat_entry *entry2;
 
-	return memcmp(data1, data2, sizeof(__be32)) == 0;
+	entry1 = container_of(node, struct batadv_dat_entry, hash_entry);
+	entry2 = data2;
+
+	return entry1->ip == entry2->ip && entry1->vid == entry2->vid;
 }
 
 /**
@@ -345,6 +348,9 @@ batadv_dat_entry_hash_find(struct batadv_priv *bat_priv, __be32 ip,
 		if (dat_entry->ip != ip)
 			continue;
 
+		if (dat_entry->vid != vid)
+			continue;
+
 		if (!kref_get_unless_zero(&dat_entry->refcount))
 			continue;
 

---
base-commit: c7518adb8b6ebdc481f6ed1fc42c7f45099806af
change-id: 20260613-dat-vid-33d38e309eb2

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

