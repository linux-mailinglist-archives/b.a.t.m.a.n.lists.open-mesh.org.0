Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9677B378C9D
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 15:15:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0E43F80537;
	Mon, 10 May 2021 15:15:12 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C556A83DBF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 15:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620651945;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nmULHP0cXOKjrPUJY3aGYtFb8VDFkdIP2mY2hxB9/LQ=;
	b=Bb3mXgQiEJ1I56pYhlCbzGg2qRPda05UqLQHlb6pRx+1rWxOwJ8HfVoVN7FkteoInuTHCl
	0/dURUL0MM4f7mx4sz/z/nuO2BJk/Yy7z8NF7adv3Vf7SnSQuEWwQoJFwV6zJcvguJOg2Z
	nMaUfKhhlJFhwyMSCmZ6lymSV3o7ACM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Always send iface index+name in genlmsg
Date: Mon, 10 May 2021 15:05:42 +0200
Message-Id: <20210510130542.40833-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620652501; a=rsa-sha256;
	cv=none;
	b=lp9z+mF8lnctMb8cBjoA/AOneOgPRTq1ONDq9K/OkVPRMwGOUUqqpgKUFMeBs45mCcLxcI
	toLjEzUG14muBufgHv8Su8LhDTHrwYRW/MQgRvUYIfnE7riYudnofYAsaruwMhYI8qEP0Y
	3Lrdfh06W/Fhyy57F2Bf7brEvkZxV2M=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Bb3mXgQi;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620652501;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=nmULHP0cXOKjrPUJY3aGYtFb8VDFkdIP2mY2hxB9/LQ=;
	b=CnhVbs/RFGLquUEXNnD5n6gdAbulNolRH7/2nRmD9caHFc7kVabKDuFYebU+JhpRB9TVyX
	wlvcldYhwI1Wc0hI2JNC1MSKK6Kc9ImQ9A+Z87c4R1u0euwgrZKTqR9wWNbgDA4fHa9XNF
	hcHjn/e3sNm0RLr6GhtEsMGfTUMPxzc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SAQYUZQ7I7H7VWHFPVLBUDYCFX7HNWLO
X-Message-ID-Hash: SAQYUZQ7I7H7VWHFPVLBUDYCFX7HNWLO
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SAQYUZQ7I7H7VWHFPVLBUDYCFX7HNWLO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The batman-adv netlink messages often contain the interface index and
interface name in the same message. This makes it easy for the receiver t=
o
operate on the incoming data when it either needs to print something or
needs to operate on the interface index.

But one of the attributes was missing for:

* neighbor table dumps
* originator table dumps
* gateway list dumps
* query of hardif information
* query of vid information

The userspace therefore had to implement special workarounds using
SIOCGIFNAME or SIOCGIFINDEX depending on what was actually provided.
Providing both information simplifies the userspace code massively withou=
t
adding a lot of extra overhead in the kernel portion.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_iv_ogm.c |  6 ++++++
 net/batman-adv/bat_v.c      | 10 ++++++++++
 net/batman-adv/netlink.c    |  8 ++++++++
 3 files changed, 24 insertions(+)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 789f257b..680def80 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -1849,6 +1849,8 @@ batadv_iv_ogm_orig_dump_subentry(struct sk_buff *ms=
g, u32 portid, u32 seq,
 		    orig_node->orig) ||
 	    nla_put(msg, BATADV_ATTR_NEIGH_ADDRESS, ETH_ALEN,
 		    neigh_node->addr) ||
+	    nla_put_string(msg, BATADV_ATTR_HARD_IFNAME,
+			   neigh_node->if_incoming->net_dev->name) ||
 	    nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX,
 			neigh_node->if_incoming->net_dev->ifindex) ||
 	    nla_put_u8(msg, BATADV_ATTR_TQ, tq_avg) ||
@@ -2078,6 +2080,8 @@ batadv_iv_ogm_neigh_dump_neigh(struct sk_buff *msg,=
 u32 portid, u32 seq,
=20
 	if (nla_put(msg, BATADV_ATTR_NEIGH_ADDRESS, ETH_ALEN,
 		    hardif_neigh->addr) ||
+	    nla_put_string(msg, BATADV_ATTR_HARD_IFNAME,
+			   hardif_neigh->if_incoming->net_dev->name) ||
 	    nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX,
 			hardif_neigh->if_incoming->net_dev->ifindex) ||
 	    nla_put_u32(msg, BATADV_ATTR_LAST_SEEN_MSECS,
@@ -2459,6 +2463,8 @@ static int batadv_iv_gw_dump_entry(struct sk_buff *=
msg, u32 portid,
 		    router->addr) ||
 	    nla_put_string(msg, BATADV_ATTR_HARD_IFNAME,
 			   router->if_incoming->net_dev->name) ||
+	    nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX,
+			router->if_incoming->net_dev->ifindex) ||
 	    nla_put_u32(msg, BATADV_ATTR_BANDWIDTH_DOWN,
 			gw_node->bandwidth_down) ||
 	    nla_put_u32(msg, BATADV_ATTR_BANDWIDTH_UP,
diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index e1ca2b8c..b98aea95 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -146,6 +146,8 @@ batadv_v_neigh_dump_neigh(struct sk_buff *msg, u32 po=
rtid, u32 seq,
=20
 	if (nla_put(msg, BATADV_ATTR_NEIGH_ADDRESS, ETH_ALEN,
 		    hardif_neigh->addr) ||
+	    nla_put_string(msg, BATADV_ATTR_HARD_IFNAME,
+			   hardif_neigh->if_incoming->net_dev->name) ||
 	    nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX,
 			hardif_neigh->if_incoming->net_dev->ifindex) ||
 	    nla_put_u32(msg, BATADV_ATTR_LAST_SEEN_MSECS,
@@ -298,6 +300,8 @@ batadv_v_orig_dump_subentry(struct sk_buff *msg, u32 =
portid, u32 seq,
 	if (nla_put(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN, orig_node->orig) |=
|
 	    nla_put(msg, BATADV_ATTR_NEIGH_ADDRESS, ETH_ALEN,
 		    neigh_node->addr) ||
+	    nla_put_string(msg, BATADV_ATTR_HARD_IFNAME,
+			   neigh_node->if_incoming->net_dev->name) ||
 	    nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX,
 			neigh_node->if_incoming->net_dev->ifindex) ||
 	    nla_put_u32(msg, BATADV_ATTR_THROUGHPUT, throughput) ||
@@ -739,6 +743,12 @@ static int batadv_v_gw_dump_entry(struct sk_buff *ms=
g, u32 portid,
 		goto out;
 	}
=20
+	if (nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX,
+			router->if_incoming->net_dev->ifindex)) {
+		genlmsg_cancel(msg, hdr);
+		goto out;
+	}
+
 	if (nla_put_u32(msg, BATADV_ATTR_BANDWIDTH_DOWN,
 			gw_node->bandwidth_down)) {
 		genlmsg_cancel(msg, hdr);
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index f317d206..b6cc746e 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -814,6 +814,10 @@ static int batadv_netlink_hardif_fill(struct sk_buff=
 *msg,
 			bat_priv->soft_iface->ifindex))
 		goto nla_put_failure;
=20
+	if (nla_put_string(msg, BATADV_ATTR_MESH_IFNAME,
+			   bat_priv->soft_iface->name))
+		goto nla_put_failure;
+
 	if (nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX,
 			net_dev->ifindex) ||
 	    nla_put_string(msg, BATADV_ATTR_HARD_IFNAME,
@@ -1045,6 +1049,10 @@ static int batadv_netlink_vlan_fill(struct sk_buff=
 *msg,
 			bat_priv->soft_iface->ifindex))
 		goto nla_put_failure;
=20
+	if (nla_put_string(msg, BATADV_ATTR_MESH_IFNAME,
+			   bat_priv->soft_iface->name))
+		goto nla_put_failure;
+
 	if (nla_put_u32(msg, BATADV_ATTR_VLANID, vlan->vid & VLAN_VID_MASK))
 		goto nla_put_failure;
=20
--=20
2.30.2
