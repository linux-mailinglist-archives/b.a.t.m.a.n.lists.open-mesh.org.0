Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id A643729EF5
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 May 2019 21:20:24 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 82219823CE;
	Fri, 24 May 2019 21:20:15 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 034A082064
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 May 2019 21:20:10 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id A39B61100E1;
 Fri, 24 May 2019 21:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558725610;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PVcREVSyy0BfLSuOr+33TpZGK0F2bf1hH6318+ExfMY=;
 b=Ss43EGP+hfAneXxFsT3fD78ekLxWXXcHEXSS9uUX+oYBBW22YOZLcmzEiOsFdKbNSpRJRV
 6Y8diMpAXHWbiOujeAoSxXcXbyug8wMfQnCY1MxvalnOWWDUdjUzB0SuTpILFaoHkSNyom
 7R7G98qA4Ts0hpZ7UTkfklTLJbfNnCw=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 3/3] batman-adv: Use includes instead of fwdecls
Date: Fri, 24 May 2019 21:19:58 +0200
Message-Id: <20190524191958.30928-3-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524191958.30928-1-sven@narfation.org>
References: <20190524191958.30928-1-sven@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558725610;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PVcREVSyy0BfLSuOr+33TpZGK0F2bf1hH6318+ExfMY=;
 b=kMwxNRZ7utc0nsZHj9b/xSZS7qC9aqu9B8zUnX/17sY8yXHm0vBkbdSgz2kT54TGvkV3zh
 aw7kgmBwJ5moCNnuKZCH4AbqsWos5DXv0JQX73/2Vaufu+nL006QA/oG44paISEDIRGdg4
 /FxkhKtsTfcjckcpM3zo4DYqwN204hw=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558725610; a=rsa-sha256; cv=none;
 b=iSf9dpNpbuaxUhXQUHwB1sqlZ2TD57xORgicoQ9sfzPVh+Q+s878PcZjK6o3cxUZOPuAyS
 SuYmCAuRGDqHNfmueXdKPsGydJAloh2Inq/sOJdZ1MngN5V/g7ZjTVk/CHj0jAojTaHQDt
 Tis4LlN49pRhlRVjigOV7Ac+ZgLRAoY=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
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

While it can be slightly beneficial for the build performance to use
forward declarations instead of includes, the handling of them together
with changes in the included headers makes it unnecessary complicated and
fragile. Just replace them with actual includes since some parts (hwmon,
..) of the kernel even request avoidance of forward declarations and net/
is mostly not using them in *.c file.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_algo.h              | 7 +++----
 net/batman-adv/bat_v.c                 | 3 +--
 net/batman-adv/bat_v_elp.h             | 4 ++--
 net/batman-adv/bat_v_ogm.h             | 3 +--
 net/batman-adv/bridge_loop_avoidance.h | 9 ++++-----
 net/batman-adv/debugfs.h               | 4 ++--
 net/batman-adv/distributed-arp-table.h | 7 +++----
 net/batman-adv/fragmentation.h         | 3 +--
 net/batman-adv/gateway_client.h        | 9 ++++-----
 net/batman-adv/gateway_common.h        | 3 +--
 net/batman-adv/hard-interface.h        | 5 ++---
 net/batman-adv/hash.h                  | 3 +--
 net/batman-adv/icmp_socket.h           | 3 +--
 net/batman-adv/main.h                  | 9 ++++-----
 net/batman-adv/multicast.h             | 6 +++---
 net/batman-adv/netlink.c               | 3 +--
 net/batman-adv/netlink.h               | 3 +--
 net/batman-adv/network-coding.h        | 9 ++++-----
 net/batman-adv/originator.h            | 7 +++----
 net/batman-adv/routing.h               | 3 +--
 net/batman-adv/send.h                  | 3 +--
 net/batman-adv/soft-interface.c        | 1 +
 net/batman-adv/soft-interface.h        | 7 +++----
 net/batman-adv/sysfs.h                 | 5 ++---
 net/batman-adv/tp_meter.h              | 3 +--
 net/batman-adv/translation-table.h     | 9 ++++-----
 net/batman-adv/tvlv.h                  | 3 +--
 net/batman-adv/types.h                 | 6 ++++--
 28 files changed, 60 insertions(+), 80 deletions(-)

diff --git a/net/batman-adv/bat_algo.h b/net/batman-adv/bat_algo.h
index cb7d57d1..37898da8 100644
--- a/net/batman-adv/bat_algo.h
+++ b/net/batman-adv/bat_algo.h
@@ -9,12 +9,11 @@
 
 #include "main.h"
 
+#include <linux/netlink.h>
+#include <linux/seq_file.h>
+#include <linux/skbuff.h>
 #include <linux/types.h>
 
-struct netlink_callback;
-struct seq_file;
-struct sk_buff;
-
 extern char batadv_routing_algo[];
 extern struct list_head batadv_hardif_list;
 
diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index 231b4aab..22672cb3 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -21,6 +21,7 @@
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
 #include <linux/seq_file.h>
+#include <linux/skbuff.h>
 #include <linux/spinlock.h>
 #include <linux/stddef.h>
 #include <linux/types.h>
@@ -41,8 +42,6 @@
 #include "netlink.h"
 #include "originator.h"
 
-struct sk_buff;
-
 static void batadv_v_iface_activate(struct batadv_hard_iface *hard_iface)
 {
 	struct batadv_priv *bat_priv = netdev_priv(hard_iface->soft_iface);
diff --git a/net/batman-adv/bat_v_elp.h b/net/batman-adv/bat_v_elp.h
index bb3d40f7..1a29505f 100644
--- a/net/batman-adv/bat_v_elp.h
+++ b/net/batman-adv/bat_v_elp.h
@@ -9,8 +9,8 @@
 
 #include "main.h"
 
-struct sk_buff;
-struct work_struct;
+#include <linux/skbuff.h>
+#include <linux/workqueue.h>
 
 int batadv_v_elp_iface_enable(struct batadv_hard_iface *hard_iface);
 void batadv_v_elp_iface_disable(struct batadv_hard_iface *hard_iface);
diff --git a/net/batman-adv/bat_v_ogm.h b/net/batman-adv/bat_v_ogm.h
index 616bf2ea..2a50df7f 100644
--- a/net/batman-adv/bat_v_ogm.h
+++ b/net/batman-adv/bat_v_ogm.h
@@ -9,10 +9,9 @@
 
 #include "main.h"
 
+#include <linux/skbuff.h>
 #include <linux/types.h>
 
-struct sk_buff;
-
 int batadv_v_ogm_init(struct batadv_priv *bat_priv);
 void batadv_v_ogm_free(struct batadv_priv *bat_priv);
 int batadv_v_ogm_iface_enable(struct batadv_hard_iface *hard_iface);
diff --git a/net/batman-adv/bridge_loop_avoidance.h b/net/batman-adv/bridge_loop_avoidance.h
index 012d72c8..02b24a86 100644
--- a/net/batman-adv/bridge_loop_avoidance.h
+++ b/net/batman-adv/bridge_loop_avoidance.h
@@ -10,14 +10,13 @@
 #include "main.h"
 
 #include <linux/compiler.h>
+#include <linux/netdevice.h>
+#include <linux/netlink.h>
+#include <linux/seq_file.h>
+#include <linux/skbuff.h>
 #include <linux/stddef.h>
 #include <linux/types.h>
 
-struct net_device;
-struct netlink_callback;
-struct seq_file;
-struct sk_buff;
-
 /**
  * batadv_bla_is_loopdetect_mac() - check if the mac address is from a loop
  *  detect frame sent by bridge loop avoidance
diff --git a/net/batman-adv/debugfs.h b/net/batman-adv/debugfs.h
index 7fac680c..ed334319 100644
--- a/net/batman-adv/debugfs.h
+++ b/net/batman-adv/debugfs.h
@@ -9,8 +9,8 @@
 
 #include "main.h"
 
-struct file;
-struct net_device;
+#include <linux/fs.h>
+#include <linux/netdevice.h>
 
 #define BATADV_DEBUGFS_SUBDIR "batman_adv"
 
diff --git a/net/batman-adv/distributed-arp-table.h b/net/batman-adv/distributed-arp-table.h
index 110c2744..67c7729a 100644
--- a/net/batman-adv/distributed-arp-table.h
+++ b/net/batman-adv/distributed-arp-table.h
@@ -11,15 +11,14 @@
 
 #include <linux/compiler.h>
 #include <linux/netdevice.h>
+#include <linux/netlink.h>
+#include <linux/seq_file.h>
+#include <linux/skbuff.h>
 #include <linux/types.h>
 #include <uapi/linux/batadv_packet.h>
 
 #include "originator.h"
 
-struct netlink_callback;
-struct seq_file;
-struct sk_buff;
-
 #ifdef CONFIG_BATMAN_ADV_DAT
 
 /* BATADV_DAT_ADDR_MAX - maximum address value in the DHT space */
diff --git a/net/batman-adv/fragmentation.h b/net/batman-adv/fragmentation.h
index d6074ba2..abfe8c65 100644
--- a/net/batman-adv/fragmentation.h
+++ b/net/batman-adv/fragmentation.h
@@ -11,11 +11,10 @@
 
 #include <linux/compiler.h>
 #include <linux/list.h>
+#include <linux/skbuff.h>
 #include <linux/stddef.h>
 #include <linux/types.h>
 
-struct sk_buff;
-
 void batadv_frag_purge_orig(struct batadv_orig_node *orig,
 			    bool (*check_cb)(struct batadv_frag_table_entry *));
 bool batadv_frag_skb_fwd(struct sk_buff *skb,
diff --git a/net/batman-adv/gateway_client.h b/net/batman-adv/gateway_client.h
index 0e14026f..0be8e717 100644
--- a/net/batman-adv/gateway_client.h
+++ b/net/batman-adv/gateway_client.h
@@ -9,12 +9,11 @@
 
 #include "main.h"
 
+#include <linux/netlink.h>
+#include <linux/seq_file.h>
+#include <linux/skbuff.h>
 #include <linux/types.h>
-
-struct batadv_tvlv_gateway_data;
-struct netlink_callback;
-struct seq_file;
-struct sk_buff;
+#include <uapi/linux/batadv_packet.h>
 
 void batadv_gw_check_client_stop(struct batadv_priv *bat_priv);
 void batadv_gw_reselect(struct batadv_priv *bat_priv);
diff --git a/net/batman-adv/gateway_common.h b/net/batman-adv/gateway_common.h
index 5cf50736..211b14b3 100644
--- a/net/batman-adv/gateway_common.h
+++ b/net/batman-adv/gateway_common.h
@@ -9,10 +9,9 @@
 
 #include "main.h"
 
+#include <linux/netdevice.h>
 #include <linux/types.h>
 
-struct net_device;
-
 /**
  * enum batadv_bandwidth_units - bandwidth unit types
  */
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interface.h
index c8ef6aa0..bbb8a6f1 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -11,13 +11,12 @@
 
 #include <linux/compiler.h>
 #include <linux/kref.h>
+#include <linux/netdevice.h>
 #include <linux/notifier.h>
 #include <linux/rcupdate.h>
 #include <linux/stddef.h>
 #include <linux/types.h>
-
-struct net_device;
-struct net;
+#include <net/net_namespace.h>
 
 /**
  * enum batadv_hard_if_state - State of a hard interface
diff --git a/net/batman-adv/hash.h b/net/batman-adv/hash.h
index ceef171f..57877f0b 100644
--- a/net/batman-adv/hash.h
+++ b/net/batman-adv/hash.h
@@ -12,13 +12,12 @@
 #include <linux/atomic.h>
 #include <linux/compiler.h>
 #include <linux/list.h>
+#include <linux/lockdep.h>
 #include <linux/rculist.h>
 #include <linux/spinlock.h>
 #include <linux/stddef.h>
 #include <linux/types.h>
 
-struct lock_class_key;
-
 /* callback to a compare function.  should compare 2 element datas for their
  * keys
  *
diff --git a/net/batman-adv/icmp_socket.h b/net/batman-adv/icmp_socket.h
index 35eecbfd..1fc0b0de 100644
--- a/net/batman-adv/icmp_socket.h
+++ b/net/batman-adv/icmp_socket.h
@@ -10,8 +10,7 @@
 #include "main.h"
 
 #include <linux/types.h>
-
-struct batadv_icmp_header;
+#include <uapi/linux/batadv_packet.h>
 
 #define BATADV_ICMP_SOCKET "socket"
 
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 821a7de4..3d4c04d8 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -210,16 +210,15 @@ enum batadv_uev_type {
 #include <linux/etherdevice.h>
 #include <linux/if_vlan.h>
 #include <linux/jiffies.h>
+#include <linux/netdevice.h>
 #include <linux/percpu.h>
+#include <linux/seq_file.h>
+#include <linux/skbuff.h>
 #include <linux/types.h>
 #include <uapi/linux/batadv_packet.h>
 
 #include "types.h"
-
-struct net_device;
-struct packet_type;
-struct seq_file;
-struct sk_buff;
+#include "main.h"
 
 /**
  * batadv_print_vid() - return printable version of vid information
diff --git a/net/batman-adv/multicast.h b/net/batman-adv/multicast.h
index 653b9b76..5d9e2bb2 100644
--- a/net/batman-adv/multicast.h
+++ b/net/batman-adv/multicast.h
@@ -9,9 +9,9 @@
 
 #include "main.h"
 
-struct netlink_callback;
-struct seq_file;
-struct sk_buff;
+#include <linux/netlink.h>
+#include <linux/seq_file.h>
+#include <linux/skbuff.h>
 
 /**
  * enum batadv_forw_mode - the way a packet should be forwarded as
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index 7253699c..6f08fd12 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -31,6 +31,7 @@
 #include <linux/stddef.h>
 #include <linux/types.h>
 #include <net/genetlink.h>
+#include <net/net_namespace.h>
 #include <net/netlink.h>
 #include <net/sock.h>
 #include <uapi/linux/batadv_packet.h>
@@ -50,8 +51,6 @@
 #include "tp_meter.h"
 #include "translation-table.h"
 
-struct net;
-
 struct genl_family batadv_netlink_family;
 
 /* multicast groups */
diff --git a/net/batman-adv/netlink.h b/net/batman-adv/netlink.h
index d1e0681b..ddc674e4 100644
--- a/net/batman-adv/netlink.h
+++ b/net/batman-adv/netlink.h
@@ -9,11 +9,10 @@
 
 #include "main.h"
 
+#include <linux/netlink.h>
 #include <linux/types.h>
 #include <net/genetlink.h>
 
-struct nlmsghdr;
-
 void batadv_netlink_register(void);
 void batadv_netlink_unregister(void);
 int batadv_netlink_get_ifindex(const struct nlmsghdr *nlh, int attrtype);
diff --git a/net/batman-adv/network-coding.h b/net/batman-adv/network-coding.h
index 74f56113..4801d089 100644
--- a/net/batman-adv/network-coding.h
+++ b/net/batman-adv/network-coding.h
@@ -9,12 +9,11 @@
 
 #include "main.h"
 
+#include <linux/netdevice.h>
+#include <linux/seq_file.h>
+#include <linux/skbuff.h>
 #include <linux/types.h>
-
-struct batadv_ogm_packet;
-struct net_device;
-struct seq_file;
-struct sk_buff;
+#include <uapi/linux/batadv_packet.h>
 
 #ifdef CONFIG_BATMAN_ADV_NC
 
diff --git a/net/batman-adv/originator.h b/net/batman-adv/originator.h
index 3829e26f..512a1f99 100644
--- a/net/batman-adv/originator.h
+++ b/net/batman-adv/originator.h
@@ -12,12 +12,11 @@
 #include <linux/compiler.h>
 #include <linux/if_ether.h>
 #include <linux/jhash.h>
+#include <linux/netlink.h>
+#include <linux/seq_file.h>
+#include <linux/skbuff.h>
 #include <linux/types.h>
 
-struct netlink_callback;
-struct seq_file;
-struct sk_buff;
-
 bool batadv_compare_orig(const struct hlist_node *node, const void *data2);
 int batadv_originator_init(struct batadv_priv *bat_priv);
 void batadv_originator_free(struct batadv_priv *bat_priv);
diff --git a/net/batman-adv/routing.h b/net/batman-adv/routing.h
index b96c6d06..c20feac9 100644
--- a/net/batman-adv/routing.h
+++ b/net/batman-adv/routing.h
@@ -9,10 +9,9 @@
 
 #include "main.h"
 
+#include <linux/skbuff.h>
 #include <linux/types.h>
 
-struct sk_buff;
-
 bool batadv_check_management_packet(struct sk_buff *skb,
 				    struct batadv_hard_iface *hard_iface,
 				    int header_len);
diff --git a/net/batman-adv/send.h b/net/batman-adv/send.h
index 5921ee4e..5fc0fd1e 100644
--- a/net/batman-adv/send.h
+++ b/net/batman-adv/send.h
@@ -10,12 +10,11 @@
 #include "main.h"
 
 #include <linux/compiler.h>
+#include <linux/skbuff.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
 #include <uapi/linux/batadv_packet.h>
 
-struct sk_buff;
-
 void batadv_forw_packet_free(struct batadv_forw_packet *forw_packet,
 			     bool dropped);
 struct batadv_forw_packet *
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
index a7677e1d..499afbce 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -24,6 +24,7 @@
 #include <linux/list.h>
 #include <linux/lockdep.h>
 #include <linux/netdevice.h>
+#include <linux/netlink.h>
 #include <linux/percpu.h>
 #include <linux/printk.h>
 #include <linux/random.h>
diff --git a/net/batman-adv/soft-interface.h b/net/batman-adv/soft-interface.h
index 275442a7..29139ad7 100644
--- a/net/batman-adv/soft-interface.h
+++ b/net/batman-adv/soft-interface.h
@@ -9,13 +9,12 @@
 
 #include "main.h"
 
+#include <linux/netdevice.h>
+#include <linux/skbuff.h>
 #include <linux/types.h>
+#include <net/net_namespace.h>
 #include <net/rtnetlink.h>
 
-struct net_device;
-struct net;
-struct sk_buff;
-
 int batadv_skb_head_push(struct sk_buff *skb, unsigned int len);
 void batadv_interface_rx(struct net_device *soft_iface,
 			 struct sk_buff *skb, int hdr_size,
diff --git a/net/batman-adv/sysfs.h b/net/batman-adv/sysfs.h
index 83fa808b..5e466093 100644
--- a/net/batman-adv/sysfs.h
+++ b/net/batman-adv/sysfs.h
@@ -9,12 +9,11 @@
 
 #include "main.h"
 
+#include <linux/kobject.h>
+#include <linux/netdevice.h>
 #include <linux/sysfs.h>
 #include <linux/types.h>
 
-struct kobject;
-struct net_device;
-
 #define BATADV_SYSFS_IF_MESH_SUBDIR "mesh"
 #define BATADV_SYSFS_IF_BAT_SUBDIR "batman_adv"
 /**
diff --git a/net/batman-adv/tp_meter.h b/net/batman-adv/tp_meter.h
index 604b3799..78d310da 100644
--- a/net/batman-adv/tp_meter.h
+++ b/net/batman-adv/tp_meter.h
@@ -9,10 +9,9 @@
 
 #include "main.h"
 
+#include <linux/skbuff.h>
 #include <linux/types.h>
 
-struct sk_buff;
-
 void batadv_tp_meter_init(void);
 void batadv_tp_start(struct batadv_priv *bat_priv, const u8 *dst,
 		     u32 test_length, u32 *cookie);
diff --git a/net/batman-adv/translation-table.h b/net/batman-adv/translation-table.h
index c8c48d62..4a98860d 100644
--- a/net/batman-adv/translation-table.h
+++ b/net/batman-adv/translation-table.h
@@ -9,13 +9,12 @@
 
 #include "main.h"
 
+#include <linux/netdevice.h>
+#include <linux/netlink.h>
+#include <linux/seq_file.h>
+#include <linux/skbuff.h>
 #include <linux/types.h>
 
-struct netlink_callback;
-struct net_device;
-struct seq_file;
-struct sk_buff;
-
 int batadv_tt_init(struct batadv_priv *bat_priv);
 bool batadv_tt_local_add(struct net_device *soft_iface, const u8 *addr,
 			 unsigned short vid, int ifindex, u32 mark);
diff --git a/net/batman-adv/tvlv.h b/net/batman-adv/tvlv.h
index 114ac01e..36985000 100644
--- a/net/batman-adv/tvlv.h
+++ b/net/batman-adv/tvlv.h
@@ -10,8 +10,7 @@
 #include "main.h"
 
 #include <linux/types.h>
-
-struct batadv_ogm_packet;
+#include <uapi/linux/batadv_packet.h>
 
 void batadv_tvlv_container_register(struct batadv_priv *bat_priv,
 				    u8 type, u8 version,
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 74b64473..581f93c0 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -14,20 +14,22 @@
 #include <linux/average.h>
 #include <linux/bitops.h>
 #include <linux/compiler.h>
+#include <linux/if.h>
 #include <linux/if_ether.h>
 #include <linux/kref.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/sched.h> /* for linux/wait.h */
+#include <linux/seq_file.h>
+#include <linux/skbuff.h>
 #include <linux/spinlock.h>
+#include <linux/timer.h>
 #include <linux/types.h>
 #include <linux/wait.h>
 #include <linux/workqueue.h>
 #include <uapi/linux/batadv_packet.h>
 #include <uapi/linux/batman_adv.h>
 
-struct seq_file;
-
 #ifdef CONFIG_BATMAN_ADV_DAT
 
 /**
-- 
2.20.1

