Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C09F727A27B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 27 Sep 2020 21:12:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8B06E805F8;
	Sun, 27 Sep 2020 21:12:53 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 231D080091
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 27 Sep 2020 21:12:49 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1601233969;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fZLqRGGSTUrOK+qF5Zhf7v3YXXpTS2w+aSJq9/Ptp6w=;
	b=gkKYAn9YNu1Y2VBsEUxgDv2SwbBNzzWRKENdpP/tyz5f65WduHm2/oE8iiZP8q3kAT8i7H
	RTbN840Vsv6TmRwH6275X8X0aUu1mlkLR9gT8IE+vjJeRsH10qYIHXhVH1XobEzy0yviRz
	Qv6lAYKq3XX3pFrumZ9V4eOj+h5DRllITwFXrRia50pPMT6yHtPt5fFH8jEQVWEvOa1Tqa
	FCtOpyJbWi6LkRKejwcFV/O1JXICcQbgtQ/UI28rHGMyOjg9IWQVmhTmBXOj9U0RVzIJKS
	3xdART3Ty6zsDLenQGgDy6ZROhh8y1lG+wF9keTBPLXU5VM4DW7PCynjCur7Ow==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] net: bridge: mcast: rename br_ip's u member to dst
Date: Sun, 27 Sep 2020 21:12:34 +0200
Message-Id: <20200927191234.22423-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601233970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=fZLqRGGSTUrOK+qF5Zhf7v3YXXpTS2w+aSJq9/Ptp6w=;
	b=OIJ8TdhhSnxrrl1mu9dZ/Y/Ud17oglXNfwACpSD0lbKMQA8w5SaeAZkjxJ4fKMLAhi3/55
	qqz60rNMWq6roVy/8HQzuFizuEu63/oIEcUdGpWLpB85cPVxnUFG7RtOPWuGk5WT45Zn3T
	I5NcAOyHnjN1R7BonxquSdm/Oe8nblI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601233970; a=rsa-sha256;
	cv=none;
	b=Xkmwjy01XSlTag/v6Kx07poAVBoTV07yZwb6JObGsYdlUkowcVE6bTjTKFW3OrxPKfrfvK
	JrdB1QDY9vORa736ifBUN8notFtPw0ZzREYX+fuB2sE9DsMyjjIqjIiKrWkwE/pfH7EGoY
	5L96Rhvcrpw7bF7E1D/z4Vj6Iv0cC7w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=gkKYAn9Y;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2F37FAVASNYXBLDOU5IHALOLEUSS6XE7
X-Message-ID-Hash: 2F37FAVASNYXBLDOU5IHALOLEUSS6XE7
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Nikolay Aleksandrov <nikolay@nvidia.com>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2F37FAVASNYXBLDOU5IHALOLEUSS6XE7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Since now we have src in br_ip, u no longer makes sense so rename
it to dst. No functional changes.

v2: fix build with CONFIG_BATMAN_ADV_MCAST

CC: Marek Lindner <mareklindner@neomailbox.ch>
CC: Simon Wunderlich <sw@simonwunderlich.de>
CC: Antonio Quartulli <a@unstable.cc>
CC: Sven Eckelmann <sven@narfation.org>
CC: b.a.t.m.a.n@lists.open-mesh.org
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
[linus.luessing@c0d3.blue: Add compat code]
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 compat-include/linux/if_bridge.h | 39 ++++++++++++++++++++++++++++++++
 net/batman-adv/multicast.c       | 14 ++++++------
 2 files changed, 46 insertions(+), 7 deletions(-)
 create mode 100644 compat-include/linux/if_bridge.h

diff --git a/compat-include/linux/if_bridge.h b/compat-include/linux/if_b=
ridge.h
new file mode 100644
index 00000000..c4f9bc08
--- /dev/null
+++ b/compat-include/linux/if_bridge.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
+ *
+ * Marek Lindner, Simon Wunderlich
+ *
+ * This file contains macros for maintaining compatibility with older ve=
rsions
+ * of the Linux kernel.
+ */
+
+#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_IF_BRIDGE_H_
+#define _NET_BATMAN_ADV_COMPAT_LINUX_IF_BRIDGE_H_
+
+#include <linux/version.h>
+#include_next <linux/if_bridge.h>
+
+#if LINUX_VERSION_IS_LESS(5, 10, 0)
+
+struct batadv_br_ip {
+	union {
+		__be32  ip4;
+#if IS_ENABLED(CONFIG_IPV6)
+		struct in6_addr ip6;
+#endif
+	} dst;
+	__be16          proto;
+	__u16           vid;
+};
+
+struct batadv_br_ip_list {
+	struct list_head list;
+	struct batadv_br_ip addr;
+};
+
+#define br_ip batadv_br_ip
+#define br_ip_list batadv_br_ip_list
+
+#endif /* LINUX_VERSION_IS_LESS(5, 10, 0) */
+
+#endif /* _NET_BATMAN_ADV_COMPAT_LINUX_IF_BRIDGE_H_ */
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 0746fe2c..9af99c39 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -221,7 +221,7 @@ static u8 batadv_mcast_mla_rtr_flags_bridge_get(struc=
t batadv_priv *bat_priv,
 		 * address here, only IPv6 ones
 		 */
 		if (br_ip_entry->addr.proto =3D=3D htons(ETH_P_IPV6) &&
-		    ipv6_addr_is_ll_all_routers(&br_ip_entry->addr.u.ip6))
+		    ipv6_addr_is_ll_all_routers(&br_ip_entry->addr.dst.ip6))
 			flags &=3D ~BATADV_MCAST_WANT_NO_RTR6;
=20
 		list_del(&br_ip_entry->list);
@@ -562,10 +562,10 @@ batadv_mcast_mla_softif_get(struct net_device *dev,
 static void batadv_mcast_mla_br_addr_cpy(char *dst, const struct br_ip *=
src)
 {
 	if (src->proto =3D=3D htons(ETH_P_IP))
-		ip_eth_mc_map(src->u.ip4, dst);
+		ip_eth_mc_map(src->dst.ip4, dst);
 #if IS_ENABLED(CONFIG_IPV6)
 	else if (src->proto =3D=3D htons(ETH_P_IPV6))
-		ipv6_eth_mc_map(&src->u.ip6, dst);
+		ipv6_eth_mc_map(&src->dst.ip6, dst);
 #endif
 	else
 		eth_zero_addr(dst);
@@ -609,11 +609,11 @@ static int batadv_mcast_mla_bridge_get(struct net_d=
evice *dev,
 				continue;
=20
 			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
-			    ipv4_is_local_multicast(br_ip_entry->addr.u.ip4))
+			    ipv4_is_local_multicast(br_ip_entry->addr.dst.ip4))
 				continue;
=20
 			if (!(tvlv_flags & BATADV_MCAST_WANT_NO_RTR4) &&
-			    !ipv4_is_local_multicast(br_ip_entry->addr.u.ip4))
+			    !ipv4_is_local_multicast(br_ip_entry->addr.dst.ip4))
 				continue;
 		}
=20
@@ -623,11 +623,11 @@ static int batadv_mcast_mla_bridge_get(struct net_d=
evice *dev,
 				continue;
=20
 			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
-			    ipv6_addr_is_ll_all_nodes(&br_ip_entry->addr.u.ip6))
+			    ipv6_addr_is_ll_all_nodes(&br_ip_entry->addr.dst.ip6))
 				continue;
=20
 			if (!(tvlv_flags & BATADV_MCAST_WANT_NO_RTR6) &&
-			    IPV6_ADDR_MC_SCOPE(&br_ip_entry->addr.u.ip6) >
+			    IPV6_ADDR_MC_SCOPE(&br_ip_entry->addr.dst.ip6) >
 			    IPV6_ADDR_SCOPE_LINKLOCAL)
 				continue;
 		}
--=20
2.28.0
