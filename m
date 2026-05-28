Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKVCFFdTGGoQjQgAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:38:15 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BBE5F3CF5
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:38:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B148783DE7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:38:14 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779979094;
 b=KD9skS9JWA7Q7ixKQJ/7EmvGZ0kBR8MYDoYHV/MIjwzXtZEX8t6ar78/P0Tq3D5ZEQucQ
 bBUJVs97TW/MNN3FsJKCoMDJwQ0g3mJE+pcAODUIGAD5OIqByEK4JoBNDnXxrKvC7qpy+Y5
 BUNlxDIEVz/F3uGoPKXxbCmiUQBRX3k=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779979094; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=aN0IUrUvp8EDXZgryZCRl5jSJ66WGgaIo5sHtV/HS1s=;
 b=AVZaDypueGSFhk+qO7KTBg1YMtIXJMlbK7X9zfZL1HBMwNkcUoBeULCrTnMAPq08ppyu1
 lgPR3tnngEGU4/Yfg/FHj74xNOP9/qFFxmz2P2b3/XOnoRKXzX0GIzSzTi7x+nSxdTNNyVK
 iYgPxFkA1rLIR5+B6MZy+hiXpb0S7+0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E3E078194C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2026 16:29:34 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779978574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=aN0IUrUvp8EDXZgryZCRl5jSJ66WGgaIo5sHtV/HS1s=;
	b=15VZQqGBrxQVyVx3OQHYFIDnQDPn86fT44Vc9/T7hOiUezE0h9DD0MomO07CxUTukMnlYS
	zGsZo+BDRxR4kb2KEiNTtspWh/Mmj90LvrdN5fbxfDnG4nf7tQdbswN3rv+YB+ksfSVzxS
	yiEJjGTPNmPU6wgfRnrvP661RY9auao=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779978574;
	b=A4PekbLZ3rRGRSxPVtOEQDvb+3BffnXwN5jhqjN2G0SDJENzeKtlu57ycR8q58blL/PT2J
	nooUhT2iIkqSkLBFQCgyD8ULDmCnP3aWwM5Yh/d/oSRBlQkML9wA+JDxxMSt0fY1oLJp2E
	EvhwCsw/vjTn3N50u+a3LBIAKfGrt5Y=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=zhpAmqRC;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1779978574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aN0IUrUvp8EDXZgryZCRl5jSJ66WGgaIo5sHtV/HS1s=;
	b=zhpAmqRCJb9aaG5+K884qKiZDrvHjgaKbHwLrYfoIRr5SUorjzpoYbm34vacTyh83uQBwo
	B2J44j8zcMtUz77B2nTg0W51nJfBzQOpI9A9TCMl5l9T5mggeGNQ+FiGrPigGtzrq95b1f
	g+jby1LMF1duRn0S+v6GOKn2gLOSYJdyvzw9HPSCIJkbXTMA8zhh1yufdxO7jq0ZR7obTn
	911Fkl5cKeNLkl9DritqkEO6pOMPnFXNvrQAHvRKbTmlj1GXRmsMMSeKepBj5ILpPIeatu
	bqJaS2/Dhkfcb2XWvg5STyiOWzvgddP3t1eOWEpfNwW1AB6+UuaRTdrh9FXSTw==
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
Subject: [PATCH net-next 11/15] batman-adv: replace non-atomic packet_size_max
 with (READ|WRITE)_ONCE
Date: Thu, 28 May 2026 16:29:20 +0200
Message-ID: <20260528142924.329658-12-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260528142924.329658-1-sw@simonwunderlich.de>
References: <20260528142924.329658-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: V3ZW2PDDMOBB3YOCMUJEGSRS2LMGPADQ
X-Message-ID-Hash: V3ZW2PDDMOBB3YOCMUJEGSRS2LMGPADQ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/V3ZW2PDDMOBB3YOCMUJEGSRS2LMGPADQ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[simonwunderlich.de:+]
X-Rspamd-Queue-Id: 00BBE5F3CF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sven Eckelmann <sven@narfation.org>

The maximum packet size of an meshif is only accessed as plain loads/stores
and does not require full atomic_t semantics. Convert to an native integer
and replace its users with READ_ONCE()/WRITE_ONCE() to avoid load/store
tearing.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c    | 3 +--
 net/batman-adv/mesh-interface.c    | 2 +-
 net/batman-adv/translation-table.c | 6 +++---
 net/batman-adv/types.h             | 2 +-
 4 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 85a1f1154bb42..af896b42b0d80 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -7,7 +7,6 @@
 #include "hard-interface.h"
 #include "main.h"
 
-#include <linux/atomic.h>
 #include <linux/bug.h>
 #include <linux/byteorder/generic.h>
 #include <linux/compiler.h>
@@ -629,7 +628,7 @@ int batadv_hardif_min_mtu(struct net_device *mesh_iface)
 	 * overhead). For example, this value is used by TT to compute the
 	 * maximum local table size
 	 */
-	atomic_set(&bat_priv->packet_size_max, min_mtu);
+	WRITE_ONCE(bat_priv->packet_size_max, min_mtu);
 
 	/* the real mesh-interface MTU is computed by removing the payload
 	 * overhead from the maximum amount of bytes that was just computed.
diff --git a/net/batman-adv/mesh-interface.c b/net/batman-adv/mesh-interface.c
index 72a0ec823e3ca..dd01174fa5892 100644
--- a/net/batman-adv/mesh-interface.c
+++ b/net/batman-adv/mesh-interface.c
@@ -779,7 +779,7 @@ static int batadv_meshif_init_late(struct net_device *dev)
 	WRITE_ONCE(bat_priv->log_level, 0);
 #endif
 	WRITE_ONCE(bat_priv->fragmentation, 1);
-	atomic_set(&bat_priv->packet_size_max, BATADV_MAX_MTU);
+	WRITE_ONCE(bat_priv->packet_size_max, BATADV_MAX_MTU);
 	atomic_set(&bat_priv->bcast_queue_left, BATADV_BCAST_QUEUE_LEN);
 	atomic_set(&bat_priv->batman_queue_left, BATADV_BATMAN_QUEUE_LEN);
 
diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 515f26ff8c269..e319b0796f7c8 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -649,7 +649,7 @@ bool batadv_tt_local_add(struct net_device *mesh_iface, const u8 *addr,
 	/* Ignore the client if we cannot send it in a full table response. */
 	table_size = batadv_tt_local_table_transmit_size(bat_priv);
 	table_size += batadv_tt_len(1);
-	packet_size_max = atomic_read(&bat_priv->packet_size_max);
+	packet_size_max = READ_ONCE(bat_priv->packet_size_max);
 	if (table_size > packet_size_max) {
 		net_ratelimited_function(batadv_info, mesh_iface,
 					 "Local translation table size (%i) exceeds maximum packet size (%i); Ignoring new local tt entry: %pM\n",
@@ -3069,7 +3069,7 @@ static bool batadv_send_other_tt_response(struct batadv_priv *bat_priv,
 
 	/* Don't send the response, if larger than fragmented packet. */
 	tt_len = sizeof(struct batadv_unicast_tvlv_packet) + tvlv_len;
-	if (tt_len > atomic_read(&bat_priv->packet_size_max)) {
+	if (tt_len > READ_ONCE(bat_priv->packet_size_max)) {
 		net_ratelimited_function(batadv_info, bat_priv->mesh_iface,
 					 "Ignoring TT_REQUEST from %pM; Response size exceeds max packet size.\n",
 					 res_dst_orig_node->orig);
@@ -3932,7 +3932,7 @@ bool batadv_tt_add_temporary_global_entry(struct batadv_priv *bat_priv,
 void batadv_tt_local_resize_to_mtu(struct net_device *mesh_iface)
 {
 	struct batadv_priv *bat_priv = netdev_priv(mesh_iface);
-	int packet_size_max = atomic_read(&bat_priv->packet_size_max);
+	int packet_size_max = READ_ONCE(bat_priv->packet_size_max);
 	int table_size, timeout = BATADV_TT_LOCAL_TIMEOUT / 2;
 	bool reduced = false;
 
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 58375c0a643b8..51880748bc2f5 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1570,7 +1570,7 @@ struct batadv_priv {
 	 *  multiple fragmented skbs or a single frame if fragmentation is
 	 *  disabled
 	 */
-	atomic_t packet_size_max;
+	u32 packet_size_max;
 
 	/**
 	 * @frag_seqno: incremental counter to identify chains of egress
-- 
2.47.3

