Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mjWAN29dJWoTHgIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 07 Jun 2026 14:00:47 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 867C26507FB
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 07 Jun 2026 14:00:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UmImpkcN;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 63DFF80C93
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 07 Jun 2026 14:00:47 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780833647;
 b=ux9J81ZrTqfwAy2RrgqKEo0WWGdgoJhrawePq6DPBUZrIj6hS5/JD2lje1Y75eZThpAC/
 nqP4AqmTxTsQLwQqJYLdWls6VVp9w10xTguJ5pGzqbLa2BIhN500AXsyS360MrXZsKgrT16
 cbeXsIOehGtfEI9fGS/vrJQEaoHmliM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780833647; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=w5t2AQ6rxuYX3q8fnAhP0o43WSW1UFQ/QlX8ajDvhZc=;
 b=Ng2gOq6cc3uy5cn4HEVMY/WTU105++MAEVWlGkSSI4QBlKNkIuQ9hQ1VnMLKnkro3+jH1
 SOWaOvsDnQzDjqz61jfZonGDdPo6Bba9ad9T1ZG25cQEyQlYcb1bi2cLtmN6f1X0xUl0axg
 r1TK1t2mUJBDuXCpkCzyEpYUl+iB+kE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id E40EE80DEB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 07 Jun 2026 13:54:50 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780833290;
	b=UrdCugTrNfmigTwcMraiDcfKjKtJ7Zq5BwbU4dgtokh7kKDcZPDj9eQGO4OCgjr94BO4Ul
	aqMqHgtBIouVZbjsGrlZNhTr/MGWF8dWHNWE0pg71DH5Hr2P3xBZe5TZYOzmE4CNwWFS4F
	kVYO4gYb0SmnxgYiS40EXmDJXdg8l00=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UmImpkcN;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780833290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=w5t2AQ6rxuYX3q8fnAhP0o43WSW1UFQ/QlX8ajDvhZc=;
	b=Db/5ID310WgV/t9EMe9HF81cj7+O7RW76OuIUgECsszWPUEBTqW1dkga6yRRqRjYkZNA0o
	gkfTAiTizVLYb068F0D8nzv8HPuDIqY44L+MDfZD11bbs6IOEf0QenadddV3bwPEVo2abl
	WkcglxZOZrGhNzf8JngAfd/hoROaoKw=
Received: by dvalin.narfation.org (Postfix) id 9C8471FE06;
	Sun, 07 Jun 2026 11:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780833290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=w5t2AQ6rxuYX3q8fnAhP0o43WSW1UFQ/QlX8ajDvhZc=;
	b=UmImpkcNYwdpmcxY5NM0TxclenXx49mdXnrn3cv3oSXl//0WO3J7X4d0Sryocv+GOpHnpG
	qSw5BBV/zviAvUrN52O1ofxzwbZ5gaoE6fIAyCD/YJmaRRTfnLvs9+ezL0Wkfx126hnWrL
	jPcfz9uLBrSO39H6X4jBF6k1NLMKyNo=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 07 Jun 2026 13:54:01 +0200
Subject: [PATCH RFC batadv v4 7/7] batman-adv: iv: drop migration check for
 batadv_hard_iface
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260607-drop-hardif-list-v4-7-ade2931db295@narfation.org>
References: <20260607-drop-hardif-list-v4-0-ade2931db295@narfation.org>
In-Reply-To: <20260607-drop-hardif-list-v4-0-ade2931db295@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=937; i=sven@narfation.org;
 h=from:subject:message-id; bh=pl/Gg33m8RdaoqK+Tjhw3A5vLcZhQnKe96dhzKsTEy8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmq0bfslfbqeSzj3t+yVFrmt3mzmtulmJz9MiFbTt2Yp
 SOlXLm8o5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjARjgcM/5O6Zjfx9+5xFfa7
 ZqbxI3DC03NCrl7TVSp3T431v/8plIuR4bBHuOorf+VZWvYqC5N2fz3uX2w+w8qy/UrS/GudT18
 e4wIA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: XXBPS2ABZOV7775ATKK4OLK2NXTRTX3J
X-Message-ID-Hash: XXBPS2ABZOV7775ATKK4OLK2NXTRTX3J
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XXBPS2ABZOV7775ATKK4OLK2NXTRTX3J/>
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
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 867C26507FB

With the immutability guarantee of batadv_hard_iface->mesh_iface, the check
for "changed" (or NULL) mesh_iface is no longer necessary because and
batadv_hard_iface can no longer migrate from one batadv_mesh_iface to
another one.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_iv_ogm.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index d9e4d023..89803a8a 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -407,11 +407,6 @@ static void batadv_iv_ogm_emit(struct batadv_forw_packet *forw_packet)
 	if (WARN_ON(!forw_packet->if_outgoing))
 		return;
 
-	if (forw_packet->if_outgoing->mesh_iface != mesh_iface) {
-		pr_warn("%s: mesh interface switch for queued OGM\n", __func__);
-		return;
-	}
-
 	if (forw_packet->if_incoming->if_status != BATADV_IF_ACTIVE)
 		return;
 

-- 
2.47.3

