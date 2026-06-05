Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5N3fLgV5ImoXYAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:21:41 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 631DC645E6A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:21:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b="gS2LJBm/";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 407CD81CDC
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:21:41 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780644101;
 b=ybobZhpI6FlGfw+b2f6PLm4q0TVDCpimEOn7X6jPbVZejbhIPJJpWxEf0h5djNJmdhHWF
 L3WKeDK0ITKGgJKITIVIwaItid0eKm+M+Y7YAC1hGanICDMx8+Hcz6M9JUdOHKOewYJtU2m
 I/3eks3NadmF6G+H0Zu6lSRI/3a3Rs0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780644101; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pdWoGEypLT0hA4oET8XmjqY81On+S12Bc4UStp9tjaE=;
 b=M+VFGu/62RByjmNFdQBmJ5HCde4ZWnnOfkDtjBqI+1lolWCkmxczmPSnt53skx/TrIYON
 TCptXFN/6PpwIrO2CoU0gFuQmZJgfLEth5BUFdbMmuUsi/b66S+Kb1/j4J3ObuKVGkf0viW
 LK5Eqxr+vAdrMylALh8eD5FLHDFgg0E=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E0F258026D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 05 Jun 2026 09:20:14 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780644014;
	b=yWCflH1LqHPKFRgh5rEGIfGLP/63Ohx9g2i6zUApLxLL0R8LHP231xSbImeEjaiJ3bPOv5
	ChGY+0UhkjtSo609DW93HL0zzYoXUf6nUht85OrsDKGJwmpdwLlpsrS33+PlNl8SX44lO6
	vXhfYhx3Aa/95khvUQLx+ubub1sjZ9A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b="gS2LJBm/";
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780644014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=pdWoGEypLT0hA4oET8XmjqY81On+S12Bc4UStp9tjaE=;
	b=F/k+Sp3Nt8DC9BHkaPyQ//8ddd7yOxH0BLlyN/9nnU+uIguW/UgRnGtZQ13OfAyrUBsyfy
	oKZEZ0wPm/+q9X3DQbBU4DKTiUazA1gKanQsksHCARjypA+Tqxn81XFHntFr8zRpn6THGS
	Q7AbpEQKKMVn0OocUwmppVWyTcCZszo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780644013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pdWoGEypLT0hA4oET8XmjqY81On+S12Bc4UStp9tjaE=;
	b=gS2LJBm/VjTOKGxFoTLo1ffpyMs5uutNlKIeDzb5eUDOyKUpABtuoNt61FC2shV3GMoag1
	56ncRJtsezrEuJw890ipKzVO0sa1aAPJloagU2iYU3LYgIQ0ZQFwI1q+TCtsxV5JAa3tUm
	KxIOd5l4iEkIxTiMe+8NxYpDg9t8wUCqk1pbdlTy0cPLYyvudQN/jKfbk3IagbwYWo/8We
	wljn19pDaT1sZTsdBmh/82go/dGrlz9bCGS5bz9Tq2uR5cLr5Fp14HLwyFB+QX3RpZSUwY
	CJWkkUdPAEtSudGILXV5YwJ34cPHHVrpDLumIItPhUjvI+UTGGpAkiWqjxq/aA==
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
Subject: [PATCH net-next 04/11] batman-adv: use GFP_KERNEL allocations for the
 wifi detection cache
Date: Fri,  5 Jun 2026 09:19:58 +0200
Message-ID: <20260605072005.490368-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260605072005.490368-1-sw@simonwunderlich.de>
References: <20260605072005.490368-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: XY3XMLJH5QRFB5OAM5XOTJXFJ34J4LQ3
X-Message-ID-Hash: XY3XMLJH5QRFB5OAM5XOTJXFJ34J4LQ3
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XY3XMLJH5QRFB5OAM5XOTJXFJ34J4LQ3/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
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
X-Rspamd-Queue-Id: 631DC645E6A

From: Sven Eckelmann <sven@narfation.org>

The batadv_wifi_net_device_insert() is called with ASSERT_RTNL() held, but
not inside a spinlock or another context which prevents "might_sleep"
functions. To relax the requirements for the allocator, use GFP_KERNEL.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 96b8130375a3a..04b227ec80525 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -983,11 +983,11 @@ batadv_wifi_net_device_insert(struct net_device *net_dev, u32 wifi_flags)
 
 	ASSERT_RTNL();
 
-	device_state = kzalloc_obj(*device_state, GFP_ATOMIC);
+	device_state = kzalloc_obj(*device_state, GFP_KERNEL);
 	if (!device_state)
 		return -ENOMEM;
 
-	netdev_hold(net_dev, &device_state->dev_tracker, GFP_ATOMIC);
+	netdev_hold(net_dev, &device_state->dev_tracker, GFP_KERNEL);
 	device_state->netdev = net_dev;
 	WRITE_ONCE(device_state->wifi_flags, wifi_flags);
 
-- 
2.47.3

