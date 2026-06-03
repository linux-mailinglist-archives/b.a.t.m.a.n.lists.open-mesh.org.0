Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jBVVCPquH2q/ogAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:35:06 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B703763429A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:35:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Kf6mpFH0;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9526B818C3
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:35:05 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780461305;
 b=05/N6W2gX3ClMZ3JQlkfn/bTDlOnmP7WUWoriYapE3x8NGfMWcxZBXUlKZK1pcyDGeasz
 9W/9OSVyN40KMtYTaycrfxNR8y/u+o4+STCKxOPEDhlPvbXCJbBbJIMCyeEExWzC7ZyiU57
 WxAeIzAmPfVCdraRS5BirSK1XuCLKHY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780461305; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=w+ztb/9yt28Q6DzGZgQpcGc5ZB8Tdf30Bw0jE0wJzaU=;
 b=RGnBe41omZ8cd8Kirgj+k6kDvZLRhKPlqriCuI5Q/ffKotVYw4+DVSFr9YW74et7hEnKT
 LiqOscePkRz5Dh4cmAslSFeGLxZ7TJcvZ8ZMdzkeVeqQEJIUL2JMkhQFS66N1n2aosOaSU8
 gJ3CoAvLNmNkmTaXlhDjALKsJV2Tv64=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0122B84A91
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 06:29:49 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780460989;
	b=0PBnDzf/wHlLjgUuE+Axagp+xvaZKxBvAjoSN69MmWlTlhoc+nsS0iRmcDYEg0cTXXun26
	7By3Qw9QELfORpP6yUcf9ZED+rmWd1s+dhyUlKAIR6unNhLqMkmm26rsT+CX/PTw6j49vy
	BQYg8mc9UfsgJ6CvP+j337Aqgm7bkf4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Kf6mpFH0;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780460989;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=w+ztb/9yt28Q6DzGZgQpcGc5ZB8Tdf30Bw0jE0wJzaU=;
	b=rlKH+xv1L2CvVcrXTZneG9PlzfkobKaq222pswZTmmcAYxc0zO4MMDd9h+0BgZy53Oy8WB
	F7eJDqRLNSgy0v4T8aN5cYbKVXQHOKUTAuxJhtgVq3Ez4pG3U5LbT9S6mZ/+3w0j44HK4h
	BccSCciH1XE4+jbKknrjRJeUFp8PfpU=
Received: by dvalin.narfation.org (Postfix) id B3D211FD9C;
	Wed, 03 Jun 2026 04:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780460988;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=w+ztb/9yt28Q6DzGZgQpcGc5ZB8Tdf30Bw0jE0wJzaU=;
	b=Kf6mpFH0UO9LKfohNDnbquCYTvCdK84y+SWQiiRAUHvVGGK84U3F7FD5FoEABI0pimpDvE
	/2mJk4Ku9ouzc7+mm9Ru2WuerVQhMNN5d0oJFemG2Aeybq955zb9BPelT0WUB9EnbdDQiH
	nckt+eCBCpKN0zCaPzGV7YfcOapv2Jg=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 03 Jun 2026 06:29:04 +0200
Subject: [PATCH batadv v2 5/5] batman-adv: move hardif generation counter
 into batadv_priv
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-drop-hardif-list-v2-5-5f79821ca333@narfation.org>
References: <20260603-drop-hardif-list-v2-0-5f79821ca333@narfation.org>
In-Reply-To: <20260603-drop-hardif-list-v2-0-5f79821ca333@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>,
 Nora Schiffer <neocturne@universe-factory.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3076; i=sven@narfation.org;
 h=from:subject:message-id; bh=r1MuJ1dZHXLKmOofoP5TWLJboP5MrqMJk4FsAdvgWl4=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnya6e89LwWWhkcYC8UuZK3KKTi/iPn8ql317be+HmYX
 22Dpt+0jlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBE7r9iZGiMPZzlECig6XRu
 R679u0/tUnektT7pz3Q4e/TJxJIN/2sZGZbaa6bqv1RZW1Ly0fbk1ZSQkhqb2XlHImrWpl1u3Zf
 dww8A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: EUWOESWPDGWYDYJ6G3RI3AGZPJZNTGDI
X-Message-ID-Hash: EUWOESWPDGWYDYJ6G3RI3AGZPJZNTGDI
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EUWOESWPDGWYDYJ6G3RI3AGZPJZNTGDI/>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:neocturne@universe-factory.net,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[narfation.org:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[universe-factory.net:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:mid,narfation.org:from_mime,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B703763429A

From: Nora Schiffer <neocturne@universe-factory.net>

The counter doesn't need to be global.
---
 net/batman-adv/hard-interface.c | 4 ++--
 net/batman-adv/main.c           | 1 -
 net/batman-adv/main.h           | 2 --
 net/batman-adv/netlink.c        | 2 +-
 net/batman-adv/types.h          | 3 +++
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 3990d826..8e16b20a 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -775,7 +775,7 @@ int batadv_hardif_enable_interface(struct net_device *net_dev,
 	hard_iface->mesh_iface = mesh_iface;
 	bat_priv = netdev_priv(hard_iface->mesh_iface);
 
-	batadv_hardif_generation++;
+	bat_priv->hardif_generation++;
 	ret = netdev_master_upper_dev_link(hard_iface->net_dev,
 					   mesh_iface, hard_iface, NULL, NULL);
 	if (ret)
@@ -894,7 +894,7 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 	batadv_purge_orig_ref(bat_priv);
 	batadv_purge_outstanding_packets(bat_priv, hard_iface);
 
-	batadv_hardif_generation++;
+	bat_priv->hardif_generation++;
 	netdev_upper_dev_unlink(hard_iface->net_dev, hard_iface->mesh_iface);
 	batadv_hardif_recalc_extra_skbroom(hard_iface->mesh_iface);
 
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index ad26b6ce..f3c2e42c 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -59,7 +59,6 @@
 #include "tp_meter.h"
 #include "translation-table.h"
 
-unsigned int batadv_hardif_generation;
 static int (*batadv_rx_handler[256])(struct sk_buff *skb,
 				     struct batadv_hard_iface *recv_if);
 
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index e3414504..e738758e 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -226,8 +226,6 @@ static inline int batadv_print_vid(unsigned short vid)
 		return -1;
 }
 
-extern unsigned int batadv_hardif_generation;
-
 extern struct workqueue_struct *batadv_event_workqueue;
 
 int batadv_mesh_init(struct net_device *mesh_iface);
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index 1449f364..557a5539 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -962,7 +962,7 @@ batadv_netlink_dump_hardif(struct sk_buff *msg, struct netlink_callback *cb)
 	bat_priv = netdev_priv(mesh_iface);
 
 	rtnl_lock();
-	cb->seq = batadv_hardif_generation << 1 | 1;
+	cb->seq = bat_priv->hardif_generation << 1 | 1;
 
 	netdev_for_each_lower_private(mesh_iface, hard_iface, iter) {
 		if (i++ < skip)
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index deb0b738..5ea04c32 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1658,6 +1658,9 @@ struct batadv_priv {
 	/** @tp_num: number of currently active tp sessions */
 	atomic_t tp_num;
 
+	/** @hardif_generation: generation counter added to netlink hardif dumps */
+	unsigned int hardif_generation;
+
 	/** @orig_work: work queue callback item for orig node purging */
 	struct delayed_work orig_work;
 

-- 
2.47.3

