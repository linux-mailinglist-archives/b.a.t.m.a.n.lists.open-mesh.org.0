Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1AGZIPu/SmqLHAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 22:35:07 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D24770B570
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 22:35:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=HiMX1mYw;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B172D84091
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 22:35:06 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783283706;
 b=uOoMWMT0n5D0UoK4ZWbu6Z1plVdcG5t03MAER46AnLpGa7pYJgfyB7lLvMYEgMV1wfn6M
 98vdyfPCCnInFA/EJpUqc0nXUB0p5fPp6LxXJWVzljEUkuvfh21uFqBs9/O5j1gW2+1EkV8
 p37pzZXOrPGQ5Hk0aMOlXTHZBbqbDcQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783283706; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Mlk/zKCeGPRDRox60VAFR5T1tXiDSK+Od7IjBAG+yys=;
 b=WPAG6sPkIKHltDEsMu640RJKrVfRbP2rZdz4lXQIaeFDHHBLYXK7K9xZJWERz40y0/VK9
 t+LObb5RhBK8wCthzTha9In2+xTXOcUPMDf51e1tTCqUmE+MAhu9POw/vLRrAj0T3C0eTSY
 A8ev2IoFwOA8KIWh5ieFPzhncSNIRig=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 17A5D809EE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 22:34:39 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783283690;
	b=n2Kd66Ee/4L6CovTycxlPKU9faqgJd9swQhQ891mk7pFfo0cb9729TwVEFvw3xqjpHexnd
	nygNA9SnFyf1lNp0N8z5VeUcr0qy7bHTOaJJTZ2jH+s8NFYxD5Y9Jh8XhSJVv8aDVVmqjL
	qyH+dXJ3SsjoM+t5rI1kvzvYt/dafPw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783283690;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=Mlk/zKCeGPRDRox60VAFR5T1tXiDSK+Od7IjBAG+yys=;
	b=ClIkjj4IYQ2bshyhS8rHr5mY+1CH/niCm8oCd5xo0j9ffIqhUtImUlzd3+ZcAPVfLtLgpY
	wSfuSazFOwbprZUK7L91eewR20g4S/HI1sI/QYugGPHNQZJwoWhQjZyu1RwJS8ww49RT43
	YkmHGch3Lv/U3osZDdYb++TiXG6WatM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=HiMX1mYw;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id E9AED20267;
	Sun, 05 Jul 2026 20:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783283679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Mlk/zKCeGPRDRox60VAFR5T1tXiDSK+Od7IjBAG+yys=;
	b=HiMX1mYw++7+c0y5MCVH8aO5t+3i+BRnHKDpSJjlYmDrEsmeQ/Y4djLQn45mP2konpwvXZ
	5hwtHefImcAJOSipnQ24puA2gDNErvAad+cS/yBBcIPbieYcqMWF6zf3BWe0NyJmcYBnjh
	dNhxb+vmrvhAxe7XG1kBdiERpY6ZBww=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 22:34:34 +0200
Subject: [PATCH batadv] batman-adv: bla: prevent CRC corruptions after
 claim flush
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: 
 <20260705-bla-parallel-crc-corruption-v1-1-6d9e89075449@narfation.org>
X-B4-Tracking: v=1; b=H4sIANm/SmoC/yXMQQrCMBCF4auUWTsQg23Uq0gXk+mokdCGSVqE0
 rsb2+X/4H0rZNEgGe7NCipLyGEaa5xPDfCbxpdgGGqDNbYzzrToI2EipRglIisjT6pzKvWH1xt
 31l2cMa2FKiSVZ/ju+gM8FRoW6I89z/4jXP40bNsPwePJhocAAAA=
X-Change-ID: 20260705-bla-parallel-crc-corruption-89c627470052
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1691; i=sven@narfation.org;
 h=from:subject:message-id; bh=oE0QWeFGzednMFIOgAJ7ft27yoHoIi7PSdzdXnGY/bc=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFle+29vrtiz50hl4urL9ROqg4I+zwybeFnimm5pfs7sr
 1G+/CYpHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJ/Jdj+J/dXnanaGl1qKVs
 /33RgH3ZMoe7i1l3TFtr3/HsrZdSRwsjw0+t1ANPbZ96LnjbbegUOpNl2SH18InHjZuO6q0Um/l
 VggUA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 5LYC2CUSNWQ3MIKWXIPODMGWYSSOE6ME
X-Message-ID-Hash: 5LYC2CUSNWQ3MIKWXIPODMGWYSSOE6ME
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5LYC2CUSNWQ3MIKWXIPODMGWYSSOE6ME/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D24770B570

When batadv_bla_del_backbone_claims() tried to remove all claims of a
backbone, it sets the CRC to 0. It assumes that the it had the last
reference of the claims because batadv_claim_release() (which runs after
the last reference was released), is XORing the crc16 of the claim address
with the backbone CRC.

If there would be a parallel holder of any of these references, it could
happen that the backbone CRC is (0 ^ crc16(delayed_released_claim)). Which
is the wrong starting point for the new claims it may receive when the
remote answers the claim request from batadv_bla_send_request().

This reinitializations can be completely dropped to avoid this problem.
batadv_claim_release() will take care of fixing the backbone CRC.

Fixes: a9ce0dc43e2c ("batman-adv: add basic bridge loop avoidance code")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bridge_loop_avoidance.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index e18e9885..146ead5c 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -325,11 +325,6 @@ batadv_bla_del_backbone_claims(struct batadv_bla_backbone_gw *backbone_gw)
 		}
 		spin_unlock_bh(list_lock);
 	}
-
-	/* all claims gone, initialize CRC */
-	spin_lock_bh(&backbone_gw->crc_lock);
-	backbone_gw->crc = BATADV_BLA_CRC_INIT;
-	spin_unlock_bh(&backbone_gw->crc_lock);
 }
 
 /**

---
base-commit: e281f6726677f7e8950dad1640d5386867e6d2e6
change-id: 20260705-bla-parallel-crc-corruption-89c627470052

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

