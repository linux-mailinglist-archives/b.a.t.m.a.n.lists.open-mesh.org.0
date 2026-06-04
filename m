Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id poa+MWDcIWo5PwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:13:20 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BCB643229
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:13:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="0CPPoZY/";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 462AB84917
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:13:20 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780604000;
 b=j3OQc8suVJImc1LlGXEMx1eVlWrdZ7u1X7vWaCtIvRpKnrd6DECPU5vkTJ2KC+mwuPcPJ
 lUo8pqt553iNzfAxpHuAjoFBAAQURzojm7J8PbyLgo5ENsbO16VvGtZT2bAGwHIy122hVtp
 gHqeU3fNen9LQwaQZ44weYwpcqX1buw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780604000; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4gd2a2U6YLamM9lP50zK4+gVlKfVNUTdmX5cRfxjNaU=;
 b=j9dGjojIpCnjG5dyfhFJRPQHo9Wb1mdBRW+3XsDjZKylkZSZQvMzdrbcxR2jwHcJxewt6
 9Ag425AmHoMJfquoqFnjgmuo5arrkJa0TVz7rltWFDpywEhHEsTqFerU2k7hyXVSb7bkAAo
 tk/mgp9H2U1RofU52U4y8tL8+uiCZjw=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 91C5A8454A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 04 Jun 2026 22:08:58 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780603738;
	b=foxLH/kR/nT/AS+EZeba/3KpYFhREzZJJSzHJLFY63CxYEPtpG8/Zi+dUlWS+vok8MaPlB
	CH6UVjQs9aAmMUFbERY5luLIcbdbp1riJjP+vGFRvhEEaKVs1kv2vPznPf1YmepAN6uuhE
	nhRGahoDblPxs3DlXvBmrJ8pFon2U+o=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="0CPPoZY/";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780603738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=4gd2a2U6YLamM9lP50zK4+gVlKfVNUTdmX5cRfxjNaU=;
	b=UufS2jFRWQUUp4/EBcxNKEeWSVtB/yvnzp1xy7TJwdLvVfyGbQiu3phMVnkl+DV15QlHWU
	3sXvd10N2m+hjjTwnUiJD4qjkTJ/Bu1Z9UcXQKZN6w7bDV4qe4pT/MqalaAAszdy6/E80i
	+q+jiSW+CY7Hi3aFoLZogZmObHFwHHE=
Received: by dvalin.narfation.org (Postfix) id 2A1F120263;
	Thu, 04 Jun 2026 20:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780603738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4gd2a2U6YLamM9lP50zK4+gVlKfVNUTdmX5cRfxjNaU=;
	b=0CPPoZY/yOX89q//Tw7VOchlwD85UcQ4UjoOvPTDHO/6RalNyvkOhLnAmchGCtBWFEpcrU
	BaRA4uwGj0wJ0zXwxXMvX3Ga4C4qig3WhZlOBrpgujjgkTRSbQAcGw+HTyOJtJ7l/ECPyA
	WOop4LVBp2oUiDJS8EfMElNJq42UzQ0=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 04 Jun 2026 22:08:47 +0200
Subject: [PATCH batadv 5/5] batman-adv: fix kernel-doc typos and grammar
 errors
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-kernel-doc-cleanup-v1-5-c4c4d4a77c31@narfation.org>
References: <20260604-kernel-doc-cleanup-v1-0-c4c4d4a77c31@narfation.org>
In-Reply-To: <20260604-kernel-doc-cleanup-v1-0-c4c4d4a77c31@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10126; i=sven@narfation.org;
 h=from:subject:message-id; bh=5UCaox6ingZrk3Qn15JzwScfTnOeofkIXbx6pUI19Hk=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmKt33WVzjtE+Dtm1Yefk/+fc0TJp2dnp+f2jmLd1eEv
 OHueWzVUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAbjJ7xgZlv38n3xdlbtl2fKj
 IYsqQyX3br+422ieyqYlL3056m6dv83I8K/u9an2iWH7npnfnHHgo27RZ/Wy9aEhF87Y7mrf+cf
 5HT8A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: LIJFGKAAXJI4EL2Q2SCJDIP63VBCSTVU
X-Message-ID-Hash: LIJFGKAAXJI4EL2Q2SCJDIP63VBCSTVU
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LIJFGKAAXJI4EL2Q2SCJDIP63VBCSTVU/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67BCB643229

Various minor errors were gathered over the time in batman-adv's kernel-doc
comments. Get rid of many of them before they are copied (again) to new
functions.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_v.c          | 2 +-
 net/batman-adv/bat_v_ogm.c      | 8 ++++----
 net/batman-adv/bitarray.c       | 2 +-
 net/batman-adv/bitarray.h       | 2 +-
 net/batman-adv/fragmentation.c  | 3 ++-
 net/batman-adv/hash.h           | 4 ++--
 net/batman-adv/mesh-interface.c | 6 +++---
 net/batman-adv/netlink.c        | 4 ++--
 net/batman-adv/originator.c     | 4 ++--
 net/batman-adv/tvlv.c           | 4 ++--
 10 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index ac2932da..8812fe7b 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -587,7 +587,7 @@ batadv_v_gw_get_best_gw_node(struct batadv_priv *bat_priv)
 }
 
 /**
- * batadv_v_gw_is_eligible() - check if a originator would be selected as GW
+ * batadv_v_gw_is_eligible() - check if an originator would be selected as GW
  * @bat_priv: the bat priv with all the mesh interface information
  * @curr_gw_orig: originator representing the currently selected GW
  * @orig_node: the originator representing the new candidate
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index b3f246f6..dc3c1a93 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -513,7 +513,7 @@ static u32 batadv_v_forward_penalty(struct batadv_priv *bat_priv,
  * @bat_priv: the bat priv with all the mesh interface information
  * @ogm_received: previously received OGM to be forwarded
  * @orig_node: the originator which has been updated
- * @neigh_node: the neigh_node through with the OGM has been received
+ * @neigh_node: the neigh_node through which the OGM has been received
  * @if_incoming: the interface on which this OGM was received on
  * @if_outgoing: the interface to which the OGM has to be forwarded to
  *
@@ -600,7 +600,7 @@ static void batadv_v_ogm_forward(struct batadv_priv *bat_priv,
  * @bat_priv: the bat priv with all the mesh interface information
  * @ogm2: OGM2 structure
  * @orig_node: Originator structure for which the OGM has been received
- * @neigh_node: the neigh_node through with the OGM has been received
+ * @neigh_node: the neigh_node through which the OGM has been received
  * @if_incoming: the interface where this packet was received
  * @if_outgoing: the interface for which the packet should be considered
  *
@@ -684,7 +684,7 @@ static int batadv_v_ogm_metric_update(struct batadv_priv *bat_priv,
  * @ethhdr: the Ethernet header of the OGM2
  * @ogm2: OGM2 structure
  * @orig_node: Originator structure for which the OGM has been received
- * @neigh_node: the neigh_node through with the OGM has been received
+ * @neigh_node: the neigh_node through which the OGM has been received
  * @if_incoming: the interface where this packet was received
  * @if_outgoing: the interface for which the packet should be considered
  *
@@ -779,7 +779,7 @@ static bool batadv_v_ogm_route_update(struct batadv_priv *bat_priv,
  * @ethhdr: the Ethernet header of the OGM2
  * @ogm2: OGM2 structure
  * @orig_node: Originator structure for which the OGM has been received
- * @neigh_node: the neigh_node through with the OGM has been received
+ * @neigh_node: the neigh_node through which the OGM has been received
  * @if_incoming: the interface where this packet was received
  * @if_outgoing: the interface for which the packet should be considered
  */
diff --git a/net/batman-adv/bitarray.c b/net/batman-adv/bitarray.c
index 2c49b271..67cb3563 100644
--- a/net/batman-adv/bitarray.c
+++ b/net/batman-adv/bitarray.c
@@ -24,7 +24,7 @@ static void batadv_bitmap_shift_left(unsigned long *seq_bits, s32 n)
  * batadv_bit_get_packet() - receive and process one packet within the sequence
  *  number window
  * @priv: the bat priv with all the mesh interface information
- * @seq_bits: pointer to the sequence number receive packet
+ * @seq_bits: pointer to the sequence number bitmap of received packets
  * @seq_num_diff: difference between the current/received sequence number and
  *  the last sequence number
  * @set_mark: whether this packet should be marked in seq_bits
diff --git a/net/batman-adv/bitarray.h b/net/batman-adv/bitarray.h
index 37f7ae41..2b9f5dbb 100644
--- a/net/batman-adv/bitarray.h
+++ b/net/batman-adv/bitarray.h
@@ -17,7 +17,7 @@
 /**
  * batadv_test_bit() - check if bit is set in the current window
  *
- * @seq_bits: pointer to the sequence number receive packet
+ * @seq_bits: pointer to the sequence number bitmap of received packets
  * @last_seqno: latest sequence number in seq_bits
  * @curr_seqno: sequence number to test for
  *
diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentation.c
index 14ccf781..1e42cf99 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -309,7 +309,8 @@ batadv_frag_merge_packets(struct hlist_head *chain)
  * batadv_skb_is_frag() - check if newly merged skb contains unicast fragment
  * @skb: newly merged skb
  *
- * Return: if newly merged skb is of type BATADV_UNICAST_FRAG
+ * Return: true if the newly merged skb is of type BATADV_UNICAST_FRAG, false
+ *  otherwise
  */
 static bool batadv_skb_is_frag(struct sk_buff *skb)
 {
diff --git a/net/batman-adv/hash.h b/net/batman-adv/hash.h
index fb251c38..86a2c200 100644
--- a/net/batman-adv/hash.h
+++ b/net/batman-adv/hash.h
@@ -120,10 +120,10 @@ static inline int batadv_hash_add(struct batadv_hashtable *hash,
  * @choose: callback calculating the hash index
  * @data: data passed to the aforementioned callbacks as argument
  *
- * ata could be the structure you use with  just the key filled, we just need
+ * data could be the structure you use with just the key filled, we just need
  * the key for comparing.
  *
- * Return: returns pointer do data on success, so you can remove the used
+ * Return: returns pointer to data on success, so you can remove the used
  * structure yourself, or NULL on error
  */
 static inline void *batadv_hash_remove(struct batadv_hashtable *hash,
diff --git a/net/batman-adv/mesh-interface.c b/net/batman-adv/mesh-interface.c
index 7367c1bd..e5a55d24 100644
--- a/net/batman-adv/mesh-interface.c
+++ b/net/batman-adv/mesh-interface.c
@@ -392,13 +392,13 @@ static netdev_tx_t batadv_interface_tx(struct sk_buff *skb,
  * @orig_node: originator from which the batman-adv packet was sent
  *
  * Sends an ethernet frame to the receive path of the local @mesh_iface.
- * skb->data has still point to the batman-adv header with the size @hdr_size.
+ * skb->data must still point to the batman-adv header with the size @hdr_size.
  * The caller has to have parsed this header already and made sure that at least
  * @hdr_size bytes are still available for pull in @skb.
  *
  * The packet may still get dropped. This can happen when the encapsulated
- * ethernet frame is invalid or contains again an batman-adv packet. Also
- * unicast packets will be dropped directly when it was sent between two
+ * ethernet frame is invalid or contains again a batman-adv packet. Also
+ * unicast packets will be dropped directly when they were sent between two
  * isolated clients.
  */
 void batadv_interface_rx(struct net_device *mesh_iface,
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index 43f307d5..e3d47f3e 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -944,7 +944,7 @@ static int batadv_netlink_set_hardif(struct sk_buff *skb,
 }
 
 /**
- * batadv_netlink_dump_hardif() - Dump all hard interface into a messages
+ * batadv_netlink_dump_hardif() - Dump all hard interfaces into a message
  * @msg: Netlink message to dump into
  * @cb: Parameters from query
  *
@@ -1101,7 +1101,7 @@ static int batadv_netlink_get_vlan(struct sk_buff *skb, struct genl_info *info)
 }
 
 /**
- * batadv_netlink_set_vlan() - Get vlan attributes
+ * batadv_netlink_set_vlan() - Set vlan attributes
  * @skb: Netlink message with request data
  * @info: receiver information
  *
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index 15d660ca..a0940e5a 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -439,7 +439,7 @@ batadv_orig_ifinfo_new(struct batadv_orig_node *orig_node,
 }
 
 /**
- * batadv_neigh_ifinfo_get() - find the ifinfo from an neigh_node
+ * batadv_neigh_ifinfo_get() - find the ifinfo from a neigh_node
  * @neigh: the neigh node to be queried
  * @if_outgoing: the interface for which the ifinfo should be acquired
  *
@@ -472,7 +472,7 @@ batadv_neigh_ifinfo_get(struct batadv_neigh_node *neigh,
 }
 
 /**
- * batadv_neigh_ifinfo_new() - search and possibly create an neigh_ifinfo object
+ * batadv_neigh_ifinfo_new() - search and possibly create a neigh_ifinfo object
  * @neigh: the neigh node to be queried
  * @if_outgoing: the interface for which the ifinfo should be acquired
  *
diff --git a/net/batman-adv/tvlv.c b/net/batman-adv/tvlv.c
index cd75daea..403c8545 100644
--- a/net/batman-adv/tvlv.c
+++ b/net/batman-adv/tvlv.c
@@ -48,7 +48,7 @@ static void batadv_tvlv_handler_release(struct kref *ref)
 }
 
 /**
- * batadv_tvlv_handler_put() - decrement the tvlv container refcounter and
+ * batadv_tvlv_handler_put() - decrement the tvlv handler refcounter and
  *  possibly release it
  * @tvlv_handler: the tvlv handler to free
  */
@@ -272,7 +272,7 @@ void batadv_tvlv_container_register(struct batadv_priv *bat_priv,
  * @additional_packet_len: requested additional packet size on top of minimum
  *  size
  *
- * Return: true of the packet buffer could be changed to the requested size,
+ * Return: true if the packet buffer could be changed to the requested size,
  * false otherwise.
  */
 static bool batadv_tvlv_realloc_packet_buff(struct batadv_ogm_buf *ogm_buff,

-- 
2.47.3

