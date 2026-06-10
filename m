Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qGyMLr2uKWrPbwMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 10 Jun 2026 20:36:45 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A60B66C4CE
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 10 Jun 2026 20:36:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=AGIZY74a;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 388C784215
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 10 Jun 2026 20:36:45 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781116605;
 b=z1M/YnGkrCepE0iZY5H/1ZNUffXeIu077Mukc0wSphAx45sPVI2ofkJcEw5/ZFcOZ5Btk
 tbVVWJtGKdEGJmU7Kdbu6BxBs/K7Jl3GnsvFlDSO28DWffB0UyyxAjZj9+e7ErK3+VSGOz2
 X9DmWCrEq7liKIXs1maVTs1Rc5HGToQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781116605; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=dianGQe5jzV7/3TzbcQNmlfGrSlnmg+bhilcmzoSiAI=;
 b=TBluH8SfWlSDyoC5sA1k+m5l0Yr4SiiJIpoZ1wYgXx/H5JG7Ji5TFAUe5cD9XM5yPJwdq
 OY2uSY/UQRO4SrkCE1SKQKa1BDJqlsTN0XYOCzksOO+tYpdPyT8snmuz8q5qKMiJuX+iqWY
 xRMSbftyQNgVvWgSYmbXC+1HpPJzmN8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 1445F83E9F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 10 Jun 2026 20:35:36 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781116541;
	b=UlILfUb4iICMUKByvk46h3uq9oyBn7Ypae02E0x4wNaPRyDhyNcKiEvB1AjXPxaV9REcKK
	Dpq2iBB5YmUmXTDtfyaAqdpG1/+DbWczc98gsj0UKYCTC1Be4GNl2UJNHU6zaXJoWC0JdL
	JDesW9cr4hnjw4rb9EF5GZ6OTYkEzMA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781116541;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=dianGQe5jzV7/3TzbcQNmlfGrSlnmg+bhilcmzoSiAI=;
	b=1tei1Paa9sdL8XNTBdmztQDMQMOo1LGQLPXNYTIxKCW2Q8QfJYVTubiYawm/Ms+hXvjWDa
	Jxq2t2v/Xwy1m+CpJ7izf0Z+fnp6xV7gE015n6pPVU1thnROY/YrElnXQ2+ilZJFehq1ld
	mhIyc6NXO7uBuH7xSYXQWTzKPvSDbOk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=AGIZY74a;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Received: by dvalin.narfation.org (Postfix) id 79F6A20280;
	Wed, 10 Jun 2026 18:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781116535;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dianGQe5jzV7/3TzbcQNmlfGrSlnmg+bhilcmzoSiAI=;
	b=AGIZY74aQguQQjkuPmYjv6vjowg7FBCCOo4rcAIvborQ7pgPnHBnT1DCCHAXSyUOIm/rLp
	CfMhA0/4XcnGVc8OwIwHJLXVSLk5j69IPWrt8MQW/sfJAqeRI1hk8w5FLzpn9NESSSEmj0
	bWnAIVTvZ5H2BRfIRnfYNtz9+2EykWs=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 10 Jun 2026 20:35:27 +0200
Subject: [PATCH batadv v2] batman-adv: gw: don't deselect gateway with
 active hardif
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260610-gw-disable-check-v2-1-12c96d736410@narfation.org>
X-B4-Tracking: v=1; b=H4sIAG6uKWoC/3WOyw6CMBBFf4XM2jGUClhX/odh0ccAVVNMW6uG8
 O8WXLu8N+c+ZgjkLQU4FTN4SjbYyWVR7QrQo3QDoTVZQ1VWTdmULQ4vNDZIdSfUI+kb9pwLrrk
 8iKOAHHt46u17q7yAklGaBN3PD091JR3XvpUcbYiT/2zbiW38/5nEkKFhdaNIibbWdHbS9zLmv
 /vJD9Aty/IFAqNfGs4AAAA=
X-Change-ID: 20260607-gw-disable-check-f3393c3a4989
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3235; i=sven@narfation.org;
 h=from:subject:message-id; bh=ySL951JDrgigbgU0ROhPgtqIWKNqumbJPL8a58Kl9gY=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFma6wpNT6WoHhJpUgwId5vt/Gp63Mkrz0+YHngtlbP8/
 ZpjD5ivd5SyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAmwhnO8Fd82UXWh8/rax9G
 xH2Ye/PGE8v9L2x/nFz99MmDd/a2G17KM/wPUTfknMNolvlG92OQcs2imlPszqvMdJvl3i1UT80
 1ms4PAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: NGSNXFSH3CDUXJ2AQTVZ4KQXXUDEPLSO
X-Message-ID-Hash: NGSNXFSH3CDUXJ2AQTVZ4KQXXUDEPLSO
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NGSNXFSH3CDUXJ2AQTVZ4KQXXUDEPLSO/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,msgid.link:url,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A60B66C4CE

The batadv_hardif_cnt() was previously checking if there is an
batadv_hard_iface->mesh_iface which is has the same mesh_iface. And since
batadv_hardif_disable_interface() was resetting the
batadv_hard_iface->mesh_iface after this check, it had to verify whether
*1* interface was still part of the mesh_iface before it started the
gateway deselection.

But after batadv_hardif_cnt() is now checking the lower interfaces of
mesh_iface and batadv_hardif_disable_interface() already removed the
interface via netdev_upper_dev_unlink() earlier in this function, the check
must now make sure that *0* interfaces can be found by batadv_hardif_cnt()
before selected gateway must be deselected. Otherwise the deselection would
already happen one batadv_hard_iface too early.

Because a 0 hardif count from batadv_hardif_cnt() is equal to an empty
list, it is possible to replace the counting with a simple list_empty().

Fixes: 702c52a87eab ("batman-adv: store hard_iface as iflink private data")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v2:
- dropped batadv_hardif_cnt, thanks Nora Schiffer
- Link to v1: https://patch.msgid.link/20260607-gw-disable-check-v1-1-d156beb975ce@narfation.org
---
 net/batman-adv/hard-interface.c | 28 ++--------------------------
 1 file changed, 2 insertions(+), 26 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 60cee2c2..03d01c20 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -814,30 +814,6 @@ int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
 	return ret;
 }
 
-/**
- * batadv_hardif_cnt() - get number of interfaces enslaved to mesh interface
- * @mesh_iface: mesh interface to check
- *
- * This function is only using RCU for locking - the result can therefore be
- * off when another function is modifying the list at the same time. The
- * caller can use the rtnl_lock to make sure that the count is accurate.
- *
- * Return: number of connected/enslaved hard interfaces
- */
-static size_t batadv_hardif_cnt(struct net_device *mesh_iface)
-{
-	struct batadv_hard_iface *hard_iface;
-	struct list_head *iter;
-	size_t count = 0;
-
-	rcu_read_lock();
-	netdev_for_each_lower_private_rcu(mesh_iface, hard_iface, iter)
-		count++;
-	rcu_read_unlock();
-
-	return count;
-}
-
 /**
  * batadv_hardif_disable_interface() - Remove hard interface from mesh interface
  * @hard_iface: hard interface to be removed
@@ -878,8 +854,8 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 	netdev_upper_dev_unlink(hard_iface->net_dev, hard_iface->mesh_iface);
 	batadv_hardif_recalc_extra_skbroom(hard_iface->mesh_iface);
 
-	/* nobody uses this interface anymore */
-	if (batadv_hardif_cnt(hard_iface->mesh_iface) <= 1)
+	/* nobody uses this mesh interface anymore */
+	if (list_empty(&hard_iface->mesh_iface->adj_list.lower))
 		batadv_gw_check_client_stop(bat_priv);
 
 	hard_iface->mesh_iface = NULL;

---
base-commit: 385b248dd4e46c4ce022adeb1b13e547d1954901
change-id: 20260607-gw-disable-check-f3393c3a4989

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

