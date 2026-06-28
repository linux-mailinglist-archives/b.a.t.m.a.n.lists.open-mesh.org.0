Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YvHeMuTMQGr4iAkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 09:27:32 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 707076D3588
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 09:27:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=oUXsoGnV;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4D70983FBE
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 09:27:32 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782631652;
 b=Aw2ivtqisJMrSvAlOV3moFweQs7Q3lMuRvEOZIxy9c4cMxoI0TSIQLz1v3NWXgBg5hsT5
 1IZlwrQtUQQJBqnTU1w8RWJuhftMFvbK5EKnrJUHQHUQcQ6fxPWtnKas+uZ64Z5oEy9KufA
 xVYYgPhOSOXm/3q8yGmY00enA26iEr8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782631652; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Zj+e2BxKoIpnIchJrWjBzT91RPGTRHNj4+moT7BZi3I=;
 b=Nn3XSFkO72bn33/4+brtBeOyxHvpMiIdXuKQKB7VMQ3YOgf1xTmv2BYsDO/Eu8U5Vrt1h
 epGKwWS+KMd3DlMvhCS7eDQUX9OYT23MIFwMwpL8o3cEIrCrHCDsZXs06Koh7KwcwivKcg3
 GnGdhYdSoYzrRluOtXGzM//CckHeW8Q=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id D3F1C807CF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Jun 2026 09:25:45 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782631550;
	b=l2aDyUHt0G9QfS4/UKGZ7J7cLOx2OBltFzwf7R8/PXFIAbyz0cOb3TMcqhs/an3v9lpsKa
	gxhbbQp9YutGCeUnbnKAKupSoSlrzYZQcQ2peOhJGIMQjyw+jZ4xp6NZjj5UiaYRLn/Vtd
	IouP7nkElfMhMrWbhFA2SHjkDhhPLSI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782631550;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Zj+e2BxKoIpnIchJrWjBzT91RPGTRHNj4+moT7BZi3I=;
	b=YgWu7H5xcBOGf1CjGQhmCTCj3Qw1o65r0COtqQn8E6xtJHjSqX/k30SvW0Mot+Pc+tAChm
	/gTlxG09+4xOchn+O057FB9FibiLAtR4lJ2L2bjG0cboJDmJBrIRUEJRhHt+hLsxrGhPh/
	BPkQRf6azX9mWwGPYKL/jnWprQJmhR0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=oUXsoGnV;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id AB82220560;
	Sun, 28 Jun 2026 07:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782631543;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zj+e2BxKoIpnIchJrWjBzT91RPGTRHNj4+moT7BZi3I=;
	b=oUXsoGnV4ik3v2mYyLh15Xh1NddwW5vJyDhUsYP4AVNrmX5SzevbRPKMtjAmXvqMEMAgcw
	FDwFepTuO6UAEzhxigXVymWfTsImB+zv6GrJb6QkGeHxqW3b+3uDMk2pS8pmj1YCAj/nLm
	Etymp5YDp3KmtJF938IG9beaQBrLbh0=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 28 Jun 2026 09:25:34 +0200
Subject: [PATCH batadv v2 1/5] batman-adv: access unicast_ttvn skb->data
 only after skb realloc
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260628-skb-post-realloc-v2-1-59a58f5a471b@narfation.org>
References: <20260628-skb-post-realloc-v2-0-59a58f5a471b@narfation.org>
In-Reply-To: <20260628-skb-post-realloc-v2-0-59a58f5a471b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>, Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1175; i=sven@narfation.org;
 h=from:subject:message-id; bh=Ppw3QRr780Y5ZasVr7qIHGsMOJ+qS6b6KoYeDcVvXFs=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkOZwrE1NxXfs4PyI+9+uG9lJHjf7vH/xfGu/vbJbAfZ
 Ur+LNzdUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAZjIUT9Ghkemhz5te768ZPN9
 oSuny/aqMN5xeLC36r/g7ZxfOzeeOWDF8E+Hx4C9rSjNaKN3jtmL2bvzrZ3+Tbr6Q2rHfMMr0yb
 HlnEAAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ANZ42OBF4NU6CXCEXKRS3A5W3TGOBJE6
X-Message-ID-Hash: ANZ42OBF4NU6CXCEXKRS3A5W3TGOBJE6
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ANZ42OBF4NU6CXCEXKRS3A5W3TGOBJE6/>
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
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:sashiko-bot@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 707076D3588

The pskb_may_pull() called by batadv_get_vid() could reallocate the buffer
behind the skb. Variables which were pointing to the old buffer need to be
reassigned to avoid an use-after-free.

This was done correctly for the ethernet header but missed for the
unicast_packet pointer.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Fixes: 580d7919f19e ("batman-adv: add the VLAN ID attribute to the TT entry")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/routing.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index 208c5d4d..10168d23 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -894,8 +894,8 @@ static bool batadv_check_unicast_ttvn(struct batadv_priv *bat_priv,
 	if (skb_cow(skb, sizeof(*unicast_packet)) < 0)
 		return false;
 
-	unicast_packet = (struct batadv_unicast_packet *)skb->data;
 	vid = batadv_get_vid(skb, hdr_len);
+	unicast_packet = (struct batadv_unicast_packet *)skb->data;
 	ethhdr = (struct ethhdr *)(skb->data + hdr_len);
 
 	/* do not reroute multicast frames in a unicast header */

-- 
2.47.3

