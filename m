Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 75878496265
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 21 Jan 2022 16:53:39 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4A45C83E1E;
	Fri, 21 Jan 2022 16:53:38 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7929C80595
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 21 Jan 2022 16:53:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1642780414;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TfBc/NJSP4S2Ecql0hPXPIrcOo0zVyGXOHiO+fw5W4o=;
	b=ugmxCOPN19f03XjI0b6AKAp4TJ/r8Sxc0frqqOtteIivABNPDwuCnvhFYvy8uaeOfiI/7E
	S36c0HC75q7X7yaPBXFhVEPaCMTOZqpg1JTfJp4KK+aJpExcEg9RBtdYcetyEKH7EWR+nc
	XqCaLg4HZ2z5nBTORbv+dQ6lPgz/TXo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [RFC PATCH] batman-adv: Drop support for Linux < 4.9
Date: Fri, 21 Jan 2022 16:53:28 +0100
Message-Id: <20220121155328.22117-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ugmxCOPN;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642780415; a=rsa-sha256;
	cv=none;
	b=X2tHqwapX4yh3ipYMmsbGqZGFWXd2JL7EY4xHWTh+1Zl5AIWYqXA3xOpZHewW7/lZPF1UH
	/7nnyfbxTwP3D/vaNc/AYt9s3Wh1f0xDOo92Q967h0ZroPHdigKkjP2NErVqM0kzifq86U
	9QO1UmC8+lPng1OihTm4usLd21s5G+I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642780415;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=TfBc/NJSP4S2Ecql0hPXPIrcOo0zVyGXOHiO+fw5W4o=;
	b=vF1/AiaX5P9gE6tS+MmkTHGk8rMyDoXPKPpYHCUqdWEcgrNlw1TJ3RJuLrfPtDPdj7IkG0
	KlLyBD6ZhJDfz+J7rwROdIy4RFlQIfZIa4TNWsxCOTLqGqgQarLI9BCAXUDnTwaFYvRjZD
	CRqEEbzssCa9u0+tseOXBXsiNsPuCUY=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: V5T6PQLVELVKVRFF42RVM4SJITU3BD7Y
X-Message-ID-Hash: V5T6PQLVELVKVRFF42RVM4SJITU3BD7Y
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/V5T6PQLVELVKVRFF42RVM4SJITU3BD7Y/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The Linux Kernel 4.4 reached its end of life [1] after 6 years. Instead i=
t
is recommended to use at least kernel 4.9. It is also over 5 years
old but still maintained by the stable kernel team. All older kernels
(4.4 - v4.8) will be dropped to reduce the support overhead.

[1] TODO

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 README.external.rst                   |   2 +-
 compat-include/linux/cache.h          |  22 ------
 compat-include/linux/ethtool.h        |  51 -------------
 compat-include/linux/netdevice.h      |  17 +----
 compat-include/linux/netlink.h        | 102 --------------------------
 compat-include/linux/prandom.h        |   1 -
 compat-include/linux/skbuff.h         |  15 ----
 compat-include/net/cfg80211.h         |  18 -----
 compat-include/uapi/linux/genetlink.h |  22 ------
 9 files changed, 2 insertions(+), 248 deletions(-)
 delete mode 100644 compat-include/linux/cache.h
 delete mode 100644 compat-include/linux/ethtool.h
 delete mode 100644 compat-include/linux/netlink.h
 delete mode 100644 compat-include/uapi/linux/genetlink.h

diff --git a/README.external.rst b/README.external.rst
index 217abdd4..95991d0e 100644
--- a/README.external.rst
+++ b/README.external.rst
@@ -12,7 +12,7 @@ and as an external module. The external  module   allow=
s  to  get
 new    features without  upgrading  to  a  newer  kernel  version
 and to get batman-adv specific bug fixes for  kernels  that   are
 not   supported   anymore.  It compiles  against  and should work
-with  Linux 4.4  -  5.16. Supporting  older   versions   is   not
+with  Linux 4.9  -  5.16. Supporting  older   versions   is   not
 planned,  but it's probably easy to backport it. If you work on a
 backport, feel free to contact us.  :-)
=20
diff --git a/compat-include/linux/cache.h b/compat-include/linux/cache.h
deleted file mode 100644
index 9d7efab5..00000000
--- a/compat-include/linux/cache.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) B.A.T.M.A.N. contributors:
- *
- * Marek Lindner, Simon Wunderlich
- *
- * This file contains macros for maintaining compatibility with older ve=
rsions
- * of the Linux kernel.
- */
-
-#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_CACHE_H
-#define _NET_BATMAN_ADV_COMPAT_LINUX_CACHE_H
-
-#include <linux/version.h>
-#include_next <linux/cache.h>
-
-#if LINUX_VERSION_IS_LESS(4, 6, 0)
-
-#define __ro_after_init
-
-#endif /* LINUX_VERSION_IS_LESS(4, 6, 0) */
-
-#endif /* _NET_BATMAN_ADV_COMPAT_LINUX_CACHE_H */
diff --git a/compat-include/linux/ethtool.h b/compat-include/linux/ethtoo=
l.h
deleted file mode 100644
index 0a69fc16..00000000
--- a/compat-include/linux/ethtool.h
+++ /dev/null
@@ -1,51 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) B.A.T.M.A.N. contributors:
- *
- * Antonio Quartulli
- *
- * This file contains macros for maintaining compatibility with older ve=
rsions
- * of the Linux kernel.
- */
-
-#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_ETHTOOL_H_
-#define _NET_BATMAN_ADV_COMPAT_LINUX_ETHTOOL_H_
-
-#include <linux/version.h>
-#include_next <linux/ethtool.h>
-
-#if LINUX_VERSION_IS_LESS(4, 6, 0)
-
-#define ethtool_link_ksettings batadv_ethtool_link_ksettings
-
-struct batadv_ethtool_link_ksettings {
-	struct {
-		__u32	speed;
-		__u8	duplex;
-	} base;
-};
-
-#define __ethtool_get_link_ksettings(__dev, __link_settings) \
-	batadv_ethtool_get_link_ksettings(__dev, __link_settings)
-
-static inline int
-batadv_ethtool_get_link_ksettings(struct net_device *dev,
-				  struct ethtool_link_ksettings *link_ksettings)
-{
-	struct ethtool_cmd cmd;
-	int ret;
-
-	memset(&cmd, 0, sizeof(cmd));
-	ret =3D __ethtool_get_settings(dev, &cmd);
-
-	if (ret !=3D 0)
-		return ret;
-
-	link_ksettings->base.duplex =3D cmd.duplex;
-	link_ksettings->base.speed =3D ethtool_cmd_speed(&cmd);
-
-	return 0;
-}
-
-#endif /* LINUX_VERSION_IS_LESS(4, 6, 0) */
-
-#endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_ETHTOOL_H_ */
diff --git a/compat-include/linux/netdevice.h b/compat-include/linux/netd=
evice.h
index 9a62afcc..6ee0d21c 100644
--- a/compat-include/linux/netdevice.h
+++ b/compat-include/linux/netdevice.h
@@ -13,28 +13,13 @@
 #include <linux/version.h>
 #include_next <linux/netdevice.h>
=20
-#if LINUX_VERSION_IS_LESS(4, 5, 0)
-
-#define netdev_master_upper_dev_link(dev, upper_dev, upper_priv, upper_i=
nfo, extack) \
-	netdev_master_upper_dev_link(dev, upper_dev)
-
-#elif LINUX_VERSION_IS_LESS(4, 15, 0)
+#if LINUX_VERSION_IS_LESS(4, 15, 0)
=20
 #define netdev_master_upper_dev_link(dev, upper_dev, upper_priv, upper_i=
nfo, extack) \
 	netdev_master_upper_dev_link(dev, upper_dev, upper_priv, upper_info)
=20
 #endif /* LINUX_VERSION_IS_LESS(4, 15, 0) */
=20
-#if LINUX_VERSION_IS_LESS(4, 7, 0)
-
-#define netif_trans_update batadv_netif_trans_update
-static inline void batadv_netif_trans_update(struct net_device *dev)
-{
-	dev->trans_start =3D jiffies;
-}
-
-#endif /* LINUX_VERSION_IS_LESS(4, 7, 0) */
-
 #if LINUX_VERSION_IS_LESS(4, 11, 9)
=20
 /* work around missing attribute needs_free_netdev and priv_destructor i=
n
diff --git a/compat-include/linux/netlink.h b/compat-include/linux/netlin=
k.h
deleted file mode 100644
index ef6a0358..00000000
--- a/compat-include/linux/netlink.h
+++ /dev/null
@@ -1,102 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) B.A.T.M.A.N. contributors:
- *
- * Marek Lindner, Simon Wunderlich
- *
- * This file contains macros for maintaining compatibility with older ve=
rsions
- * of the Linux kernel.
- */
-
-#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_NETLINK_H_
-#define _NET_BATMAN_ADV_COMPAT_LINUX_NETLINK_H_
-
-#include <linux/version.h>
-#include_next <linux/netlink.h>
-
-#if LINUX_VERSION_IS_LESS(4, 7, 0)
-
-#include_next <net/netlink.h>
-
-static inline bool batadv_nla_need_padding_for_64bit(struct sk_buff *skb=
);
-
-static inline int batadv_nla_align_64bit(struct sk_buff *skb, int padatt=
r)
-{
-	if (batadv_nla_need_padding_for_64bit(skb) &&
-	    !nla_reserve(skb, padattr, 0))
-		return -EMSGSIZE;
-
-	return 0;
-}
-
-static inline struct nlattr *batadv__nla_reserve_64bit(struct sk_buff *s=
kb,
-						       int attrtype,
-						       int attrlen, int padattr)
-{
-	if (batadv_nla_need_padding_for_64bit(skb))
-		batadv_nla_align_64bit(skb, padattr);
-
-	return __nla_reserve(skb, attrtype, attrlen);
-}
-
-static inline void batadv__nla_put_64bit(struct sk_buff *skb, int attrty=
pe,
-					 int attrlen, const void *data,
-					 int padattr)
-{
-	struct nlattr *nla;
-
-	nla =3D batadv__nla_reserve_64bit(skb, attrtype, attrlen, padattr);
-	memcpy(nla_data(nla), data, attrlen);
-}
-
-static inline bool batadv_nla_need_padding_for_64bit(struct sk_buff *skb=
)
-{
-#ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
-	/* The nlattr header is 4 bytes in size, that's why we test
-	 * if the skb->data _is_ aligned.  A NOP attribute, plus
-	 * nlattr header for next attribute, will make nla_data()
-	 * 8-byte aligned.
-	 */
-	if (IS_ALIGNED((unsigned long)skb_tail_pointer(skb), 8))
-		return true;
-#endif
-	return false;
-}
-
-static inline int batadv_nla_total_size_64bit(int payload)
-{
-	return NLA_ALIGN(nla_attr_size(payload))
-#ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
-		+ NLA_ALIGN(nla_attr_size(0))
-#endif
-		;
-}
-
-static inline int batadv_nla_put_64bit(struct sk_buff *skb, int attrtype=
,
-				       int attrlen, const void *data,
-				       int padattr)
-{
-	size_t len;
-
-	if (batadv_nla_need_padding_for_64bit(skb))
-		len =3D batadv_nla_total_size_64bit(attrlen);
-	else
-		len =3D nla_total_size(attrlen);
-	if (unlikely(skb_tailroom(skb) < len))
-		return -EMSGSIZE;
-
-	batadv__nla_put_64bit(skb, attrtype, attrlen, data, padattr);
-	return 0;
-}
-
-#define nla_put_u64_64bit(_skb, _attrtype, _value, _padattr) \
-	batadv_nla_put_u64_64bit(_skb, _attrtype, _value, _padattr)
-static inline int batadv_nla_put_u64_64bit(struct sk_buff *skb, int attr=
type,
-					   u64 value, int padattr)
-{
-	return batadv_nla_put_64bit(skb, attrtype, sizeof(u64), &value,
-				    padattr);
-}
-
-#endif /* LINUX_VERSION_IS_LESS(4, 7, 0) */
-
-#endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_NETLINK_H_ */
diff --git a/compat-include/linux/prandom.h b/compat-include/linux/prando=
m.h
index 7dd51ac7..dc227e61 100644
--- a/compat-include/linux/prandom.h
+++ b/compat-include/linux/prandom.h
@@ -12,7 +12,6 @@
=20
 #include <linux/version.h>
 #if LINUX_VERSION_IS_GEQ(5, 8, 1) || \
-    (LINUX_VERSION_IS_GEQ(4, 4, 233) && LINUX_VERSION_IS_LESS(4, 5, 0)) =
|| \
     (LINUX_VERSION_IS_GEQ(4, 9, 233) && LINUX_VERSION_IS_LESS(4, 10, 0))=
 || \
     (LINUX_VERSION_IS_GEQ(4, 14, 193) && LINUX_VERSION_IS_LESS(4, 15, 0)=
) || \
     (LINUX_VERSION_IS_GEQ(4, 19, 138) && LINUX_VERSION_IS_LESS(4, 20, 0)=
) || \
diff --git a/compat-include/linux/skbuff.h b/compat-include/linux/skbuff.=
h
index 4c04f165..77c4e99f 100644
--- a/compat-include/linux/skbuff.h
+++ b/compat-include/linux/skbuff.h
@@ -13,21 +13,6 @@
 #include <linux/version.h>
 #include_next <linux/skbuff.h>
=20
-#if LINUX_VERSION_IS_LESS(4, 5, 0)
-
-static inline void batadv_skb_postpush_rcsum(struct sk_buff *skb,
-					     const void *start,
-					     unsigned int len)
-{
-	if (skb->ip_summed =3D=3D CHECKSUM_COMPLETE)
-		skb->csum =3D csum_block_add(skb->csum,
-					   csum_partial(start, len, 0), 0);
-}
-
-#define skb_postpush_rcsum batadv_skb_postpush_rcsum
-
-#endif /* LINUX_VERSION_IS_LESS(4, 5, 0) */
-
 #if LINUX_VERSION_IS_LESS(4, 13, 0)
=20
 static inline void *batadv_skb_put(struct sk_buff *skb, unsigned int len=
)
diff --git a/compat-include/net/cfg80211.h b/compat-include/net/cfg80211.=
h
index 6b756007..4bfcd5a3 100644
--- a/compat-include/net/cfg80211.h
+++ b/compat-include/net/cfg80211.h
@@ -13,24 +13,6 @@
 #include <linux/version.h>
 #include_next <net/cfg80211.h>
=20
-#if LINUX_VERSION_IS_LESS(4, 8, 0)
-
-#if !IS_ENABLED(CONFIG_CFG80211) && \
-    LINUX_VERSION_IS_GEQ(3, 16, 0)
-
-#define cfg80211_get_station(dev, mac_addr, sinfo) \
-	batadv_cfg80211_get_station(dev, mac_addr, sinfo)
-
-static inline int batadv_cfg80211_get_station(struct net_device *dev,
-					      const u8 *mac_addr,
-					      struct station_info *sinfo)
-{
-	return -ENOENT;
-}
-#endif
-
-#endif /* LINUX_VERSION_IS_LESS(4, 8, 0) */
-
=20
 #if LINUX_VERSION_IS_LESS(4, 18, 0) && IS_ENABLED(CONFIG_CFG80211)
=20
diff --git a/compat-include/uapi/linux/genetlink.h b/compat-include/uapi/=
linux/genetlink.h
deleted file mode 100644
index 5fd58e22..00000000
--- a/compat-include/uapi/linux/genetlink.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) B.A.T.M.A.N. contributors:
- *
- * Marek Lindner, Simon Wunderlich
- *
- * This file contains macros for maintaining compatibility with older ve=
rsions
- * of the Linux kernel.
- */
-
-#ifndef _NET_BATMAN_ADV_COMPAT_UAPI_LINUX_GENETLINK_H_
-#define _NET_BATMAN_ADV_COMPAT_UAPI_LINUX_GENETLINK_H_
-
-#include <linux/version.h>
-#include_next <uapi/linux/genetlink.h>
-
-#if LINUX_VERSION_IS_LESS(4, 6, 0)
-
-#define GENL_UNS_ADMIN_PERM GENL_ADMIN_PERM
-
-#endif /* LINUX_VERSION_IS_LESS(4, 6, 0) */
-
-#endif /* _NET_BATMAN_ADV_COMPAT_UAPI_LINUX_GENETLINK_H_ */
--=20
2.30.2
