Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E18FD77E6D0
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 16 Aug 2023 18:44:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BCD6B8352E
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 16 Aug 2023 18:44:06 +0200 (CEST)
ARC-Seal: i=3; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1692204246;
 b=c/hHyVU1Vp6KCWSdv9ACNr0rWmQuPjBNNDl1klZazeqs4KYl+GIbY1Np7zrXGLP+U4Ffh
 oh3v4PhlQLGbOdkEuyFv0cnAb5lMP4as40tXFviMwTPEBygCeSkOTrMt5kDcu7qneT1cuzD
 WjRuXHwhQfb/EAI/DfbkPeVeIbCQIOc=
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1692204246; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=uW70VC8neWnWOII3gWAKEJvTBQed0PVoEJYqOOj4oac=;
 b=ms2mHt8R6Va+w9Mw7IfQpC0240ytBAD9rN5Ku7H8fa2d5wH0w8japYdRInyujZFoYr9I2
 gCQDewq4r5ZELKZ9d53PSESlvRPeSOcKcsOeagle2gsCyAtNzg3XdKgO5acYeV/nEcwXllw
 NVd/m2zCQAUIO8D9aSvJ7wZk6XJrujE=
ARC-Authentication-Results: i=3; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8CA7081D81
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 16 Aug 2023 18:40:03 +0200 (CEST)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1692204003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=uW70VC8neWnWOII3gWAKEJvTBQed0PVoEJYqOOj4oac=;
	b=Pzv3ZWINFRyR5mvzaEebWyW8iCBl6vTg/YIUu3bNas3VLk6LAhoIvkkr+hojcj6oXpVk9u
	Vo9simNXrXS3lYBwTIB/J+Eu9C+MZJKFf5t4n2OXOrc033KFSTwloUivWJIKisGCNApv++
	J8ItTTC6KJrHR8tGMFdH/MVEHSaJPAg=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=0pgIlluF;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("simonwunderlich.de:s=09092022:i=1")
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1692204003; a=rsa-sha256;
	cv=pass;
	b=imQFLPLEhV16LlMg2T+v1X73ZGOnKHoxiLUn++yVdqMANzjHJC97WkT7ND5v5LYNyiO5Fu
	7wgKV0x2tzbSX/b68t5mmOU1/gdXxa4UqH2SF2FQfvwK5Rq5OtOikQPcjTrWDWzbd9LSsq
	MxwJ/5d6+gIldO0r+t55Gq8EWPQ4UWo=
Received: from kero.packetmixer.de
 (p200300FA272a67000Bb2D6DcAf57D46E.dip0.t-ipconnect.de
 [IPv6:2003:fa:272a:6700:bb2:d6dc:af57:d46e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 4E9A2FB5CA;
	Wed, 16 Aug 2023 18:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1692204003;
 h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uW70VC8neWnWOII3gWAKEJvTBQed0PVoEJYqOOj4oac=;
	b=0pgIlluFbyenkLOXiV2hFNdxgWMSmASEV6FNzo35RFKowAvP+t1JFk9FBL4U1Xn/4HFr3r
	GtO0f8foQAXJ5j7vr3xWz4bApaZDyknwvfA24EbpQ8napChEui9eWw+w41DK+qDJAAjpmz
	pj6EW+x2RmBIMe5DMt7RI8fz5ZnsACKc8oxSiQwx2HdZ1rA/odUA9O1Czhr8WEvv3/Lw7e
	xA7z0JHwXkeSg1xJ+tYvk2P2dtyFj2kFfa27cZ36VjFFkpYrSLLeNJEuI0DDLORnU04rvS
	YlOYztjqeSxdQk5f5NfFZ6ux5Jh7JLA2MI82AicMjLiO/bXhqjEIKxnn2RFQ8A==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 5/7] batman-adv: Drop unused function batadv_gw_bandwidth_set
Date: Wed, 16 Aug 2023 18:39:58 +0200
Message-Id: <20230816164000.190884-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230816164000.190884-1-sw@simonwunderlich.de>
References: <20230816164000.190884-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=simonwunderlich.de; s=09092022; t=1692204003;
	h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uW70VC8neWnWOII3gWAKEJvTBQed0PVoEJYqOOj4oac=;
	b=n7+iRaexOwST9/xzbZzXws23EGdRsfsehX9ut+4V4rSH/j5kompevJUhBrqRX+didg+zQ7
	JtJMTMNgZk6Bh9EEJBeNx1fJLUzWW53S1Zv8poXf3AnGy5DDG+V6QQXxkZgcwsPCivn+dc
	Zur9jwlHznaDfY0j/NpSSGVJHV3kv9GCPXUqUKefU73cSLkNPvUYW95mlLv6N3RJhTHgsG
	hlVrSrhDjh9ucPLtQtCmGXP6Xqm0Z4j4irPW2GJ54PWktQqbzR40H1es5UTNdaXfjkjGrF
	zbcfTsWYJTuPD8fc2Tk1lAdswBBip7r8w79zm8qbTkXnmI6Mv4NszOfM3k0DQQ==
ARC-Seal: i=1; s=09092022; d=simonwunderlich.de; t=1692204003; a=rsa-sha256;
	cv=none;
	b=NRDQZmqNZwJ06vtJR14s2Kbiu8ZY4LL+IwRIDvE99fs8e8XzOic/nzmEYaCpPgkWKIZ7gjeraxR2qotACDtzy4iaZyYf4ISg8ZDTBaFpzgXlPtrdjFcV+vEL6ZXbay8/4DWNQ7SToLz1AwjyY4jCXYRq4BsQFnhOlhbknMttX12JGpt4SKymONa8BGSd7SnBnizzruO/u2aoqp9w5C6f2LUQj44sArAz9SkyMwc+BH2HJ0uJ8x5+1ztNrea2h+gJ/wAZzIc55vcnILmurk+doqeIbYs6W3DLK4kFS9xiy6gX+R6NLza1nxz59O12HUUlZ3Yynaq2dCMlmPhi2KjtxQ==
ARC-Authentication-Results: i=1;
	mail.simonwunderlich.de;
	auth=pass smtp.auth=sw@simonwunderlich.de smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: P2MXIAOHAKGD2QHD6W5KAFHMHTA2PCKX
X-Message-ID-Hash: P2MXIAOHAKGD2QHD6W5KAFHMHTA2PCKX
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/P2MXIAOHAKGD2QHD6W5KAFHMHTA2PCKX/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

This function is no longer used since the sysfs support was removed from
batman-adv.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/gateway_common.c | 88 ---------------------------------
 net/batman-adv/gateway_common.h |  2 -
 2 files changed, 90 deletions(-)

diff --git a/net/batman-adv/gateway_common.c b/net/batman-adv/gateway_common.c
index 6a964a773f57..d9632607f92b 100644
--- a/net/batman-adv/gateway_common.c
+++ b/net/batman-adv/gateway_common.c
@@ -9,7 +9,6 @@
 
 #include <linux/atomic.h>
 #include <linux/byteorder/generic.h>
-#include <linux/errno.h>
 #include <linux/kstrtox.h>
 #include <linux/limits.h>
 #include <linux/math64.h>
@@ -90,42 +89,6 @@ bool batadv_parse_throughput(struct net_device *net_dev, char *buff,
 	return true;
 }
 
-/**
- * batadv_parse_gw_bandwidth() - parse supplied string buffer to extract
- *  download and upload bandwidth information
- * @net_dev: the soft interface net device
- * @buff: string buffer to parse
- * @down: pointer holding the returned download bandwidth information
- * @up: pointer holding the returned upload bandwidth information
- *
- * Return: false on parse error and true otherwise.
- */
-static bool batadv_parse_gw_bandwidth(struct net_device *net_dev, char *buff,
-				      u32 *down, u32 *up)
-{
-	char *slash_ptr;
-	bool ret;
-
-	slash_ptr = strchr(buff, '/');
-	if (slash_ptr)
-		*slash_ptr = 0;
-
-	ret = batadv_parse_throughput(net_dev, buff, "download gateway speed",
-				      down);
-	if (!ret)
-		return false;
-
-	/* we also got some upload info */
-	if (slash_ptr) {
-		ret = batadv_parse_throughput(net_dev, slash_ptr + 1,
-					      "upload gateway speed", up);
-		if (!ret)
-			return false;
-	}
-
-	return true;
-}
-
 /**
  * batadv_gw_tvlv_container_update() - update the gw tvlv container after
  *  gateway setting change
@@ -155,57 +118,6 @@ void batadv_gw_tvlv_container_update(struct batadv_priv *bat_priv)
 	}
 }
 
-/**
- * batadv_gw_bandwidth_set() - Parse and set download/upload gateway bandwidth
- *  from supplied string buffer
- * @net_dev: netdev struct of the soft interface
- * @buff: the buffer containing the user data
- * @count: number of bytes in the buffer
- *
- * Return: 'count' on success or a negative error code in case of failure
- */
-ssize_t batadv_gw_bandwidth_set(struct net_device *net_dev, char *buff,
-				size_t count)
-{
-	struct batadv_priv *bat_priv = netdev_priv(net_dev);
-	u32 down_curr;
-	u32 up_curr;
-	u32 down_new = 0;
-	u32 up_new = 0;
-	bool ret;
-
-	down_curr = (unsigned int)atomic_read(&bat_priv->gw.bandwidth_down);
-	up_curr = (unsigned int)atomic_read(&bat_priv->gw.bandwidth_up);
-
-	ret = batadv_parse_gw_bandwidth(net_dev, buff, &down_new, &up_new);
-	if (!ret)
-		return -EINVAL;
-
-	if (!down_new)
-		down_new = 1;
-
-	if (!up_new)
-		up_new = down_new / 5;
-
-	if (!up_new)
-		up_new = 1;
-
-	if (down_curr == down_new && up_curr == up_new)
-		return count;
-
-	batadv_gw_reselect(bat_priv);
-	batadv_info(net_dev,
-		    "Changing gateway bandwidth from: '%u.%u/%u.%u MBit' to: '%u.%u/%u.%u MBit'\n",
-		    down_curr / 10, down_curr % 10, up_curr / 10, up_curr % 10,
-		    down_new / 10, down_new % 10, up_new / 10, up_new % 10);
-
-	atomic_set(&bat_priv->gw.bandwidth_down, down_new);
-	atomic_set(&bat_priv->gw.bandwidth_up, up_new);
-	batadv_gw_tvlv_container_update(bat_priv);
-
-	return count;
-}
-
 /**
  * batadv_gw_tvlv_ogm_handler_v1() - process incoming gateway tvlv container
  * @bat_priv: the bat priv with all the soft interface information
diff --git a/net/batman-adv/gateway_common.h b/net/batman-adv/gateway_common.h
index 87c37f907261..cb2e72d7ab14 100644
--- a/net/batman-adv/gateway_common.h
+++ b/net/batman-adv/gateway_common.h
@@ -27,8 +27,6 @@ enum batadv_bandwidth_units {
 #define BATADV_GW_MODE_CLIENT_NAME	"client"
 #define BATADV_GW_MODE_SERVER_NAME	"server"
 
-ssize_t batadv_gw_bandwidth_set(struct net_device *net_dev, char *buff,
-				size_t count);
 void batadv_gw_tvlv_container_update(struct batadv_priv *bat_priv);
 void batadv_gw_init(struct batadv_priv *bat_priv);
 void batadv_gw_free(struct batadv_priv *bat_priv);
-- 
2.39.2

