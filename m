Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eFBWILI6QWqQmgkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 17:16:02 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0925B6D447E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 17:16:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=universe-factory.net header.s=dkim header.b=YRUM7E2x;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=reject) header.from=universe-factory.net;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D786C84267
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 17:16:01 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782659761;
 b=bXEoOrmoV8n7DtfCXfvoQWQcUfsXQJwdU+0Wsq1oDVr6NhzjR6g5IPeJHqVoDBPx/5PeJ
 E2oqWcH6iLp5APs1nVb+oBDADx7fNftF2MJE5+Paxq3oFfKaz72BnAYeyBi42Zk8vPMvW8o
 QhkmnbzFLTAgB/F263PNgaveIqNwQ8s=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782659761; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rZICpg8kLYNnmMO5w1063JJD2jv46o1GrMiOUtO5ecw=;
 b=MNHiV50mPhXjo6ofoDqAmoZzSK7j3n5VtliJOZSXNEou4tuqWBabu51WYWWm27zf8/ny/
 M0V/HqhtVcZRk7bvm8hRzvBVPjaUUDjYwla4xvOcVF7XfXJHUPmFxqOz4nzVz1pSrlbsmJn
 F75eg5x7wVw0724ROIe80lYUtrBS0JU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=universe-factory.net;
 arc=pass;
 dmarc=none
Received: from mail.universe-factory.net (osgiliath.universe-factory.net
 [141.95.161.142])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DE28C83F44
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Jun 2026 17:08:06 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782659291;
	b=c7/MIT/GY78Tg8IQUwUsRefdWg+RKOOejeGQFru0+LvQrlys8D596+gWM/5FceJdg58KIK
	yJ1iuQM/+xM0qHU6h0aBJ4BEubFdf6T0DpVYY8GJeqchbcb8KZ3mMcg0TrYpym9gqUzZxA
	eYstKrBNHWuS/ehnWMqjDSGfb2EhQMc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782659291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=rZICpg8kLYNnmMO5w1063JJD2jv46o1GrMiOUtO5ecw=;
	b=Uy2Klm+fVWSpaVnLtycs4Z17ued8IDBmN3E5DVQM05RFAsqILBnw6s1OsJH4GJMyyFFcdF
	gHPbkylb6/OB04A8ETO3Mn9TixGjTCiiEnx9poVfbYrPLekElScsROpVyKg2tVduPsZXal
	Zv8L+T1h7+tc8ROFvglP6YZdhscC2Yw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=universe-factory.net header.s=dkim header.b=YRUM7E2x;
	spf=pass (diktynna.open-mesh.org: domain of neocturne@universe-factory.net
 designates 141.95.161.142 as permitted sender)
 smtp.mailfrom=neocturne@universe-factory.net;
	dmarc=pass (policy=reject) header.from=universe-factory.net
From: Nora Schiffer <neocturne@universe-factory.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=universe-factory.net;
	s=dkim; t=1782659286;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rZICpg8kLYNnmMO5w1063JJD2jv46o1GrMiOUtO5ecw=;
	b=YRUM7E2xnIgdotFbmCIyn1qDtaMxSubjQWncFA0+RbSXDFp8W5D6kXjfL7jLY8QKWIXoum
	pMpw1mu0p5g9MkVAj8XShkFCMQyHzxwvHVaoRiqDwnlxiB8Hu3ON3XCks+unImRan+0Dm2
	YhWx2PElDyiFu77usjoiLfWfOGGt+rtGtZNt9ygxOT6tRl8WPwBAEOaAjiJA1mL++CJ4xV
	0DjDxdjBUFDm/EPViaMgl2aFEnUsJQdpAFvvSBj7CPcjc5RAuDdGr4X5uewFMpnfhZ3Vce
	HLzzb600XGZ/UBJj87Gm6nvsKkT5RXP5RUFufB9S3LdhRQ4P27STkDfB4QLOPA==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: sven@narfation.org,
	Nora Schiffer <neocturne@universe-factory.net>
Subject: [PATCH batadv v5 3/6] batman-adv: make hard_iface->mesh_iface
 immutable
Date: Sun, 28 Jun 2026 17:07:30 +0200
Message-ID: 
 <99c8e0aadebe8764b6df3d8638448e99c13d2a73.1782658366.git.neocturne@universe-factory.net>
In-Reply-To: <cover.1782658366.git.neocturne@universe-factory.net>
References: <cover.1782658366.git.neocturne@universe-factory.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Bar: -----
X-MailFrom: neocturne@universe-factory.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency
Message-ID-Hash: JIZSUBID35HWEE6DJIRRVICK74DEC452
X-Message-ID-Hash: JIZSUBID35HWEE6DJIRRVICK74DEC452
X-Mailman-Approved-At: Sun, 28 Jun 2026 17:11:17 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JIZSUBID35HWEE6DJIRRVICK74DEC452/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[universe-factory.net,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[universe-factory.net:s=dkim];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:neocturne@universe-factory.net,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[neocturne@universe-factory.net,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[universe-factory.net:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,universe-factory.net:dkim,universe-factory.net:email,universe-factory.net:mid,universe-factory.net:from_mime,lists.open-mesh.org:from_smtp,narfation.org:email];
	FROM_NEQ_ENVFROM(0.00)[neocturne@universe-factory.net,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0925B6D447E

With the hard_iface now being created for a specific mesh_iface, it is
beneficial not to set mesh_iface to NULL when the interface is disabled,
but instead keeping it immutable after the initial setup of the
hard_iface. By also holding the reference to the mesh_iface until the
hard_iface is released, hard_ifaces iterated over under RCU will always
point to a valid mesh_iface.

Co-developed-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Nora Schiffer <neocturne@universe-factory.net>
---

v5:
- Move immutable mesh_iface change to a new patch

v2-v4 (by Sven Eckelmann):
- Rebase
- Introduce immutable mesh_iface as part of the "remove global hardif
  list" patch


 net/batman-adv/hard-interface.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index ace81348ddef..a0b8b06f9a64 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -63,6 +63,7 @@ void batadv_hardif_release(struct kref *ref)
 	struct batadv_hard_iface *hard_iface;
 
 	hard_iface = container_of(ref, struct batadv_hard_iface, refcount);
+	netdev_put(hard_iface->mesh_iface, &hard_iface->meshif_dev_tracker);
 	netdev_put(hard_iface->net_dev, &hard_iface->dev_tracker);
 
 	kfree_rcu(hard_iface, rcu);
@@ -829,8 +830,6 @@ int batadv_hardif_enable_interface(struct net_device *net_dev,
 err_upper:
 	netdev_upper_dev_unlink(hard_iface->net_dev, mesh_iface);
 err_dev:
-	hard_iface->mesh_iface = NULL;
-	netdev_put(mesh_iface, &hard_iface->meshif_dev_tracker);
 	batadv_hardif_put(hard_iface);
 	return ret;
 }
@@ -871,7 +870,6 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 	/* delete all references to this hard_iface */
 	batadv_purge_orig_ref(bat_priv);
 	batadv_purge_outstanding_packets(bat_priv, hard_iface);
-	netdev_put(hard_iface->mesh_iface, &hard_iface->meshif_dev_tracker);
 
 	batadv_hardif_generation++;
 	netdev_upper_dev_unlink(hard_iface->net_dev, hard_iface->mesh_iface);
@@ -881,7 +879,6 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 	if (list_empty(&hard_iface->mesh_iface->adj_list.lower))
 		batadv_gw_check_client_stop(bat_priv);
 
-	hard_iface->mesh_iface = NULL;
 	batadv_hardif_put(hard_iface);
 
 out:
-- 
2.54.0

