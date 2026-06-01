Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8H+3Cv1+HWpDbQkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 14:45:49 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C90F161F7EA
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 14:45:48 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7C70484ABF
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 14:45:48 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780317948;
 b=GNNrdjH+D+W7/DuRL1ud5Y+wx2LGeoveRtEpDaFpdHgxcEbFUVajyvFk3itDGahUXtABd
 wGM2R6oHaHvGvuRSQoT+T8STqmqMrl5zG96CEpxM2qgTaV12dW6vvaWB2Xb92Shc3HXX8P/
 FVqiRBf6Q25UeKaAVkY0RvSSyUC9Ml4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780317948; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Ri4AHRHZCuDHoKH27mQCgD4is/vIvn27vJEihLqUnqo=;
 b=kE8cQ359AF5jlgfzTW2VkML2iBM7zrenzqTt0/1zQLy6U2AdDPVWP4xyCYWjJW9Zhhzwz
 QUUPiyHf8hZUyr/Rh9xQkPTRNVuPksOQoFjxCRAZT4pEUs1WmpAqXrO8j0z0Tyj1b+T2o+s
 n+NXR4gP9/aG1+oTw3pN8ct4lzjqOU4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 89D9D8066D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 01 Jun 2026 14:36:52 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780317412;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Ri4AHRHZCuDHoKH27mQCgD4is/vIvn27vJEihLqUnqo=;
	b=FPDcW9WwSKQbsbtIrjtONAiEtAMrZEJH3AOQfZWCwoxcad5Ouq9IaEZ2+qT1MWqIab04Ok
	2zv+j6ndIjHv+vTA/C9o6cBVmieB2chC5bTZ6vpZs/WHSsMASjj8b0S1Ay07fDgn+GJs1V
	321cI/P+WooUZmAo7RrsAI7H/mBLg9E=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780317412;
	b=aUdKgUTdYZK86GX1xPnqGw1geTFndsBAv4+U8IvcmMdpF04SIqwi3SMHxR6iWIgy/Gj6q9
	EOcCcSm1IkvKT39rK8iYIXvrCcZFOuOHD4bI9QOSGu9WBhSwH4ReM3FAwCgU4dU4WBM7BJ
	eNZTVjeBS4I43U9rK0Nd3mnAPNZwiG4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=cKTHiUyL;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780317412;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ri4AHRHZCuDHoKH27mQCgD4is/vIvn27vJEihLqUnqo=;
	b=cKTHiUyLyA8ZXZzltVrKRaGBttu5cooLFMoPX8TNenkCAd7joQkJnSQY3hw9ou05x3ZOeo
	Gl7VGjwki/eiSiLxgWyuQmmnRoH0+scgs7yMOi2jHpB0CGPPUBKLHqeoWfSbjtDMCCmx74
	FNBT0ea12gqtgUbK3jVPfcueWuVxoRoEb5R6DE0C4KGdMFnjp9lkv9Eb07pThsysvMk0x6
	BwvtPwtkspr0IPkJduPbWvR+FxXdFGY7KzT3Wj2LQus6lGm2GHRmxBX+U0HPLKelYghEcV
	7DjcQTA+6RezUQ3SU0jfaevGlxvc4IUcWa4sQ8XptToiuYPyDgcIAU5NpKZA3g==
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
Subject: [PATCH net-next v2 11/15] batman-adv: replace non-atomic
 packet_size_max with (READ|WRITE)_ONCE
Date: Mon,  1 Jun 2026 14:36:25 +0200
Message-ID: <20260601123629.707089-12-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601123629.707089-1-sw@simonwunderlich.de>
References: <20260601123629.707089-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: AIQZFG4ISGDIRRYNCSLN4YGK6JVX2433
X-Message-ID-Hash: AIQZFG4ISGDIRRYNCSLN4YGK6JVX2433
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AIQZFG4ISGDIRRYNCSLN4YGK6JVX2433/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-0.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: C90F161F7EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sven Eckelmann <sven@narfation.org>

The maximum packet size of an meshif is only accessed as plain loads/stores
and does not require full atomic_t semantics. Convert to a native integer
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
index 86e7d10864e2f..bb3c31b5f259d 100644
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
index 7497f307c10db..b6797654b18ab 100644
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
index 58375c0a643b8..7533d71b73725 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1570,7 +1570,7 @@ struct batadv_priv {
 	 *  multiple fragmented skbs or a single frame if fragmentation is
 	 *  disabled
 	 */
-	atomic_t packet_size_max;
+	int packet_size_max;
 
 	/**
 	 * @frag_seqno: incremental counter to identify chains of egress
-- 
2.47.3

