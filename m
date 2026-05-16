Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Df4FkxlCGromgMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 May 2026 14:38:36 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B18755BCDF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 May 2026 14:38:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D763885F39
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 May 2026 14:38:35 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778935115;
 b=gvZXezrtIdfk+WZDJiog6vqC5qoE/GGrCs2TnOxOw4PSMitYgnp3PYn7rW5Me9woYrneP
 9JoW9cEE8uIqJ1W9lFqQLE5sB+qJHDFtDQZ4pUu4SIyeeleBbKcL7xmR3xPXQGKPytyBuqT
 7hQTwco0TddNL+XI9++No9VFDVgoOiU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778935115; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ktkaTYMSqs7Um0S0aqjTVfEkFq9He6MXn8K6U1AHC4k=;
 b=ZMA5Wm4gg79gvb6Syy7D3YYv0pYOtlWmvmJSdwz/tnlzeW3ztV7Vaf8cS5hV5TyEUTCRk
 GV44oqq0JdpVnjjqaLxoSU2Dz4WgPdVuVcMENxYPnvhf4mRwHMZzTQX6Jd6dHgCiaiAXFu3
 lCMzbLqb25Ib++DJj7f5+pK3yzWib5w=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 9F1E185D8B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 May 2026 14:35:47 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778934947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ktkaTYMSqs7Um0S0aqjTVfEkFq9He6MXn8K6U1AHC4k=;
	b=K3Q7qdIT+Y3dmprdOfUcpX7IsUo1yCFPDZC5DnNEhM4lu/FU9t/DgHBrBiPd/CeruBLAtr
	0ZLRQRrrpLg+GpyAQy22TlSGsn8+ySWRppVSfhE4Pn/+t9z0d/Byel0TeIB6mii8RjlJFZ
	wKStFPjVJUbhtZxO41R/dzG2oJuE2x4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ENZOoFuc;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778934947;
	b=QDpZnKu8b5nypBovyS78q6nk9z3AH/H5alGavkPmbcolgKnjTuGa/oa3H0SPU52H7Yn3Y4
	Nh9aqDG2T8eAY0D3n0Dt3/UxGwDNSgHehosWQKzkyMwE0286sWHPXv0SKFmXN6oJuYKfWV
	8XZQq4NYx4TQZYXe4+3locUDwKDipqM=
Received: by dvalin.narfation.org (Postfix) id 5727121EB8;
	Sat, 16 May 2026 12:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778934947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ktkaTYMSqs7Um0S0aqjTVfEkFq9He6MXn8K6U1AHC4k=;
	b=ENZOoFucDsJBSiT8BEsSmg4DLLzlmwTo0U1wacKETM39cimj9M/J21au2KWBQE19fTSCB6
	vLOdtxj+KE+e2G9JeU8eOXpUS8Tp1eyF3MxHCxw9GrWE6GYpNM/jgwUu/bN9usebTLO/uZ
	s0mEpRsuLOurF0yBwX3C8F9oxBytZK0=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 16 May 2026 14:35:20 +0200
Subject: [PATCH RFC batadv 3/5] batman-adv: limit numbers of parallel
 learned DAT entries
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260516-resource-limit-v1-3-6f597360ed2b@narfation.org>
References: <20260516-resource-limit-v1-0-6f597360ed2b@narfation.org>
In-Reply-To: <20260516-resource-limit-v1-0-6f597360ed2b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5670; i=sven@narfation.org;
 h=from:subject:message-id; bh=0G7fCObDuTpFmh79/MkB9zdLOVboqLl5hodyCemsSTI=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkcKd1NTIu1Z25+euCI1tKp16o83lSEy2z4tW+Nsa3tU
 sV/yUn3O0pZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATmZfM8Ff+1Ibf6m9Vr81e
 ef3FucuhyW/ef/2oFNN+6JpY0TeJmVfVGf4KzT3ZNbfo5e9MVbuCl9Xn5AVPf30os8DG8KfnUr5
 tE70YAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: YGAXPDDGWG7LLWQBKWBQDXAW2BJXLHIF
X-Message-ID-Hash: YGAXPDDGWG7LLWQBKWBQDXAW2BJXLHIF
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YGAXPDDGWG7LLWQBKWBQDXAW2BJXLHIF/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 0B18755BCDF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

A malicious actor behind one bridge port may spam the kernel with OGMs with
a random source MAC address, each of which will create a DAT entry, each of
which is a dynamic allocation in the kernel. This will at some point
exhaust the available memory.

Mitigate this by maintaining a per meshif count of those automatically
generated entries in orig_learned, and a limit in orig_max_learned. If the
limit is hit new entries are not learned anymore.

For backwards compatibility, the default setting of 0 disables the limit.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 include/uapi/linux/batman_adv.h        |  6 ++++++
 net/batman-adv/distributed-arp-table.c | 11 +++++++++++
 net/batman-adv/mesh-interface.c        |  3 +++
 net/batman-adv/netlink.c               | 10 ++++++++++
 net/batman-adv/types.h                 |  6 ++++++
 5 files changed, 36 insertions(+)

diff --git a/include/uapi/linux/batman_adv.h b/include/uapi/linux/batman_adv.h
index b3c04ab0..cca87d42 100644
--- a/include/uapi/linux/batman_adv.h
+++ b/include/uapi/linux/batman_adv.h
@@ -493,6 +493,12 @@ enum batadv_nl_attrs {
 	 */
 	BATADV_ATTR_ORIG_MAX_LEARNED,
 
+	/**
+	 * @BATADV_ATTR_DAT_MAX_LEARNED: defines the maximum number of DAT entries
+	 * which can be learned in parallel
+	 */
+	BATADV_ATTR_DAT_MAX_LEARNED,
+
 	/* add attributes above here, update the policy in netlink.c */
 
 	/**
diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index 0a8bd95e..99569a2f 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -181,6 +181,7 @@ static void __batadv_dat_purge(struct batadv_priv *bat_priv,
 
 			hlist_del_rcu(&dat_entry->hash_entry);
 			batadv_dat_entry_put(dat_entry);
+			atomic_dec(&bat_priv->dat_learned);
 		}
 		spin_unlock_bh(list_lock);
 	}
@@ -366,6 +367,8 @@ static void batadv_dat_entry_add(struct batadv_priv *bat_priv, __be32 ip,
 				 u8 *mac_addr, unsigned short vid)
 {
 	struct batadv_dat_entry *dat_entry;
+	u32 dat_max_learned;
+	int dat_learned;
 	int hash_added;
 
 	dat_entry = batadv_dat_entry_hash_find(bat_priv, ip, vid);
@@ -381,6 +384,11 @@ static void batadv_dat_entry_add(struct batadv_priv *bat_priv, __be32 ip,
 		goto out;
 	}
 
+	dat_max_learned = READ_ONCE(bat_priv->dat_max_learned);
+	dat_learned = atomic_read(&bat_priv->dat_learned);
+	if (dat_max_learned && dat_learned >= dat_max_learned)
+		goto out;
+
 	dat_entry = kmalloc_obj(*dat_entry, GFP_ATOMIC);
 	if (!dat_entry)
 		goto out;
@@ -391,6 +399,8 @@ static void batadv_dat_entry_add(struct batadv_priv *bat_priv, __be32 ip,
 	dat_entry->last_update = jiffies;
 	kref_init(&dat_entry->refcount);
 
+	atomic_inc(&bat_priv->dat_learned);
+
 	kref_get(&dat_entry->refcount);
 	hash_added = batadv_hash_add(bat_priv->dat.hash, batadv_compare_dat,
 				     batadv_hash_dat, dat_entry,
@@ -399,6 +409,7 @@ static void batadv_dat_entry_add(struct batadv_priv *bat_priv, __be32 ip,
 	if (unlikely(hash_added != 0)) {
 		/* remove the reference for the hash */
 		batadv_dat_entry_put(dat_entry);
+		atomic_dec(&bat_priv->dat_learned);
 		goto out;
 	}
 
diff --git a/net/batman-adv/mesh-interface.c b/net/batman-adv/mesh-interface.c
index fad788cc..851a078d 100644
--- a/net/batman-adv/mesh-interface.c
+++ b/net/batman-adv/mesh-interface.c
@@ -759,6 +759,9 @@ static int batadv_meshif_init_late(struct net_device *dev)
 #endif
 #ifdef CONFIG_BATMAN_ADV_DAT
 	atomic_set(&bat_priv->distributed_arp_table, 1);
+
+	atomic_set(&bat_priv->dat_learned, 0);
+	WRITE_ONCE(bat_priv->dat_max_learned, 0);
 #endif
 #ifdef CONFIG_BATMAN_ADV_MCAST
 	atomic_set(&bat_priv->multicast_mode, 1);
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index 2b5fb1d6..742b1e3e 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -149,6 +149,7 @@ static const struct nla_policy batadv_netlink_policy[NUM_BATADV_ATTR] = {
 	[BATADV_ATTR_THROUGHPUT_OVERRIDE]	= { .type = NLA_U32 },
 	[BATADV_ATTR_NEIGH_MAX_LEARNED]		= { .type = NLA_U32 },
 	[BATADV_ATTR_ORIG_MAX_LEARNED]		= { .type = NLA_U32 },
+	[BATADV_ATTR_DAT_MAX_LEARNED]		= { .type = NLA_U32 },
 };
 
 /**
@@ -298,6 +299,10 @@ static int batadv_netlink_mesh_fill(struct sk_buff *msg,
 	if (nla_put_u8(msg, BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED,
 		       !!atomic_read(&bat_priv->distributed_arp_table)))
 		goto nla_put_failure;
+
+	if (nla_put_u32(msg, BATADV_ATTR_DAT_MAX_LEARNED,
+			READ_ONCE(bat_priv->dat_max_learned)))
+		goto nla_put_failure;
 #endif /* CONFIG_BATMAN_ADV_DAT */
 
 	if (nla_put_u8(msg, BATADV_ATTR_FRAGMENTATION_ENABLED,
@@ -488,6 +493,11 @@ static int batadv_netlink_set_mesh(struct sk_buff *skb, struct genl_info *info)
 			   !!nla_get_u8(attr));
 		batadv_dat_status_update(bat_priv->mesh_iface);
 	}
+
+	if (info->attrs[BATADV_ATTR_DAT_MAX_LEARNED]) {
+		WRITE_ONCE(bat_priv->dat_max_learned,
+			   nla_get_u32(info->attrs[BATADV_ATTR_DAT_MAX_LEARNED]));
+	}
 #endif /* CONFIG_BATMAN_ADV_DAT */
 
 	if (info->attrs[BATADV_ATTR_FRAGMENTATION_ENABLED]) {
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 75a85f08..32d396dc 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1553,6 +1553,12 @@ struct batadv_priv {
 	 *  is enabled
 	 */
 	atomic_t distributed_arp_table;
+
+	/** @dat_max_learned: Maximum number of DAT entries */
+	u32 dat_max_learned;
+
+	/** @dat_learned: current number of learned DAT entries */
+	atomic_t dat_learned;
 #endif
 
 #ifdef CONFIG_BATMAN_ADV_MCAST

-- 
2.47.3

