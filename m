Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 168CC2797E7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 26 Sep 2020 10:22:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B3E7C800E2;
	Sat, 26 Sep 2020 10:22:06 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 621F1800A1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 26 Sep 2020 10:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1601107986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E6TKCD2SmP0HbdLaY49M2V+pU+Q7FjyqTxkD6V+xbuQ=;
	b=2bbu8RAT+2ud7PQpkNBLy8xPJQ1he+VgGnocp/jIIk6mE6m3WGpett330NszJ1HBbH/gsA
	NN84W6Klthwbw7sL0QEXxDqooeQdfRxcCWGA01fVWzAPPNdPdP8WPHYLnMX00sWaGBUYCr
	qYI6/mxSLy7NgxNADwBDXGeSNO7IV5E=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/2] batman-adv: mcast: rename br_ip's u member to dst
Date: Sat, 26 Sep 2020 10:12:20 +0200
Message-Id: <20200926081220.40779-2-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200926081220.40779-1-sven@narfation.org>
References: <20200926081220.40779-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601108524;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=E6TKCD2SmP0HbdLaY49M2V+pU+Q7FjyqTxkD6V+xbuQ=;
	b=JffKiaIGay9hnLu3rapWRrNBaJPOPxRKqH5hTuWCCbDgGa+B3cU2F1SwEVQtRRCuVp/LUz
	9h48xmj97+1VdnCbd5kf+rm7VbnjF+9uEr2Ot1utVIkdzpB2YT6Hpl8PAzzZBI++t79A8H
	sXjwL/eVGLkyp0iCV2nlvdRiUR0Pddw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601108524; a=rsa-sha256;
	cv=none;
	b=3hrMV1X7ZodBGISp5qx4cO95dG9dKN7OeXSMPUwx6opi80ZMqHiUc7bmCTzCA0Z8tThlwe
	lS5thMj4LfX1tzbQpRkJt1XgKAavCAb/3yQN15lm715AyXOcdABP2zeOSKzHJSCDQlOFkg
	SIxhCQIieLPRRbYeh5QYPZOry/2AL6s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=2bbu8RAT;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7H76PITJXELMORCMJ4JCGONBLKCGJIG4
X-Message-ID-Hash: 7H76PITJXELMORCMJ4JCGONBLKCGJIG4
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Nikolay Aleksandrov <nikolay@nvidia.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7H76PITJXELMORCMJ4JCGONBLKCGJIG4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Since now we have src in br_ip, u no longer makes sense so rename
it to dst. No functional changes.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
[sven@narfation.org: Add compat code]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/linux/if_bridge.h | 26 ++++++++++++++++++++++++++
 compat-patches/replacements.sh   |  5 +++++
 net/batman-adv/multicast.c       | 14 +++++++-------
 3 files changed, 38 insertions(+), 7 deletions(-)
 create mode 100644 compat-include/linux/if_bridge.h

diff --git a/compat-include/linux/if_bridge.h b/compat-include/linux/if_b=
ridge.h
new file mode 100644
index 00000000..7b6d5876
--- /dev/null
+++ b/compat-include/linux/if_bridge.h
@@ -0,0 +1,26 @@
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
+#define BATADV_BR_IP_UNION u
+
+#else
+
+#define BATADV_BR_IP_UNION dst
+
+#endif /* LINUX_VERSION_IS_LESS(5, 10, 0) */
+
+#endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_IF_BRIDGE_H_ */
diff --git a/compat-patches/replacements.sh b/compat-patches/replacements=
.sh
index 1b64e5c2..e72ec5ec 100755
--- a/compat-patches/replacements.sh
+++ b/compat-patches/replacements.sh
@@ -3,3 +3,8 @@
 # Copyright (C) 2007-2018  B.A.T.M.A.N. contributors
=20
 set -e
+
+# for kernel < 5.10 to enable br_ip compat code
+sed -i \
+	-e 's/\(->\|\.\)dst\.ip/\1BATADV_BR_IP_UNION.ip/' \
+	build/net/batman-adv/multicast.c
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
