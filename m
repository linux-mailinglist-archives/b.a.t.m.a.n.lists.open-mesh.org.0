Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Yo6yLlADIWqe+QAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:47:12 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8138363CDDE
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:47:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tZZQ7BxP;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5DC2A845C3
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:47:12 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780548432;
 b=AVd5KsgWD81Rbtj5SSI9NikActPcudE9q7pccNdAMsc/U3x5dZmZ2f3PZQtNxnhMIdYpS
 WxvKgu/2Tlrv6Rlz2XcSkBNj0p1MwQW1jbZ+gG0Osctxh2ri9dh++holp4fWKSUy4znd9Hy
 S16TuZlBQQ5AVI1q7WUyV18pXdckkcQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780548432; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=vL02Q2tMbAVZTjtlGIQ64DMpF09wEPrElo0xJmGnQUM=;
 b=Wb1krefS4hz11X4+6dkPoYYzrEfOR/oMJP18urSKkINBwTcn5NCal+4RVjkBl+vS3whS8
 NSS5M/RQQwI2aA4Na0A1PG19WxeMsQU/RwXyDZ6g4sSS6O/570lRCCQyP9vtXP+cenfeNmK
 1HIz6TtITbhCdGZk3hYZxuFAFruu+1M=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 163E88475F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 04 Jun 2026 06:41:21 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780548081;
	b=ooZtK26O9wxWXUW9S3XRjB+opk79Q2vOu4OOrYf63cfVGUs9D2LB/5ekGCemXVYiApMS5x
	nHI9B2QrC3ofv+S8uNyO/lW8Lbtr/HOD4Y9OD8O+GquF0waqaLkQ8/8vhDqHk7x7fLgUmR
	EKV9AvWs4rn1waI1RA37l5m+p72Geuk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tZZQ7BxP;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780548081;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=vL02Q2tMbAVZTjtlGIQ64DMpF09wEPrElo0xJmGnQUM=;
	b=bpIfzCkiWxbKVdOxMV/QXIx5w+5OBrS58IOuIhokGUHdak6Nwvno4LSBCMaNbSqNFlSx4r
	Iu1U4J9yDrHJZq3q5nKXWZ5eK/sGFaEPn1R7CuvLJ4ZIkaHQLW7FxUHNAtQzYU32qbTBKX
	CVm6PsPaUGMau8k7r0TM1HvLk25QFl8=
Received: by dvalin.narfation.org (Postfix) id B7D4A1FEF0;
	Thu, 04 Jun 2026 04:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780548080;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vL02Q2tMbAVZTjtlGIQ64DMpF09wEPrElo0xJmGnQUM=;
	b=tZZQ7BxPNSSeZjjZmCOct+uDsNz76KiIOoJIRVTy0oxUp4cW/HS9t3PAYPZMb3dxQoR5hE
	kLvx60KrY+A/RJlpEn4GGWSGXhjLMLlqgqzSSRTxvK+aPFrXGdFZA/Zq3o5XVfXElmK4A5
	+eJNpbH36MocfwtkYwuqTu9EZwx2XUM=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 04 Jun 2026 06:40:53 +0200
Subject: [PATCH batadv v2 4/4] batman-adv: use GFP_KERNEL allocations for
 the wifi detection cache
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-wifi-cache-cleanup-v2-4-c89d32c02471@narfation.org>
References: <20260604-wifi-cache-cleanup-v2-0-c89d32c02471@narfation.org>
In-Reply-To: <20260604-wifi-cache-cleanup-v2-0-c89d32c02471@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1083; i=sven@narfation.org;
 h=from:subject:message-id; bh=LGyiYIAXPOnlsBw28iYTtyUl5L7Z+vFPhdwD5WYUIM4=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmKjJcrT0psWuWVf52/ZNvq4wduBXxLTdqYbJRnbnk//
 uPK12tCOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQAT+WnI8FeWJ+72LY1mgaab
 V5647+E21o+zFU/+/S3E5sha5Tvm5ZcZ/qf+KRY6LuSoq7e8hfFqmoDGy4Wy8uIOmwM++xSmHWZ
 W5wIA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: FPQXSLNLBQPWH5IWBI2LWD56B3ZWWGRZ
X-Message-ID-Hash: FPQXSLNLBQPWH5IWBI2LWD56B3ZWWGRZ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FPQXSLNLBQPWH5IWBI2LWD56B3ZWWGRZ/>
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8138363CDDE

The batadv_wifi_net_device_insert() is called with ASSERT_RTNL() held, but
not inside a spinlock or another context which prevents "might_sleep"
functions. To relax the requirements for the allocator, use GFP_KERNEL.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 041df554..60cee2c2 100644
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

