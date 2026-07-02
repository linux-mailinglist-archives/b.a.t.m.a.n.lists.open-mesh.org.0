Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XGPOA48zRmq7LgsAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 11:46:55 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6D36F5769
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 11:46:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=z6YIPQ3Z;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4E8F984298
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 11:46:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782985614;
 b=sbFGg9rOJZ8zdG+kV20r2FdtRstU8t+WlctbjbFH7qEP93YexFJVvsXY6Pm2wCEIyyKnJ
 pdsD0w1hMRqccPoF/KzjXg4WxWAAqJyWuSl85UM7O06z/ou4cnaIu41/FQ+SU7QswNyPror
 XGhzBqLtFt9ym4y4aLDpftx7BG34pDs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782985614; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=izJuo+msxj1C8WKiv+RCUBtfhucC6iMO9hjfUuqTw5U=;
 b=yMIP0coK+14wyCBonen/LT6gzjmIQ93Cqr4uwSo5+BzYeMiGSR42Mifw4z8cjF8NUieZF
 rpUWWtFsOdhz/2/wGagnfjR6+vsIdGQ2cC3LsTeCH9UV3MJX7G7woW0HnZEbAWKcI8uAQIM
 qS05w12Zl0CN0VdnCkSX65FlsKCDIE8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id B15D380824
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 02 Jul 2026 11:46:26 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782985596;
	b=N7qBJJ6v2U8/w+xl9SsPKMoaqTxbLR45ccVfhTruJIR/xvAnoHfpUi5GaqZ4laQZIEglsJ
	DXoCRBeWfNd2eHWQa4Zo2f4czPgnjY6Kad9nCW0D0VuJKDYsFMHtmzPj5kzLBGtgaUhiTG
	FEiFCb6H5292LvyXxdOp0XsJYucRJKw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782985596;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=izJuo+msxj1C8WKiv+RCUBtfhucC6iMO9hjfUuqTw5U=;
	b=hfqMDRWf5I7m5RaIEHiVZqFU26s0Rbf/d878yB0hhDD6JfWloFGPafamJbfE6feEtu4Bth
	MYpbsxaubeVlYWtDh9nCgEnYA064Pu1pdX5ulyjOsYs6fxdntjt/1hjQH/Me24gaiX30Y4
	eqyuYAxqB3F6+EdwOSh2UE9NDKscLcw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=z6YIPQ3Z;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id A72CF1FE5D;
	Thu, 02 Jul 2026 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782985585;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=izJuo+msxj1C8WKiv+RCUBtfhucC6iMO9hjfUuqTw5U=;
	b=z6YIPQ3ZOTPCgRYsVK0LxLYFSa2BlIhErWIZwVn7t6DjiALhRh3j67qCkuy3sENhx2FMH6
	bAkUhtIQz8UN093+3XMlaBre42rAU6CpWWjj69tfFZIQsHfAYLZTnfMGKE6DVVXN0NbwkX
	6Bn/tRgUc4YZ4osB9DDS5/pH0QoURqs=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 02 Jul 2026 11:46:21 +0200
Subject: [PATCH batadv] batman-adv: ensure minimal ethernet header on TX
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-tx-may-pull-v1-1-f860d3a3cffd@narfation.org>
X-B4-Tracking: v=1; b=H4sIAGwzRmoC/yWMwQ6CMBAFf4W8s5ssNaHGXzEeFtjqGkTSFoIh/
 LtVjzPJzIak0TThXG2Iuliy11igPlTo7jLelKwvDMeuYc+O8kpPedM0DwP50DjhU6j9kVGKKWq
 w9Xe7oJUs/YLr36e5fWiXvyvs+wdcdL7ddwAAAA==
X-Change-ID: 20260702-tx-may-pull-7f62a08f1730
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sashiko <sashiko-bot@kernel.org>, Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1469; i=sven@narfation.org;
 h=from:subject:message-id; bh=4xftEZTl/lgpHPQ8u7YetWq1h2/e6U7jbYY7lorl1Mo=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFluxvm1gZVHGLx6mN5YJDxVEGnbfJxprpb0duFWxS9vw
 2bt9bzTUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAbiIAMP/8JWcEybP9NiYdzK7
 93XuZJb1i1mMykRvv1W/JvN9jabvB0aGm3tWhTlYCvpWuvtdZV/86OFPXp7/8ovW6zoUr04Mrvz
 BBQA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: THJNCLI57HNJXQ6CKEPCUCREKBLVBQUC
X-Message-ID-Hash: THJNCLI57HNJXQ6CKEPCUCREKBLVBQUC
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/THJNCLI57HNJXQ6CKEPCUCREKBLVBQUC/>
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
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sashiko-bot@kernel.org,m:sven@narfation.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6F6D36F5769

As documented in commit 8bd67ebb50c0 ("net: bridge: xmit: make sure we have
at least eth header len bytes"), it is possible by for a local user with
eBPF TC hook access to attach a tc filter which truncates the packet and
redirects to an batadv interface. But the code assumes that at least
ETH_HLEN bytes are available and thus might read outside of the available
buffer.

The batadv_interface_tx() must therefore always check itself if enough data
is available for the ethernet header and don't rely on min_header_len.

Fixes: 094a751463a9 ("route outgoing traffic")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/mesh-interface.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/mesh-interface.c b/net/batman-adv/mesh-interface.c
index a17514ea..7803c5d3 100644
--- a/net/batman-adv/mesh-interface.c
+++ b/net/batman-adv/mesh-interface.c
@@ -235,6 +235,9 @@ static netdev_tx_t batadv_interface_tx(struct sk_buff *skb,
 	if (READ_ONCE(bat_priv->mesh_state) != BATADV_MESH_ACTIVE)
 		goto dropped;
 
+	if (!pskb_may_pull(skb, ETH_HLEN))
+		goto dropped;
+
 	/* reset control block to avoid left overs from previous users */
 	memset(skb->cb, 0, sizeof(struct batadv_skb_cb));
 

---
base-commit: 9bd026856d0c9680390b1a1a42ae0fd44532c3d4
change-id: 20260702-tx-may-pull-7f62a08f1730

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

