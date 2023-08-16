Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7BE77E6AE
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 16 Aug 2023 18:42:02 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B466E83226
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 16 Aug 2023 18:42:02 +0200 (CEST)
ARC-Seal: i=3; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1692204122;
 b=4LpMXhFrqf6o6rrW31tNrOHLfXDSNWHIGAK7sjiNSW7seru71/Jr29iI8Efu3sIVekjrz
 A75l/upKo/1sK73f822JsMDkfmytDpy/9Nzw59e9uA+Skpwm6PMjGIoBE6/sEreDqm7sUM5
 hFXnjFx4aeOz7yqMwFOq+ZPbt+aGo6Y=
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1692204122; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=11GJVf3mHqk6CBqwQS0ucNSZAqSlqPiz6vx8rtLSE8Q=;
 b=DavNjaolWqTgSGImf72TRs+Qp754ugn5bMh/qBLvLs7zp5fl7nGpw5dCJK3Q06S0KAUMe
 M7sLpuFWu0/GktxQhLUYmk9Js7WwW/GK8D8s43SDXh6mRANW89mMryD3CvJBj4nID7vGTm7
 gKehfZuwGJUfhJC1n82UkEMvGW/3TAw=
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
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D345B81E85
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 16 Aug 2023 18:40:03 +0200 (CEST)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1692204003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=11GJVf3mHqk6CBqwQS0ucNSZAqSlqPiz6vx8rtLSE8Q=;
	b=OllGkV9AxCcvpUKkejBjG4nluEU+5ehA7diq5HgwxXn5cM5mUB3RqBzdYbxUfTqFHxk61R
	PFxvSMpLmEOk1eAz1/ko2395H+Lady0LlEz+MXNEB8Uk+NEEOtPTzbFE84M3zd2BbbTuOs
	5QBKIIyxcH9OffCEdcFofpRAN0bgYIU=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=1gXJSkh5;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("simonwunderlich.de:s=09092022:i=1")
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1692204003; a=rsa-sha256;
	cv=pass;
	b=xEAXPxLch3hyla8Hl0VBN0gl3BEaDqBAltlgxb9eNPG6UKrDLF3gLv5noS/GTABzFgz0wP
	BQRzjI5wxvDlwFzmMMTGZmFa8HhdTtX77jwpsPERtmxQNm66JbhokO8kFwP4zT2vm3drOs
	XcZrL/VKT+s2F/IT8ruoo1CVm8HHj8g=
Received: from kero.packetmixer.de
 (p200300fA272a67000bB2d6DCAf57d46e.dip0.t-ipconnect.de
 [IPv6:2003:fa:272a:6700:bb2:d6dc:af57:d46e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id A3E20FB5CB;
	Wed, 16 Aug 2023 18:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1692204003;
 h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=11GJVf3mHqk6CBqwQS0ucNSZAqSlqPiz6vx8rtLSE8Q=;
	b=1gXJSkh5TOOdUOZ0MlX3uWaPteM2CB5UuLPNo+FHc9CvibFPCl/kuWeG5IQqcXRUbH49Ud
	Jzcg0ltn4cHhM86s6vH34Xy9/cDH8jljsNqwcPuQqvws6KJPzEEMvVU8oLQQsiDGb6Kk8p
	7ySIVMDGYoqAGPb176gObY+b1dlUbWiRmbd8IzieKOVsBgPuYKs2rneqtLsvShgnsl9sqU
	gPqHU7/MKg5hBtMHEUqpd4l0j0joOtsJjXFymd4YgpRPQj5ew9rpFXN5Dw2HBG0Y4vLaNx
	Au0+xbiNDIhXdq8F6Q93opsTYGOvI+kZ+fY7B3JDnjpxyzO1P02WS32oU9+kbA==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 6/7] batman-adv: Keep batadv_netlink_notify_* static
Date: Wed, 16 Aug 2023 18:39:59 +0200
Message-Id: <20230816164000.190884-7-sw@simonwunderlich.de>
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
	bh=11GJVf3mHqk6CBqwQS0ucNSZAqSlqPiz6vx8rtLSE8Q=;
	b=X4zxSjo3QoOa0lfTBSYXoMx/sNMNU8Cyn0bbAtXPWxR+qrL9sfKYPTt9a5u/YQoxXY4oOH
	WPRC5IYYOnwKCwLHDr+DsQ5XS0/wb47k2Ubo25xPDz5Qei2Y5MLouRMmK66bkHs43l8Bl6
	rr4VOrId4FDvXGSX+UNZDlGQ0mnTT7Mop/9lhGvnQKF1++ljNCic2AeL6hn5kSS3HAnlbg
	r0zHFpJh382jcDNaDc35JV7nESgJlZ3l9PB4x0Ou+KKNBps6/fkPKrk0z/JgCKg2UpTmA8
	tZUqF7vpGvSaKb8FQkVsJV84GI8TZ87N9p22FWLCOn/ycdfE2B3ZQYn90brzFQ==
ARC-Seal: i=1; s=09092022; d=simonwunderlich.de; t=1692204003; a=rsa-sha256;
	cv=none;
	b=v4+4vyKKXtUZY7uAr2EL6pZr+1KHZQg1Nnczdf1mOIMSt2KUQaVOw9IzIh4rqdhSa8gHNZMpIMVVqG71QIA9ZyCPSYmaNtGYnqunWr2XzYhkNqwUr+wVkerVOdMJ/7MWWl2VU1YIBTaWaaOTt68pfvg29XLqfYwszXC7H/COLhU+gujlNVbaNRamb/iohWtecvoCWMVa1O3vcpVYKILb0qXE0ijkmsnBk6Ai6ikW8WBE0vWBWNMaL6kYIhKYi6W8b+UshvK006yRsgHrKGDLcvH8503OkjPeq4GH6ATKjKnKyKbDSPb3Ii+7mjp1R8Qd+REXr17Gx6axE1U72c5GfQ==
ARC-Authentication-Results: i=1;
	mail.simonwunderlich.de;
	auth=pass smtp.auth=sw@simonwunderlich.de smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: RJMORXGCPQQO4WTWVWEYGUUWM3ZR7TYA
X-Message-ID-Hash: RJMORXGCPQQO4WTWVWEYGUUWM3ZR7TYA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RJMORXGCPQQO4WTWVWEYGUUWM3ZR7TYA/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The batadv_netlink_notify_*() functions are not used by any other source
file. Just keep them local to netlink.c to get informed by the compiler
when they are not used anymore.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/netlink.c | 10 +++++-----
 net/batman-adv/netlink.h |  6 ------
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index ad5714f737be..b6c512ce6704 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -377,7 +377,7 @@ static int batadv_netlink_mesh_fill(struct sk_buff *msg,
  *
  * Return: 0 on success, < 0 on error
  */
-int batadv_netlink_notify_mesh(struct batadv_priv *bat_priv)
+static int batadv_netlink_notify_mesh(struct batadv_priv *bat_priv)
 {
 	struct sk_buff *msg;
 	int ret;
@@ -858,8 +858,8 @@ static int batadv_netlink_hardif_fill(struct sk_buff *msg,
  *
  * Return: 0 on success, < 0 on error
  */
-int batadv_netlink_notify_hardif(struct batadv_priv *bat_priv,
-				 struct batadv_hard_iface *hard_iface)
+static int batadv_netlink_notify_hardif(struct batadv_priv *bat_priv,
+					struct batadv_hard_iface *hard_iface)
 {
 	struct sk_buff *msg;
 	int ret;
@@ -1073,8 +1073,8 @@ static int batadv_netlink_vlan_fill(struct sk_buff *msg,
  *
  * Return: 0 on success, < 0 on error
  */
-int batadv_netlink_notify_vlan(struct batadv_priv *bat_priv,
-			       struct batadv_softif_vlan *vlan)
+static int batadv_netlink_notify_vlan(struct batadv_priv *bat_priv,
+				      struct batadv_softif_vlan *vlan)
 {
 	struct sk_buff *msg;
 	int ret;
diff --git a/net/batman-adv/netlink.h b/net/batman-adv/netlink.h
index 48102cc7490c..876d2806a67d 100644
--- a/net/batman-adv/netlink.h
+++ b/net/batman-adv/netlink.h
@@ -21,12 +21,6 @@ int batadv_netlink_tpmeter_notify(struct batadv_priv *bat_priv, const u8 *dst,
 				  u8 result, u32 test_time, u64 total_bytes,
 				  u32 cookie);
 
-int batadv_netlink_notify_mesh(struct batadv_priv *bat_priv);
-int batadv_netlink_notify_hardif(struct batadv_priv *bat_priv,
-				 struct batadv_hard_iface *hard_iface);
-int batadv_netlink_notify_vlan(struct batadv_priv *bat_priv,
-			       struct batadv_softif_vlan *vlan);
-
 extern struct genl_family batadv_netlink_family;
 
 #endif /* _NET_BATMAN_ADV_NETLINK_H_ */
-- 
2.39.2

