Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GZzMzC3nmnwWwQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 25 Feb 2026 09:47:44 +0100
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAFE194617
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 25 Feb 2026 09:47:44 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0B4A1859FE
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 25 Feb 2026 09:47:44 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1772009264;
 b=q4HsaD6FCZEoMeJJVnO/MG7HHAZ6mUEpPQQLmjahINpkt/kc5x8iqe+Aj8Exv6M6BPCgE
 4S4JFKFO7nRiSNzCSZ4+VTsQIuFBGIaZyf8bmdMujF5a/rbxRkmpSHWflUTTFPtDP2shLeS
 CFUbfElN1rlQaIiTwKle76azQT9+Vzs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1772009264; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=v30cQTwA38kmUvIrRrsg1XszCC0mpvJq2Oj1Ejvnouk=;
 b=Pu1hK+ZudakSA+TTzuKfFPTWtEc+ibQQ/zYDUc6IHl810LYC6Q2GZ+fjJQWOt2ekWNZAO
 UcbJAZbXC0Pu8y0T/MLFI7z/iUQ7uY2K0Ht7FDgQnoyn5Lsg5wtNEq7ZQueH2KnjqEiRePM
 +eci7CZKcgKOoMq/Gu8sedPeXFSH/2Q=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=fail;
 arc=pass;
 dmarc=fail header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7C08485478
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 25 Feb 2026 09:46:20 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1772009190;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v30cQTwA38kmUvIrRrsg1XszCC0mpvJq2Oj1Ejvnouk=;
	b=WcrdfjIjXpSdBLJjcuEfdhot67Y3CMldEKQVM42Pd8QBaIld0WZGCvK7hhycEhXcJf+Wtq
	A5qYJ7XOROQGKcLFjCJ8tPIOMTOdzppfNTamuPLEOpFNlh4V6yHO0UBslA+L51DwJQ9SEw
	YfsVWiPQ8iIKqQINWbpOoxrCPjTWh98=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1772009190;
	b=aCnBCyWL4oUtGd6iNI0FMbjd15Uc6NXOkuQIkQwrERHnUqcC5sn0R9xIt907Pkb/zIHQh6
	SwjctsDWnDKdpEtk04MZwgn1NqutHKzO0T2YFEjsVqjdE9qGOZjNaXK5ldfQEu0ROVFqmP
	nIw5LOiZH8JvD8T2z9asonB82IEmVuo=
Received: from kero.packetmixer.de
 (p200300C5970D83d820Ce3bC4F6cb317e.dip0.t-ipconnect.de
 [IPv6:2003:c5:970d:83d8:20ce:3bc4:f6cb:317e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 0245FFA130;
	Wed, 25 Feb 2026 09:46:18 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	stable@vger.kernel.org,
	Christian Schmidbauer <github@grische.xyz>,
	=?UTF-8?q?S=C3=B6ren=20Skaarup?= <freifunk_nordm4nn@gmx.de>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 1/1] batman-adv: Avoid double-rtnl_lock ELP metric worker
Date: Wed, 25 Feb 2026 09:46:14 +0100
Message-ID: <20260225084614.229077-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260225084614.229077-1-sw@simonwunderlich.de>
References: <20260225084614.229077-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Message-ID-Hash: TT3XLNGGBSLWDXKJNLWNVKNZE2UVPUR5
X-Message-ID-Hash: TT3XLNGGBSLWDXKJNLWNVKNZE2UVPUR5
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
Archived-At: <>
List-Archive: <>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[simonwunderlich.de : No valid SPF, No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.open-mesh.org,narfation.org,grische.xyz,gmx.de,simonwunderlich.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:mid,simonwunderlich.de:email,gmx.de:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:email,grische.xyz:email]
X-Rspamd-Queue-Id: 7EAFE194617
X-Rspamd-Action: no action

From: Sven Eckelmann <sven@narfation.org>

batadv_v_elp_get_throughput() might be called when the RTNL lock is already
held. This could be problematic when the work queue item is cancelled via
cancel_delayed_work_sync() in batadv_v_elp_iface_disable(). In this case,
an rtnl_lock() would cause a deadlock.

To avoid this, rtnl_trylock() was used in this function to skip the
retrieval of the ethtool information in case the RTNL lock was already
held.

But for cfg80211 interfaces, batadv_get_real_netdev() was called - which
also uses rtnl_lock(). The approach for __ethtool_get_link_ksettings() must
also be used instead and the lockless version __batadv_get_real_netdev()
has to be called.

Cc: stable@vger.kernel.org
Fixes: 8c8ecc98f5c6 ("batman-adv: Drop unmanaged ELP metric worker")
Reported-by: Christian Schmidbauer <github@grische.xyz>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Tested-by: Sören Skaarup <freifunk_nordm4nn@gmx.de>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_v_elp.c      | 10 +++++++++-
 net/batman-adv/hard-interface.c |  8 ++++----
 net/batman-adv/hard-interface.h |  1 +
 3 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index cb16c1ed2a58f..fe832093d421f 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -111,7 +111,15 @@ static bool batadv_v_elp_get_throughput(struct batadv_hardif_neigh_node *neigh,
 			/* unsupported WiFi driver version */
 			goto default_throughput;
 
-		real_netdev = batadv_get_real_netdev(hard_iface->net_dev);
+		/* only use rtnl_trylock because the elp worker will be cancelled while
+		 * the rntl_lock is held. the cancel_delayed_work_sync() would otherwise
+		 * wait forever when the elp work_item was started and it is then also
+		 * trying to rtnl_lock
+		 */
+		if (!rtnl_trylock())
+			return false;
+		real_netdev = __batadv_get_real_netdev(hard_iface->net_dev);
+		rtnl_unlock();
 		if (!real_netdev)
 			goto default_throughput;
 
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 5113f879736b5..1c488049d5546 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -204,7 +204,7 @@ static bool batadv_is_valid_iface(const struct net_device *net_dev)
 }
 
 /**
- * batadv_get_real_netdevice() - check if the given netdev struct is a virtual
+ * __batadv_get_real_netdev() - check if the given netdev struct is a virtual
  *  interface on top of another 'real' interface
  * @netdev: the device to check
  *
@@ -214,7 +214,7 @@ static bool batadv_is_valid_iface(const struct net_device *net_dev)
  * Return: the 'real' net device or the original net device and NULL in case
  *  of an error.
  */
-static struct net_device *batadv_get_real_netdevice(struct net_device *netdev)
+struct net_device *__batadv_get_real_netdev(struct net_device *netdev)
 {
 	struct batadv_hard_iface *hard_iface = NULL;
 	struct net_device *real_netdev = NULL;
@@ -267,7 +267,7 @@ struct net_device *batadv_get_real_netdev(struct net_device *net_device)
 	struct net_device *real_netdev;
 
 	rtnl_lock();
-	real_netdev = batadv_get_real_netdevice(net_device);
+	real_netdev = __batadv_get_real_netdev(net_device);
 	rtnl_unlock();
 
 	return real_netdev;
@@ -336,7 +336,7 @@ static u32 batadv_wifi_flags_evaluate(struct net_device *net_device)
 	if (batadv_is_cfg80211_netdev(net_device))
 		wifi_flags |= BATADV_HARDIF_WIFI_CFG80211_DIRECT;
 
-	real_netdev = batadv_get_real_netdevice(net_device);
+	real_netdev = __batadv_get_real_netdev(net_device);
 	if (!real_netdev)
 		return wifi_flags;
 
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interface.h
index 9db8a310961ea..9ba8fb2bdceb4 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -67,6 +67,7 @@ enum batadv_hard_if_bcast {
 
 extern struct notifier_block batadv_hard_if_notifier;
 
+struct net_device *__batadv_get_real_netdev(struct net_device *net_device);
 struct net_device *batadv_get_real_netdev(struct net_device *net_device);
 bool batadv_is_cfg80211_hardif(struct batadv_hard_iface *hard_iface);
 bool batadv_is_wifi_hardif(struct batadv_hard_iface *hard_iface);
-- 
2.47.3

