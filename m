Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0026E2A1900
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 31 Oct 2020 18:38:56 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1F5A980EA9;
	Sat, 31 Oct 2020 18:38:56 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E97DD80E10
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Oct 2020 18:38:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1604165928;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9j/kU54Z1C+DrsO+xNqHLcWBrEfqssdLjYNwNpq/UYI=;
	b=JVUkbZNTjvH5MzbR6j8OXC+8/ItFlYjukfvoWGK34Sr/B+j68eINs+TEWryRQMmU1fBZhG
	cMOtBDZfebzR+gJlEqQSS70pI25GAT+SzQQJPAJ2alyTzKP6qZ2haDYBJajMq2AWV1geM1
	78G/bP8aszi2el3LJctCgd/91HicUgo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/3] batman-adv: Drop deprecated debugfs support
Date: Sat, 31 Oct 2020 18:38:15 +0100
Message-Id: <20201031173816.108427-2-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201031173816.108427-1-sven@narfation.org>
References: <20201031173816.108427-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604165929; a=rsa-sha256;
	cv=none;
	b=bwjJpictF/1zrDwUzJUa8hRSS5IPvfobUIAOC07hqXNBdIBB1vtciYs+VUZYItIDQHRU2S
	pwB9Xi85Pm/jeF/+7g1WfYTdpMP/JDtv1Pv3pm69nHXaSORllmZEExZXajTcfWdjaWJytD
	18tF09zDiG/mjIX91msoIxj9llT+0kQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=JVUkbZNT;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604165929;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=9j/kU54Z1C+DrsO+xNqHLcWBrEfqssdLjYNwNpq/UYI=;
	b=Yajh6jwCAATt2gYANHtydHbxI7uLbIAkyYrVANLgxDs509CmzmqYsf+fcSG23d07Tb4PB9
	fnbHBS0cGTxIP3/uQc3hwexKxUoh0QsOImONv/GW1h82XL9iN78WgR4lgJOjK97NxWq2ll
	2WD4VOc7xhsn05gIV8xeMLrokXt13Wo=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7DRJL4GBR7FOIMH7XHUQ46N7RI5OBYBH
X-Message-ID-Hash: 7DRJL4GBR7FOIMH7XHUQ46N7RI5OBYBH
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7DRJL4GBR7FOIMH7XHUQ46N7RI5OBYBH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The debugfs support in batman-adv was marked as deprecated by the commit
fee04b6f72cf ("batman-adv: Mark debugfs functionality as deprecated") and
scheduled for removal in 2021.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 Makefile                               |   3 -
 README.external.rst                    |   1 -
 compat-include/linux/eventpoll.h       |  18 -
 compat-include/linux/fs.h              |  45 ---
 compat-include/linux/types.h           |  26 --
 compat-include/linux/uaccess.h         |  37 ---
 compat-include/uapi/linux/eventpoll.h  |  29 --
 gen-compat-autoconf.sh                 |   1 -
 net/batman-adv/Kconfig                 |  16 +-
 net/batman-adv/Makefile                |   2 -
 net/batman-adv/bat_algo.c              |  24 --
 net/batman-adv/bat_algo.h              |   2 -
 net/batman-adv/bat_iv_ogm.c            | 229 -------------
 net/batman-adv/bat_v.c                 | 237 -------------
 net/batman-adv/bridge_loop_avoidance.c | 130 --------
 net/batman-adv/bridge_loop_avoidance.h |  16 -
 net/batman-adv/debugfs.c               | 442 -------------------------
 net/batman-adv/debugfs.h               |  73 ----
 net/batman-adv/distributed-arp-table.c |  55 ---
 net/batman-adv/distributed-arp-table.h |   2 -
 net/batman-adv/gateway_client.c        |  39 ---
 net/batman-adv/gateway_client.h        |   2 -
 net/batman-adv/hard-interface.c        |  10 -
 net/batman-adv/icmp_socket.c           | 393 ----------------------
 net/batman-adv/icmp_socket.h           |  38 ---
 net/batman-adv/log.c                   | 208 ------------
 net/batman-adv/main.c                  |  45 ---
 net/batman-adv/main.h                  |   3 -
 net/batman-adv/multicast.c             | 111 -------
 net/batman-adv/multicast.h             |   3 -
 net/batman-adv/network-coding.c        |  87 -----
 net/batman-adv/network-coding.h        |  13 -
 net/batman-adv/originator.c            | 121 -------
 net/batman-adv/originator.h            |   4 -
 net/batman-adv/routing.c               |  10 -
 net/batman-adv/soft-interface.c        |  10 +-
 net/batman-adv/translation-table.c     | 212 ------------
 net/batman-adv/translation-table.h     |   3 -
 net/batman-adv/types.h                 |  36 --
 39 files changed, 3 insertions(+), 2733 deletions(-)
 delete mode 100644 compat-include/linux/eventpoll.h
 delete mode 100644 compat-include/linux/fs.h
 delete mode 100644 compat-include/linux/types.h
 delete mode 100644 compat-include/linux/uaccess.h
 delete mode 100644 compat-include/uapi/linux/eventpoll.h
 delete mode 100644 net/batman-adv/debugfs.c
 delete mode 100644 net/batman-adv/debugfs.h
 delete mode 100644 net/batman-adv/icmp_socket.c
 delete mode 100644 net/batman-adv/icmp_socket.h

diff --git a/Makefile b/Makefile
index 5dfed62a..a0bb112a 100644
--- a/Makefile
+++ b/Makefile
@@ -12,8 +12,6 @@ export CONFIG_BATMAN_ADV_BLA=3Dy
 export CONFIG_BATMAN_ADV_DAT=3Dy
 # B.A.T.M.A.N. debugging:
 export CONFIG_BATMAN_ADV_DEBUG=3Dn
-# batman-adv DebugFS entries:
-export CONFIG_BATMAN_ADV_DEBUGFS=3Dn
 # B.A.T.M.A.N. multicast optimizations:
 export CONFIG_BATMAN_ADV_MCAST=3Dy
 # B.A.T.M.A.N network coding (catwoman):
@@ -58,7 +56,6 @@ BUILD_FLAGS :=3D \
 	REVISION=3D$(REVISION) \
 	CONFIG_BATMAN_ADV=3Dm \
 	CONFIG_BATMAN_ADV_DEBUG=3D$(CONFIG_BATMAN_ADV_DEBUG) \
-	CONFIG_BATMAN_ADV_DEBUGFS=3D$(CONFIG_BATMAN_ADV_DEBUGFS) \
 	CONFIG_BATMAN_ADV_BLA=3D$(CONFIG_BATMAN_ADV_BLA) \
 	CONFIG_BATMAN_ADV_DAT=3D$(CONFIG_BATMAN_ADV_DAT) \
 	CONFIG_BATMAN_ADV_NC=3D$(CONFIG_BATMAN_ADV_NC) \
diff --git a/README.external.rst b/README.external.rst
index bb067c1b..b510507a 100644
--- a/README.external.rst
+++ b/README.external.rst
@@ -47,7 +47,6 @@ module).  Available  options  and  their    possible   =
values are
  * ``CONFIG_BATMAN_ADV_BLA=3D[y*|n]`` (B.A.T.M.A.N. bridge loop avoidanc=
e)
  * ``CONFIG_BATMAN_ADV_DAT=3D[y*|n]`` (B.A.T.M.A.N. Distributed ARP Tabl=
e)
  * ``CONFIG_BATMAN_ADV_DEBUG=3D[y|n*]`` (B.A.T.M.A.N. debugging)
- * ``CONFIG_BATMAN_ADV_DEBUGFS=3D[y|n*]`` (B.A.T.M.A.N. debugfs entries)
  * ``CONFIG_BATMAN_ADV_MCAST=3D[y*|n]`` (B.A.T.M.A.N. multicast optimiza=
tions)
  * ``CONFIG_BATMAN_ADV_NC=3D[y|n*]`` (B.A.T.M.A.N. Network Coding)
  * ``CONFIG_BATMAN_ADV_TRACING=3D[y|n*]`` (B.A.T.M.A.N. tracing support)
diff --git a/compat-include/linux/eventpoll.h b/compat-include/linux/even=
tpoll.h
deleted file mode 100644
index 83d26f01..00000000
--- a/compat-include/linux/eventpoll.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner, Simon Wunderlich
- *
- * This file contains macros for maintaining compatibility with older ve=
rsions
- * of the Linux kernel.
- */
-
-#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_EVENTPOLL_H_
-#define _NET_BATMAN_ADV_COMPAT_LINUX_EVENTPOLL_H_
-
-#include <linux/version.h>
-#include_next <linux/eventpoll.h>
-
-#include <uapi/linux/eventpoll.h>
-
-#endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_EVENTPOLL_H_ */
diff --git a/compat-include/linux/fs.h b/compat-include/linux/fs.h
deleted file mode 100644
index 6867e6d4..00000000
--- a/compat-include/linux/fs.h
+++ /dev/null
@@ -1,45 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner, Simon Wunderlich
- *
- * This file contains macros for maintaining compatibility with older ve=
rsions
- * of the Linux kernel.
- */
-
-#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_FS_H_
-#define _NET_BATMAN_ADV_COMPAT_LINUX_FS_H_
-
-#include <linux/version.h>
-#include_next <linux/fs.h>
-
-#if LINUX_VERSION_IS_LESS(4, 6, 0)
-
-static inline struct dentry *batadv_file_dentry(const struct file *file)
-{
-	struct dentry *dentry =3D file->f_path.dentry;
-
-#ifdef DCACHE_OP_REAL
-	if (unlikely(dentry->d_flags & DCACHE_OP_REAL))
-		return dentry->d_op->d_real(dentry, file_inode(file));
-#endif
-
-	return dentry;
-}
-
-#define file_dentry batadv_file_dentry
-
-#endif /* LINUX_VERSION_IS_LESS(4, 6, 0) */
-
-#if LINUX_VERSION_IS_LESS(5, 2, 0)
-
-static inline int batadv_stream_open(struct inode *inode, struct file *f=
ilp)
-{
-	return nonseekable_open(inode, filp);
-}
-
-#define stream_open batadv_stream_open
-
-#endif /* LINUX_VERSION_IS_LESS(5, 2, 0) */
-
-#endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_FS_H_ */
diff --git a/compat-include/linux/types.h b/compat-include/linux/types.h
deleted file mode 100644
index 33562897..00000000
--- a/compat-include/linux/types.h
+++ /dev/null
@@ -1,26 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner, Simon Wunderlich
- *
- * This file contains macros for maintaining compatibility with older ve=
rsions
- * of the Linux kernel.
- */
-
-#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_TYPES_H_
-#define _NET_BATMAN_ADV_COMPAT_LINUX_TYPES_H_
-
-#include <linux/version.h>
-#include_next <linux/types.h>
-
-#if LINUX_VERSION_IS_LESS(4, 16, 0)
-
-#ifdef __CHECK_POLL
-typedef unsigned __bitwise __poll_t;
-#else
-typedef unsigned __poll_t;
-#endif
-
-#endif /* LINUX_VERSION_IS_LESS(4, 16, 0) */
-
-#endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_TYPES_H_ */
diff --git a/compat-include/linux/uaccess.h b/compat-include/linux/uacces=
s.h
deleted file mode 100644
index b9b3a7cb..00000000
--- a/compat-include/linux/uaccess.h
+++ /dev/null
@@ -1,37 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner, Simon Wunderlich
- *
- * This file contains macros for maintaining compatibility with older ve=
rsions
- * of the Linux kernel.
- */
-
-#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_UACCESS_H_
-#define _NET_BATMAN_ADV_COMPAT_LINUX_UACCESS_H_
-
-#include <linux/version.h>
-#include_next <linux/uaccess.h>
-
-#if LINUX_VERSION_IS_LESS(5, 0, 0)
-
-static inline int batadv_access_ok(int type, const void __user *p,
-				   unsigned long size)
-{
-	return access_ok(type, p, size);
-}
-
-#ifdef access_ok
-#undef access_ok
-#endif
-
-#define access_ok_get(_1, _2, _3 , access_ok_name, ...) access_ok_name
-#define access_ok(...) \
-	access_ok_get(__VA_ARGS__, access_ok3, access_ok2)(__VA_ARGS__)
-
-#define access_ok2(addr, size)	batadv_access_ok(VERIFY_WRITE, (addr), (s=
ize))
-#define access_ok3(type, addr, size)	batadv_access_ok((type), (addr), (s=
ize))
-
-#endif /* LINUX_VERSION_IS_LESS(5, 0, 0) */
-
-#endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_UACCESS_H_ */
diff --git a/compat-include/uapi/linux/eventpoll.h b/compat-include/uapi/=
linux/eventpoll.h
deleted file mode 100644
index 40c57ed9..00000000
--- a/compat-include/uapi/linux/eventpoll.h
+++ /dev/null
@@ -1,29 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner, Simon Wunderlich
- *
- * This file contains macros for maintaining compatibility with older ve=
rsions
- * of the Linux kernel.
- */
-
-#ifndef _NET_BATMAN_ADV_COMPAT_UAPI_LINUX_EVENTPOLL_H_
-#define _NET_BATMAN_ADV_COMPAT_UAPI_LINUX_EVENTPOLL_H_
-
-#include <linux/version.h>
-#include <linux/types.h>
-#include_next <uapi/linux/eventpoll.h>
-
-#if LINUX_VERSION_IS_LESS(4, 12, 0)
-
-#ifndef EPOLLIN
-#define EPOLLIN		(__force __poll_t)0x00000001
-#endif
-
-#ifndef EPOLLRDNORM
-#define EPOLLRDNORM	(__force __poll_t)0x00000040
-#endif
-
-#endif /* LINUX_VERSION_IS_LESS(4, 12, 0) */
-
-#endif	/* _NET_BATMAN_ADV_COMPAT_UAPI_LINUX_EVENTPOLL_H_ */
diff --git a/gen-compat-autoconf.sh b/gen-compat-autoconf.sh
index 126de947..c7b2bd93 100755
--- a/gen-compat-autoconf.sh
+++ b/gen-compat-autoconf.sh
@@ -44,7 +44,6 @@ gen_config 'CONFIG_BATMAN_ADV_BATMAN_V' ${CONFIG_BATMAN=
_ADV_BATMAN_V:=3D"y"} >> "$
 gen_config 'CONFIG_BATMAN_ADV_BLA' ${CONFIG_BATMAN_ADV_BLA:=3D"y"} >> "$=
{TMP}"
 gen_config 'CONFIG_BATMAN_ADV_DAT' ${CONFIG_BATMAN_ADV_DAT:=3D"y"} >> "$=
{TMP}"
 gen_config 'CONFIG_BATMAN_ADV_DEBUG' ${CONFIG_BATMAN_ADV_DEBUG:=3D"n"} >=
> "${TMP}"
-gen_config 'CONFIG_BATMAN_ADV_DEBUGFS' ${CONFIG_BATMAN_ADV_DEBUGFS:=3D"n=
"} >> "${TMP}"
 gen_config 'CONFIG_BATMAN_ADV_MCAST' ${CONFIG_BATMAN_ADV_MCAST:=3D"y"} >=
> "${TMP}"
 gen_config 'CONFIG_BATMAN_ADV_NC' ${CONFIG_BATMAN_ADV_NC:=3D"n"} >> "${T=
MP}"
 gen_config 'CONFIG_BATMAN_ADV_TRACING' ${CONFIG_BATMAN_ADV_TRACING:=3D"n=
"} >> "${TMP}"
diff --git a/net/batman-adv/Kconfig b/net/batman-adv/Kconfig
index 84bbf72b..993afd5f 100644
--- a/net/batman-adv/Kconfig
+++ b/net/batman-adv/Kconfig
@@ -76,26 +76,14 @@ config BATMAN_ADV_MCAST
 	  reduce the air overhead while improving the reliability of
 	  multicast messages.
=20
-config BATMAN_ADV_DEBUGFS
-	bool "batman-adv debugfs entries"
-	depends on BATMAN_ADV
-	depends on DEBUG_FS
-	help
-	  Enable this to export routing related debug tables via debugfs.
-	  The information for each soft-interface and used hard-interface can b=
e
-	  found under batman_adv/
-
-	  If unsure, say N.
-
 config BATMAN_ADV_DEBUG
 	bool "B.A.T.M.A.N. debugging"
 	depends on BATMAN_ADV
 	help
 	  This is an option for use by developers; most people should
 	  say N here. This enables compilation of support for
-	  outputting debugging information to the debugfs log or tracing
-	  buffer. The output is controlled via the batadv netdev specific
-	  log_level setting.
+	  outputting debugging information to the tracing buffer. The output is
+	  controlled via the batadv netdev specific log_level setting.
=20
 config BATMAN_ADV_TRACING
 	bool "B.A.T.M.A.N. tracing support"
diff --git a/net/batman-adv/Makefile b/net/batman-adv/Makefile
index 306615ca..8010c34b 100644
--- a/net/batman-adv/Makefile
+++ b/net/batman-adv/Makefile
@@ -11,14 +11,12 @@ batman-adv-$(CONFIG_BATMAN_ADV_BATMAN_V) +=3D bat_v_e=
lp.o
 batman-adv-$(CONFIG_BATMAN_ADV_BATMAN_V) +=3D bat_v_ogm.o
 batman-adv-y +=3D bitarray.o
 batman-adv-$(CONFIG_BATMAN_ADV_BLA) +=3D bridge_loop_avoidance.o
-batman-adv-$(CONFIG_BATMAN_ADV_DEBUGFS) +=3D debugfs.o
 batman-adv-$(CONFIG_BATMAN_ADV_DAT) +=3D distributed-arp-table.o
 batman-adv-y +=3D fragmentation.o
 batman-adv-y +=3D gateway_client.o
 batman-adv-y +=3D gateway_common.o
 batman-adv-y +=3D hard-interface.o
 batman-adv-y +=3D hash.o
-batman-adv-$(CONFIG_BATMAN_ADV_DEBUGFS) +=3D icmp_socket.o
 batman-adv-$(CONFIG_BATMAN_ADV_DEBUG) +=3D log.o
 batman-adv-y +=3D main.o
 batman-adv-$(CONFIG_BATMAN_ADV_MCAST) +=3D multicast.o
diff --git a/net/batman-adv/bat_algo.c b/net/batman-adv/bat_algo.c
index 382fbe51..1ec74040 100644
--- a/net/batman-adv/bat_algo.c
+++ b/net/batman-adv/bat_algo.c
@@ -11,7 +11,6 @@
 #include <linux/moduleparam.h>
 #include <linux/netlink.h>
 #include <linux/printk.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/stddef.h>
 #include <linux/string.h>
@@ -110,29 +109,6 @@ int batadv_algo_select(struct batadv_priv *bat_priv,=
 char *name)
 	return 0;
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-
-/**
- * batadv_algo_seq_print_text() - Print the supported algorithms in a se=
q file
- * @seq: seq file to print on
- * @offset: not used
- *
- * Return: always 0
- */
-int batadv_algo_seq_print_text(struct seq_file *seq, void *offset)
-{
-	struct batadv_algo_ops *bat_algo_ops;
-
-	seq_puts(seq, "Available routing algorithms:\n");
-
-	hlist_for_each_entry(bat_algo_ops, &batadv_algo_list, list) {
-		seq_printf(seq, " * %s\n", bat_algo_ops->name);
-	}
-
-	return 0;
-}
-#endif
-
 static int batadv_param_set_ra(const char *val, const struct kernel_para=
m *kp)
 {
 	struct batadv_algo_ops *bat_algo_ops;
diff --git a/net/batman-adv/bat_algo.h b/net/batman-adv/bat_algo.h
index 686a60bc..f109dc35 100644
--- a/net/batman-adv/bat_algo.h
+++ b/net/batman-adv/bat_algo.h
@@ -10,7 +10,6 @@
 #include "main.h"
=20
 #include <linux/netlink.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
=20
@@ -20,7 +19,6 @@ extern struct list_head batadv_hardif_list;
 void batadv_algo_init(void);
 int batadv_algo_register(struct batadv_algo_ops *bat_algo_ops);
 int batadv_algo_select(struct batadv_priv *bat_priv, char *name);
-int batadv_algo_seq_print_text(struct seq_file *seq, void *offset);
 int batadv_algo_dump(struct sk_buff *msg, struct netlink_callback *cb);
=20
 #endif /* _NET_BATMAN_ADV_BAT_ALGO_H_ */
diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 206d0b42..168621c9 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -32,7 +32,6 @@
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -1780,106 +1779,6 @@ static int batadv_iv_ogm_receive(struct sk_buff *=
skb,
 	return ret;
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_iv_ogm_orig_print_neigh() - print neighbors for the originator=
 table
- * @orig_node: the orig_node for which the neighbors are printed
- * @if_outgoing: outgoing interface for these entries
- * @seq: debugfs table seq_file struct
- *
- * Must be called while holding an rcu lock.
- */
-static void
-batadv_iv_ogm_orig_print_neigh(struct batadv_orig_node *orig_node,
-			       struct batadv_hard_iface *if_outgoing,
-			       struct seq_file *seq)
-{
-	struct batadv_neigh_node *neigh_node;
-	struct batadv_neigh_ifinfo *n_ifinfo;
-
-	hlist_for_each_entry_rcu(neigh_node, &orig_node->neigh_list, list) {
-		n_ifinfo =3D batadv_neigh_ifinfo_get(neigh_node, if_outgoing);
-		if (!n_ifinfo)
-			continue;
-
-		seq_printf(seq, " %pM (%3i)",
-			   neigh_node->addr,
-			   n_ifinfo->bat_iv.tq_avg);
-
-		batadv_neigh_ifinfo_put(n_ifinfo);
-	}
-}
-
-/**
- * batadv_iv_ogm_orig_print() - print the originator table
- * @bat_priv: the bat priv with all the soft interface information
- * @seq: debugfs table seq_file struct
- * @if_outgoing: the outgoing interface for which this should be printed
- */
-static void batadv_iv_ogm_orig_print(struct batadv_priv *bat_priv,
-				     struct seq_file *seq,
-				     struct batadv_hard_iface *if_outgoing)
-{
-	struct batadv_neigh_node *neigh_node;
-	struct batadv_hashtable *hash =3D bat_priv->orig_hash;
-	int last_seen_msecs, last_seen_secs;
-	struct batadv_orig_node *orig_node;
-	struct batadv_neigh_ifinfo *n_ifinfo;
-	unsigned long last_seen_jiffies;
-	struct hlist_head *head;
-	int batman_count =3D 0;
-	u32 i;
-
-	seq_puts(seq,
-		 "  Originator      last-seen (#/255)           Nexthop [outgoingIF]: =
  Potential nexthops ...\n");
-
-	for (i =3D 0; i < hash->size; i++) {
-		head =3D &hash->table[i];
-
-		rcu_read_lock();
-		hlist_for_each_entry_rcu(orig_node, head, hash_entry) {
-			neigh_node =3D batadv_orig_router_get(orig_node,
-							    if_outgoing);
-			if (!neigh_node)
-				continue;
-
-			n_ifinfo =3D batadv_neigh_ifinfo_get(neigh_node,
-							   if_outgoing);
-			if (!n_ifinfo)
-				goto next;
-
-			if (n_ifinfo->bat_iv.tq_avg =3D=3D 0)
-				goto next;
-
-			last_seen_jiffies =3D jiffies - orig_node->last_seen;
-			last_seen_msecs =3D jiffies_to_msecs(last_seen_jiffies);
-			last_seen_secs =3D last_seen_msecs / 1000;
-			last_seen_msecs =3D last_seen_msecs % 1000;
-
-			seq_printf(seq, "%pM %4i.%03is   (%3i) %pM [%10s]:",
-				   orig_node->orig, last_seen_secs,
-				   last_seen_msecs, n_ifinfo->bat_iv.tq_avg,
-				   neigh_node->addr,
-				   neigh_node->if_incoming->net_dev->name);
-
-			batadv_iv_ogm_orig_print_neigh(orig_node, if_outgoing,
-						       seq);
-			seq_putc(seq, '\n');
-			batman_count++;
-
-next:
-			batadv_neigh_node_put(neigh_node);
-			if (n_ifinfo)
-				batadv_neigh_ifinfo_put(n_ifinfo);
-		}
-		rcu_read_unlock();
-	}
-
-	if (batman_count =3D=3D 0)
-		seq_puts(seq, "No batman nodes in range ...\n");
-}
-#endif
-
 /**
  * batadv_iv_ogm_neigh_get_tq_avg() - Get the TQ average for a neighbour=
 on a
  *  given outgoing interface.
@@ -2109,59 +2008,6 @@ batadv_iv_ogm_orig_dump(struct sk_buff *msg, struc=
t netlink_callback *cb,
 	cb->args[2] =3D sub;
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_iv_hardif_neigh_print() - print a single hop neighbour node
- * @seq: neighbour table seq_file struct
- * @hardif_neigh: hardif neighbour information
- */
-static void
-batadv_iv_hardif_neigh_print(struct seq_file *seq,
-			     struct batadv_hardif_neigh_node *hardif_neigh)
-{
-	int last_secs, last_msecs;
-
-	last_secs =3D jiffies_to_msecs(jiffies - hardif_neigh->last_seen) / 100=
0;
-	last_msecs =3D jiffies_to_msecs(jiffies - hardif_neigh->last_seen) % 10=
00;
-
-	seq_printf(seq, "   %10s   %pM %4i.%03is\n",
-		   hardif_neigh->if_incoming->net_dev->name,
-		   hardif_neigh->addr, last_secs, last_msecs);
-}
-
-/**
- * batadv_iv_ogm_neigh_print() - print the single hop neighbour list
- * @bat_priv: the bat priv with all the soft interface information
- * @seq: neighbour table seq_file struct
- */
-static void batadv_iv_neigh_print(struct batadv_priv *bat_priv,
-				  struct seq_file *seq)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_hardif_neigh_node *hardif_neigh;
-	struct batadv_hard_iface *hard_iface;
-	int batman_count =3D 0;
-
-	seq_puts(seq, "           IF        Neighbor      last-seen\n");
-
-	rcu_read_lock();
-	list_for_each_entry_rcu(hard_iface, &batadv_hardif_list, list) {
-		if (hard_iface->soft_iface !=3D net_dev)
-			continue;
-
-		hlist_for_each_entry_rcu(hardif_neigh,
-					 &hard_iface->neigh_list, list) {
-			batadv_iv_hardif_neigh_print(seq, hardif_neigh);
-			batman_count++;
-		}
-	}
-	rcu_read_unlock();
-
-	if (batman_count =3D=3D 0)
-		seq_puts(seq, "No batman nodes in range ...\n");
-}
-#endif
-
 /**
  * batadv_iv_ogm_neigh_diff() - calculate tq difference of two neighbors
  * @neigh1: the first neighbor object of the comparison
@@ -2557,72 +2403,6 @@ static bool batadv_iv_gw_is_eligible(struct batadv=
_priv *bat_priv,
 	return ret;
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/* fails if orig_node has no router */
-static int batadv_iv_gw_write_buffer_text(struct batadv_priv *bat_priv,
-					  struct seq_file *seq,
-					  const struct batadv_gw_node *gw_node)
-{
-	struct batadv_gw_node *curr_gw;
-	struct batadv_neigh_node *router;
-	struct batadv_neigh_ifinfo *router_ifinfo =3D NULL;
-	int ret =3D -1;
-
-	router =3D batadv_orig_router_get(gw_node->orig_node, BATADV_IF_DEFAULT=
);
-	if (!router)
-		goto out;
-
-	router_ifinfo =3D batadv_neigh_ifinfo_get(router, BATADV_IF_DEFAULT);
-	if (!router_ifinfo)
-		goto out;
-
-	curr_gw =3D batadv_gw_get_selected_gw_node(bat_priv);
-
-	seq_printf(seq, "%s %pM (%3i) %pM [%10s]: %u.%u/%u.%u MBit\n",
-		   (curr_gw =3D=3D gw_node ? "=3D>" : "  "),
-		   gw_node->orig_node->orig,
-		   router_ifinfo->bat_iv.tq_avg, router->addr,
-		   router->if_incoming->net_dev->name,
-		   gw_node->bandwidth_down / 10,
-		   gw_node->bandwidth_down % 10,
-		   gw_node->bandwidth_up / 10,
-		   gw_node->bandwidth_up % 10);
-	ret =3D seq_has_overflowed(seq) ? -1 : 0;
-
-	if (curr_gw)
-		batadv_gw_node_put(curr_gw);
-out:
-	if (router_ifinfo)
-		batadv_neigh_ifinfo_put(router_ifinfo);
-	if (router)
-		batadv_neigh_node_put(router);
-	return ret;
-}
-
-static void batadv_iv_gw_print(struct batadv_priv *bat_priv,
-			       struct seq_file *seq)
-{
-	struct batadv_gw_node *gw_node;
-	int gw_count =3D 0;
-
-	seq_puts(seq,
-		 "      Gateway      (#/255)           Nexthop [outgoingIF]: advertise=
d uplink bandwidth\n");
-
-	rcu_read_lock();
-	hlist_for_each_entry_rcu(gw_node, &bat_priv->gw.gateway_list, list) {
-		/* fails if orig_node has no router */
-		if (batadv_iv_gw_write_buffer_text(bat_priv, seq, gw_node) < 0)
-			continue;
-
-		gw_count++;
-	}
-	rcu_read_unlock();
-
-	if (gw_count =3D=3D 0)
-		seq_puts(seq, "No gateways in range ...\n");
-}
-#endif
-
 /**
  * batadv_iv_gw_dump_entry() - Dump a gateway into a message
  * @msg: Netlink message to dump into
@@ -2747,24 +2527,15 @@ static struct batadv_algo_ops batadv_batman_iv __=
read_mostly =3D {
 	.neigh =3D {
 		.cmp =3D batadv_iv_ogm_neigh_cmp,
 		.is_similar_or_better =3D batadv_iv_ogm_neigh_is_sob,
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-		.print =3D batadv_iv_neigh_print,
-#endif
 		.dump =3D batadv_iv_ogm_neigh_dump,
 	},
 	.orig =3D {
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-		.print =3D batadv_iv_ogm_orig_print,
-#endif
 		.dump =3D batadv_iv_ogm_orig_dump,
 	},
 	.gw =3D {
 		.init_sel_class =3D batadv_iv_init_sel_class,
 		.get_best_gw_node =3D batadv_iv_gw_get_best_gw_node,
 		.is_eligible =3D batadv_iv_gw_is_eligible,
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-		.print =3D batadv_iv_gw_print,
-#endif
 		.dump =3D batadv_iv_gw_dump,
 	},
 };
diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index ee7a95aa..e4455bab 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -20,7 +20,6 @@
 #include <linux/netlink.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/spinlock.h>
 #include <linux/stddef.h>
@@ -119,92 +118,6 @@ batadv_v_hardif_neigh_init(struct batadv_hardif_neig=
h_node *hardif_neigh)
 		  batadv_v_elp_throughput_metric_update);
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_v_orig_print_neigh() - print neighbors for the originator tabl=
e
- * @orig_node: the orig_node for which the neighbors are printed
- * @if_outgoing: outgoing interface for these entries
- * @seq: debugfs table seq_file struct
- *
- * Must be called while holding an rcu lock.
- */
-static void
-batadv_v_orig_print_neigh(struct batadv_orig_node *orig_node,
-			  struct batadv_hard_iface *if_outgoing,
-			  struct seq_file *seq)
-{
-	struct batadv_neigh_node *neigh_node;
-	struct batadv_neigh_ifinfo *n_ifinfo;
-
-	hlist_for_each_entry_rcu(neigh_node, &orig_node->neigh_list, list) {
-		n_ifinfo =3D batadv_neigh_ifinfo_get(neigh_node, if_outgoing);
-		if (!n_ifinfo)
-			continue;
-
-		seq_printf(seq, " %pM (%9u.%1u)",
-			   neigh_node->addr,
-			   n_ifinfo->bat_v.throughput / 10,
-			   n_ifinfo->bat_v.throughput % 10);
-
-		batadv_neigh_ifinfo_put(n_ifinfo);
-	}
-}
-
-/**
- * batadv_v_hardif_neigh_print() - print a single ELP neighbour node
- * @seq: neighbour table seq_file struct
- * @hardif_neigh: hardif neighbour information
- */
-static void
-batadv_v_hardif_neigh_print(struct seq_file *seq,
-			    struct batadv_hardif_neigh_node *hardif_neigh)
-{
-	int last_secs, last_msecs;
-	u32 throughput;
-
-	last_secs =3D jiffies_to_msecs(jiffies - hardif_neigh->last_seen) / 100=
0;
-	last_msecs =3D jiffies_to_msecs(jiffies - hardif_neigh->last_seen) % 10=
00;
-	throughput =3D ewma_throughput_read(&hardif_neigh->bat_v.throughput);
-
-	seq_printf(seq, "%pM %4i.%03is (%9u.%1u) [%10s]\n",
-		   hardif_neigh->addr, last_secs, last_msecs, throughput / 10,
-		   throughput % 10, hardif_neigh->if_incoming->net_dev->name);
-}
-
-/**
- * batadv_v_neigh_print() - print the single hop neighbour list
- * @bat_priv: the bat priv with all the soft interface information
- * @seq: neighbour table seq_file struct
- */
-static void batadv_v_neigh_print(struct batadv_priv *bat_priv,
-				 struct seq_file *seq)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_hardif_neigh_node *hardif_neigh;
-	struct batadv_hard_iface *hard_iface;
-	int batman_count =3D 0;
-
-	seq_puts(seq,
-		 "  Neighbor        last-seen ( throughput) [        IF]\n");
-
-	rcu_read_lock();
-	list_for_each_entry_rcu(hard_iface, &batadv_hardif_list, list) {
-		if (hard_iface->soft_iface !=3D net_dev)
-			continue;
-
-		hlist_for_each_entry_rcu(hardif_neigh,
-					 &hard_iface->neigh_list, list) {
-			batadv_v_hardif_neigh_print(seq, hardif_neigh);
-			batman_count++;
-		}
-	}
-	rcu_read_unlock();
-
-	if (batman_count =3D=3D 0)
-		seq_puts(seq, "No batman nodes in range ...\n");
-}
-#endif
-
 /**
  * batadv_v_neigh_dump_neigh() - Dump a neighbour into a message
  * @msg: Netlink message to dump into
@@ -337,75 +250,6 @@ batadv_v_neigh_dump(struct sk_buff *msg, struct netl=
ink_callback *cb,
 	cb->args[1] =3D idx;
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_v_orig_print() - print the originator table
- * @bat_priv: the bat priv with all the soft interface information
- * @seq: debugfs table seq_file struct
- * @if_outgoing: the outgoing interface for which this should be printed
- */
-static void batadv_v_orig_print(struct batadv_priv *bat_priv,
-				struct seq_file *seq,
-				struct batadv_hard_iface *if_outgoing)
-{
-	struct batadv_neigh_node *neigh_node;
-	struct batadv_hashtable *hash =3D bat_priv->orig_hash;
-	int last_seen_msecs, last_seen_secs;
-	struct batadv_orig_node *orig_node;
-	struct batadv_neigh_ifinfo *n_ifinfo;
-	unsigned long last_seen_jiffies;
-	struct hlist_head *head;
-	int batman_count =3D 0;
-	u32 i;
-
-	seq_puts(seq,
-		 "  Originator      last-seen ( throughput)           Nexthop [outgoin=
gIF]:   Potential nexthops ...\n");
-
-	for (i =3D 0; i < hash->size; i++) {
-		head =3D &hash->table[i];
-
-		rcu_read_lock();
-		hlist_for_each_entry_rcu(orig_node, head, hash_entry) {
-			neigh_node =3D batadv_orig_router_get(orig_node,
-							    if_outgoing);
-			if (!neigh_node)
-				continue;
-
-			n_ifinfo =3D batadv_neigh_ifinfo_get(neigh_node,
-							   if_outgoing);
-			if (!n_ifinfo)
-				goto next;
-
-			last_seen_jiffies =3D jiffies - orig_node->last_seen;
-			last_seen_msecs =3D jiffies_to_msecs(last_seen_jiffies);
-			last_seen_secs =3D last_seen_msecs / 1000;
-			last_seen_msecs =3D last_seen_msecs % 1000;
-
-			seq_printf(seq, "%pM %4i.%03is (%9u.%1u) %pM [%10s]:",
-				   orig_node->orig, last_seen_secs,
-				   last_seen_msecs,
-				   n_ifinfo->bat_v.throughput / 10,
-				   n_ifinfo->bat_v.throughput % 10,
-				   neigh_node->addr,
-				   neigh_node->if_incoming->net_dev->name);
-
-			batadv_v_orig_print_neigh(orig_node, if_outgoing, seq);
-			seq_putc(seq, '\n');
-			batman_count++;
-
-next:
-			batadv_neigh_node_put(neigh_node);
-			if (n_ifinfo)
-				batadv_neigh_ifinfo_put(n_ifinfo);
-		}
-		rcu_read_unlock();
-	}
-
-	if (batman_count =3D=3D 0)
-		seq_puts(seq, "No batman nodes in range ...\n");
-}
-#endif
-
 /**
  * batadv_v_orig_dump_subentry() - Dump an originator subentry into a me=
ssage
  * @msg: Netlink message to dump into
@@ -822,78 +666,6 @@ static bool batadv_v_gw_is_eligible(struct batadv_pr=
iv *bat_priv,
 	return ret;
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/* fails if orig_node has no router */
-static int batadv_v_gw_write_buffer_text(struct batadv_priv *bat_priv,
-					 struct seq_file *seq,
-					 const struct batadv_gw_node *gw_node)
-{
-	struct batadv_gw_node *curr_gw;
-	struct batadv_neigh_node *router;
-	struct batadv_neigh_ifinfo *router_ifinfo =3D NULL;
-	int ret =3D -1;
-
-	router =3D batadv_orig_router_get(gw_node->orig_node, BATADV_IF_DEFAULT=
);
-	if (!router)
-		goto out;
-
-	router_ifinfo =3D batadv_neigh_ifinfo_get(router, BATADV_IF_DEFAULT);
-	if (!router_ifinfo)
-		goto out;
-
-	curr_gw =3D batadv_gw_get_selected_gw_node(bat_priv);
-
-	seq_printf(seq, "%s %pM (%9u.%1u) %pM [%10s]: %u.%u/%u.%u MBit\n",
-		   (curr_gw =3D=3D gw_node ? "=3D>" : "  "),
-		   gw_node->orig_node->orig,
-		   router_ifinfo->bat_v.throughput / 10,
-		   router_ifinfo->bat_v.throughput % 10, router->addr,
-		   router->if_incoming->net_dev->name,
-		   gw_node->bandwidth_down / 10,
-		   gw_node->bandwidth_down % 10,
-		   gw_node->bandwidth_up / 10,
-		   gw_node->bandwidth_up % 10);
-	ret =3D seq_has_overflowed(seq) ? -1 : 0;
-
-	if (curr_gw)
-		batadv_gw_node_put(curr_gw);
-out:
-	if (router_ifinfo)
-		batadv_neigh_ifinfo_put(router_ifinfo);
-	if (router)
-		batadv_neigh_node_put(router);
-	return ret;
-}
-
-/**
- * batadv_v_gw_print() - print the gateway list
- * @bat_priv: the bat priv with all the soft interface information
- * @seq: gateway table seq_file struct
- */
-static void batadv_v_gw_print(struct batadv_priv *bat_priv,
-			      struct seq_file *seq)
-{
-	struct batadv_gw_node *gw_node;
-	int gw_count =3D 0;
-
-	seq_puts(seq,
-		 "      Gateway        ( throughput)           Nexthop [outgoingIF]: a=
dvertised uplink bandwidth\n");
-
-	rcu_read_lock();
-	hlist_for_each_entry_rcu(gw_node, &bat_priv->gw.gateway_list, list) {
-		/* fails if orig_node has no router */
-		if (batadv_v_gw_write_buffer_text(bat_priv, seq, gw_node) < 0)
-			continue;
-
-		gw_count++;
-	}
-	rcu_read_unlock();
-
-	if (gw_count =3D=3D 0)
-		seq_puts(seq, "No gateways in range ...\n");
-}
-#endif
-
 /**
  * batadv_v_gw_dump_entry() - Dump a gateway into a message
  * @msg: Netlink message to dump into
@@ -1039,15 +811,9 @@ static struct batadv_algo_ops batadv_batman_v __rea=
d_mostly =3D {
 		.hardif_init =3D batadv_v_hardif_neigh_init,
 		.cmp =3D batadv_v_neigh_cmp,
 		.is_similar_or_better =3D batadv_v_neigh_is_sob,
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-		.print =3D batadv_v_neigh_print,
-#endif
 		.dump =3D batadv_v_neigh_dump,
 	},
 	.orig =3D {
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-		.print =3D batadv_v_orig_print,
-#endif
 		.dump =3D batadv_v_orig_dump,
 	},
 	.gw =3D {
@@ -1055,9 +821,6 @@ static struct batadv_algo_ops batadv_batman_v __read=
_mostly =3D {
 		.store_sel_class =3D batadv_v_store_sel_class,
 		.get_best_gw_node =3D batadv_v_gw_get_best_gw_node,
 		.is_eligible =3D batadv_v_gw_is_eligible,
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-		.print =3D batadv_v_gw_print,
-#endif
 		.dump =3D batadv_v_gw_dump,
 	},
 };
diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index ba0027d1..d2de12e5 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -28,7 +28,6 @@
 #include <linux/preempt.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -2115,69 +2114,6 @@ bool batadv_bla_tx(struct batadv_priv *bat_priv, s=
truct sk_buff *skb,
 	return ret;
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_bla_claim_table_seq_print_text() - print the claim table in a =
seq file
- * @seq: seq file to print on
- * @offset: not used
- *
- * Return: always 0
- */
-int batadv_bla_claim_table_seq_print_text(struct seq_file *seq, void *of=
fset)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hashtable *hash =3D bat_priv->bla.claim_hash;
-	struct batadv_bla_backbone_gw *backbone_gw;
-	struct batadv_bla_claim *claim;
-	struct batadv_hard_iface *primary_if;
-	struct hlist_head *head;
-	u16 backbone_crc;
-	u32 i;
-	bool is_own;
-	u8 *primary_addr;
-
-	primary_if =3D batadv_seq_print_text_primary_if_get(seq);
-	if (!primary_if)
-		goto out;
-
-	primary_addr =3D primary_if->net_dev->dev_addr;
-	seq_printf(seq,
-		   "Claims announced for the mesh %s (orig %pM, group id %#.4x)\n",
-		   net_dev->name, primary_addr,
-		   ntohs(bat_priv->bla.claim_dest.group));
-	seq_puts(seq,
-		 "   Client               VID      Originator        [o] (CRC   )\n");
-	for (i =3D 0; i < hash->size; i++) {
-		head =3D &hash->table[i];
-
-		rcu_read_lock();
-		hlist_for_each_entry_rcu(claim, head, hash_entry) {
-			backbone_gw =3D batadv_bla_claim_get_backbone_gw(claim);
-
-			is_own =3D batadv_compare_eth(backbone_gw->orig,
-						    primary_addr);
-
-			spin_lock_bh(&backbone_gw->crc_lock);
-			backbone_crc =3D backbone_gw->crc;
-			spin_unlock_bh(&backbone_gw->crc_lock);
-			seq_printf(seq, " * %pM on %5d by %pM [%c] (%#.4x)\n",
-				   claim->addr, batadv_print_vid(claim->vid),
-				   backbone_gw->orig,
-				   (is_own ? 'x' : ' '),
-				   backbone_crc);
-
-			batadv_backbone_gw_put(backbone_gw);
-		}
-		rcu_read_unlock();
-	}
-out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	return 0;
-}
-#endif
-
 /**
  * batadv_bla_claim_dump_entry() - dump one entry of the claim table
  * to a netlink socket
@@ -2348,72 +2284,6 @@ int batadv_bla_claim_dump(struct sk_buff *msg, str=
uct netlink_callback *cb)
 	return ret;
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_bla_backbone_table_seq_print_text() - print the backbone table=
 in a
- *  seq file
- * @seq: seq file to print on
- * @offset: not used
- *
- * Return: always 0
- */
-int batadv_bla_backbone_table_seq_print_text(struct seq_file *seq, void =
*offset)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hashtable *hash =3D bat_priv->bla.backbone_hash;
-	struct batadv_bla_backbone_gw *backbone_gw;
-	struct batadv_hard_iface *primary_if;
-	struct hlist_head *head;
-	int secs, msecs;
-	u16 backbone_crc;
-	u32 i;
-	bool is_own;
-	u8 *primary_addr;
-
-	primary_if =3D batadv_seq_print_text_primary_if_get(seq);
-	if (!primary_if)
-		goto out;
-
-	primary_addr =3D primary_if->net_dev->dev_addr;
-	seq_printf(seq,
-		   "Backbones announced for the mesh %s (orig %pM, group id %#.4x)\n",
-		   net_dev->name, primary_addr,
-		   ntohs(bat_priv->bla.claim_dest.group));
-	seq_puts(seq, "   Originator           VID   last seen (CRC   )\n");
-	for (i =3D 0; i < hash->size; i++) {
-		head =3D &hash->table[i];
-
-		rcu_read_lock();
-		hlist_for_each_entry_rcu(backbone_gw, head, hash_entry) {
-			msecs =3D jiffies_to_msecs(jiffies -
-						 backbone_gw->lasttime);
-			secs =3D msecs / 1000;
-			msecs =3D msecs % 1000;
-
-			is_own =3D batadv_compare_eth(backbone_gw->orig,
-						    primary_addr);
-			if (is_own)
-				continue;
-
-			spin_lock_bh(&backbone_gw->crc_lock);
-			backbone_crc =3D backbone_gw->crc;
-			spin_unlock_bh(&backbone_gw->crc_lock);
-
-			seq_printf(seq, " * %pM on %5d %4i.%03is (%#.4x)\n",
-				   backbone_gw->orig,
-				   batadv_print_vid(backbone_gw->vid), secs,
-				   msecs, backbone_crc);
-		}
-		rcu_read_unlock();
-	}
-out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	return 0;
-}
-#endif
-
 /**
  * batadv_bla_backbone_dump_entry() - dump one entry of the backbone tab=
le to a
  *  netlink socket
diff --git a/net/batman-adv/bridge_loop_avoidance.h b/net/batman-adv/brid=
ge_loop_avoidance.h
index a81c41b6..7dc6d357 100644
--- a/net/batman-adv/bridge_loop_avoidance.h
+++ b/net/batman-adv/bridge_loop_avoidance.h
@@ -12,7 +12,6 @@
 #include <linux/compiler.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/stddef.h>
 #include <linux/types.h>
@@ -41,10 +40,7 @@ bool batadv_bla_tx(struct batadv_priv *bat_priv, struc=
t sk_buff *skb,
 bool batadv_bla_is_backbone_gw(struct sk_buff *skb,
 			       struct batadv_orig_node *orig_node,
 			       int hdr_size);
-int batadv_bla_claim_table_seq_print_text(struct seq_file *seq, void *of=
fset);
 int batadv_bla_claim_dump(struct sk_buff *msg, struct netlink_callback *=
cb);
-int batadv_bla_backbone_table_seq_print_text(struct seq_file *seq,
-					     void *offset);
 int batadv_bla_backbone_dump(struct sk_buff *msg, struct netlink_callbac=
k *cb);
 bool batadv_bla_is_backbone_gw_orig(struct batadv_priv *bat_priv, u8 *or=
ig,
 				    unsigned short vid);
@@ -84,18 +80,6 @@ static inline bool batadv_bla_is_backbone_gw(struct sk=
_buff *skb,
 	return false;
 }
=20
-static inline int batadv_bla_claim_table_seq_print_text(struct seq_file =
*seq,
-							void *offset)
-{
-	return 0;
-}
-
-static inline int batadv_bla_backbone_table_seq_print_text(struct seq_fi=
le *seq,
-							   void *offset)
-{
-	return 0;
-}
-
 static inline bool batadv_bla_is_backbone_gw_orig(struct batadv_priv *ba=
t_priv,
 						  u8 *orig, unsigned short vid)
 {
diff --git a/net/batman-adv/debugfs.c b/net/batman-adv/debugfs.c
deleted file mode 100644
index 452856c2..00000000
--- a/net/batman-adv/debugfs.c
+++ /dev/null
@@ -1,442 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2010-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner
- */
-
-#include "debugfs.h"
-#include "main.h"
-
-#include <asm/current.h>
-#include <linux/dcache.h>
-#include <linux/debugfs.h>
-#include <linux/errno.h>
-#include <linux/export.h>
-#include <linux/fs.h>
-#include <linux/netdevice.h>
-#include <linux/printk.h>
-#include <linux/sched.h>
-#include <linux/seq_file.h>
-#include <linux/stat.h>
-#include <linux/stddef.h>
-#include <linux/stringify.h>
-#include <linux/sysfs.h>
-#include <net/net_namespace.h>
-
-#include "bat_algo.h"
-#include "bridge_loop_avoidance.h"
-#include "distributed-arp-table.h"
-#include "gateway_client.h"
-#include "icmp_socket.h"
-#include "log.h"
-#include "multicast.h"
-#include "network-coding.h"
-#include "originator.h"
-#include "translation-table.h"
-
-static struct dentry *batadv_debugfs;
-
-/**
- * batadv_debugfs_deprecated() - Log use of deprecated batadv debugfs ac=
cess
- * @file: file which was accessed
- * @alt: explanation what can be used as alternative
- */
-void batadv_debugfs_deprecated(struct file *file, const char *alt)
-{
-	struct dentry *dentry =3D file_dentry(file);
-	const char *name =3D dentry->d_name.name;
-
-	pr_warn_ratelimited(DEPRECATED "%s (pid %d) Use of debugfs file \"%s\".=
\n%s",
-			    current->comm, task_pid_nr(current), name, alt);
-}
-
-static int batadv_algorithms_open(struct inode *inode, struct file *file=
)
-{
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_ROUTING_ALGOS instead\n");
-	return single_open(file, batadv_algo_seq_print_text, NULL);
-}
-
-static int neighbors_open(struct inode *inode, struct file *file)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_NEIGHBORS instead\n");
-	return single_open(file, batadv_hardif_neigh_seq_print_text, net_dev);
-}
-
-static int batadv_originators_open(struct inode *inode, struct file *fil=
e)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_ORIGINATORS instead\n");
-	return single_open(file, batadv_orig_seq_print_text, net_dev);
-}
-
-/**
- * batadv_originators_hardif_open() - handles debugfs output for the ori=
ginator
- *  table of an hard interface
- * @inode: inode pointer to debugfs file
- * @file: pointer to the seq_file
- *
- * Return: 0 on success or negative error number in case of failure
- */
-static int batadv_originators_hardif_open(struct inode *inode,
-					  struct file *file)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_HARDIFS instead\n");
-	return single_open(file, batadv_orig_hardif_seq_print_text, net_dev);
-}
-
-static int batadv_gateways_open(struct inode *inode, struct file *file)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_GATEWAYS instead\n");
-	return single_open(file, batadv_gw_client_seq_print_text, net_dev);
-}
-
-static int batadv_transtable_global_open(struct inode *inode, struct fil=
e *file)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_TRANSTABLE_GLOBAL instead\n");
-	return single_open(file, batadv_tt_global_seq_print_text, net_dev);
-}
-
-#ifdef CONFIG_BATMAN_ADV_BLA
-static int batadv_bla_claim_table_open(struct inode *inode, struct file =
*file)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_BLA_CLAIM instead\n");
-	return single_open(file, batadv_bla_claim_table_seq_print_text,
-			   net_dev);
-}
-
-static int batadv_bla_backbone_table_open(struct inode *inode,
-					  struct file *file)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_BLA_BACKBONE instead\n");
-	return single_open(file, batadv_bla_backbone_table_seq_print_text,
-			   net_dev);
-}
-
-#endif
-
-#ifdef CONFIG_BATMAN_ADV_DAT
-/**
- * batadv_dat_cache_open() - Prepare file handler for reads from dat_cac=
he
- * @inode: inode which was opened
- * @file: file handle to be initialized
- *
- * Return: 0 on success or negative error number in case of failure
- */
-static int batadv_dat_cache_open(struct inode *inode, struct file *file)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_DAT_CACHE instead\n");
-	return single_open(file, batadv_dat_cache_seq_print_text, net_dev);
-}
-#endif
-
-static int batadv_transtable_local_open(struct inode *inode, struct file=
 *file)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_TRANSTABLE_LOCAL instead\n");
-	return single_open(file, batadv_tt_local_seq_print_text, net_dev);
-}
-
-struct batadv_debuginfo {
-	struct attribute attr;
-	const struct file_operations fops;
-};
-
-#ifdef CONFIG_BATMAN_ADV_NC
-static int batadv_nc_nodes_open(struct inode *inode, struct file *file)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file, "");
-	return single_open(file, batadv_nc_nodes_seq_print_text, net_dev);
-}
-#endif
-
-#ifdef CONFIG_BATMAN_ADV_MCAST
-/**
- * batadv_mcast_flags_open() - prepare file handler for reads from mcast=
_flags
- * @inode: inode which was opened
- * @file: file handle to be initialized
- *
- * Return: 0 on success or negative error number in case of failure
- */
-static int batadv_mcast_flags_open(struct inode *inode, struct file *fil=
e)
-{
-	struct net_device *net_dev =3D (struct net_device *)inode->i_private;
-
-	batadv_debugfs_deprecated(file,
-				  "Use genl command BATADV_CMD_GET_MCAST_FLAGS instead\n");
-	return single_open(file, batadv_mcast_flags_seq_print_text, net_dev);
-}
-#endif
-
-#define BATADV_DEBUGINFO(_name, _mode, _open)		\
-struct batadv_debuginfo batadv_debuginfo_##_name =3D {	\
-	.attr =3D {					\
-		.name =3D __stringify(_name),		\
-		.mode =3D _mode,				\
-	},						\
-	.fops =3D {					\
-		.owner =3D THIS_MODULE,			\
-		.open =3D _open,				\
-		.read	=3D seq_read,			\
-		.llseek =3D seq_lseek,			\
-		.release =3D single_release,		\
-	},						\
-}
-
-/* the following attributes are general and therefore they will be direc=
tly
- * placed in the BATADV_DEBUGFS_SUBDIR subdirectory of debugfs
- */
-static BATADV_DEBUGINFO(routing_algos, 0444, batadv_algorithms_open);
-
-static struct batadv_debuginfo *batadv_general_debuginfos[] =3D {
-	&batadv_debuginfo_routing_algos,
-	NULL,
-};
-
-/* The following attributes are per soft interface */
-static BATADV_DEBUGINFO(neighbors, 0444, neighbors_open);
-static BATADV_DEBUGINFO(originators, 0444, batadv_originators_open);
-static BATADV_DEBUGINFO(gateways, 0444, batadv_gateways_open);
-static BATADV_DEBUGINFO(transtable_global, 0444, batadv_transtable_globa=
l_open);
-#ifdef CONFIG_BATMAN_ADV_BLA
-static BATADV_DEBUGINFO(bla_claim_table, 0444, batadv_bla_claim_table_op=
en);
-static BATADV_DEBUGINFO(bla_backbone_table, 0444,
-			batadv_bla_backbone_table_open);
-#endif
-#ifdef CONFIG_BATMAN_ADV_DAT
-static BATADV_DEBUGINFO(dat_cache, 0444, batadv_dat_cache_open);
-#endif
-static BATADV_DEBUGINFO(transtable_local, 0444, batadv_transtable_local_=
open);
-#ifdef CONFIG_BATMAN_ADV_NC
-static BATADV_DEBUGINFO(nc_nodes, 0444, batadv_nc_nodes_open);
-#endif
-#ifdef CONFIG_BATMAN_ADV_MCAST
-static BATADV_DEBUGINFO(mcast_flags, 0444, batadv_mcast_flags_open);
-#endif
-
-static struct batadv_debuginfo *batadv_mesh_debuginfos[] =3D {
-	&batadv_debuginfo_neighbors,
-	&batadv_debuginfo_originators,
-	&batadv_debuginfo_gateways,
-	&batadv_debuginfo_transtable_global,
-#ifdef CONFIG_BATMAN_ADV_BLA
-	&batadv_debuginfo_bla_claim_table,
-	&batadv_debuginfo_bla_backbone_table,
-#endif
-#ifdef CONFIG_BATMAN_ADV_DAT
-	&batadv_debuginfo_dat_cache,
-#endif
-	&batadv_debuginfo_transtable_local,
-#ifdef CONFIG_BATMAN_ADV_NC
-	&batadv_debuginfo_nc_nodes,
-#endif
-#ifdef CONFIG_BATMAN_ADV_MCAST
-	&batadv_debuginfo_mcast_flags,
-#endif
-	NULL,
-};
-
-#define BATADV_HARDIF_DEBUGINFO(_name, _mode, _open)		\
-struct batadv_debuginfo batadv_hardif_debuginfo_##_name =3D {	\
-	.attr =3D {						\
-		.name =3D __stringify(_name),			\
-		.mode =3D _mode,					\
-	},							\
-	.fops =3D {						\
-		.owner =3D THIS_MODULE,				\
-		.open =3D _open,					\
-		.read	=3D seq_read,				\
-		.llseek =3D seq_lseek,				\
-		.release =3D single_release,			\
-	},							\
-}
-
-static BATADV_HARDIF_DEBUGINFO(originators, 0444,
-			       batadv_originators_hardif_open);
-
-static struct batadv_debuginfo *batadv_hardif_debuginfos[] =3D {
-	&batadv_hardif_debuginfo_originators,
-	NULL,
-};
-
-/**
- * batadv_debugfs_init() - Initialize soft interface independent debugfs=
 entries
- */
-void batadv_debugfs_init(void)
-{
-	struct batadv_debuginfo **bat_debug;
-
-	batadv_debugfs =3D debugfs_create_dir(BATADV_DEBUGFS_SUBDIR, NULL);
-
-	for (bat_debug =3D batadv_general_debuginfos; *bat_debug; ++bat_debug)
-		debugfs_create_file(((*bat_debug)->attr).name,
-				    S_IFREG | ((*bat_debug)->attr).mode,
-				    batadv_debugfs, NULL, &(*bat_debug)->fops);
-}
-
-/**
- * batadv_debugfs_destroy() - Remove all debugfs entries
- */
-void batadv_debugfs_destroy(void)
-{
-	debugfs_remove_recursive(batadv_debugfs);
-	batadv_debugfs =3D NULL;
-}
-
-/**
- * batadv_debugfs_add_hardif() - creates the base directory for a hard i=
nterface
- *  in debugfs.
- * @hard_iface: hard interface which should be added.
- */
-void batadv_debugfs_add_hardif(struct batadv_hard_iface *hard_iface)
-{
-	struct net *net =3D dev_net(hard_iface->net_dev);
-	struct batadv_debuginfo **bat_debug;
-
-	if (net !=3D &init_net)
-		return;
-
-	hard_iface->debug_dir =3D debugfs_create_dir(hard_iface->net_dev->name,
-						   batadv_debugfs);
-
-	for (bat_debug =3D batadv_hardif_debuginfos; *bat_debug; ++bat_debug)
-		debugfs_create_file(((*bat_debug)->attr).name,
-				    S_IFREG | ((*bat_debug)->attr).mode,
-				    hard_iface->debug_dir, hard_iface->net_dev,
-				    &(*bat_debug)->fops);
-}
-
-/**
- * batadv_debugfs_rename_hardif() - Fix debugfs path for renamed hardif
- * @hard_iface: hard interface which was renamed
- */
-void batadv_debugfs_rename_hardif(struct batadv_hard_iface *hard_iface)
-{
-	const char *name =3D hard_iface->net_dev->name;
-	struct dentry *dir;
-
-	dir =3D hard_iface->debug_dir;
-	if (!dir)
-		return;
-
-	debugfs_rename(dir->d_parent, dir, dir->d_parent, name);
-}
-
-/**
- * batadv_debugfs_del_hardif() - delete the base directory for a hard in=
terface
- *  in debugfs.
- * @hard_iface: hard interface which is deleted.
- */
-void batadv_debugfs_del_hardif(struct batadv_hard_iface *hard_iface)
-{
-	struct net *net =3D dev_net(hard_iface->net_dev);
-
-	if (net !=3D &init_net)
-		return;
-
-	if (batadv_debugfs) {
-		debugfs_remove_recursive(hard_iface->debug_dir);
-		hard_iface->debug_dir =3D NULL;
-	}
-}
-
-/**
- * batadv_debugfs_add_meshif() - Initialize interface dependent debugfs =
entries
- * @dev: netdev struct of the soft interface
- *
- * Return: 0 on success or negative error number in case of failure
- */
-int batadv_debugfs_add_meshif(struct net_device *dev)
-{
-	struct batadv_priv *bat_priv =3D netdev_priv(dev);
-	struct batadv_debuginfo **bat_debug;
-	struct net *net =3D dev_net(dev);
-
-	if (net !=3D &init_net)
-		return 0;
-
-	bat_priv->debug_dir =3D debugfs_create_dir(dev->name, batadv_debugfs);
-
-	batadv_socket_setup(bat_priv);
-
-	if (batadv_debug_log_setup(bat_priv) < 0)
-		goto rem_attr;
-
-	for (bat_debug =3D batadv_mesh_debuginfos; *bat_debug; ++bat_debug)
-		debugfs_create_file(((*bat_debug)->attr).name,
-				    S_IFREG | ((*bat_debug)->attr).mode,
-				    bat_priv->debug_dir, dev,
-				    &(*bat_debug)->fops);
-
-	batadv_nc_init_debugfs(bat_priv);
-
-	return 0;
-rem_attr:
-	debugfs_remove_recursive(bat_priv->debug_dir);
-	bat_priv->debug_dir =3D NULL;
-	return -ENOMEM;
-}
-
-/**
- * batadv_debugfs_rename_meshif() - Fix debugfs path for renamed softif
- * @dev: net_device which was renamed
- */
-void batadv_debugfs_rename_meshif(struct net_device *dev)
-{
-	struct batadv_priv *bat_priv =3D netdev_priv(dev);
-	const char *name =3D dev->name;
-	struct dentry *dir;
-
-	dir =3D bat_priv->debug_dir;
-	if (!dir)
-		return;
-
-	debugfs_rename(dir->d_parent, dir, dir->d_parent, name);
-}
-
-/**
- * batadv_debugfs_del_meshif() - Remove interface dependent debugfs entr=
ies
- * @dev: netdev struct of the soft interface
- */
-void batadv_debugfs_del_meshif(struct net_device *dev)
-{
-	struct batadv_priv *bat_priv =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
-
-	if (net !=3D &init_net)
-		return;
-
-	batadv_debug_log_cleanup(bat_priv);
-
-	if (batadv_debugfs) {
-		debugfs_remove_recursive(bat_priv->debug_dir);
-		bat_priv->debug_dir =3D NULL;
-	}
-}
diff --git a/net/batman-adv/debugfs.h b/net/batman-adv/debugfs.h
deleted file mode 100644
index 7e2e8f58..00000000
--- a/net/batman-adv/debugfs.h
+++ /dev/null
@@ -1,73 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2010-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner
- */
-
-#ifndef _NET_BATMAN_ADV_DEBUGFS_H_
-#define _NET_BATMAN_ADV_DEBUGFS_H_
-
-#include "main.h"
-
-#include <linux/fs.h>
-#include <linux/netdevice.h>
-
-#define BATADV_DEBUGFS_SUBDIR "batman_adv"
-
-#if IS_ENABLED(CONFIG_BATMAN_ADV_DEBUGFS)
-
-void batadv_debugfs_deprecated(struct file *file, const char *alt);
-void batadv_debugfs_init(void);
-void batadv_debugfs_destroy(void);
-int batadv_debugfs_add_meshif(struct net_device *dev);
-void batadv_debugfs_rename_meshif(struct net_device *dev);
-void batadv_debugfs_del_meshif(struct net_device *dev);
-void batadv_debugfs_add_hardif(struct batadv_hard_iface *hard_iface);
-void batadv_debugfs_rename_hardif(struct batadv_hard_iface *hard_iface);
-void batadv_debugfs_del_hardif(struct batadv_hard_iface *hard_iface);
-
-#else
-
-static inline void batadv_debugfs_deprecated(struct file *file, const ch=
ar *alt)
-{
-}
-
-static inline void batadv_debugfs_init(void)
-{
-}
-
-static inline void batadv_debugfs_destroy(void)
-{
-}
-
-static inline int batadv_debugfs_add_meshif(struct net_device *dev)
-{
-	return 0;
-}
-
-static inline void batadv_debugfs_rename_meshif(struct net_device *dev)
-{
-}
-
-static inline void batadv_debugfs_del_meshif(struct net_device *dev)
-{
-}
-
-static inline
-void batadv_debugfs_add_hardif(struct batadv_hard_iface *hard_iface)
-{
-}
-
-static inline
-void batadv_debugfs_rename_hardif(struct batadv_hard_iface *hard_iface)
-{
-}
-
-static inline
-void batadv_debugfs_del_hardif(struct batadv_hard_iface *hard_iface)
-{
-}
-
-#endif
-
-#endif /* _NET_BATMAN_ADV_DEBUGFS_H_ */
diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
index 0e6e53e9..fd7ba6bb 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -26,7 +26,6 @@
 #include <linux/netlink.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -842,60 +841,6 @@ void batadv_dat_free(struct batadv_priv *bat_priv)
 	batadv_dat_hash_free(bat_priv);
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_dat_cache_seq_print_text() - print the local DAT hash table
- * @seq: seq file to print on
- * @offset: not used
- *
- * Return: always 0
- */
-int batadv_dat_cache_seq_print_text(struct seq_file *seq, void *offset)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hashtable *hash =3D bat_priv->dat.hash;
-	struct batadv_dat_entry *dat_entry;
-	struct batadv_hard_iface *primary_if;
-	struct hlist_head *head;
-	unsigned long last_seen_jiffies;
-	int last_seen_msecs, last_seen_secs, last_seen_mins;
-	u32 i;
-
-	primary_if =3D batadv_seq_print_text_primary_if_get(seq);
-	if (!primary_if)
-		goto out;
-
-	seq_printf(seq, "Distributed ARP Table (%s):\n", net_dev->name);
-	seq_puts(seq,
-		 "          IPv4             MAC        VID   last-seen\n");
-
-	for (i =3D 0; i < hash->size; i++) {
-		head =3D &hash->table[i];
-
-		rcu_read_lock();
-		hlist_for_each_entry_rcu(dat_entry, head, hash_entry) {
-			last_seen_jiffies =3D jiffies - dat_entry->last_update;
-			last_seen_msecs =3D jiffies_to_msecs(last_seen_jiffies);
-			last_seen_mins =3D last_seen_msecs / 60000;
-			last_seen_msecs =3D last_seen_msecs % 60000;
-			last_seen_secs =3D last_seen_msecs / 1000;
-
-			seq_printf(seq, " * %15pI4 %pM %4i %6i:%02i\n",
-				   &dat_entry->ip, dat_entry->mac_addr,
-				   batadv_print_vid(dat_entry->vid),
-				   last_seen_mins, last_seen_secs);
-		}
-		rcu_read_unlock();
-	}
-
-out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	return 0;
-}
-#endif
-
 /**
  * batadv_dat_cache_dump_entry() - dump one entry of the DAT cache table=
 to a
  *  netlink socket
diff --git a/net/batman-adv/distributed-arp-table.h b/net/batman-adv/dist=
ributed-arp-table.h
index 4e031661..e980fb45 100644
--- a/net/batman-adv/distributed-arp-table.h
+++ b/net/batman-adv/distributed-arp-table.h
@@ -12,7 +12,6 @@
 #include <linux/compiler.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
 #include <uapi/linux/batadv_packet.h>
@@ -74,7 +73,6 @@ batadv_dat_init_own_addr(struct batadv_priv *bat_priv,
=20
 int batadv_dat_init(struct batadv_priv *bat_priv);
 void batadv_dat_free(struct batadv_priv *bat_priv);
-int batadv_dat_cache_seq_print_text(struct seq_file *seq, void *offset);
 int batadv_dat_cache_dump(struct sk_buff *msg, struct netlink_callback *=
cb);
=20
 /**
diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_cli=
ent.c
index ef3f85b5..cffe72f4 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -25,7 +25,6 @@
 #include <linux/netlink.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -511,44 +510,6 @@ void batadv_gw_node_free(struct batadv_priv *bat_pri=
v)
 	spin_unlock_bh(&bat_priv->gw.list_lock);
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-
-/**
- * batadv_gw_client_seq_print_text() - Print the gateway table in a seq =
file
- * @seq: seq file to print on
- * @offset: not used
- *
- * Return: always 0
- */
-int batadv_gw_client_seq_print_text(struct seq_file *seq, void *offset)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hard_iface *primary_if;
-
-	primary_if =3D batadv_seq_print_text_primary_if_get(seq);
-	if (!primary_if)
-		return 0;
-
-	seq_printf(seq, "[B.A.T.M.A.N. adv %s, MainIF/MAC: %s/%pM (%s %s)]\n",
-		   BATADV_SOURCE_VERSION, primary_if->net_dev->name,
-		   primary_if->net_dev->dev_addr, net_dev->name,
-		   bat_priv->algo_ops->name);
-
-	batadv_hardif_put(primary_if);
-
-	if (!bat_priv->algo_ops->gw.print) {
-		seq_puts(seq,
-			 "No printing function for this routing protocol\n");
-		return 0;
-	}
-
-	bat_priv->algo_ops->gw.print(bat_priv, seq);
-
-	return 0;
-}
-#endif
-
 /**
  * batadv_gw_dump() - Dump gateways into a message
  * @msg: Netlink message to dump into
diff --git a/net/batman-adv/gateway_client.h b/net/batman-adv/gateway_cli=
ent.h
index 88b5dba8..2fbc500f 100644
--- a/net/batman-adv/gateway_client.h
+++ b/net/batman-adv/gateway_client.h
@@ -10,7 +10,6 @@
 #include "main.h"
=20
 #include <linux/netlink.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
 #include <uapi/linux/batadv_packet.h>
@@ -31,7 +30,6 @@ void batadv_gw_node_free(struct batadv_priv *bat_priv);
 void batadv_gw_node_put(struct batadv_gw_node *gw_node);
 struct batadv_gw_node *
 batadv_gw_get_selected_gw_node(struct batadv_priv *bat_priv);
-int batadv_gw_client_seq_print_text(struct seq_file *seq, void *offset);
 int batadv_gw_dump(struct sk_buff *msg, struct netlink_callback *cb);
 bool batadv_gw_out_of_range(struct batadv_priv *bat_priv, struct sk_buff=
 *skb);
 enum batadv_dhcp_recipient
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index d3546790..f122e448 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -32,7 +32,6 @@
=20
 #include "bat_v.h"
 #include "bridge_loop_avoidance.h"
-#include "debugfs.h"
 #include "distributed-arp-table.h"
 #include "gateway_client.h"
 #include "log.h"
@@ -916,8 +915,6 @@ batadv_hardif_add_interface(struct net_device *net_de=
v)
 	hard_iface->soft_iface =3D NULL;
 	hard_iface->if_status =3D BATADV_IF_NOT_IN_USE;
=20
-	batadv_debugfs_add_hardif(hard_iface);
-
 	INIT_LIST_HEAD(&hard_iface->list);
 	INIT_HLIST_HEAD(&hard_iface->neigh_list);
=20
@@ -960,7 +957,6 @@ static void batadv_hardif_remove_interface(struct bat=
adv_hard_iface *hard_iface)
 		return;
=20
 	hard_iface->if_status =3D BATADV_IF_TO_BE_REMOVED;
-	batadv_debugfs_del_hardif(hard_iface);
 	batadv_hardif_put(hard_iface);
 }
=20
@@ -981,9 +977,6 @@ static int batadv_hard_if_event_softif(unsigned long =
event,
 		bat_priv =3D netdev_priv(net_dev);
 		batadv_softif_create_vlan(bat_priv, BATADV_NO_FLAGS);
 		break;
-	case NETDEV_CHANGENAME:
-		batadv_debugfs_rename_meshif(net_dev);
-		break;
 	}
=20
 	return NOTIFY_DONE;
@@ -1048,9 +1041,6 @@ static int batadv_hard_if_event(struct notifier_blo=
ck *this,
 		if (batadv_is_wifi_hardif(hard_iface))
 			hard_iface->num_bcasts =3D BATADV_NUM_BCASTS_WIRELESS;
 		break;
-	case NETDEV_CHANGENAME:
-		batadv_debugfs_rename_hardif(hard_iface);
-		break;
 	default:
 		break;
 	}
diff --git a/net/batman-adv/icmp_socket.c b/net/batman-adv/icmp_socket.c
deleted file mode 100644
index 56de4bf2..00000000
--- a/net/batman-adv/icmp_socket.c
+++ /dev/null
@@ -1,393 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner
- */
-
-#include "icmp_socket.h"
-#include "main.h"
-
-#include <linux/atomic.h>
-#include <linux/compiler.h>
-#include <linux/debugfs.h>
-#include <linux/errno.h>
-#include <linux/etherdevice.h>
-#include <linux/eventpoll.h>
-#include <linux/export.h>
-#include <linux/fcntl.h>
-#include <linux/fs.h>
-#include <linux/gfp.h>
-#include <linux/if_ether.h>
-#include <linux/kernel.h>
-#include <linux/list.h>
-#include <linux/minmax.h>
-#include <linux/module.h>
-#include <linux/netdevice.h>
-#include <linux/pkt_sched.h>
-#include <linux/poll.h>
-#include <linux/printk.h>
-#include <linux/sched.h> /* for linux/wait.h */
-#include <linux/skbuff.h>
-#include <linux/slab.h>
-#include <linux/spinlock.h>
-#include <linux/stddef.h>
-#include <linux/string.h>
-#include <linux/uaccess.h>
-#include <linux/wait.h>
-#include <uapi/linux/batadv_packet.h>
-
-#include "debugfs.h"
-#include "hard-interface.h"
-#include "log.h"
-#include "originator.h"
-#include "send.h"
-
-static struct batadv_socket_client *batadv_socket_client_hash[256];
-
-static void batadv_socket_add_packet(struct batadv_socket_client *socket=
_client,
-				     struct batadv_icmp_header *icmph,
-				     size_t icmp_len);
-
-/**
- * batadv_socket_init() - Initialize soft interface independent socket d=
ata
- */
-void batadv_socket_init(void)
-{
-	memset(batadv_socket_client_hash, 0, sizeof(batadv_socket_client_hash))=
;
-}
-
-static int batadv_socket_open(struct inode *inode, struct file *file)
-{
-	unsigned int i;
-	struct batadv_socket_client *socket_client;
-
-	if (!try_module_get(THIS_MODULE))
-		return -EBUSY;
-
-	batadv_debugfs_deprecated(file, "");
-
-	stream_open(inode, file);
-
-	socket_client =3D kmalloc(sizeof(*socket_client), GFP_KERNEL);
-	if (!socket_client) {
-		module_put(THIS_MODULE);
-		return -ENOMEM;
-	}
-
-	for (i =3D 0; i < ARRAY_SIZE(batadv_socket_client_hash); i++) {
-		if (!batadv_socket_client_hash[i]) {
-			batadv_socket_client_hash[i] =3D socket_client;
-			break;
-		}
-	}
-
-	if (i =3D=3D ARRAY_SIZE(batadv_socket_client_hash)) {
-		pr_err("Error - can't add another packet client: maximum number of cli=
ents reached\n");
-		kfree(socket_client);
-		module_put(THIS_MODULE);
-		return -EXFULL;
-	}
-
-	INIT_LIST_HEAD(&socket_client->queue_list);
-	socket_client->queue_len =3D 0;
-	socket_client->index =3D i;
-	socket_client->bat_priv =3D inode->i_private;
-	spin_lock_init(&socket_client->lock);
-	init_waitqueue_head(&socket_client->queue_wait);
-
-	file->private_data =3D socket_client;
-
-	return 0;
-}
-
-static int batadv_socket_release(struct inode *inode, struct file *file)
-{
-	struct batadv_socket_client *client =3D file->private_data;
-	struct batadv_socket_packet *packet, *tmp;
-
-	spin_lock_bh(&client->lock);
-
-	/* for all packets in the queue ... */
-	list_for_each_entry_safe(packet, tmp, &client->queue_list, list) {
-		list_del(&packet->list);
-		kfree(packet);
-	}
-
-	batadv_socket_client_hash[client->index] =3D NULL;
-	spin_unlock_bh(&client->lock);
-
-	kfree(client);
-	module_put(THIS_MODULE);
-
-	return 0;
-}
-
-static ssize_t batadv_socket_read(struct file *file, char __user *buf,
-				  size_t count, loff_t *ppos)
-{
-	struct batadv_socket_client *socket_client =3D file->private_data;
-	struct batadv_socket_packet *socket_packet;
-	size_t packet_len;
-	int error;
-
-	if ((file->f_flags & O_NONBLOCK) && socket_client->queue_len =3D=3D 0)
-		return -EAGAIN;
-
-	if (!buf || count < sizeof(struct batadv_icmp_packet))
-		return -EINVAL;
-
-	error =3D wait_event_interruptible(socket_client->queue_wait,
-					 socket_client->queue_len);
-
-	if (error)
-		return error;
-
-	spin_lock_bh(&socket_client->lock);
-
-	socket_packet =3D list_first_entry(&socket_client->queue_list,
-					 struct batadv_socket_packet, list);
-	list_del(&socket_packet->list);
-	socket_client->queue_len--;
-
-	spin_unlock_bh(&socket_client->lock);
-
-	packet_len =3D min(count, socket_packet->icmp_len);
-	error =3D copy_to_user(buf, &socket_packet->icmp_packet, packet_len);
-
-	kfree(socket_packet);
-
-	if (error)
-		return -EFAULT;
-
-	return packet_len;
-}
-
-static ssize_t batadv_socket_write(struct file *file, const char __user =
*buff,
-				   size_t len, loff_t *off)
-{
-	struct batadv_socket_client *socket_client =3D file->private_data;
-	struct batadv_priv *bat_priv =3D socket_client->bat_priv;
-	struct batadv_hard_iface *primary_if =3D NULL;
-	struct sk_buff *skb;
-	struct batadv_icmp_packet_rr *icmp_packet_rr;
-	struct batadv_icmp_header *icmp_header;
-	struct batadv_orig_node *orig_node =3D NULL;
-	struct batadv_neigh_node *neigh_node =3D NULL;
-	size_t packet_len =3D sizeof(struct batadv_icmp_packet);
-	u8 *addr;
-
-	if (len < sizeof(struct batadv_icmp_header)) {
-		batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
-			   "Error - can't send packet from char device: invalid packet size\n=
");
-		return -EINVAL;
-	}
-
-	primary_if =3D batadv_primary_if_get_selected(bat_priv);
-
-	if (!primary_if) {
-		len =3D -EFAULT;
-		goto out;
-	}
-
-	if (len >=3D BATADV_ICMP_MAX_PACKET_SIZE)
-		packet_len =3D BATADV_ICMP_MAX_PACKET_SIZE;
-	else
-		packet_len =3D len;
-
-	skb =3D netdev_alloc_skb_ip_align(NULL, packet_len + ETH_HLEN);
-	if (!skb) {
-		len =3D -ENOMEM;
-		goto out;
-	}
-
-	skb->priority =3D TC_PRIO_CONTROL;
-	skb_reserve(skb, ETH_HLEN);
-	icmp_header =3D skb_put(skb, packet_len);
-
-	if (copy_from_user(icmp_header, buff, packet_len)) {
-		len =3D -EFAULT;
-		goto free_skb;
-	}
-
-	if (icmp_header->packet_type !=3D BATADV_ICMP) {
-		batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
-			   "Error - can't send packet from char device: got bogus packet type=
 (expected: BAT_ICMP)\n");
-		len =3D -EINVAL;
-		goto free_skb;
-	}
-
-	switch (icmp_header->msg_type) {
-	case BATADV_ECHO_REQUEST:
-		if (len < sizeof(struct batadv_icmp_packet)) {
-			batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
-				   "Error - can't send packet from char device: invalid packet size\=
n");
-			len =3D -EINVAL;
-			goto free_skb;
-		}
-
-		if (atomic_read(&bat_priv->mesh_state) !=3D BATADV_MESH_ACTIVE)
-			goto dst_unreach;
-
-		orig_node =3D batadv_orig_hash_find(bat_priv, icmp_header->dst);
-		if (!orig_node)
-			goto dst_unreach;
-
-		neigh_node =3D batadv_orig_router_get(orig_node,
-						    BATADV_IF_DEFAULT);
-		if (!neigh_node)
-			goto dst_unreach;
-
-		if (!neigh_node->if_incoming)
-			goto dst_unreach;
-
-		if (neigh_node->if_incoming->if_status !=3D BATADV_IF_ACTIVE)
-			goto dst_unreach;
-
-		icmp_packet_rr =3D (struct batadv_icmp_packet_rr *)icmp_header;
-		if (packet_len =3D=3D sizeof(*icmp_packet_rr)) {
-			addr =3D neigh_node->if_incoming->net_dev->dev_addr;
-			ether_addr_copy(icmp_packet_rr->rr[0], addr);
-		}
-
-		break;
-	default:
-		batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
-			   "Error - can't send packet from char device: got unknown message t=
ype\n");
-		len =3D -EINVAL;
-		goto free_skb;
-	}
-
-	icmp_header->uid =3D socket_client->index;
-
-	if (icmp_header->version !=3D BATADV_COMPAT_VERSION) {
-		icmp_header->msg_type =3D BATADV_PARAMETER_PROBLEM;
-		icmp_header->version =3D BATADV_COMPAT_VERSION;
-		batadv_socket_add_packet(socket_client, icmp_header,
-					 packet_len);
-		goto free_skb;
-	}
-
-	ether_addr_copy(icmp_header->orig, primary_if->net_dev->dev_addr);
-
-	batadv_send_unicast_skb(skb, neigh_node);
-	goto out;
-
-dst_unreach:
-	icmp_header->msg_type =3D BATADV_DESTINATION_UNREACHABLE;
-	batadv_socket_add_packet(socket_client, icmp_header, packet_len);
-free_skb:
-	kfree_skb(skb);
-out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	if (neigh_node)
-		batadv_neigh_node_put(neigh_node);
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
-	return len;
-}
-
-static __poll_t batadv_socket_poll(struct file *file, poll_table *wait)
-{
-	struct batadv_socket_client *socket_client =3D file->private_data;
-
-	poll_wait(file, &socket_client->queue_wait, wait);
-
-	if (socket_client->queue_len > 0)
-		return EPOLLIN | EPOLLRDNORM;
-
-	return 0;
-}
-
-static const struct file_operations batadv_fops =3D {
-	.owner =3D THIS_MODULE,
-	.open =3D batadv_socket_open,
-	.release =3D batadv_socket_release,
-	.read =3D batadv_socket_read,
-	.write =3D batadv_socket_write,
-	.poll =3D batadv_socket_poll,
-	.llseek =3D no_llseek,
-};
-
-/**
- * batadv_socket_setup() - Create debugfs "socket" file
- * @bat_priv: the bat priv with all the soft interface information
- */
-void batadv_socket_setup(struct batadv_priv *bat_priv)
-{
-	debugfs_create_file(BATADV_ICMP_SOCKET, 0600, bat_priv->debug_dir,
-			    bat_priv, &batadv_fops);
-}
-
-/**
- * batadv_socket_add_packet() - schedule an icmp packet to be sent to
- *  userspace on an icmp socket.
- * @socket_client: the socket this packet belongs to
- * @icmph: pointer to the header of the icmp packet
- * @icmp_len: total length of the icmp packet
- */
-static void batadv_socket_add_packet(struct batadv_socket_client *socket=
_client,
-				     struct batadv_icmp_header *icmph,
-				     size_t icmp_len)
-{
-	struct batadv_socket_packet *socket_packet;
-	size_t len;
-
-	socket_packet =3D kmalloc(sizeof(*socket_packet), GFP_ATOMIC);
-
-	if (!socket_packet)
-		return;
-
-	len =3D icmp_len;
-	/* check the maximum length before filling the buffer */
-	if (len > sizeof(socket_packet->icmp_packet))
-		len =3D sizeof(socket_packet->icmp_packet);
-
-	INIT_LIST_HEAD(&socket_packet->list);
-	memcpy(&socket_packet->icmp_packet, icmph, len);
-	socket_packet->icmp_len =3D len;
-
-	spin_lock_bh(&socket_client->lock);
-
-	/* while waiting for the lock the socket_client could have been
-	 * deleted
-	 */
-	if (!batadv_socket_client_hash[icmph->uid]) {
-		spin_unlock_bh(&socket_client->lock);
-		kfree(socket_packet);
-		return;
-	}
-
-	list_add_tail(&socket_packet->list, &socket_client->queue_list);
-	socket_client->queue_len++;
-
-	if (socket_client->queue_len > 100) {
-		socket_packet =3D list_first_entry(&socket_client->queue_list,
-						 struct batadv_socket_packet,
-						 list);
-
-		list_del(&socket_packet->list);
-		kfree(socket_packet);
-		socket_client->queue_len--;
-	}
-
-	spin_unlock_bh(&socket_client->lock);
-
-	wake_up(&socket_client->queue_wait);
-}
-
-/**
- * batadv_socket_receive_packet() - schedule an icmp packet to be receiv=
ed
- *  locally and sent to userspace.
- * @icmph: pointer to the header of the icmp packet
- * @icmp_len: total length of the icmp packet
- */
-void batadv_socket_receive_packet(struct batadv_icmp_header *icmph,
-				  size_t icmp_len)
-{
-	struct batadv_socket_client *hash;
-
-	hash =3D batadv_socket_client_hash[icmph->uid];
-	if (hash)
-		batadv_socket_add_packet(hash, icmph, icmp_len);
-}
diff --git a/net/batman-adv/icmp_socket.h b/net/batman-adv/icmp_socket.h
deleted file mode 100644
index 6abd0f47..00000000
--- a/net/batman-adv/icmp_socket.h
+++ /dev/null
@@ -1,38 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner
- */
-
-#ifndef _NET_BATMAN_ADV_ICMP_SOCKET_H_
-#define _NET_BATMAN_ADV_ICMP_SOCKET_H_
-
-#include "main.h"
-
-#include <linux/types.h>
-#include <uapi/linux/batadv_packet.h>
-
-#define BATADV_ICMP_SOCKET "socket"
-
-void batadv_socket_setup(struct batadv_priv *bat_priv);
-
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-
-void batadv_socket_init(void);
-void batadv_socket_receive_packet(struct batadv_icmp_header *icmph,
-				  size_t icmp_len);
-
-#else
-
-static inline void batadv_socket_init(void)
-{
-}
-
-static inline void
-batadv_socket_receive_packet(struct batadv_icmp_header *icmph, size_t ic=
mp_len)
-{
-}
-
-#endif
-
-#endif /* _NET_BATMAN_ADV_ICMP_SOCKET_H_ */
diff --git a/net/batman-adv/log.c b/net/batman-adv/log.c
index a67b2b09..b7e9923b 100644
--- a/net/batman-adv/log.c
+++ b/net/batman-adv/log.c
@@ -7,213 +7,10 @@
 #include "log.h"
 #include "main.h"
=20
-#include <linux/compiler.h>
-#include <linux/debugfs.h>
-#include <linux/errno.h>
-#include <linux/eventpoll.h>
-#include <linux/export.h>
-#include <linux/fcntl.h>
-#include <linux/fs.h>
-#include <linux/gfp.h>
-#include <linux/jiffies.h>
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/poll.h>
-#include <linux/sched.h> /* for linux/wait.h */
-#include <linux/slab.h>
-#include <linux/spinlock.h>
-#include <linux/stddef.h>
-#include <linux/types.h>
-#include <linux/uaccess.h>
-#include <linux/wait.h>
 #include <stdarg.h>
=20
-#include "debugfs.h"
 #include "trace.h"
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-
-#define BATADV_LOG_BUFF_MASK (batadv_log_buff_len - 1)
-
-static const int batadv_log_buff_len =3D BATADV_LOG_BUF_LEN;
-
-static char *batadv_log_char_addr(struct batadv_priv_debug_log *debug_lo=
g,
-				  size_t idx)
-{
-	return &debug_log->log_buff[idx & BATADV_LOG_BUFF_MASK];
-}
-
-static void batadv_emit_log_char(struct batadv_priv_debug_log *debug_log=
,
-				 char c)
-{
-	char *char_addr;
-
-	char_addr =3D batadv_log_char_addr(debug_log, debug_log->log_end);
-	*char_addr =3D c;
-	debug_log->log_end++;
-
-	if (debug_log->log_end - debug_log->log_start > batadv_log_buff_len)
-		debug_log->log_start =3D debug_log->log_end - batadv_log_buff_len;
-}
-
-__printf(2, 3)
-static int batadv_fdebug_log(struct batadv_priv_debug_log *debug_log,
-			     const char *fmt, ...)
-{
-	va_list args;
-	static char debug_log_buf[256];
-	char *p;
-
-	if (!debug_log)
-		return 0;
-
-	spin_lock_bh(&debug_log->lock);
-	va_start(args, fmt);
-	vscnprintf(debug_log_buf, sizeof(debug_log_buf), fmt, args);
-	va_end(args);
-
-	for (p =3D debug_log_buf; *p !=3D 0; p++)
-		batadv_emit_log_char(debug_log, *p);
-
-	spin_unlock_bh(&debug_log->lock);
-
-	wake_up(&debug_log->queue_wait);
-
-	return 0;
-}
-
-static int batadv_log_open(struct inode *inode, struct file *file)
-{
-	if (!try_module_get(THIS_MODULE))
-		return -EBUSY;
-
-	batadv_debugfs_deprecated(file,
-				  "Use tracepoint batadv:batadv_dbg instead\n");
-
-	stream_open(inode, file);
-	file->private_data =3D inode->i_private;
-	return 0;
-}
-
-static int batadv_log_release(struct inode *inode, struct file *file)
-{
-	module_put(THIS_MODULE);
-	return 0;
-}
-
-static bool batadv_log_empty(struct batadv_priv_debug_log *debug_log)
-{
-	return !(debug_log->log_start - debug_log->log_end);
-}
-
-static ssize_t batadv_log_read(struct file *file, char __user *buf,
-			       size_t count, loff_t *ppos)
-{
-	struct batadv_priv *bat_priv =3D file->private_data;
-	struct batadv_priv_debug_log *debug_log =3D bat_priv->debug_log;
-	int error, i =3D 0;
-	char *char_addr;
-	char c;
-
-	if ((file->f_flags & O_NONBLOCK) && batadv_log_empty(debug_log))
-		return -EAGAIN;
-
-	if (!buf)
-		return -EINVAL;
-
-	if (count =3D=3D 0)
-		return 0;
-
-	if (!access_ok(buf, count))
-		return -EFAULT;
-
-	error =3D wait_event_interruptible(debug_log->queue_wait,
-					 (!batadv_log_empty(debug_log)));
-
-	if (error)
-		return error;
-
-	spin_lock_bh(&debug_log->lock);
-
-	while ((!error) && (i < count) &&
-	       (debug_log->log_start !=3D debug_log->log_end)) {
-		char_addr =3D batadv_log_char_addr(debug_log,
-						 debug_log->log_start);
-		c =3D *char_addr;
-
-		debug_log->log_start++;
-
-		spin_unlock_bh(&debug_log->lock);
-
-		error =3D __put_user(c, buf);
-
-		spin_lock_bh(&debug_log->lock);
-
-		buf++;
-		i++;
-	}
-
-	spin_unlock_bh(&debug_log->lock);
-
-	if (!error)
-		return i;
-
-	return error;
-}
-
-static __poll_t batadv_log_poll(struct file *file, poll_table *wait)
-{
-	struct batadv_priv *bat_priv =3D file->private_data;
-	struct batadv_priv_debug_log *debug_log =3D bat_priv->debug_log;
-
-	poll_wait(file, &debug_log->queue_wait, wait);
-
-	if (!batadv_log_empty(debug_log))
-		return EPOLLIN | EPOLLRDNORM;
-
-	return 0;
-}
-
-static const struct file_operations batadv_log_fops =3D {
-	.open           =3D batadv_log_open,
-	.release        =3D batadv_log_release,
-	.read           =3D batadv_log_read,
-	.poll           =3D batadv_log_poll,
-	.llseek         =3D no_llseek,
-};
-
-/**
- * batadv_debug_log_setup() - Initialize debug log
- * @bat_priv: the bat priv with all the soft interface information
- *
- * Return: 0 on success or negative error number in case of failure
- */
-int batadv_debug_log_setup(struct batadv_priv *bat_priv)
-{
-	bat_priv->debug_log =3D kzalloc(sizeof(*bat_priv->debug_log), GFP_ATOMI=
C);
-	if (!bat_priv->debug_log)
-		return -ENOMEM;
-
-	spin_lock_init(&bat_priv->debug_log->lock);
-	init_waitqueue_head(&bat_priv->debug_log->queue_wait);
-
-	debugfs_create_file("log", 0400, bat_priv->debug_dir, bat_priv,
-			    &batadv_log_fops);
-	return 0;
-}
-
-/**
- * batadv_debug_log_cleanup() - Destroy debug log
- * @bat_priv: the bat priv with all the soft interface information
- */
-void batadv_debug_log_cleanup(struct batadv_priv *bat_priv)
-{
-	kfree(bat_priv->debug_log);
-	bat_priv->debug_log =3D NULL;
-}
-
-#endif /* CONFIG_BATMAN_ADV_DEBUGFS */
-
 /**
  * batadv_debug_log() - Add debug log entry
  * @bat_priv: the bat priv with all the soft interface information
@@ -231,11 +28,6 @@ int batadv_debug_log(struct batadv_priv *bat_priv, co=
nst char *fmt, ...)
 	vaf.fmt =3D fmt;
 	vaf.va =3D &args;
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-	batadv_fdebug_log(bat_priv->debug_log, "[%10u] %pV",
-			  jiffies_to_msecs(jiffies), &vaf);
-#endif
-
 	trace_batadv_dbg(bat_priv, &vaf);
=20
 	va_end(args);
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 293c62ed..ed9d87ce 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -29,7 +29,6 @@
 #include <linux/printk.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -45,12 +44,10 @@
 #include "bat_iv_ogm.h"
 #include "bat_v.h"
 #include "bridge_loop_avoidance.h"
-#include "debugfs.h"
 #include "distributed-arp-table.h"
 #include "gateway_client.h"
 #include "gateway_common.h"
 #include "hard-interface.h"
-#include "icmp_socket.h"
 #include "log.h"
 #include "multicast.h"
 #include "netlink.h"
@@ -114,9 +111,6 @@ static int __init batadv_init(void)
 	if (!batadv_event_workqueue)
 		goto err_create_wq;
=20
-	batadv_socket_init();
-	batadv_debugfs_init();
-
 	register_netdevice_notifier(&batadv_hard_if_notifier);
 	rtnl_link_register(&batadv_link_ops);
 	batadv_netlink_register();
@@ -134,7 +128,6 @@ static int __init batadv_init(void)
=20
 static void __exit batadv_exit(void)
 {
-	batadv_debugfs_destroy();
 	batadv_netlink_unregister();
 	rtnl_link_unregister(&batadv_link_ops);
 	unregister_netdevice_notifier(&batadv_hard_if_notifier);
@@ -306,44 +299,6 @@ bool batadv_is_my_mac(struct batadv_priv *bat_priv, =
const u8 *addr)
 	return is_my_mac;
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_seq_print_text_primary_if_get() - called from debugfs table pr=
inting
- *  function that requires the primary interface
- * @seq: debugfs table seq_file struct
- *
- * Return: primary interface if found or NULL otherwise.
- */
-struct batadv_hard_iface *
-batadv_seq_print_text_primary_if_get(struct seq_file *seq)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hard_iface *primary_if;
-
-	primary_if =3D batadv_primary_if_get_selected(bat_priv);
-
-	if (!primary_if) {
-		seq_printf(seq,
-			   "BATMAN mesh %s disabled - please specify interfaces to enable it\=
n",
-			   net_dev->name);
-		goto out;
-	}
-
-	if (primary_if->if_status =3D=3D BATADV_IF_ACTIVE)
-		goto out;
-
-	seq_printf(seq,
-		   "BATMAN mesh %s disabled - primary interface not active\n",
-		   net_dev->name);
-	batadv_hardif_put(primary_if);
-	primary_if =3D NULL;
-
-out:
-	return primary_if;
-}
-#endif
-
 /**
  * batadv_max_header_len() - calculate maximum encapsulation overhead fo=
r a
  *  payload packet
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 9254c6ee..28820163 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -212,7 +212,6 @@ enum batadv_uev_type {
 #include <linux/jiffies.h>
 #include <linux/netdevice.h>
 #include <linux/percpu.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
 #include <uapi/linux/batadv_packet.h>
@@ -243,8 +242,6 @@ extern struct workqueue_struct *batadv_event_workqueu=
e;
 int batadv_mesh_init(struct net_device *soft_iface);
 void batadv_mesh_free(struct net_device *soft_iface);
 bool batadv_is_my_mac(struct batadv_priv *bat_priv, const u8 *addr);
-struct batadv_hard_iface *
-batadv_seq_print_text_primary_if_get(struct seq_file *seq);
 int batadv_max_header_len(void);
 void batadv_skb_set_priority(struct sk_buff *skb, int offset);
 int batadv_batman_skb_recv(struct sk_buff *skb, struct net_device *dev,
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 9af99c39..854e5ff2 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -33,7 +33,6 @@
 #include <linux/printk.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -2074,116 +2073,6 @@ void batadv_mcast_init(struct batadv_priv *bat_pr=
iv)
 	batadv_mcast_start_timer(bat_priv);
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_mcast_flags_print_header() - print own mcast flags to debugfs =
table
- * @bat_priv: the bat priv with all the soft interface information
- * @seq: debugfs table seq_file struct
- *
- * Prints our own multicast flags including a more specific reason why
- * they are set, that is prints the bridge and querier state too, to
- * the debugfs table specified via @seq.
- */
-static void batadv_mcast_flags_print_header(struct batadv_priv *bat_priv=
,
-					    struct seq_file *seq)
-{
-	struct batadv_mcast_mla_flags *mla_flags =3D &bat_priv->mcast.mla_flags=
;
-	char querier4, querier6, shadowing4, shadowing6;
-	bool bridged =3D mla_flags->bridged;
-	u8 flags =3D mla_flags->tvlv_flags;
-
-	if (bridged) {
-		querier4 =3D mla_flags->querier_ipv4.exists ? '.' : '4';
-		querier6 =3D mla_flags->querier_ipv6.exists ? '.' : '6';
-		shadowing4 =3D mla_flags->querier_ipv4.shadowing ? '4' : '.';
-		shadowing6 =3D mla_flags->querier_ipv6.shadowing ? '6' : '.';
-	} else {
-		querier4 =3D '?';
-		querier6 =3D '?';
-		shadowing4 =3D '?';
-		shadowing6 =3D '?';
-	}
-
-	seq_printf(seq, "Multicast flags (own flags: [%c%c%c%s%s])\n",
-		   (flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES) ? 'U' : '.',
-		   (flags & BATADV_MCAST_WANT_ALL_IPV4) ? '4' : '.',
-		   (flags & BATADV_MCAST_WANT_ALL_IPV6) ? '6' : '.',
-		   !(flags & BATADV_MCAST_WANT_NO_RTR4) ? "R4" : ". ",
-		   !(flags & BATADV_MCAST_WANT_NO_RTR6) ? "R6" : ". ");
-	seq_printf(seq, "* Bridged [U]\t\t\t\t%c\n", bridged ? 'U' : '.');
-	seq_printf(seq, "* No IGMP/MLD Querier [4/6]:\t\t%c/%c\n",
-		   querier4, querier6);
-	seq_printf(seq, "* Shadowing IGMP/MLD Querier [4/6]:\t%c/%c\n",
-		   shadowing4, shadowing6);
-	seq_puts(seq, "-------------------------------------------\n");
-	seq_printf(seq, "       %-10s %s\n", "Originator", "Flags");
-}
-
-/**
- * batadv_mcast_flags_seq_print_text() - print the mcast flags of other =
nodes
- * @seq: seq file to print on
- * @offset: not used
- *
- * This prints a table of (primary) originators and their according
- * multicast flags, including (in the header) our own.
- *
- * Return: always 0
- */
-int batadv_mcast_flags_seq_print_text(struct seq_file *seq, void *offset=
)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hard_iface *primary_if;
-	struct batadv_hashtable *hash =3D bat_priv->orig_hash;
-	struct batadv_orig_node *orig_node;
-	struct hlist_head *head;
-	u8 flags;
-	u32 i;
-
-	primary_if =3D batadv_seq_print_text_primary_if_get(seq);
-	if (!primary_if)
-		return 0;
-
-	batadv_mcast_flags_print_header(bat_priv, seq);
-
-	for (i =3D 0; i < hash->size; i++) {
-		head =3D &hash->table[i];
-
-		rcu_read_lock();
-		hlist_for_each_entry_rcu(orig_node, head, hash_entry) {
-			if (!test_bit(BATADV_ORIG_CAPA_HAS_MCAST,
-				      &orig_node->capa_initialized))
-				continue;
-
-			if (!test_bit(BATADV_ORIG_CAPA_HAS_MCAST,
-				      &orig_node->capabilities)) {
-				seq_printf(seq, "%pM -\n", orig_node->orig);
-				continue;
-			}
-
-			flags =3D orig_node->mcast_flags;
-
-			seq_printf(seq, "%pM [%c%c%c%s%s]\n", orig_node->orig,
-				   (flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES)
-				   ? 'U' : '.',
-				   (flags & BATADV_MCAST_WANT_ALL_IPV4)
-				   ? '4' : '.',
-				   (flags & BATADV_MCAST_WANT_ALL_IPV6)
-				   ? '6' : '.',
-				   !(flags & BATADV_MCAST_WANT_NO_RTR4)
-				   ? "R4" : ". ",
-				   !(flags & BATADV_MCAST_WANT_NO_RTR6)
-				   ? "R6" : ". ");
-		}
-		rcu_read_unlock();
-	}
-
-	batadv_hardif_put(primary_if);
-
-	return 0;
-}
-#endif
-
 /**
  * batadv_mcast_mesh_info_put() - put multicast info into a netlink mess=
age
  * @msg: buffer for the message
diff --git a/net/batman-adv/multicast.h b/net/batman-adv/multicast.h
index 3e114bc5..d61593d0 100644
--- a/net/batman-adv/multicast.h
+++ b/net/batman-adv/multicast.h
@@ -10,7 +10,6 @@
 #include "main.h"
=20
 #include <linux/netlink.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
=20
 /**
@@ -56,8 +55,6 @@ int batadv_mcast_forw_send(struct batadv_priv *bat_priv=
, struct sk_buff *skb,
=20
 void batadv_mcast_init(struct batadv_priv *bat_priv);
=20
-int batadv_mcast_flags_seq_print_text(struct seq_file *seq, void *offset=
);
-
 int batadv_mcast_mesh_info_put(struct sk_buff *msg,
 			       struct batadv_priv *bat_priv);
=20
diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 61ddd6d7..0cec108b 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -11,7 +11,6 @@
 #include <linux/bitops.h>
 #include <linux/byteorder/generic.h>
 #include <linux/compiler.h>
-#include <linux/debugfs.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
@@ -30,7 +29,6 @@
 #include <linux/printk.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -39,7 +37,6 @@
 #include <linux/workqueue.h>
 #include <uapi/linux/batadv_packet.h>
=20
-#include "hard-interface.h"
 #include "hash.h"
 #include "log.h"
 #include "originator.h"
@@ -1876,87 +1873,3 @@ void batadv_nc_mesh_free(struct batadv_priv *bat_p=
riv)
 	batadv_nc_purge_paths(bat_priv, bat_priv->nc.decoding_hash, NULL);
 	batadv_hash_destroy(bat_priv->nc.decoding_hash);
 }
-
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_nc_nodes_seq_print_text() - print the nc node information
- * @seq: seq file to print on
- * @offset: not used
- *
- * Return: always 0
- */
-int batadv_nc_nodes_seq_print_text(struct seq_file *seq, void *offset)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hashtable *hash =3D bat_priv->orig_hash;
-	struct batadv_hard_iface *primary_if;
-	struct hlist_head *head;
-	struct batadv_orig_node *orig_node;
-	struct batadv_nc_node *nc_node;
-	int i;
-
-	primary_if =3D batadv_seq_print_text_primary_if_get(seq);
-	if (!primary_if)
-		goto out;
-
-	/* Traverse list of originators */
-	for (i =3D 0; i < hash->size; i++) {
-		head =3D &hash->table[i];
-
-		/* For each orig_node in this bin */
-		rcu_read_lock();
-		hlist_for_each_entry_rcu(orig_node, head, hash_entry) {
-			/* no need to print the orig node if it does not have
-			 * network coding neighbors
-			 */
-			if (list_empty(&orig_node->in_coding_list) &&
-			    list_empty(&orig_node->out_coding_list))
-				continue;
-
-			seq_printf(seq, "Node:      %pM\n", orig_node->orig);
-
-			seq_puts(seq, " Ingoing:  ");
-			/* For each in_nc_node to this orig_node */
-			list_for_each_entry_rcu(nc_node,
-						&orig_node->in_coding_list,
-						list)
-				seq_printf(seq, "%pM ",
-					   nc_node->addr);
-			seq_puts(seq, "\n Outgoing: ");
-			/* For out_nc_node to this orig_node */
-			list_for_each_entry_rcu(nc_node,
-						&orig_node->out_coding_list,
-						list)
-				seq_printf(seq, "%pM ",
-					   nc_node->addr);
-			seq_puts(seq, "\n\n");
-		}
-		rcu_read_unlock();
-	}
-
-out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	return 0;
-}
-
-/**
- * batadv_nc_init_debugfs() - create nc folder and related files in debu=
gfs
- * @bat_priv: the bat priv with all the soft interface information
- */
-void batadv_nc_init_debugfs(struct batadv_priv *bat_priv)
-{
-	struct dentry *nc_dir;
-
-	nc_dir =3D debugfs_create_dir("nc", bat_priv->debug_dir);
-
-	debugfs_create_u8("min_tq", 0644, nc_dir, &bat_priv->nc.min_tq);
-
-	debugfs_create_u32("max_fwd_delay", 0644, nc_dir,
-			   &bat_priv->nc.max_fwd_delay);
-
-	debugfs_create_u32("max_buffer_time", 0644, nc_dir,
-			   &bat_priv->nc.max_buffer_time);
-}
-#endif
diff --git a/net/batman-adv/network-coding.h b/net/batman-adv/network-cod=
ing.h
index 33428908..8fb2c01e 100644
--- a/net/batman-adv/network-coding.h
+++ b/net/batman-adv/network-coding.h
@@ -10,7 +10,6 @@
 #include "main.h"
=20
 #include <linux/netdevice.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
 #include <uapi/linux/batadv_packet.h>
@@ -38,8 +37,6 @@ void batadv_nc_skb_store_for_decoding(struct batadv_pri=
v *bat_priv,
 				      struct sk_buff *skb);
 void batadv_nc_skb_store_sniffed_unicast(struct batadv_priv *bat_priv,
 					 struct sk_buff *skb);
-int batadv_nc_nodes_seq_print_text(struct seq_file *seq, void *offset);
-void batadv_nc_init_debugfs(struct batadv_priv *bat_priv);
=20
 #else /* ifdef CONFIG_BATMAN_ADV_NC */
=20
@@ -104,16 +101,6 @@ batadv_nc_skb_store_sniffed_unicast(struct batadv_pr=
iv *bat_priv,
 {
 }
=20
-static inline int batadv_nc_nodes_seq_print_text(struct seq_file *seq,
-						 void *offset)
-{
-	return 0;
-}
-
-static inline void batadv_nc_init_debugfs(struct batadv_priv *bat_priv)
-{
-}
-
 #endif /* ifdef CONFIG_BATMAN_ADV_NC */
=20
 #endif /* _NET_BATMAN_ADV_NETWORK_CODING_H_ */
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index 805d8969..77431e59 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -20,7 +20,6 @@
 #include <linux/netlink.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -733,42 +732,6 @@ batadv_neigh_node_get_or_create(struct batadv_orig_n=
ode *orig_node,
 	return batadv_neigh_node_create(orig_node, hard_iface, neigh_addr);
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_hardif_neigh_seq_print_text() - print the single hop neighbour=
 list
- * @seq: neighbour table seq_file struct
- * @offset: not used
- *
- * Return: always 0
- */
-int batadv_hardif_neigh_seq_print_text(struct seq_file *seq, void *offse=
t)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hard_iface *primary_if;
-
-	primary_if =3D batadv_seq_print_text_primary_if_get(seq);
-	if (!primary_if)
-		return 0;
-
-	seq_printf(seq, "[B.A.T.M.A.N. adv %s, MainIF/MAC: %s/%pM (%s %s)]\n",
-		   BATADV_SOURCE_VERSION, primary_if->net_dev->name,
-		   primary_if->net_dev->dev_addr, net_dev->name,
-		   bat_priv->algo_ops->name);
-
-	batadv_hardif_put(primary_if);
-
-	if (!bat_priv->algo_ops->neigh.print) {
-		seq_puts(seq,
-			 "No printing function for this routing protocol\n");
-		return 0;
-	}
-
-	bat_priv->algo_ops->neigh.print(bat_priv, seq);
-	return 0;
-}
-#endif
-
 /**
  * batadv_hardif_neigh_dump() - Dump to netlink the neighbor infos for a
  *  specific outgoing interface
@@ -1382,90 +1345,6 @@ static void batadv_purge_orig(struct work_struct *=
work)
 			   msecs_to_jiffies(BATADV_ORIG_WORK_PERIOD));
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-
-/**
- * batadv_orig_seq_print_text() - Print the originator table in a seq fi=
le
- * @seq: seq file to print on
- * @offset: not used
- *
- * Return: always 0
- */
-int batadv_orig_seq_print_text(struct seq_file *seq, void *offset)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hard_iface *primary_if;
-
-	primary_if =3D batadv_seq_print_text_primary_if_get(seq);
-	if (!primary_if)
-		return 0;
-
-	seq_printf(seq, "[B.A.T.M.A.N. adv %s, MainIF/MAC: %s/%pM (%s %s)]\n",
-		   BATADV_SOURCE_VERSION, primary_if->net_dev->name,
-		   primary_if->net_dev->dev_addr, net_dev->name,
-		   bat_priv->algo_ops->name);
-
-	batadv_hardif_put(primary_if);
-
-	if (!bat_priv->algo_ops->orig.print) {
-		seq_puts(seq,
-			 "No printing function for this routing protocol\n");
-		return 0;
-	}
-
-	bat_priv->algo_ops->orig.print(bat_priv, seq, BATADV_IF_DEFAULT);
-
-	return 0;
-}
-
-/**
- * batadv_orig_hardif_seq_print_text() - writes originator infos for a s=
pecific
- *  outgoing interface
- * @seq: debugfs table seq_file struct
- * @offset: not used
- *
- * Return: 0
- */
-int batadv_orig_hardif_seq_print_text(struct seq_file *seq, void *offset=
)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_hard_iface *hard_iface;
-	struct batadv_priv *bat_priv;
-
-	hard_iface =3D batadv_hardif_get_by_netdev(net_dev);
-
-	if (!hard_iface || !hard_iface->soft_iface) {
-		seq_puts(seq, "Interface not known to B.A.T.M.A.N.\n");
-		goto out;
-	}
-
-	bat_priv =3D netdev_priv(hard_iface->soft_iface);
-	if (!bat_priv->algo_ops->orig.print) {
-		seq_puts(seq,
-			 "No printing function for this routing protocol\n");
-		goto out;
-	}
-
-	if (hard_iface->if_status !=3D BATADV_IF_ACTIVE) {
-		seq_puts(seq, "Interface not active\n");
-		goto out;
-	}
-
-	seq_printf(seq, "[B.A.T.M.A.N. adv %s, IF/MAC: %s/%pM (%s %s)]\n",
-		   BATADV_SOURCE_VERSION, hard_iface->net_dev->name,
-		   hard_iface->net_dev->dev_addr,
-		   hard_iface->soft_iface->name, bat_priv->algo_ops->name);
-
-	bat_priv->algo_ops->orig.print(bat_priv, seq, hard_iface);
-
-out:
-	if (hard_iface)
-		batadv_hardif_put(hard_iface);
-	return 0;
-}
-#endif
-
 /**
  * batadv_orig_dump() - Dump to netlink the originator infos for a speci=
fic
  *  outgoing interface
diff --git a/net/batman-adv/originator.h b/net/batman-adv/originator.h
index 7bc01c13..e75d4c4d 100644
--- a/net/batman-adv/originator.h
+++ b/net/batman-adv/originator.h
@@ -13,7 +13,6 @@
 #include <linux/if_ether.h>
 #include <linux/jhash.h>
 #include <linux/netlink.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
=20
@@ -46,7 +45,6 @@ batadv_neigh_ifinfo_get(struct batadv_neigh_node *neigh=
,
 void batadv_neigh_ifinfo_put(struct batadv_neigh_ifinfo *neigh_ifinfo);
=20
 int batadv_hardif_neigh_dump(struct sk_buff *msg, struct netlink_callbac=
k *cb);
-int batadv_hardif_neigh_seq_print_text(struct seq_file *seq, void *offse=
t);
=20
 struct batadv_orig_ifinfo *
 batadv_orig_ifinfo_get(struct batadv_orig_node *orig_node,
@@ -56,9 +54,7 @@ batadv_orig_ifinfo_new(struct batadv_orig_node *orig_no=
de,
 		       struct batadv_hard_iface *if_outgoing);
 void batadv_orig_ifinfo_put(struct batadv_orig_ifinfo *orig_ifinfo);
=20
-int batadv_orig_seq_print_text(struct seq_file *seq, void *offset);
 int batadv_orig_dump(struct sk_buff *msg, struct netlink_callback *cb);
-int batadv_orig_hardif_seq_print_text(struct seq_file *seq, void *offset=
);
 struct batadv_orig_node_vlan *
 batadv_orig_node_vlan_new(struct batadv_orig_node *orig_node,
 			  unsigned short vid);
diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index 9e5c71e4..49cbca4a 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -29,7 +29,6 @@
 #include "distributed-arp-table.h"
 #include "fragmentation.h"
 #include "hard-interface.h"
-#include "icmp_socket.h"
 #include "log.h"
 #include "network-coding.h"
 #include "originator.h"
@@ -227,15 +226,6 @@ static int batadv_recv_my_icmp_packet(struct batadv_=
priv *bat_priv,
 	icmph =3D (struct batadv_icmp_header *)skb->data;
=20
 	switch (icmph->msg_type) {
-	case BATADV_ECHO_REPLY:
-	case BATADV_DESTINATION_UNREACHABLE:
-	case BATADV_TTL_EXCEEDED:
-		/* receive the packet */
-		if (skb_linearize(skb) < 0)
-			break;
-
-		batadv_socket_receive_packet(icmph, skb->len);
-		break;
 	case BATADV_ECHO_REQUEST:
 		/* answer echo request (ping) */
 		primary_if =3D batadv_primary_if_get_selected(bat_priv);
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 33448a73..24760777 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -42,7 +42,6 @@
=20
 #include "bat_algo.h"
 #include "bridge_loop_avoidance.h"
-#include "debugfs.h"
 #include "distributed-arp-table.h"
 #include "gateway_client.h"
 #include "hard-interface.h"
@@ -820,18 +819,12 @@ static int batadv_softif_init_late(struct net_devic=
e *dev)
 	if (ret < 0)
 		goto free_bat_counters;
=20
-	ret =3D batadv_debugfs_add_meshif(dev);
-	if (ret < 0)
-		goto free_bat_counters;
-
 	ret =3D batadv_mesh_init(dev);
 	if (ret < 0)
-		goto unreg_debugfs;
+		goto free_bat_counters;
=20
 	return 0;
=20
-unreg_debugfs:
-	batadv_debugfs_del_meshif(dev);
 free_bat_counters:
 	free_percpu(bat_priv->bat_counters);
 	bat_priv->bat_counters =3D NULL;
@@ -1008,7 +1001,6 @@ static const struct ethtool_ops batadv_ethtool_ops =
=3D {
  */
 static void batadv_softif_free(struct net_device *dev)
 {
-	batadv_debugfs_del_meshif(dev);
 	batadv_mesh_free(dev);
=20
 	/* some scheduled RCU callbacks need the bat_priv struct to accomplish
diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translat=
ion-table.c
index 98a0aaaf..cd09916f 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -30,7 +30,6 @@
 #include <linux/netlink.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -1062,84 +1061,6 @@ static void batadv_tt_tvlv_container_update(struct=
 batadv_priv *bat_priv)
 	kfree(tt_data);
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-
-/**
- * batadv_tt_local_seq_print_text() - Print the local tt table in a seq =
file
- * @seq: seq file to print on
- * @offset: not used
- *
- * Return: always 0
- */
-int batadv_tt_local_seq_print_text(struct seq_file *seq, void *offset)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hashtable *hash =3D bat_priv->tt.local_hash;
-	struct batadv_tt_common_entry *tt_common_entry;
-	struct batadv_tt_local_entry *tt_local;
-	struct batadv_hard_iface *primary_if;
-	struct hlist_head *head;
-	u32 i;
-	int last_seen_secs;
-	int last_seen_msecs;
-	unsigned long last_seen_jiffies;
-	bool no_purge;
-	u16 np_flag =3D BATADV_TT_CLIENT_NOPURGE;
-
-	primary_if =3D batadv_seq_print_text_primary_if_get(seq);
-	if (!primary_if)
-		goto out;
-
-	seq_printf(seq,
-		   "Locally retrieved addresses (from %s) announced via TT (TTVN: %u):=
\n",
-		   net_dev->name, (u8)atomic_read(&bat_priv->tt.vn));
-	seq_puts(seq,
-		 "       Client         VID Flags    Last seen (CRC       )\n");
-
-	for (i =3D 0; i < hash->size; i++) {
-		head =3D &hash->table[i];
-
-		rcu_read_lock();
-		hlist_for_each_entry_rcu(tt_common_entry,
-					 head, hash_entry) {
-			tt_local =3D container_of(tt_common_entry,
-						struct batadv_tt_local_entry,
-						common);
-			last_seen_jiffies =3D jiffies - tt_local->last_seen;
-			last_seen_msecs =3D jiffies_to_msecs(last_seen_jiffies);
-			last_seen_secs =3D last_seen_msecs / 1000;
-			last_seen_msecs =3D last_seen_msecs % 1000;
-
-			no_purge =3D tt_common_entry->flags & np_flag;
-			seq_printf(seq,
-				   " * %pM %4i [%c%c%c%c%c%c] %3u.%03u   (%#.8x)\n",
-				   tt_common_entry->addr,
-				   batadv_print_vid(tt_common_entry->vid),
-				   ((tt_common_entry->flags &
-				     BATADV_TT_CLIENT_ROAM) ? 'R' : '.'),
-				   no_purge ? 'P' : '.',
-				   ((tt_common_entry->flags &
-				     BATADV_TT_CLIENT_NEW) ? 'N' : '.'),
-				   ((tt_common_entry->flags &
-				     BATADV_TT_CLIENT_PENDING) ? 'X' : '.'),
-				   ((tt_common_entry->flags &
-				     BATADV_TT_CLIENT_WIFI) ? 'W' : '.'),
-				   ((tt_common_entry->flags &
-				     BATADV_TT_CLIENT_ISOLA) ? 'I' : '.'),
-				   no_purge ? 0 : last_seen_secs,
-				   no_purge ? 0 : last_seen_msecs,
-				   tt_local->vlan->tt.crc);
-		}
-		rcu_read_unlock();
-	}
-out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	return 0;
-}
-#endif
-
 /**
  * batadv_tt_local_dump_entry() - Dump one TT local entry into a message
  * @msg :Netlink message to dump into
@@ -1879,139 +1800,6 @@ batadv_transtable_best_orig(struct batadv_priv *b=
at_priv,
 	return best_entry;
 }
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-/**
- * batadv_tt_global_print_entry() - print all orig nodes who announce th=
e
- *  address for this global entry
- * @bat_priv: the bat priv with all the soft interface information
- * @tt_global_entry: global translation table entry to be printed
- * @seq: debugfs table seq_file struct
- *
- * This function assumes the caller holds rcu_read_lock().
- */
-static void
-batadv_tt_global_print_entry(struct batadv_priv *bat_priv,
-			     struct batadv_tt_global_entry *tt_global_entry,
-			     struct seq_file *seq)
-{
-	struct batadv_tt_orig_list_entry *orig_entry, *best_entry;
-	struct batadv_tt_common_entry *tt_common_entry;
-	struct batadv_orig_node_vlan *vlan;
-	struct hlist_head *head;
-	u8 last_ttvn;
-	u16 flags;
-
-	tt_common_entry =3D &tt_global_entry->common;
-	flags =3D tt_common_entry->flags;
-
-	best_entry =3D batadv_transtable_best_orig(bat_priv, tt_global_entry);
-	if (best_entry) {
-		vlan =3D batadv_orig_node_vlan_get(best_entry->orig_node,
-						 tt_common_entry->vid);
-		if (!vlan) {
-			seq_printf(seq,
-				   " * Cannot retrieve VLAN %d for originator %pM\n",
-				   batadv_print_vid(tt_common_entry->vid),
-				   best_entry->orig_node->orig);
-			goto print_list;
-		}
-
-		last_ttvn =3D atomic_read(&best_entry->orig_node->last_ttvn);
-		seq_printf(seq,
-			   " %c %pM %4i   (%3u) via %pM     (%3u)   (%#.8x) [%c%c%c%c]\n",
-			   '*', tt_global_entry->common.addr,
-			   batadv_print_vid(tt_global_entry->common.vid),
-			   best_entry->ttvn, best_entry->orig_node->orig,
-			   last_ttvn, vlan->tt.crc,
-			   ((flags & BATADV_TT_CLIENT_ROAM) ? 'R' : '.'),
-			   ((flags & BATADV_TT_CLIENT_WIFI) ? 'W' : '.'),
-			   ((flags & BATADV_TT_CLIENT_ISOLA) ? 'I' : '.'),
-			   ((flags & BATADV_TT_CLIENT_TEMP) ? 'T' : '.'));
-
-		batadv_orig_node_vlan_put(vlan);
-	}
-
-print_list:
-	head =3D &tt_global_entry->orig_list;
-
-	hlist_for_each_entry_rcu(orig_entry, head, list) {
-		if (best_entry =3D=3D orig_entry)
-			continue;
-
-		vlan =3D batadv_orig_node_vlan_get(orig_entry->orig_node,
-						 tt_common_entry->vid);
-		if (!vlan) {
-			seq_printf(seq,
-				   " + Cannot retrieve VLAN %d for originator %pM\n",
-				   batadv_print_vid(tt_common_entry->vid),
-				   orig_entry->orig_node->orig);
-			continue;
-		}
-
-		last_ttvn =3D atomic_read(&orig_entry->orig_node->last_ttvn);
-		seq_printf(seq,
-			   " %c %pM %4d   (%3u) via %pM     (%3u)   (%#.8x) [%c%c%c%c]\n",
-			   '+', tt_global_entry->common.addr,
-			   batadv_print_vid(tt_global_entry->common.vid),
-			   orig_entry->ttvn, orig_entry->orig_node->orig,
-			   last_ttvn, vlan->tt.crc,
-			   ((flags & BATADV_TT_CLIENT_ROAM) ? 'R' : '.'),
-			   ((flags & BATADV_TT_CLIENT_WIFI) ? 'W' : '.'),
-			   ((flags & BATADV_TT_CLIENT_ISOLA) ? 'I' : '.'),
-			   ((flags & BATADV_TT_CLIENT_TEMP) ? 'T' : '.'));
-
-		batadv_orig_node_vlan_put(vlan);
-	}
-}
-
-/**
- * batadv_tt_global_seq_print_text() - Print the global tt table in a se=
q file
- * @seq: seq file to print on
- * @offset: not used
- *
- * Return: always 0
- */
-int batadv_tt_global_seq_print_text(struct seq_file *seq, void *offset)
-{
-	struct net_device *net_dev =3D (struct net_device *)seq->private;
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	struct batadv_hashtable *hash =3D bat_priv->tt.global_hash;
-	struct batadv_tt_common_entry *tt_common_entry;
-	struct batadv_tt_global_entry *tt_global;
-	struct batadv_hard_iface *primary_if;
-	struct hlist_head *head;
-	u32 i;
-
-	primary_if =3D batadv_seq_print_text_primary_if_get(seq);
-	if (!primary_if)
-		goto out;
-
-	seq_printf(seq,
-		   "Globally announced TT entries received via the mesh %s\n",
-		   net_dev->name);
-	seq_puts(seq,
-		 "       Client         VID  (TTVN)       Originator      (Curr TTVN) =
(CRC       ) Flags\n");
-
-	for (i =3D 0; i < hash->size; i++) {
-		head =3D &hash->table[i];
-
-		rcu_read_lock();
-		hlist_for_each_entry_rcu(tt_common_entry,
-					 head, hash_entry) {
-			tt_global =3D container_of(tt_common_entry,
-						 struct batadv_tt_global_entry,
-						 common);
-			batadv_tt_global_print_entry(bat_priv, tt_global, seq);
-		}
-		rcu_read_unlock();
-	}
-out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	return 0;
-}
-#endif
-
 /**
  * batadv_tt_global_dump_subentry() - Dump all TT local entries into a m=
essage
  * @msg: Netlink message to dump into
diff --git a/net/batman-adv/translation-table.h b/net/batman-adv/translat=
ion-table.h
index b24d35b9..57192c81 100644
--- a/net/batman-adv/translation-table.h
+++ b/net/batman-adv/translation-table.h
@@ -11,7 +11,6 @@
=20
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
=20
@@ -21,8 +20,6 @@ bool batadv_tt_local_add(struct net_device *soft_iface,=
 const u8 *addr,
 u16 batadv_tt_local_remove(struct batadv_priv *bat_priv,
 			   const u8 *addr, unsigned short vid,
 			   const char *message, bool roaming);
-int batadv_tt_local_seq_print_text(struct seq_file *seq, void *offset);
-int batadv_tt_global_seq_print_text(struct seq_file *seq, void *offset);
 int batadv_tt_local_dump(struct sk_buff *msg, struct netlink_callback *c=
b);
 int batadv_tt_global_dump(struct sk_buff *msg, struct netlink_callback *=
cb);
 void batadv_tt_global_del_orig(struct batadv_priv *bat_priv,
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 7cfe3081..2f96e96a 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -21,7 +21,6 @@
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/sched.h> /* for linux/wait.h */
-#include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/spinlock.h>
 #include <linux/timer.h>
@@ -219,13 +218,6 @@ struct batadv_hard_iface {
 	struct batadv_hard_iface_bat_v bat_v;
 #endif
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-	/**
-	 * @debug_dir: dentry for nc subdir in batman-adv directory in debugfs
-	 */
-	struct dentry *debug_dir;
-#endif
-
 	/**
 	 * @neigh_list: list of unique single hop neighbors via this interface
 	 */
@@ -1303,13 +1295,6 @@ struct batadv_priv_nc {
 	/** @work: work queue callback item for cleanup */
 	struct delayed_work work;
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-	/**
-	 * @debug_dir: dentry for nc subdir in batman-adv directory in debugfs
-	 */
-	struct dentry *debug_dir;
-#endif
-
 	/**
 	 * @min_tq: only consider neighbors for encoding if neigh_tq > min_tq
 	 */
@@ -1661,11 +1646,6 @@ struct batadv_priv {
 	/** @batman_queue_left: number of remaining OGM packet slots */
 	atomic_t batman_queue_left;
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-	/** @debug_dir: dentry for debugfs batman-adv subdirectory */
-	struct dentry *debug_dir;
-#endif
-
 	/** @forw_bat_list: list of aggregated OGMs that will be forwarded */
 	struct hlist_head forw_bat_list;
=20
@@ -2225,11 +2205,6 @@ struct batadv_algo_neigh_ops {
 				     struct batadv_neigh_node *neigh2,
 				     struct batadv_hard_iface *if_outgoing2);
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-	/** @print: print the single hop neighbor list (optional) */
-	void (*print)(struct batadv_priv *priv, struct seq_file *seq);
-#endif
-
 	/** @dump: dump neighbors to a netlink socket (optional) */
 	void (*dump)(struct sk_buff *msg, struct netlink_callback *cb,
 		     struct batadv_priv *priv,
@@ -2240,12 +2215,6 @@ struct batadv_algo_neigh_ops {
  * struct batadv_algo_orig_ops - mesh algorithm callbacks (originator sp=
ecific)
  */
 struct batadv_algo_orig_ops {
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-	/** @print: print the originator table (optional) */
-	void (*print)(struct batadv_priv *priv, struct seq_file *seq,
-		      struct batadv_hard_iface *hard_iface);
-#endif
-
 	/** @dump: dump originators to a netlink socket (optional) */
 	void (*dump)(struct sk_buff *msg, struct netlink_callback *cb,
 		     struct batadv_priv *priv,
@@ -2280,11 +2249,6 @@ struct batadv_algo_gw_ops {
 			    struct batadv_orig_node *curr_gw_orig,
 			    struct batadv_orig_node *orig_node);
=20
-#ifdef CONFIG_BATMAN_ADV_DEBUGFS
-	/** @print: print the gateway table (optional) */
-	void (*print)(struct batadv_priv *bat_priv, struct seq_file *seq);
-#endif
-
 	/** @dump: dump gateways to a netlink socket (optional) */
 	void (*dump)(struct sk_buff *msg, struct netlink_callback *cb,
 		     struct batadv_priv *priv);
--=20
2.28.0
