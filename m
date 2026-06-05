Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B8anC9p4ImoMYAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:20:58 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AE020645E4E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:20:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b="k/zYiKnl";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 81A448166E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:20:57 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780644057;
 b=auo5kSpLIF71zHU1Hk7IbfCf80DdPjVUey5wDVYJAg8rSUWRYS/p39cro4z59VIziYj7k
 my7Aw6dtEpI+a4xWpS6PtSopsuV28cDNpleucUYAmFyVoH2jB/rWPuDpBQm48zmuE4T/UDt
 j/XDiwBt+jXVH6uF5bIIcD65DMsIJ7I=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780644057; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=t5VjgMR6R+zmUaoqlylF20/UjikHzP0+tYEYge+V4aQ=;
 b=DUzWq6gekJVTsCeL4DeenNxDG4BJq6Y/LvdqYjXb6RfTSUFoSmDfHHZH4sLk6IFj64bRk
 G7Epmvn+dB/IMD4eQGMxIi5XgkV2TVKVuCkrWIIfjRDCzrHZmSD5bo1b5bpBnYCjBtgm143
 PEUViW20Fv9ex6SP675QVv8PGLYoZAc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3DB1F8026D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 05 Jun 2026 09:20:13 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780644014;
	b=xovVWO80VKeSKCUK1NIqn5LMNz4LckGgZePChGXiZgzOYBOvIrioozAVc+f0bNqtbUtzRX
	s1AtsdJvmsKXz6clZVoz7uMoUfeHK007aU83Hhrjdxp7+QI3C6/8sCmw88btmQEV+L+f4U
	4FndaGwbnUEBssfbM92G8DsVZOFFvl8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b="k/zYiKnl";
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780644014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=t5VjgMR6R+zmUaoqlylF20/UjikHzP0+tYEYge+V4aQ=;
	b=c3qHRyZIvAWG0KYWUoKYw1l6oy2gcklAl4e2zA6YXUV5tVOmIyJYMriID9vqa23Hcztwyv
	lwbSqezbMOZDA0rel0XJvXHhI/41gZYYLE75wMJlba3pa3iEgZqVfINkOCT2RdOc0qqQwf
	ZOHUJdf7b3XYOapm0MMvLKLfj29Vhv4=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780644013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t5VjgMR6R+zmUaoqlylF20/UjikHzP0+tYEYge+V4aQ=;
	b=k/zYiKnlGSijjO53aH3e9I0c/Rcyd75R9R5vr9LMGh+BLm162CyI5A/q28zQ0Qg8HBI9q6
	rKTWtEUtQBEJVj+pPHF33UN0QkPc7nPM4lLJHCcIIIun6Pmz4LEXk1mCXT+NUQWf1bwJSk
	yzMWH0v13R+LdHKSyfuRzy5ZzImInKViqyL9e6RQ3LuiAxrC16E4Xzcstk6ewWmcgtZ5B+
	ADoNPYRgQ8vy64ufaowBvYvvJAU+ii+7Kc+f9OJDERSqfwqmZeXojuN3mG4zhCqxtDG5fx
	EBUMfrtHxzk1B0KmFXzN8i92tdh3os4pbe5ok/d6g7kW3ogfP16WtW8z3iAuZA==
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
Subject: [PATCH net-next 03/11] batman-adv: drop duplicated wifi_flags
 assignments
Date: Fri,  5 Jun 2026 09:19:57 +0200
Message-ID: <20260605072005.490368-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260605072005.490368-1-sw@simonwunderlich.de>
References: <20260605072005.490368-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: WM4VOXSTTYBOJHJBC5QEEXBKKHXYXNKW
X-Message-ID-Hash: WM4VOXSTTYBOJHJBC5QEEXBKKHXYXNKW
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WM4VOXSTTYBOJHJBC5QEEXBKKHXYXNKW/>
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
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE020645E4E

From: Sven Eckelmann <sven@narfation.org>

During the initialization of the batadv_wifi_net_device_state, it is enough
to write the wifi_flags once before the batadv_wifi_net_device_state is
added to the batadv_wifi_net_devices rhashtable.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 43ebf86e7b368..96b8130375a3a 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -987,7 +987,6 @@ batadv_wifi_net_device_insert(struct net_device *net_dev, u32 wifi_flags)
 	if (!device_state)
 		return -ENOMEM;
 
-	device_state->wifi_flags = wifi_flags;
 	netdev_hold(net_dev, &device_state->dev_tracker, GFP_ATOMIC);
 	device_state->netdev = net_dev;
 	WRITE_ONCE(device_state->wifi_flags, wifi_flags);
-- 
2.47.3

