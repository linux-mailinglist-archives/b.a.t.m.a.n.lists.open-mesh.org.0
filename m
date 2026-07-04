Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z4/XNWS6SGpItAAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 09:46:44 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1C5706FE2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 09:46:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="yE4od/5N";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3CA1884047
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 09:46:44 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783151204;
 b=mkAwPTVmo9nQc9ZOuMvvlmvkfBCUges947buDq1rWAZ7XBmTLy/tNl5tL/iHwuHYXL1K6
 pTq0CbM3zS43sy5ZDzaGzlWhcoA1SCD951qGIcMpKR43BXjpAv5xpCeaR131KsHm1qauyo2
 /0lKP0OFKmO7UI3b3NO76+4X7HKIilw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783151204; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Jx706+I9C4YMQ/jNb1WQuGXUerkSgk/XsRoIcZhSg18=;
 b=M8qTuW1din6j2VM/s6X8XWZ4uwjeAElm3+hu0qklTVrltmou2VV1KX99UpV7jCPmmM2E8
 yMlzZbLEmhnUvYtLEYQMKEeyMcWA7PPU2twnf2lEt8zH3l2atUnkN9vHsR4Dz9fntEdFfE1
 uCrbplsHuOzcQg27mEy3MdWhC8Okbtg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id CBC72809D6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 04 Jul 2026 09:46:15 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783151185;
	b=URHEUgXsIoKA2Vp17P++ZuzaeC4tLmMomtc4yT3HEIdaZNuS9WV4/k77lr+a87KlUlv9sZ
	CcDqhInWEipWF3goRO/VjQGIhXqc0OqeaD05Cgl5MvLlQ0Mgj2ct6FkM9i9QgaIE3PsmQM
	tNt+nTqh484cILrg55VM6O93MgRCACA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783151185;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=Jx706+I9C4YMQ/jNb1WQuGXUerkSgk/XsRoIcZhSg18=;
	b=xJam/R/X55czLoMT/Sbl84a9Bqlp46Bmul4udnihy1vg2XSxxaN5061W2o86Oj1NaFzkE1
	1t1f/klbISxuS3HbW6X6VG/VFlg/Z0WucpCQn1DvPAGQs1dR59hpFUSrUSF9Uz7YvVO1Bx
	NirIfou0r7Ae/qvRvAB/xtblkO5KRr0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="yE4od/5N";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id AF6831FD3C;
	Sat, 04 Jul 2026 07:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783151174;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Jx706+I9C4YMQ/jNb1WQuGXUerkSgk/XsRoIcZhSg18=;
	b=yE4od/5NqROwczok7L1SYP1xh7Y/4StCNsLnTz6R4wlreDczQ3ont/vByzQ6h7khHxK+EQ
	JUbD1fH/BCr/lOg2FOx7WIGX5mIGMAuwcCOV4Ec2L0NT7GMfDxfjsseLMGIP56JjzWfyVA
	aPIsrVpzU8iYHemRDEYw7QLLLsbjifo=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 04 Jul 2026 09:46:09 +0200
Subject: [PATCH batadv] batman-adv: clean untagged VLAN on netdev
 registration failure
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260704-vlan-destructor-v1-1-cb9e70731f50@narfation.org>
X-B4-Tracking: v=1; b=H4sIAEC6SGoC/yWM0QqDMAwAf0XyvEJ0Mt1+ZfgQ26gZo46kloH47
 +u2xzu428FYhQ1u1Q7KWUzWWKA+VeAXijM7CYWhweaCHbYuPym6wJZ082lVF4i47Ts811eEUr2
 UJ3n/jncYKVHIMPy9beODffru4Dg+j+aHR3sAAAA=
X-Change-ID: 20260704-vlan-destructor-daae48703190
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4332; i=sven@narfation.org;
 h=from:subject:message-id; bh=hj+rNacWxS54Y6uDtkeORCernF+Sn1RlQNOYhwhV60k=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkeu5xNDG4zsu9X4XmbEV2tbrE4fv4J+d3bzAz63n94s
 EUwvVSso5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjCR2vmMDMsez9ng4tpx94LM
 ih9xm18/U6rLfeTv7tade/nx4909dfsY/nCeZ92c4CjEEvlKIGjbAZ93nT15E8Lsd7yJ2s1iden
 rayYA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: EO4X6XTV3523RDC7UZLLK3VK5XIYAJ2A
X-Message-ID-Hash: EO4X6XTV3523RDC7UZLLK3VK5XIYAJ2A
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EO4X6XTV3523RDC7UZLLK3VK5XIYAJ2A/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6F1C5706FE2

When an mesh interface is registered, it creates an untagged struct
batadv_meshif_vlan on top of it via the NETDEV_REGISTER notifier. But in
this process, another receiver of this notification can veto the
registration. The netdev registration will be aborted because of this veto.

The register_netdevice() call will try to clean up the net_device using
unregister_netdevice_queue() - which only uses the .priv_destructor to
free private resources. In this situation, .dellink will not be called.

The cleanup of the untagged batadv_meshif_vlan must thefore be done in the
destructor to avoid a leak of this object.

Fixes: 952cebb57518 ("batman-adv: add per VLAN interface attribute framework")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/main.c           |  8 ++++++++
 net/batman-adv/mesh-interface.c | 13 ++-----------
 net/batman-adv/mesh-interface.h |  2 ++
 3 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 23abe04b..4cda65e4 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -267,6 +267,7 @@ int batadv_mesh_init(struct net_device *mesh_iface)
 void batadv_mesh_free(struct net_device *mesh_iface)
 {
 	struct batadv_priv *bat_priv = netdev_priv(mesh_iface);
+	struct batadv_meshif_vlan *vlan;
 
 	WRITE_ONCE(bat_priv->mesh_state, BATADV_MESH_DEACTIVATING);
 
@@ -281,6 +282,13 @@ void batadv_mesh_free(struct net_device *mesh_iface)
 
 	batadv_mcast_free(bat_priv);
 
+	/* destroy the "untagged" VLAN */
+	vlan = batadv_meshif_vlan_get(bat_priv, BATADV_NO_FLAGS);
+	if (vlan) {
+		batadv_meshif_destroy_vlan(bat_priv, vlan);
+		batadv_meshif_vlan_put(vlan);
+	}
+
 	/* Free the TT and the originator tables only after having terminated
 	 * all the other depending components which may use these structures for
 	 * their purposes.
diff --git a/net/batman-adv/mesh-interface.c b/net/batman-adv/mesh-interface.c
index a17514ea..eb4ab99d 100644
--- a/net/batman-adv/mesh-interface.c
+++ b/net/batman-adv/mesh-interface.c
@@ -633,8 +633,8 @@ int batadv_meshif_create_vlan(struct batadv_priv *bat_priv, unsigned short vid)
  * @bat_priv: the bat priv with all the mesh interface information
  * @vlan: the object to remove
  */
-static void batadv_meshif_destroy_vlan(struct batadv_priv *bat_priv,
-				       struct batadv_meshif_vlan *vlan)
+void batadv_meshif_destroy_vlan(struct batadv_priv *bat_priv,
+				struct batadv_meshif_vlan *vlan)
 {
 	/* explicitly remove the associated TT local entry because it is marked
 	 * with the NOPURGE flag
@@ -1157,22 +1157,13 @@ static int batadv_meshif_newlink(struct net *src_net, struct net_device *dev,
 static void batadv_meshif_destroy_netlink(struct net_device *mesh_iface,
 					  struct list_head *head)
 {
-	struct batadv_priv *bat_priv = netdev_priv(mesh_iface);
 	struct batadv_hard_iface *hard_iface;
-	struct batadv_meshif_vlan *vlan;
 
 	while (!list_empty(&mesh_iface->adj_list.lower)) {
 		hard_iface = netdev_adjacent_get_private(mesh_iface->adj_list.lower.next);
 		batadv_hardif_disable_interface(hard_iface);
 	}
 
-	/* destroy the "untagged" VLAN */
-	vlan = batadv_meshif_vlan_get(bat_priv, BATADV_NO_FLAGS);
-	if (vlan) {
-		batadv_meshif_destroy_vlan(bat_priv, vlan);
-		batadv_meshif_vlan_put(vlan);
-	}
-
 	unregister_netdevice_queue(mesh_iface, head);
 }
 
diff --git a/net/batman-adv/mesh-interface.h b/net/batman-adv/mesh-interface.h
index 53756c5a..5e1e83e0 100644
--- a/net/batman-adv/mesh-interface.h
+++ b/net/batman-adv/mesh-interface.h
@@ -21,6 +21,8 @@ void batadv_interface_rx(struct net_device *mesh_iface,
 bool batadv_meshif_is_valid(const struct net_device *net_dev);
 extern struct rtnl_link_ops batadv_link_ops;
 int batadv_meshif_create_vlan(struct batadv_priv *bat_priv, unsigned short vid);
+void batadv_meshif_destroy_vlan(struct batadv_priv *bat_priv,
+				struct batadv_meshif_vlan *vlan);
 void batadv_meshif_vlan_release(struct kref *ref);
 struct batadv_meshif_vlan *batadv_meshif_vlan_get(struct batadv_priv *bat_priv,
 						  unsigned short vid);

---
base-commit: 22b12d005035f37f898e5bf80480719fe1ef4fba
change-id: 20260704-vlan-destructor-daae48703190

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

