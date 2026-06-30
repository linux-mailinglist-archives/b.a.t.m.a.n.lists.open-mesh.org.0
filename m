Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G947Ic7NQ2qkigoAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:08:14 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0076E53B9
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:08:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=sdBbiJyr;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 03F5881864
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:08:14 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782828494;
 b=EuI5wPkLGOFrgMrVslqJxZl0KJ3HE3m++vgIJo0jGhI8oSjeugabPMuTuFqZ+wjnZqLqZ
 SjaSzsZ3SGibpyXlLVmq5knzeI+lXr/f2obq9rX/tUWl9iDeorpsDWLLn0udCASZetK9DX2
 BkhX0/wAQbEe6Lva0a7VAHcLbhmAi+w=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782828494; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=u/E75sGSrVhdcsTOLdjoZhA5gMYxGIzTgWx95/1byPA=;
 b=Hpg37eeNy64ZlnLiBS25EZeUz2avsMXIkI+mBEUUBaPC4EPw9FVgh89a4zlIMr1ufUZ1d
 xTdgaXRS7mwgbNRGUQSTpJEU7AQ16uT9huCYJhmoVHuqlO7MM+pScpKJFdvGQAFwG+EyPB6
 KqWkdAhFEdhxye6ayfZnJTGDkPaxlyo=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2AE3181097
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2026 16:06:30 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782828390;
	b=1tX0JXy6c173sCC3G9FlheLMp1T5oIIRTAY0qm53JXmOdZ42ZkQEp5vuQ11XwDc0RH2FI3
	MxrTz+XVh170aJ/+aNcQ2e7ZrhI+FMT/yrq1pN6CIJX+WcF5/y8+/SMnpG8sXCKIKR33QR
	xUBVsEs3pI9o3CZOzp1Q2whZwlayfws=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782828390;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=u/E75sGSrVhdcsTOLdjoZhA5gMYxGIzTgWx95/1byPA=;
	b=HPSM22+kxCyhZSlzPV6XFf/l5gyVq2rAwmbbdPzKmdz0CSoc2WQUH8qL8sGxhafUIqGhte
	i+8/cIG34p9cjb9ciZTO/yNHPgu801MP5d52Al1dMd6l6ZrscNI7tHik1lS9AtFTHHsQEr
	zWK9PO8PwOfW0PWH2ZM8LDKnbDnparU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=sdBbiJyr;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1782828389;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u/E75sGSrVhdcsTOLdjoZhA5gMYxGIzTgWx95/1byPA=;
	b=sdBbiJyrt0jRH8fPwdgBr5dJvLJW/9xy/3mzcxiXsVYj3Gc2NpJehao5UBCA/AelTEp49O
	ny/OgMsqjqpc05P92FK+mU9yaKMSteL+VfTVyWgT9AkGbgN4g0ec+8qduD2hlLVnKiPIhL
	vna+q24WW5nXME84s+4/mss7e+XfYPaa1tI/ZtO/I4HW6RM+13yK4VkcDpSpWY5ktSFSsR
	Ivlw13S8qeXA9VPr4y1filaTy8xGFWfO4tFTio2tFTK5M2oPdVPkRKpwe53kK9SBBf/FAJ
	HxNS/e0Hr379ezxynxdriGd0jUAia+ItxufgTTWkgnngiFSoPANqTd9YgjTGDA==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Nora Schiffer <neocturne@universe-factory.net>,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 06/15] batman-adv: drop unneeded goto and
 initialization from batadv_hardif_disable_interface()
Date: Tue, 30 Jun 2026 16:06:14 +0200
Message-ID: <20260630140623.88431-7-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260630140623.88431-1-sw@simonwunderlich.de>
References: <20260630140623.88431-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: REJUSXNOPES7CDAEAR75OVC3F3HV2PPX
X-Message-ID-Hash: REJUSXNOPES7CDAEAR75OVC3F3HV2PPX
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/REJUSXNOPES7CDAEAR75OVC3F3HV2PPX/>
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
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:neocturne@universe-factory.net,m:sven@narfation.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,universe-factory.net:email,lists.open-mesh.org:from_smtp,simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo];
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
X-Rspamd-Queue-Id: 2E0076E53B9

From: Nora Schiffer <neocturne@universe-factory.net>

The only use of the label was too early for primary_if to be set
anyways.

Also move the put of primary_if further up to hold the reference only as
long as necessary, hopefully avoiding the need to re-introduce the goto
label with future code changes.

Signed-off-by: Nora Schiffer <neocturne@universe-factory.net>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 9b8108d464dbc..6fc49ad47fd87 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -835,14 +835,14 @@ int batadv_hardif_enable_interface(struct net_device *net_dev,
 void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 {
 	struct batadv_priv *bat_priv = netdev_priv(hard_iface->mesh_iface);
-	struct batadv_hard_iface *primary_if = NULL;
+	struct batadv_hard_iface *primary_if;
 
 	ASSERT_RTNL();
 
 	batadv_hardif_deactivate_interface(hard_iface);
 
 	if (hard_iface->if_status != BATADV_IF_INACTIVE)
-		goto out;
+		return;
 
 	batadv_info(hard_iface->mesh_iface, "Removing interface: %s\n",
 		    hard_iface->net_dev->name);
@@ -857,6 +857,7 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 
 		batadv_hardif_put(new_if);
 	}
+	batadv_hardif_put(primary_if);
 
 	bat_priv->algo_ops->iface.disable(hard_iface);
 	hard_iface->if_status = BATADV_IF_TO_BE_REMOVED;
@@ -874,9 +875,6 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 		batadv_gw_check_client_stop(bat_priv);
 
 	batadv_hardif_put(hard_iface);
-
-out:
-	batadv_hardif_put(primary_if);
 }
 
 /**
-- 
2.47.3

