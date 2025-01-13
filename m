Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF60A0C265
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 13 Jan 2025 21:08:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D998D84283
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 13 Jan 2025 21:08:19 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1736798899;
 b=2viTirF8zBQbfQPZUPhtM+2exkWqipDLYDhJNF9fZOY8/W1g2ReSpQtnJ/HW5kt+U1sgJ
 iH8cWosobBMrnQe+iJYlJcEYDtgJX2sqIonDzOoQtNu7e71i/o8LCjzcBFtJKkwA9i4pv1n
 EzwKt9JEvuQ27YLTBqT+SSvZwunYTtM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1736798899; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=YTTD8vBMWm4+Bv3YLj95Rd2uey28Hj3yN8fA97rY1fM=;
 b=EcguBYCrWpCYleYaWMkcMxTi9NwKjBofW1lc+Y4xisOVOh1QKNdMhffzHAxvRh6etTU42
 Rjmfy4K9MLH/LAa7rHOUYMIuOyOIy8oQKAc93EzaunHaUWKxkE5NAfyFZE4nXW4SYXZj5pd
 AIF2QbcrAl/l7n8NlAxbXP4IxdeMVNg=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A3EA781F06
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 13 Jan 2025 21:05:17 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1736798718;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YTTD8vBMWm4+Bv3YLj95Rd2uey28Hj3yN8fA97rY1fM=;
	b=mxVgI39vSK0irdV/sA+ezgj89wACI4ZaHcsM6iufHzyHHJbhRx3ahaHA+Q5G6GLMrBK4P7
	9jEU8bhQ7kFtB2PZ+rbnlECCcG1SgEKk9dTYOUXLLRTJBYWY6j+kf6Ggw7FiiMtw/MYyX2
	cuYTOUdEhoSyPK8MM7xVD+D8eb+60zA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1736798718; a=rsa-sha256;
	cv=none;
	b=0yHTlUa4x6plt96HORmlM37wHbNAJkNtDC3Zr2v3vGtRgzCfJqSfO0WE/sqi0q5NfQzW1S
	fqkg8SwUDycly/jBA4hOMBkzgwuQmxn/bqTeIi1dNvGye7SWgo4hqBadWKKNeIhV9s2Iba
	CGdo1bi4JDp67YfraeNCK1/Y+MlEhpQ=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 5364054CCF7;
	Mon, 13 Jan 2025 21:05:17 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH v8 3/3] batman-adv: increase DAT DHT timeout
Date: Mon, 13 Jan 2025 20:31:41 +0100
Message-ID: <20250113200510.18681-4-linus.luessing@c0d3.blue>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250113200510.18681-1-linus.luessing@c0d3.blue>
References: <20250113200510.18681-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: X6M6NNJXRGPPAQHTFDGPARD6D2SQ3UEM
X-Message-ID-Hash: X6M6NNJXRGPPAQHTFDGPARD6D2SQ3UEM
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/X6M6NNJXRGPPAQHTFDGPARD6D2SQ3UEM/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Currently, the DHT_GET messages of the DAT will likely be left
unanswered due to the following issues:

When a node has a matching DAT Cache entry for a local ARP Request then
this node will answer it directly with the information provided by the
cache. This however, will likely lead to missing ARP Replies from the
original host. Which in turn leads to the DAT DHT not being updated.

Then the local DAT cache entry will time out, triggering a unicasted
DHT_GET. However, as the 5min. timeout has passed, the DAT DHT
candidates will likely have purged their entry, too.

So basically this results in an ARP Request broadcast fallback every
five minutes.

A second issue is that it is quite common that a host which has long
gone offline will be tried to be contacted by another one at some remote
period larger than the current 5min. timeout. This too leads to flooded
ARP Requests.

With this patch the purge timeout for DAT DHT entries is increased to
30min to reduce the number of DAT ARP broadcast fallbacks.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/distributed-arp-table.c | 22 +++++++++++++++++-----
 net/batman-adv/main.h                  |  3 ++-
 2 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index 8d6d5e338130..7817409bdd44 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -132,15 +132,27 @@ static void batadv_dat_entry_put(struct batadv_dat_entry *dat_entry)
 }
 
 /**
- * batadv_dat_to_purge() - check whether a dat_entry has to be purged or not
+ * batadv_dat_cache_to_purge() - check if a cache entry has to be purged or not
  * @dat_entry: the entry to check
  *
  * Return: true if the entry has to be purged now, false otherwise.
  */
-static bool batadv_dat_to_purge(struct batadv_dat_entry *dat_entry)
+static bool batadv_dat_cache_to_purge(struct batadv_dat_entry *dat_entry)
 {
 	return batadv_has_timed_out(dat_entry->last_update,
-				    BATADV_DAT_ENTRY_TIMEOUT);
+				    BATADV_DAT_CACHE_ENTRY_TIMEOUT);
+}
+
+/**
+ * batadv_dat_dht_to_purge() - check if a DHT entry has to be purged or not
+ * @dat_entry: the entry to check
+ *
+ * Return: true if the entry has to be purged now, false otherwise.
+ */
+static bool batadv_dat_dht_to_purge(struct batadv_dat_entry *dat_entry)
+{
+	return batadv_has_timed_out(dat_entry->last_update,
+				    BATADV_DAT_DHT_ENTRY_TIMEOUT);
 }
 
 /**
@@ -201,8 +213,8 @@ static void batadv_dat_purge(struct work_struct *work)
 	priv_dat = container_of(delayed_work, struct batadv_priv_dat, work);
 	bat_priv = container_of(priv_dat, struct batadv_priv, dat);
 
-	__batadv_dat_purge(bat_priv->dat.cache_hash, batadv_dat_to_purge);
-	__batadv_dat_purge(bat_priv->dat.dht_hash, batadv_dat_to_purge);
+	__batadv_dat_purge(bat_priv->dat.cache_hash, batadv_dat_cache_to_purge);
+	__batadv_dat_purge(bat_priv->dat.dht_hash, batadv_dat_dht_to_purge);
 	batadv_dat_start_timer(bat_priv);
 }
 
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 964f3088af5b..4cd4b0e84a6d 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -38,7 +38,8 @@
 #define BATADV_TT_WORK_PERIOD 5000 /* 5 seconds */
 #define BATADV_ORIG_WORK_PERIOD 1000 /* 1 second */
 #define BATADV_MCAST_WORK_PERIOD 500 /* 0.5 seconds */
-#define BATADV_DAT_ENTRY_TIMEOUT (5 * 60000) /* 5 mins in milliseconds */
+#define BATADV_DAT_CACHE_ENTRY_TIMEOUT (5 * 60000) /* 5 mins in milliseconds */
+#define BATADV_DAT_DHT_ENTRY_TIMEOUT (30 * 60000) /* 30 mins in milliseconds */
 /* sliding packet range of received originator messages in sequence numbers
  * (should be a multiple of our word size)
  */
-- 
2.45.2

