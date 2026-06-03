Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wcPpETGrH2pLogAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:18:57 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E352E6341FF
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:18:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=jnJlGg3T;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C9CA080C02
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:18:56 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780460336;
 b=uwHppTN72WzKMVFT3uxGEeXxqavTAbeRlsK6brzkI7G9HiKPX9C7cYWZ2aaZsoPlG9IXs
 kv91DgcslYMcYO3ZCApFIPw2zQnWY0VOsZV6ZOrVojwyj7cWZlw0rel3+3iDMqRyE0RSACI
 pVMvLePNaSO6ryB+pXTb0ERf1Ty1EM4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780460336; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=DcKqDiuvxXYVxN/5Geq2+aPy7Lks2HfDHkJeTa3WCiM=;
 b=0Ey+Xlh8y3w2C3WEhAIL7M8bZxDM8Ojl2n4ZCLsuLz3X6qmansv86YbAHPVXQgiYb71U8
 EzOyywXT8aflrUd2jLgODk4XzEdBpf6B3PlDPa3HU3uNkY3vVa3sMVRhQa1EYTurbE6vOWJ
 qYYxP0OIXMfWdGgZ+73CX8JOYIrbsDI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 3A2AF81EDB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 06:17:26 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780460251;
	b=fh4MyHPRXA9nCWjt+tQsntqYAWsovT5XzrgY/pE8WrUiPkr4t+kMDZZM/wGMcp8ErS83C7
	toFQTF12gVWaTZvpOFz/XjJwyCEZClc0l8Kz4FlPEIiZYZ4cgXi26oM1/dTk9RzvKaKcAG
	eMPiQZ2wQsBzRAVl6WXbdMHDu4i0dm0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=jnJlGg3T;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780460251;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=DcKqDiuvxXYVxN/5Geq2+aPy7Lks2HfDHkJeTa3WCiM=;
	b=kkanrlC8VEsMG89wfdmFqNyAN3p9XK0h5iFXoiRDWGwKGtkxn3tvecsZMRiHpRt9mleCHg
	cr//PNIjVivWVkR8JeCtBhsLU0gcUJ9WsHP0fF1pzb49BJZLdHv/+1WqHI3x7JcKW9BXG5
	lc5AC2aW12pesWf33UTHYPksRyG/v+s=
Received: by dvalin.narfation.org (Postfix) id CE6EE201A1;
	Wed, 03 Jun 2026 04:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780460245;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DcKqDiuvxXYVxN/5Geq2+aPy7Lks2HfDHkJeTa3WCiM=;
	b=jnJlGg3T+lQ3UqE9WDCl2VwXy8LxHaQK2TG7KbgqNrkgC0F65yijLrSvGWWzzPk4DWKY4J
	IqpNVlzuacJJiMZuUVrMRxbcCJDW9uL0x9VNZONGkNfnYMSwZGtBJ5Jhenqc7cn1jrlAdj
	KxL1H5zrQmaV1yJw7kiAdbwW3vfjOpc=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 03 Jun 2026 06:17:13 +0200
Subject: [PATCH batadv v6 01/11] batman-adv: tp_meter: keep unacked list in
 ascending ordered
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-tp-reason-missing-v6-1-7011620f93a5@narfation.org>
References: <20260603-tp-reason-missing-v6-0-7011620f93a5@narfation.org>
In-Reply-To: <20260603-tp-reason-missing-v6-0-7011620f93a5@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1312; i=sven@narfation.org;
 h=from:subject:message-id; bh=UIcR5xq/hnw3fxAoxyQ/aS2BgiWPSni46VlWd+rucGw=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnyq06zy6nd+sVo+27K/HUL/nh4LFnwM7Jj2v/iv80lQ
 d9eLN+/r6OUhUGMi0FWTJFlz5X885vZ38p/nvbxKMwcViaQIQxcnAIwkbrDjAwTuuTMEvcrRf1a
 6shvYjvpbfWCo3+Pvm1clZxYN2Xx92l/GP57bZ+65Fi22ozwnMCT1yZbWFywzfv/kFnRbeUjlu1
 PTc6zAwA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 3INW4X4LCBYKU4SLBDFUOV2TYDUQ4COD
X-Message-ID-Hash: 3INW4X4LCBYKU4SLBDFUOV2TYDUQ4COD
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3INW4X4LCBYKU4SLBDFUOV2TYDUQ4COD/>
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
X-Rspamd-Queue-Id: E352E6341FF

When batadv_tp_handle_out_of_order inserts a new entry in the list of
unacked (out of order) packets, it searches from the entry with the newest
sequence number towards oldest sequence number. If an entry is found which
is older than the newly entry, the new entry has to be added after the
found one to keep the ascending order.

But for this operation list_add_tail() was used. But this function adds an
entry _before_ another one. As result, the list would contain a lot of
swapped sequence numbers. The consumer of this list
(batadv_tp_ack_unordered()) would then fail to correctly ack packets.

Fixes: 98d7a766b645 ("batman-adv: throughput meter implementation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index aefe7572..0e39ea33 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -1325,7 +1325,7 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_vars *tp_vars,
 		 * one is attached _after_ it. In this way the list is kept in
 		 * ascending order
 		 */
-		list_add_tail(&new->list, &un->list);
+		list_add(&new->list, &un->list);
 		added = true;
 		break;
 	}

-- 
2.47.3

