Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DHyBzpSGGqwiwgAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:33:30 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C46145F3BC9
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:33:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7F2C9841B0
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:33:29 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779978809;
 b=yqT10V/rQuoFQ9/E41sYPY5mjrsZ5G200pZdlnFfTS5dSWIh2NcLA9AKJjCYghZVjhcyc
 NQc6IEKS40UZfIrRyMp9gXwwTdrfbFLTQ/8FaTJbwap31/9HnqGMK2WL8i4951fsk4SY3tF
 kvNDMaW2x2tO1IxwqNOlzGumUGpnJ/g=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779978809; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Oh7Iga6kezW1PnsL9zoSfhgAn0KI160ZKJycdSegy3U=;
 b=02Xum49Oezwct1oqC2EE69oK1hdvHmSpev5/4eMuWXPNSFT3vojVLmBoqJzYmZdUsNRMZ
 gwJZjSDSirJzkjyRB7+Tk822La9com0mEuVJ96XX8BbyjWoyCTx5inmDM9vpCHdDkfntS3R
 STqF/VBIGFeYMRhnjq4A6JYtAPnVS4A=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 31DBD83BB6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2026 16:29:31 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779978571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Oh7Iga6kezW1PnsL9zoSfhgAn0KI160ZKJycdSegy3U=;
	b=xU0eXlevHOxJJrDfJjaBajtXqwX9dG4U27rZ3mZKin4YYCiwnR+3wJ4RyFIG+kM/nkZ3GG
	pAIjQvOxU8VqFkgDtoLpNn8cpleHPakr8mk6Ca+V9hsiDjuF7HawXnX8acQwDbJBbFPzDN
	Zdv9IQtsLvAaoXai/w8bJh8Ypqbh0+c=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779978571;
	b=mZR2PSzkU50grqpmVM/IV6xXabPBPgPx6hC+p0iyG6ZOe4qfUCzEZTA2LBpfIo8WHW3LAU
	XhqgKxLjk7jXU90DVnvdMD056+CQCBzs/Qbon5xsz/JH8RfuczK4LjyE/LTsgIpVJQIbMr
	4JyYMO9ktN+l/F+Wutrsn+GRgL5LnTk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=Ej6rbXPT;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1779978570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Oh7Iga6kezW1PnsL9zoSfhgAn0KI160ZKJycdSegy3U=;
	b=Ej6rbXPTxWnk5kZ8kRsr2s/otAH03O+tGZgDwFdEEXyPmQeC7/lewDRKRHLVpmdsK/ldWI
	J/xxzcfxjqXTb3HQY6Pd4vccesXVG9aAm78aqUKcVZQwJYc5PgcPyRCJ/e728NNsWb0iWR
	g8zxqALgFkODfPg6P27gCWJfPAMEhjhWEieZ7LYV2azwrQp3J+pP8evfCGzv+jxdO4pfK4
	0R1jOpjm162ywra6RqZKThOOI0ueQ1qjdOJ+GXUIog7wWzijh3YQ72dJAbS/SItrsVM+NY
	sLC+qLTIcLdQZao0xfd8LBHvLnWNz1tRf3tkUQkqfAZQ/FK+RouAsc2blm3hzg==
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
Subject: [PATCH net-next 05/15] batman-adv: use atomic_xchg() for gw.reselect
 check
Date: Thu, 28 May 2026 16:29:14 +0200
Message-ID: <20260528142924.329658-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260528142924.329658-1-sw@simonwunderlich.de>
References: <20260528142924.329658-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: LEENVQS4DANIVFCKWFYFFFHKT3R4OH5G
X-Message-ID-Hash: LEENVQS4DANIVFCKWFYFFFHKT3R4OH5G
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LEENVQS4DANIVFCKWFYFFFHKT3R4OH5G/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:dkim,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:email];
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
X-Rspamd-Queue-Id: C46145F3BC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sven Eckelmann <sven@narfation.org>

batadv_gw_election() only needs to test whether gw.reselect was set and
clear it afterwards. Replace the batadv_atomic_dec_not_zero()
[atomic_add_unless(..., -1, 0)] call with atomic_xchg(..., 0) to simplify
the logic and make the intent more explicit.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/gateway_client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_client.c
index ec743ce39be47..026627c8ba45b 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -211,7 +211,7 @@ void batadv_gw_election(struct batadv_priv *bat_priv)
 
 	curr_gw = batadv_gw_get_selected_gw_node(bat_priv);
 
-	if (!batadv_atomic_dec_not_zero(&bat_priv->gw.reselect) && curr_gw)
+	if (atomic_xchg(&bat_priv->gw.reselect, 0) == 0 && curr_gw)
 		goto out;
 
 	/* if gw.reselect is set to 1 it means that a previous call to
-- 
2.47.3

