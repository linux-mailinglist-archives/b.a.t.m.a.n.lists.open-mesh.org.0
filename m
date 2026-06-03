Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Uum8JjLZH2omrAAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:35:14 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F9C635437
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:35:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=Y4uKFZpG;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DB9CC84360
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:35:13 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780472113;
 b=jcDNEsXoNW3PvThBX7MKfOLNTpOnRjrEai0H+60w2WfGvoaUkKu5QEAw1MAVe5+67h1Va
 y130+gjJHWbO3ZFLHTwnVywK9qmjbO1TBHhsy4vpzyj4rRsUbA+GzmvALfMUIvFXjxQq6d7
 QD69Kb64z+oBbkmJWPcGMj48iqsTjM4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780472113; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=b6NJNfW7fPdSku+hsbYyNR7A78GPl3iKo739MOKi/yI=;
 b=Ck6D4EPcvjz9DwdB66kzXDZCukAeamAhcYL1zwyIciKbPcXk/Z4DN9LIRCxJVStDtHxK3
 St/bV/DsChjITj5760NAGLfPJoTsaojWoGw8lfklzDitvWK/lVIy+PqiqYlqji7ldjyIrrx
 ARRVDdYelNoOZyyyw1y3rzO2Hkp54AU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 23AFC818CD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 09:25:38 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780471538;
	b=1L4XIgHQ3Jij461Ju2E3jaPo2B9fLYKRw+gcGu73aqgXtTNPSDV3nRxuZXmFgvcwLsDKU1
	W8kd4PnxsgTmIDzA5N7LkrgUpt5LdPtDtc1gvc917S5LeHiLBBcLVpSSUhUyo2QhxVyEOA
	N0sDC6YADQnP3FvdbLL+Z+63CjuW8TM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=Y4uKFZpG;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780471538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=b6NJNfW7fPdSku+hsbYyNR7A78GPl3iKo739MOKi/yI=;
	b=mkRJBMS6u/YwUg18m+gy8+iVP8xvaueNA4jXSEBkK33msS+R6ftnz6gqeF/7DNu+6hCGQ6
	ryTsyeK6zoa4pJm4Lzbel6Cw5OMHrqIqFmp2HyI7zS/x0NFc7m05ErqvJRE/9r2UgvDqLz
	0kEBXHA8BidVpGDzRviXRjTux+aNOFo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780471537;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b6NJNfW7fPdSku+hsbYyNR7A78GPl3iKo739MOKi/yI=;
	b=Y4uKFZpGAw0LtCC5jDq4/lYi01e5ki0LgtlWGWHk85YBFvPtE88Cy5q42SXyzzLBeA74tT
	asHiKUF3RcEwAfhiYlaTG5X+gK/EmQtLsx7MQ6KX9JPB/dujK2Jtqk9scoGF6ZM7CWRL3/
	59C52/5NCYSPkdc/G7YxTC/zttAc1qwTcYdlo0k5uerMZXNi+UUGpILDX/7dWts+ewpOaF
	1KWbtlQ4XlOVx/JI56XBs2sgqqYZnzQHA3duKDoVq5Rm4htmHd2yr2BNafyAfbiOuN/zf4
	TyEwLyNNtYlPitL/P9dbtd80+M6g/TMfWKJJ5ZEAk0DdMbn9/6yEpwUemuamPA==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	stable@kernel.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 12/15] batman-adv: bla: annotate lasttime access with
 READ/WRITE_ONCE
Date: Wed,  3 Jun 2026 09:25:23 +0200
Message-ID: <20260603072527.174487-13-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260603072527.174487-1-sw@simonwunderlich.de>
References: <20260603072527.174487-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: ADD6AYAF2GI3676HIGNVIRPG24C5BW5N
X-Message-ID-Hash: ADD6AYAF2GI3676HIGNVIRPG24C5BW5N
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ADD6AYAF2GI3676HIGNVIRPG24C5BW5N/>
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
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:stable@kernel.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,simonwunderlich.de:mid,simonwunderlich.de:dkim,simonwunderlich.de:from_mime,simonwunderlich.de:email,lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 42F9C635437

From: Sven Eckelmann <sven@narfation.org>

The lasttime field for claim, backbone_gw, and loopdetect tracks the
jiffies value of the most recent activity and is used to detect timeouts.
These accesses are not consistently protected by a lock, so
READ_ONCE/WRITE_ONCE must be used to prevent data races caused by compiler
optimizations.

Cc: stable@kernel.org
Fixes: 23721387c409 ("batman-adv: add basic bridge loop avoidance code")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 28 +++++++++++++-------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 87d6b11161e4a..0461f11227d06 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -513,7 +513,7 @@ batadv_bla_get_backbone_gw(struct batadv_priv *bat_priv, const u8 *orig,
 		return NULL;
 
 	entry->vid = vid;
-	entry->lasttime = jiffies;
+	WRITE_ONCE(entry->lasttime, jiffies);
 	entry->crc = BATADV_BLA_CRC_INIT;
 	entry->bat_priv = bat_priv;
 	spin_lock_init(&entry->crc_lock);
@@ -581,7 +581,7 @@ batadv_bla_update_own_backbone_gw(struct batadv_priv *bat_priv,
 	if (unlikely(!backbone_gw))
 		return;
 
-	backbone_gw->lasttime = jiffies;
+	WRITE_ONCE(backbone_gw->lasttime, jiffies);
 	batadv_backbone_gw_put(backbone_gw);
 }
 
@@ -715,7 +715,7 @@ static void batadv_bla_add_claim(struct batadv_priv *bat_priv,
 		ether_addr_copy(claim->addr, mac);
 		spin_lock_init(&claim->backbone_lock);
 		claim->vid = vid;
-		claim->lasttime = jiffies;
+		WRITE_ONCE(claim->lasttime, jiffies);
 		kref_get(&backbone_gw->refcount);
 		claim->backbone_gw = backbone_gw;
 		kref_init(&claim->refcount);
@@ -737,7 +737,7 @@ static void batadv_bla_add_claim(struct batadv_priv *bat_priv,
 			return;
 		}
 	} else {
-		claim->lasttime = jiffies;
+		WRITE_ONCE(claim->lasttime, jiffies);
 		if (claim->backbone_gw == backbone_gw)
 			/* no need to register a new backbone */
 			goto claim_free_ref;
@@ -770,7 +770,7 @@ static void batadv_bla_add_claim(struct batadv_priv *bat_priv,
 	spin_lock_bh(&backbone_gw->crc_lock);
 	backbone_gw->crc ^= crc16(0, claim->addr, ETH_ALEN);
 	spin_unlock_bh(&backbone_gw->crc_lock);
-	backbone_gw->lasttime = jiffies;
+	WRITE_ONCE(backbone_gw->lasttime, jiffies);
 
 claim_free_ref:
 	batadv_claim_put(claim);
@@ -859,7 +859,7 @@ static bool batadv_handle_announce(struct batadv_priv *bat_priv, u8 *an_addr,
 		return true;
 
 	/* handle as ANNOUNCE frame */
-	backbone_gw->lasttime = jiffies;
+	WRITE_ONCE(backbone_gw->lasttime, jiffies);
 	crc = ntohs(*((__force __be16 *)(&an_addr[4])));
 
 	batadv_dbg(BATADV_DBG_BLA, bat_priv,
@@ -1254,7 +1254,7 @@ static void batadv_bla_purge_backbone_gw(struct batadv_priv *bat_priv, int now)
 						  head, hash_entry) {
 				if (now)
 					goto purge_now;
-				if (!batadv_has_timed_out(backbone_gw->lasttime,
+				if (!batadv_has_timed_out(READ_ONCE(backbone_gw->lasttime),
 							  BATADV_BLA_BACKBONE_TIMEOUT))
 					continue;
 
@@ -1335,7 +1335,7 @@ static void batadv_bla_purge_claims(struct batadv_priv *bat_priv,
 						primary_if->net_dev->dev_addr))
 				goto skip;
 
-			if (!batadv_has_timed_out(claim->lasttime,
+			if (!batadv_has_timed_out(READ_ONCE(claim->lasttime),
 						  BATADV_BLA_CLAIM_TIMEOUT))
 				goto skip;
 
@@ -1495,7 +1495,7 @@ static void batadv_bla_periodic_work(struct work_struct *work)
 		eth_random_addr(bat_priv->bla.loopdetect_addr);
 		bat_priv->bla.loopdetect_addr[0] = 0xba;
 		bat_priv->bla.loopdetect_addr[1] = 0xbe;
-		bat_priv->bla.loopdetect_lasttime = jiffies;
+		WRITE_ONCE(bat_priv->bla.loopdetect_lasttime, jiffies);
 		atomic_set(&bat_priv->bla.loopdetect_next,
 			   BATADV_BLA_LOOPDETECT_PERIODS);
 
@@ -1516,7 +1516,7 @@ static void batadv_bla_periodic_work(struct work_struct *work)
 						primary_if->net_dev->dev_addr))
 				continue;
 
-			backbone_gw->lasttime = jiffies;
+			WRITE_ONCE(backbone_gw->lasttime, jiffies);
 
 			batadv_bla_send_announce(bat_priv, backbone_gw);
 			if (send_loopdetect)
@@ -1900,7 +1900,7 @@ batadv_bla_loopdetect_check(struct batadv_priv *bat_priv, struct sk_buff *skb,
 	/* If the packet came too late, don't forward it on the mesh
 	 * but don't consider that as loop. It might be a coincidence.
 	 */
-	if (batadv_has_timed_out(bat_priv->bla.loopdetect_lasttime,
+	if (batadv_has_timed_out(READ_ONCE(bat_priv->bla.loopdetect_lasttime),
 				 BATADV_BLA_LOOPDETECT_TIMEOUT))
 		return true;
 
@@ -2015,7 +2015,7 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv, struct sk_buff *skb,
 
 	if (own_claim) {
 		/* ... allow it in any case */
-		claim->lasttime = jiffies;
+		WRITE_ONCE(claim->lasttime, jiffies);
 		goto allow;
 	}
 
@@ -2117,7 +2117,7 @@ bool batadv_bla_tx(struct batadv_priv *bat_priv, struct sk_buff *skb,
 		/* if yes, the client has roamed and we have
 		 * to unclaim it.
 		 */
-		if (batadv_has_timed_out(claim->lasttime, 100)) {
+		if (batadv_has_timed_out(READ_ONCE(claim->lasttime), 100)) {
 			/* only unclaim if the last claim entry is
 			 * older than 100 ms to make sure we really
 			 * have a roaming client here.
@@ -2362,7 +2362,7 @@ batadv_bla_backbone_dump_entry(struct sk_buff *msg, u32 portid,
 	backbone_crc = backbone_gw->crc;
 	spin_unlock_bh(&backbone_gw->crc_lock);
 
-	msecs = jiffies_to_msecs(jiffies - backbone_gw->lasttime);
+	msecs = jiffies_to_msecs(jiffies - READ_ONCE(backbone_gw->lasttime));
 
 	if (is_own)
 		if (nla_put_flag(msg, BATADV_ATTR_BLA_OWN)) {
-- 
2.47.3

