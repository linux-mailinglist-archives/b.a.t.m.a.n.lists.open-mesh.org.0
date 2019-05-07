Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 936AD15E34
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 09:28:32 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7F73282081;
	Tue,  7 May 2019 09:28:29 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 7991980781
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 09:28:27 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557214107; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt; bh=x6W+zy/LTbCqHWoCHvKSlUpcHOBjKzIYkVE+I2ZkOW4=; 
 b=F1pw5LUiE6EP+i0rFCYclIhbBeEbILQc1OFbF4vUdHQppmXm+qO+9+U1gJtxg4Ccf5hYSN
 4oh3bDbJwSRPLurn3nJDmozD0eP+JK83/SxW+NTg84h1JISnPtHHfDzD1TnJJ24xqZeopn
 goQ6+PsZvIG7m4e5kieToLqwu1NvFPU+PwTXMIkW0PVyCJ6GyjLLcHNLzKWwj2tgQ/yIyL
 gMEhaY1Bqi4N4Y6PpSVt6vFGMu2bRVy4oRqZEr7C16OPmO3YAxtRqrIUKwAOjUIYXk4S60
 iHLpFGbBqDCOxbaP4T1pUMtbtJnMNzCnIYkwB2uSneShHl1bus4HhamjCG1Hew==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2] batman-adv: Introduce no noflood mark
Date: Tue,  7 May 2019 09:28:21 +0200
Message-Id: <20190507072821.8147-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557214107; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt;
 bh=x6W+zy/LTbCqHWoCHvKSlUpcHOBjKzIYkVE+I2ZkOW4=;
 b=IjfDBKqPI7j18/HAS6rJ85jHKT+YToH/Gf4IiLqjhEc6+qrEOSUbpsgh0TKREHAzS6WQo7
 aJcEKFuugXNkWtEzBOljQWo20kV/YOXUnILzdpyFtopxHwI6tqu73fqs7+Pp8B1APlWqdU
 p1AxY+XZ8qzMFN2i3scoN2lh94bHIFsLJMSP4YwqgSkJEO7kZo2dCUG3cCz6B/yY0E7Qw5
 dyun/+X67Pv5p5svcP1ptqgolPC+0zsdL6tjFwDUNEBmE2uCG0tblcQK1iARKVX0piZ74Q
 j7ZXYA5O2QXs3VQe9AH1L64L/qXNpccc7jAe96SKlZdd0VF80Ps4ZS3XrW1z1w==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557214107; a=rsa-sha256; cv=none;
 b=HOe2W4JBL/9V71jtNCwc66iR1UTTi2dDGXbi9P+wjWVm/jJuZ4gdHnKDGIwcVM1g4M8n+6
 V0+vvh6xMGz104bodG12b3DOie7d5M61xzLnvAinKvXDicmZTimxWvcqDJbxP9IfNiN86O
 /0Y9aIjd+4xkao/jNJR5T7+9m+1VzMJouNV6O/NPksNZYO/LZCNn9uICa6LUssUuRj/Nb4
 /u7Ksb6ILXT2ikwq3FdReCwtnU/bY4qstL2NLrUHNqjRRKs23pVU5sVAuKd8mxotsf2eCi
 pwGfmP8EC1FiVEjNVQW4EyBtnGCSKflFB787dmF3bQb0924JyFUhZYOnVYaBIg==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

This mark prevents a multicast packet being flooded through the whole
mesh. The advantage of marking certain multicast packets via e.g.
ebtables instead of dropping is then the following:

This allows an administrator to let specific multicast packets pass as
long as they are forwarded to a limited number of nodes only and are
therefore creating no burdon to unrelated nodes.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>

---

https://www.open-mesh.org/projects/batman-adv/wiki/Noflood-broadcast-prevention

Changelog v2:

* rebased to master
* sysfs -> netlink
---
 include/uapi/linux/batman_adv.h | 12 ++++++++++++
 net/batman-adv/netlink.c        | 22 ++++++++++++++++++++++
 net/batman-adv/soft-interface.c | 20 ++++++++++++++++++++
 net/batman-adv/types.h          | 12 ++++++++++++
 4 files changed, 66 insertions(+)

diff --git a/include/uapi/linux/batman_adv.h b/include/uapi/linux/batman_adv.h
index 67f46367..6fabb7aa 100644
--- a/include/uapi/linux/batman_adv.h
+++ b/include/uapi/linux/batman_adv.h
@@ -480,6 +480,18 @@ enum batadv_nl_attrs {
 	 */
 	BATADV_ATTR_MULTICAST_FANOUT,
 
+	/**
+	 * @BATADV_ATTR_NOFLOOD_MARK: the noflood mark which allows to tag
+	 *  frames which should never be broadcast flooded through the mesh.
+	 */
+	BATADV_ATTR_NOFLOOD_MARK,
+
+	/**
+	 * @BATADV_ATTR_NOFLOOD_MASK: the noflood (bit)mask which allows to tag
+	 *  frames which should never be broadcast flooded through the mesh.
+	 */
+	BATADV_ATTR_NOFLOOD_MASK,
+
 	/* add attributes above here, update the policy in netlink.c */
 
 	/**
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index a67720fa..a08a67af 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -134,6 +134,8 @@ static const struct nla_policy batadv_netlink_policy[NUM_BATADV_ATTR] = {
 	[BATADV_ATTR_AP_ISOLATION_ENABLED]	= { .type = NLA_U8 },
 	[BATADV_ATTR_ISOLATION_MARK]		= { .type = NLA_U32 },
 	[BATADV_ATTR_ISOLATION_MASK]		= { .type = NLA_U32 },
+	[BATADV_ATTR_NOFLOOD_MARK]		= { .type = NLA_U32 },
+	[BATADV_ATTR_NOFLOOD_MASK]		= { .type = NLA_U32 },
 	[BATADV_ATTR_BONDING_ENABLED]		= { .type = NLA_U8 },
 	[BATADV_ATTR_BRIDGE_LOOP_AVOIDANCE_ENABLED]	= { .type = NLA_U8 },
 	[BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED]	= { .type = NLA_U8 },
@@ -286,6 +288,14 @@ static int batadv_netlink_mesh_fill(struct sk_buff *msg,
 			bat_priv->isolation_mark_mask))
 		goto nla_put_failure;
 
+	if (nla_put_u32(msg, BATADV_ATTR_NOFLOOD_MARK,
+			bat_priv->noflood_mark))
+		goto nla_put_failure;
+
+	if (nla_put_u32(msg, BATADV_ATTR_NOFLOOD_MASK,
+			bat_priv->noflood_mark_mask))
+		goto nla_put_failure;
+
 	if (nla_put_u8(msg, BATADV_ATTR_BONDING_ENABLED,
 		       !!atomic_read(&bat_priv->bonding)))
 		goto nla_put_failure;
@@ -466,6 +476,18 @@ static int batadv_netlink_set_mesh(struct sk_buff *skb, struct genl_info *info)
 		bat_priv->isolation_mark_mask = nla_get_u32(attr);
 	}
 
+	if (info->attrs[BATADV_ATTR_NOFLOOD_MARK]) {
+		attr = info->attrs[BATADV_ATTR_NOFLOOD_MARK];
+
+		bat_priv->noflood_mark = nla_get_u32(attr);
+	}
+
+	if (info->attrs[BATADV_ATTR_NOFLOOD_MASK]) {
+		attr = info->attrs[BATADV_ATTR_NOFLOOD_MASK];
+
+		bat_priv->noflood_mark_mask = nla_get_u32(attr);
+	}
+
 	if (info->attrs[BATADV_ATTR_BONDING_ENABLED]) {
 		attr = info->attrs[BATADV_ATTR_BONDING_ENABLED];
 
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
index a7677e1d..6912f651 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -176,6 +176,23 @@ static void batadv_interface_set_rx_mode(struct net_device *dev)
 {
 }
 
+/**
+ * batadv_send_skb_has_noflood_mark() - check if packet has a noflood mark
+ * @bat_priv: the bat priv with all the soft interface information
+ * @skb: the packet to check
+ *
+ * Return: True if the skb's mark matches a configured noflood mark and
+ * noflood mark mask. False otherwise.
+ */
+static bool
+batadv_skb_has_noflood_mark(struct batadv_priv *bat_priv, struct sk_buff *skb)
+{
+	u32 match_mark = skb->mark & bat_priv->noflood_mark_mask;
+
+	return bat_priv->noflood_mark_mask &&
+	       match_mark == bat_priv->noflood_mark;
+}
+
 static netdev_tx_t batadv_interface_tx(struct sk_buff *skb,
 				       struct net_device *soft_iface)
 {
@@ -326,6 +343,9 @@ static netdev_tx_t batadv_interface_tx(struct sk_buff *skb,
 		if (batadv_dat_snoop_outgoing_arp_request(bat_priv, skb))
 			brd_delay = msecs_to_jiffies(ARP_REQ_DELAY);
 
+		if (batadv_skb_has_noflood_mark(bat_priv, skb))
+			goto dropped;
+
 		if (batadv_skb_head_push(skb, sizeof(*bcast_packet)) < 0)
 			goto dropped;
 
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 74b64473..325a41a8 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1592,6 +1592,18 @@ struct batadv_priv {
 	 */
 	u32 isolation_mark_mask;
 
+	/**
+	 * @noflood_mark: the skb->mark value used to allow directed targeting
+	 *  only
+	 */
+	u32 noflood_mark;
+
+	/**
+	 * @noflood_mark_mask: bitmask identifying the bits in skb->mark to be
+	 *  used for the noflood mark
+	 */
+	u32 noflood_mark_mask;
+
 	/** @bcast_seqno: last sent broadcast packet sequence number */
 	atomic_t bcast_seqno;
 
-- 
2.20.1

