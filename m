Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 546D42A18FF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 31 Oct 2020 18:38:49 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 062E280D2F;
	Sat, 31 Oct 2020 18:38:48 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8696E802C9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Oct 2020 18:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1604165925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vUg2c5mrFP0hI3CA1Y1ZFQLrCuXueF+qoL/Q4N3BtSw=;
	b=WfbMbfBgsaHNcJEhuFHjqnbXu00cDdw9Io5vqMiQsyvcO2gT7M08UJSLKoHWOfdvsWKGI3
	7SPg1Ykt4TbxDrsqhj0iu4yRcfdgpA12TPNjGpIgoHxZNkVhPjuVhRzeGFMtb1K5ZsMI3L
	ZF5+gGnQDvoIm3Fn+Sh3+PE3pJoLPgo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/3] batman-adv: Drop deprecated sysfs support
Date: Sat, 31 Oct 2020 18:38:14 +0100
Message-Id: <20201031173816.108427-1-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604165926; a=rsa-sha256;
	cv=none;
	b=ZwxBnZ1IKH7B+Ual6ZASrCICIA6sAjVTk9J6NvBEAb7tbeYuE22COCAzag2p9QhcJNAR6X
	mD2HMQk/TDYaw+99xrhKoJaZJ1QSyYWaHeKtaCl6cOmfTaH6gZmKFrmLHBRbPhUgdCxPOO
	tXPaTAbYL7fjrK/SzinkG6xhGHQJ+rg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=WfbMbfBg;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604165926;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=vUg2c5mrFP0hI3CA1Y1ZFQLrCuXueF+qoL/Q4N3BtSw=;
	b=LKuC4pZYc4RkqVZVEdxzr9oQ5tvLlsLfZ8J1nyTkwOxY2dUD/J6wK/GSqu02HrMHM3jEhf
	SrnBjxftI3AL/htVAW62YCVw78BTNT0EK4859oXoDdugX+roilcCCl0L8H5rvXCFPV3PSX
	CdHO/JIhrcLdY7nzRQKx/XN1TxTeomo=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XNGOHAI2HIAKMRXTMLCDK6X25Z7I672D
X-Message-ID-Hash: XNGOHAI2HIAKMRXTMLCDK6X25Z7I672D
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XNGOHAI2HIAKMRXTMLCDK6X25Z7I672D/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The sysfs in batman-adv support was marked as deprecated by the commit
ec3d75284c09 ("batman-adv: ABI: Mark sysfs files as deprecated") and
scheduled for removal in 2021.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 .../ABI/obsolete/sysfs-class-net-batman-adv   |   32 -
 .../ABI/obsolete/sysfs-class-net-mesh         |  110 --
 MAINTAINERS                                   |    2 -
 Makefile                                      |    3 -
 README.external.rst                           |    1 -
 gen-compat-autoconf.sh                        |    1 -
 net/batman-adv/Kconfig                        |   11 -
 net/batman-adv/Makefile                       |    1 -
 net/batman-adv/bat_v.c                        |    9 -
 net/batman-adv/hard-interface.c               |   16 +-
 net/batman-adv/hard-interface.h               |    6 -
 net/batman-adv/soft-interface.c               |   52 -
 net/batman-adv/soft-interface.h               |    1 -
 net/batman-adv/sysfs.c                        | 1272 -----------------
 net/batman-adv/sysfs.h                        |   93 --
 net/batman-adv/types.h                        |   30 -
 16 files changed, 1 insertion(+), 1639 deletions(-)
 delete mode 100644 Documentation/ABI/obsolete/sysfs-class-net-batman-adv
 delete mode 100644 Documentation/ABI/obsolete/sysfs-class-net-mesh
 delete mode 100644 net/batman-adv/sysfs.c
 delete mode 100644 net/batman-adv/sysfs.h

diff --git a/Documentation/ABI/obsolete/sysfs-class-net-batman-adv b/Docu=
mentation/ABI/obsolete/sysfs-class-net-batman-adv
deleted file mode 100644
index 5bdbc8d4..00000000
--- a/Documentation/ABI/obsolete/sysfs-class-net-batman-adv
+++ /dev/null
@@ -1,32 +0,0 @@
-This ABI is deprecated and will be removed after 2021. It is
-replaced with the batadv generic netlink family.
-
-What:           /sys/class/net/<iface>/batman-adv/elp_interval
-Date:           Feb 2014
-Contact:        Linus L=C3=BCssing <linus.luessing@web.de>
-Description:
-                Defines the interval in milliseconds in which batman
-                emits probing packets for neighbor sensing (ELP).
-
-What:           /sys/class/net/<iface>/batman-adv/iface_status
-Date:           May 2010
-Contact:        Marek Lindner <mareklindner@neomailbox.ch>
-Description:
-                Indicates the status of <iface> as it is seen by batman.
-
-What:           /sys/class/net/<iface>/batman-adv/mesh_iface
-Date:           May 2010
-Contact:        Marek Lindner <mareklindner@neomailbox.ch>
-Description:
-                The /sys/class/net/<iface>/batman-adv/mesh_iface file
-                displays the batman mesh interface this <iface>
-                currently is associated with.
-
-What:           /sys/class/net/<iface>/batman-adv/throughput_override
-Date:           Feb 2014
-Contact:        Antonio Quartulli <a@unstable.cc>
-description:
-                Defines the throughput value to be used by B.A.T.M.A.N. =
V
-                when estimating the link throughput using this interface=
.
-                If the value is set to 0 then batman-adv will try to
-                estimate the throughput by itself.
diff --git a/Documentation/ABI/obsolete/sysfs-class-net-mesh b/Documentat=
ion/ABI/obsolete/sysfs-class-net-mesh
deleted file mode 100644
index 04c1a293..00000000
--- a/Documentation/ABI/obsolete/sysfs-class-net-mesh
+++ /dev/null
@@ -1,110 +0,0 @@
-This ABI is deprecated and will be removed after 2021. It is
-replaced with the batadv generic netlink family.
-
-What:           /sys/class/net/<mesh_iface>/mesh/aggregated_ogms
-Date:           May 2010
-Contact:        Marek Lindner <mareklindner@neomailbox.ch>
-Description:
-                Indicates whether the batman protocol messages of the
-                mesh <mesh_iface> shall be aggregated or not.
-
-What:           /sys/class/net/<mesh_iface>/mesh/<vlan_subdir>/ap_isolat=
ion
-Date:           May 2011
-Contact:        Antonio Quartulli <a@unstable.cc>
-Description:
-                Indicates whether the data traffic going from a
-                wireless client to another wireless client will be
-                silently dropped. <vlan_subdir> is empty when referring
-		to the untagged lan.
-
-What:           /sys/class/net/<mesh_iface>/mesh/bonding
-Date:           June 2010
-Contact:        Simon Wunderlich <sw@simonwunderlich.de>
-Description:
-                Indicates whether the data traffic going through the
-                mesh will be sent using multiple interfaces at the
-                same time (if available).
-
-What:           /sys/class/net/<mesh_iface>/mesh/bridge_loop_avoidance
-Date:           November 2011
-Contact:        Simon Wunderlich <sw@simonwunderlich.de>
-Description:
-                Indicates whether the bridge loop avoidance feature
-                is enabled. This feature detects and avoids loops
-                between the mesh and devices bridged with the soft
-                interface <mesh_iface>.
-
-What:           /sys/class/net/<mesh_iface>/mesh/fragmentation
-Date:           October 2010
-Contact:        Andreas Langer <an.langer@gmx.de>
-Description:
-                Indicates whether the data traffic going through the
-                mesh will be fragmented or silently discarded if the
-                packet size exceeds the outgoing interface MTU.
-
-What:           /sys/class/net/<mesh_iface>/mesh/gw_bandwidth
-Date:           October 2010
-Contact:        Marek Lindner <mareklindner@neomailbox.ch>
-Description:
-                Defines the bandwidth which is propagated by this
-                node if gw_mode was set to 'server'.
-
-What:           /sys/class/net/<mesh_iface>/mesh/gw_mode
-Date:           October 2010
-Contact:        Marek Lindner <mareklindner@neomailbox.ch>
-Description:
-                Defines the state of the gateway features. Can be
-                either 'off', 'client' or 'server'.
-
-What:           /sys/class/net/<mesh_iface>/mesh/gw_sel_class
-Date:           October 2010
-Contact:        Marek Lindner <mareklindner@neomailbox.ch>
-Description:
-                Defines the selection criteria this node will use
-                to choose a gateway if gw_mode was set to 'client'.
-
-What:           /sys/class/net/<mesh_iface>/mesh/hop_penalty
-Date:           Oct 2010
-Contact:        Linus L=C3=BCssing <linus.luessing@web.de>
-Description:
-                Defines the penalty which will be applied to an
-                originator message's tq-field on every hop.
-
-What:		/sys/class/net/<mesh_iface>/mesh/isolation_mark
-Date:		Nov 2013
-Contact:	Antonio Quartulli <a@unstable.cc>
-Description:
-		Defines the isolation mark (and its bitmask) which
-		is used to classify clients as "isolated" by the
-		Extended Isolation feature.
-
-What:           /sys/class/net/<mesh_iface>/mesh/multicast_mode
-Date:           Feb 2014
-Contact:        Linus L=C3=BCssing <linus.luessing@web.de>
-Description:
-                Indicates whether multicast optimizations are enabled
-                or disabled. If set to zero then all nodes in the
-                mesh are going to use classic flooding for any
-                multicast packet with no optimizations.
-
-What:           /sys/class/net/<mesh_iface>/mesh/network_coding
-Date:           Nov 2012
-Contact:        Martin Hundeboll <martin@hundeboll.net>
-Description:
-                Controls whether Network Coding (using some magic
-                to send fewer wifi packets but still the same
-                content) is enabled or not.
-
-What:           /sys/class/net/<mesh_iface>/mesh/orig_interval
-Date:           May 2010
-Contact:        Marek Lindner <mareklindner@neomailbox.ch>
-Description:
-                Defines the interval in milliseconds in which batman
-                sends its protocol messages.
-
-What:           /sys/class/net/<mesh_iface>/mesh/routing_algo
-Date:           Dec 2011
-Contact:        Marek Lindner <mareklindner@neomailbox.ch>
-Description:
-                Defines the routing procotol this mesh instance
-                uses to find the optimal paths through the mesh.
diff --git a/MAINTAINERS b/MAINTAINERS
index 3748b727..967f575f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10,8 +10,6 @@ Q:	https://patchwork.open-mesh.org/project/batman/list/
 B:	https://www.open-mesh.org/projects/batman-adv/issues
 C:	irc://chat.freenode.net/batman
 T:	git https://git.open-mesh.org/linux-merge.git
-F:	Documentation/ABI/obsolete/sysfs-class-net-batman-adv
-F:	Documentation/ABI/obsolete/sysfs-class-net-mesh
 F:	Documentation/networking/batman-adv.rst
 F:	include/uapi/linux/batadv_packet.h
 F:	include/uapi/linux/batman_adv.h
diff --git a/Makefile b/Makefile
index afdbc03c..5dfed62a 100644
--- a/Makefile
+++ b/Makefile
@@ -18,8 +18,6 @@ export CONFIG_BATMAN_ADV_DEBUGFS=3Dn
 export CONFIG_BATMAN_ADV_MCAST=3Dy
 # B.A.T.M.A.N network coding (catwoman):
 export CONFIG_BATMAN_ADV_NC=3Dn
-# B.A.T.M.A.N. sysfs support:
-export CONFIG_BATMAN_ADV_SYSFS=3Dn
 # B.A.T.M.A.N. tracing support:
 export CONFIG_BATMAN_ADV_TRACING=3Dn
=20
@@ -65,7 +63,6 @@ BUILD_FLAGS :=3D \
 	CONFIG_BATMAN_ADV_DAT=3D$(CONFIG_BATMAN_ADV_DAT) \
 	CONFIG_BATMAN_ADV_NC=3D$(CONFIG_BATMAN_ADV_NC) \
 	CONFIG_BATMAN_ADV_MCAST=3D$(CONFIG_BATMAN_ADV_MCAST) \
-	CONFIG_BATMAN_ADV_SYSFS=3D$(CONFIG_BATMAN_ADV_SYSFS) \
 	CONFIG_BATMAN_ADV_TRACING=3D$(CONFIG_BATMAN_ADV_TRACING) \
 	CONFIG_BATMAN_ADV_BATMAN_V=3D$(CONFIG_BATMAN_ADV_BATMAN_V) \
 	INSTALL_MOD_DIR=3Dupdates/
diff --git a/README.external.rst b/README.external.rst
index 328cdcfa..bb067c1b 100644
--- a/README.external.rst
+++ b/README.external.rst
@@ -50,7 +50,6 @@ module).  Available  options  and  their    possible   =
values are
  * ``CONFIG_BATMAN_ADV_DEBUGFS=3D[y|n*]`` (B.A.T.M.A.N. debugfs entries)
  * ``CONFIG_BATMAN_ADV_MCAST=3D[y*|n]`` (B.A.T.M.A.N. multicast optimiza=
tions)
  * ``CONFIG_BATMAN_ADV_NC=3D[y|n*]`` (B.A.T.M.A.N. Network Coding)
- * ``CONFIG_BATMAN_ADV_SYSFS=3D[y|n*]`` (B.A.T.M.A.N. sysfs support)
  * ``CONFIG_BATMAN_ADV_TRACING=3D[y|n*]`` (B.A.T.M.A.N. tracing support)
=20
 e.g., debugging can be enabled by::
diff --git a/gen-compat-autoconf.sh b/gen-compat-autoconf.sh
index 0f95d140..126de947 100755
--- a/gen-compat-autoconf.sh
+++ b/gen-compat-autoconf.sh
@@ -47,7 +47,6 @@ gen_config 'CONFIG_BATMAN_ADV_DEBUG' ${CONFIG_BATMAN_AD=
V_DEBUG:=3D"n"} >> "${TMP}"
 gen_config 'CONFIG_BATMAN_ADV_DEBUGFS' ${CONFIG_BATMAN_ADV_DEBUGFS:=3D"n=
"} >> "${TMP}"
 gen_config 'CONFIG_BATMAN_ADV_MCAST' ${CONFIG_BATMAN_ADV_MCAST:=3D"y"} >=
> "${TMP}"
 gen_config 'CONFIG_BATMAN_ADV_NC' ${CONFIG_BATMAN_ADV_NC:=3D"n"} >> "${T=
MP}"
-gen_config 'CONFIG_BATMAN_ADV_SYSFS' ${CONFIG_BATMAN_ADV_SYSFS:=3D"n"} >=
> "${TMP}"
 gen_config 'CONFIG_BATMAN_ADV_TRACING' ${CONFIG_BATMAN_ADV_TRACING:=3D"n=
"} >> "${TMP}"
=20
 # only regenerate compat-autoconf.h when config was changed
diff --git a/net/batman-adv/Kconfig b/net/batman-adv/Kconfig
index c762758a..84bbf72b 100644
--- a/net/batman-adv/Kconfig
+++ b/net/batman-adv/Kconfig
@@ -97,17 +97,6 @@ config BATMAN_ADV_DEBUG
 	  buffer. The output is controlled via the batadv netdev specific
 	  log_level setting.
=20
-config BATMAN_ADV_SYSFS
-	bool "batman-adv sysfs entries"
-	depends on BATMAN_ADV
-	help
-	  Say Y here if you want to enable batman-adv device configuration and
-	  status interface through sysfs attributes. It is replaced by the
-	  batadv generic netlink family but still used by various userspace
-	  tools and scripts.
-
-	  If unsure, say Y.
-
 config BATMAN_ADV_TRACING
 	bool "B.A.T.M.A.N. tracing support"
 	depends on BATMAN_ADV
diff --git a/net/batman-adv/Makefile b/net/batman-adv/Makefile
index daa49af7..306615ca 100644
--- a/net/batman-adv/Makefile
+++ b/net/batman-adv/Makefile
@@ -28,7 +28,6 @@ batman-adv-y +=3D originator.o
 batman-adv-y +=3D routing.o
 batman-adv-y +=3D send.o
 batman-adv-y +=3D soft-interface.o
-batman-adv-$(CONFIG_BATMAN_ADV_SYSFS) +=3D sysfs.o
 batman-adv-$(CONFIG_BATMAN_ADV_TRACING) +=3D trace.o
 batman-adv-y +=3D tp_meter.o
 batman-adv-y +=3D translation-table.o
diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index e91d2c07..ee7a95aa 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -13,7 +13,6 @@
 #include <linux/if_ether.h>
 #include <linux/init.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/minmax.h>
@@ -686,13 +685,6 @@ static ssize_t batadv_v_store_sel_class(struct batad=
v_priv *bat_priv,
 	return count;
 }
=20
-static ssize_t batadv_v_show_sel_class(struct batadv_priv *bat_priv, cha=
r *buff)
-{
-	u32 class =3D atomic_read(&bat_priv->gw.sel_class);
-
-	return sprintf(buff, "%u.%u MBit\n", class / 10, class % 10);
-}
-
 /**
  * batadv_v_gw_throughput_get() - retrieve the GW-bandwidth for a given =
GW
  * @gw_node: the GW to retrieve the metric for
@@ -1061,7 +1053,6 @@ static struct batadv_algo_ops batadv_batman_v __rea=
d_mostly =3D {
 	.gw =3D {
 		.init_sel_class =3D batadv_v_init_sel_class,
 		.store_sel_class =3D batadv_v_store_sel_class,
-		.show_sel_class =3D batadv_v_show_sel_class,
 		.get_best_gw_node =3D batadv_v_gw_get_best_gw_node,
 		.is_eligible =3D batadv_v_gw_is_eligible,
 #ifdef CONFIG_BATMAN_ADV_DEBUGFS
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index a28fb9ab..d3546790 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -39,7 +39,6 @@
 #include "originator.h"
 #include "send.h"
 #include "soft-interface.h"
-#include "sysfs.h"
 #include "translation-table.h"
=20
 /**
@@ -886,13 +885,9 @@ void batadv_hardif_disable_interface(struct batadv_h=
ard_iface *hard_iface,
 	batadv_hardif_recalc_extra_skbroom(hard_iface->soft_iface);
=20
 	/* nobody uses this interface anymore */
-	if (batadv_hardif_cnt(hard_iface->soft_iface) <=3D 1) {
+	if (batadv_hardif_cnt(hard_iface->soft_iface) <=3D 1)
 		batadv_gw_check_client_stop(bat_priv);
=20
-		if (autodel =3D=3D BATADV_IF_CLEANUP_AUTO)
-			batadv_softif_destroy_sysfs(hard_iface->soft_iface);
-	}
-
 	hard_iface->soft_iface =3D NULL;
 	batadv_hardif_put(hard_iface);
=20
@@ -905,7 +900,6 @@ static struct batadv_hard_iface *
 batadv_hardif_add_interface(struct net_device *net_dev)
 {
 	struct batadv_hard_iface *hard_iface;
-	int ret;
=20
 	ASSERT_RTNL();
=20
@@ -918,10 +912,6 @@ batadv_hardif_add_interface(struct net_device *net_d=
ev)
 	if (!hard_iface)
 		goto release_dev;
=20
-	ret =3D batadv_sysfs_add_hardif(&hard_iface->hardif_obj, net_dev);
-	if (ret)
-		goto free_if;
-
 	hard_iface->net_dev =3D net_dev;
 	hard_iface->soft_iface =3D NULL;
 	hard_iface->if_status =3D BATADV_IF_NOT_IN_USE;
@@ -951,8 +941,6 @@ batadv_hardif_add_interface(struct net_device *net_de=
v)
=20
 	return hard_iface;
=20
-free_if:
-	kfree(hard_iface);
 release_dev:
 	dev_put(net_dev);
 out:
@@ -973,7 +961,6 @@ static void batadv_hardif_remove_interface(struct bat=
adv_hard_iface *hard_iface)
=20
 	hard_iface->if_status =3D BATADV_IF_TO_BE_REMOVED;
 	batadv_debugfs_del_hardif(hard_iface);
-	batadv_sysfs_del_hardif(&hard_iface->hardif_obj);
 	batadv_hardif_put(hard_iface);
 }
=20
@@ -991,7 +978,6 @@ static int batadv_hard_if_event_softif(unsigned long =
event,
=20
 	switch (event) {
 	case NETDEV_REGISTER:
-		batadv_sysfs_add_meshif(net_dev);
 		bat_priv =3D netdev_priv(net_dev);
 		batadv_softif_create_vlan(bat_priv, BATADV_NO_FLAGS);
 		break;
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interf=
ace.h
index b1855d9d..1ee45b61 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -42,12 +42,6 @@ enum batadv_hard_if_state {
=20
 	/** @BATADV_IF_TO_BE_ACTIVATED: interface is getting activated */
 	BATADV_IF_TO_BE_ACTIVATED,
-
-	/**
-	 * @BATADV_IF_I_WANT_YOU: interface is queued up (using sysfs) for bein=
g
-	 * added as slave interface of a batman-adv soft interface
-	 */
-	BATADV_IF_I_WANT_YOU,
 };
=20
 /**
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 82e7ca88..33448a73 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -30,7 +30,6 @@
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/rtnetlink.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/socket.h>
@@ -51,7 +50,6 @@
 #include "network-coding.h"
 #include "originator.h"
 #include "send.h"
-#include "sysfs.h"
 #include "translation-table.h"
=20
 /**
@@ -574,7 +572,6 @@ struct batadv_softif_vlan *batadv_softif_vlan_get(str=
uct batadv_priv *bat_priv,
 int batadv_softif_create_vlan(struct batadv_priv *bat_priv, unsigned sho=
rt vid)
 {
 	struct batadv_softif_vlan *vlan;
-	int err;
=20
 	spin_lock_bh(&bat_priv->softif_vlan_list_lock);
=20
@@ -601,19 +598,6 @@ int batadv_softif_create_vlan(struct batadv_priv *ba=
t_priv, unsigned short vid)
 	hlist_add_head_rcu(&vlan->list, &bat_priv->softif_vlan_list);
 	spin_unlock_bh(&bat_priv->softif_vlan_list_lock);
=20
-	/* batadv_sysfs_add_vlan cannot be in the spinlock section due to the
-	 * sleeping behavior of the sysfs functions and the fs_reclaim lock
-	 */
-	err =3D batadv_sysfs_add_vlan(bat_priv->soft_iface, vlan);
-	if (err) {
-		/* ref for the function */
-		batadv_softif_vlan_put(vlan);
-
-		/* ref for the list */
-		batadv_softif_vlan_put(vlan);
-		return err;
-	}
-
 	/* add a new TT local entry. This one will be marked with the NOPURGE
 	 * flag
 	 */
@@ -641,7 +625,6 @@ static void batadv_softif_destroy_vlan(struct batadv_=
priv *bat_priv,
 	batadv_tt_local_remove(bat_priv, bat_priv->soft_iface->dev_addr,
 			       vlan->vid, "vlan interface destroyed", false);
=20
-	batadv_sysfs_del_vlan(bat_priv, vlan);
 	batadv_softif_vlan_put(vlan);
 }
=20
@@ -661,7 +644,6 @@ static int batadv_interface_add_vid(struct net_device=
 *dev, __be16 proto,
 {
 	struct batadv_priv *bat_priv =3D netdev_priv(dev);
 	struct batadv_softif_vlan *vlan;
-	int ret;
=20
 	/* only 802.1Q vlans are supported.
 	 * batman-adv does not know how to handle other types
@@ -681,17 +663,6 @@ static int batadv_interface_add_vid(struct net_devic=
e *dev, __be16 proto,
 	if (!vlan)
 		return batadv_softif_create_vlan(bat_priv, vid);
=20
-	/* recreate the sysfs object if it was already destroyed (and it should
-	 * be since we received a kill_vid() for this vlan
-	 */
-	if (!vlan->kobj) {
-		ret =3D batadv_sysfs_add_vlan(bat_priv->soft_iface, vlan);
-		if (ret) {
-			batadv_softif_vlan_put(vlan);
-			return ret;
-		}
-	}
-
 	/* add a new TT local entry. This one will be marked with the NOPURGE
 	 * flag. This must be added again, even if the vlan object already
 	 * exists, because the entry was deleted by kill_vid()
@@ -1105,28 +1076,6 @@ struct net_device *batadv_softif_create(struct net=
 *net, const char *name)
 	return soft_iface;
 }
=20
-/**
- * batadv_softif_destroy_sysfs() - deletion of batadv_soft_interface via=
 sysfs
- * @soft_iface: the to-be-removed batman-adv interface
- */
-void batadv_softif_destroy_sysfs(struct net_device *soft_iface)
-{
-	struct batadv_priv *bat_priv =3D netdev_priv(soft_iface);
-	struct batadv_softif_vlan *vlan;
-
-	ASSERT_RTNL();
-
-	/* destroy the "untagged" VLAN */
-	vlan =3D batadv_softif_vlan_get(bat_priv, BATADV_NO_FLAGS);
-	if (vlan) {
-		batadv_softif_destroy_vlan(bat_priv, vlan);
-		batadv_softif_vlan_put(vlan);
-	}
-
-	batadv_sysfs_del_meshif(soft_iface);
-	unregister_netdevice(soft_iface);
-}
-
 /**
  * batadv_softif_destroy_netlink() - deletion of batadv_soft_interface v=
ia
  *  netlink
@@ -1153,7 +1102,6 @@ static void batadv_softif_destroy_netlink(struct ne=
t_device *soft_iface,
 		batadv_softif_vlan_put(vlan);
 	}
=20
-	batadv_sysfs_del_meshif(soft_iface);
 	unregister_netdevice_queue(soft_iface, head);
 }
=20
diff --git a/net/batman-adv/soft-interface.h b/net/batman-adv/soft-interf=
ace.h
index 534e08d6..74716d9c 100644
--- a/net/batman-adv/soft-interface.h
+++ b/net/batman-adv/soft-interface.h
@@ -20,7 +20,6 @@ void batadv_interface_rx(struct net_device *soft_iface,
 			 struct sk_buff *skb, int hdr_size,
 			 struct batadv_orig_node *orig_node);
 struct net_device *batadv_softif_create(struct net *net, const char *nam=
e);
-void batadv_softif_destroy_sysfs(struct net_device *soft_iface);
 bool batadv_softif_is_valid(const struct net_device *net_dev);
 extern struct rtnl_link_ops batadv_link_ops;
 int batadv_softif_create_vlan(struct batadv_priv *bat_priv, unsigned sho=
rt vid);
diff --git a/net/batman-adv/sysfs.c b/net/batman-adv/sysfs.c
deleted file mode 100644
index 0f962dcd..00000000
--- a/net/batman-adv/sysfs.c
+++ /dev/null
@@ -1,1272 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2010-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner
- */
-
-#include "sysfs.h"
-#include "main.h"
-
-#include <asm/current.h>
-#include <linux/atomic.h>
-#include <linux/compiler.h>
-#include <linux/device.h>
-#include <linux/errno.h>
-#include <linux/gfp.h>
-#include <linux/if.h>
-#include <linux/if_vlan.h>
-#include <linux/kernel.h>
-#include <linux/kobject.h>
-#include <linux/kref.h>
-#include <linux/limits.h>
-#include <linux/netdevice.h>
-#include <linux/printk.h>
-#include <linux/rculist.h>
-#include <linux/rcupdate.h>
-#include <linux/rtnetlink.h>
-#include <linux/sched.h>
-#include <linux/slab.h>
-#include <linux/stddef.h>
-#include <linux/string.h>
-#include <linux/stringify.h>
-#include <linux/workqueue.h>
-#include <uapi/linux/batadv_packet.h>
-#include <uapi/linux/batman_adv.h>
-
-#include "bridge_loop_avoidance.h"
-#include "distributed-arp-table.h"
-#include "gateway_client.h"
-#include "gateway_common.h"
-#include "hard-interface.h"
-#include "log.h"
-#include "netlink.h"
-#include "network-coding.h"
-#include "soft-interface.h"
-
-/**
- * batadv_sysfs_deprecated() - Log use of deprecated batadv sysfs access
- * @attr: attribute which was accessed
- */
-static void batadv_sysfs_deprecated(struct attribute *attr)
-{
-	pr_warn_ratelimited(DEPRECATED "%s (pid %d) Use of sysfs file \"%s\".\n=
Use batadv genl family instead",
-			    current->comm, task_pid_nr(current), attr->name);
-}
-
-static struct net_device *batadv_kobj_to_netdev(struct kobject *obj)
-{
-	struct device *dev =3D container_of(obj->parent, struct device, kobj);
-
-	return to_net_dev(dev);
-}
-
-static struct batadv_priv *batadv_kobj_to_batpriv(struct kobject *obj)
-{
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(obj);
-
-	return netdev_priv(net_dev);
-}
-
-/**
- * batadv_vlan_kobj_to_batpriv() - convert a vlan kobj in the associated=
 batpriv
- * @obj: kobject to covert
- *
- * Return: the associated batadv_priv struct.
- */
-static struct batadv_priv *batadv_vlan_kobj_to_batpriv(struct kobject *o=
bj)
-{
-	/* VLAN specific attributes are located in the root sysfs folder if the=
y
-	 * refer to the untagged VLAN..
-	 */
-	if (!strcmp(BATADV_SYSFS_IF_MESH_SUBDIR, obj->name))
-		return batadv_kobj_to_batpriv(obj);
-
-	/* ..while the attributes for the tagged vlans are located in
-	 * the in the corresponding "vlan%VID" subfolder
-	 */
-	return batadv_kobj_to_batpriv(obj->parent);
-}
-
-/**
- * batadv_kobj_to_vlan() - convert a kobj in the associated softif_vlan =
struct
- * @bat_priv: the bat priv with all the soft interface information
- * @obj: kobject to covert
- *
- * Return: the associated softif_vlan struct if found, NULL otherwise.
- */
-static struct batadv_softif_vlan *
-batadv_kobj_to_vlan(struct batadv_priv *bat_priv, struct kobject *obj)
-{
-	struct batadv_softif_vlan *vlan_tmp, *vlan =3D NULL;
-
-	rcu_read_lock();
-	hlist_for_each_entry_rcu(vlan_tmp, &bat_priv->softif_vlan_list, list) {
-		if (vlan_tmp->kobj !=3D obj)
-			continue;
-
-		if (!kref_get_unless_zero(&vlan_tmp->refcount))
-			continue;
-
-		vlan =3D vlan_tmp;
-		break;
-	}
-	rcu_read_unlock();
-
-	return vlan;
-}
-
-/* Use this, if you have customized show and store functions for vlan at=
trs */
-#define BATADV_ATTR_VLAN(_name, _mode, _show, _store)	\
-struct batadv_attribute batadv_attr_vlan_##_name =3D {	\
-	.attr =3D {.name =3D __stringify(_name),		\
-		 .mode =3D _mode },			\
-	.show   =3D _show,				\
-	.store  =3D _store,				\
-}
-
-/* Use this, if you have customized show and store functions */
-#define BATADV_ATTR(_name, _mode, _show, _store)	\
-struct batadv_attribute batadv_attr_##_name =3D {		\
-	.attr =3D {.name =3D __stringify(_name),		\
-		 .mode =3D _mode },			\
-	.show   =3D _show,				\
-	.store  =3D _store,				\
-}
-
-#define BATADV_ATTR_SIF_STORE_BOOL(_name, _post_func)			\
-ssize_t batadv_store_##_name(struct kobject *kobj,			\
-			     struct attribute *attr, char *buff,	\
-			     size_t count)				\
-{									\
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);	\
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);		\
-	ssize_t length;							\
-									\
-	batadv_sysfs_deprecated(attr);					\
-	length =3D __batadv_store_bool_attr(buff, count, _post_func, attr,\
-					  &bat_priv->_name, net_dev);	\
-									\
-	batadv_netlink_notify_mesh(bat_priv);				\
-									\
-	return length;							\
-}
-
-#define BATADV_ATTR_SIF_SHOW_BOOL(_name)				\
-ssize_t batadv_show_##_name(struct kobject *kobj,			\
-			    struct attribute *attr, char *buff)		\
-{									\
-	struct batadv_priv *bat_priv =3D batadv_kobj_to_batpriv(kobj);	\
-									\
-	batadv_sysfs_deprecated(attr);					\
-	return sprintf(buff, "%s\n",					\
-		       atomic_read(&bat_priv->_name) =3D=3D 0 ?		\
-		       "disabled" : "enabled");				\
-}									\
-
-/* Use this, if you are going to turn a [name] in the soft-interface
- * (bat_priv) on or off
- */
-#define BATADV_ATTR_SIF_BOOL(_name, _mode, _post_func)			\
-	static BATADV_ATTR_SIF_STORE_BOOL(_name, _post_func)		\
-	static BATADV_ATTR_SIF_SHOW_BOOL(_name)				\
-	static BATADV_ATTR(_name, _mode, batadv_show_##_name,		\
-			   batadv_store_##_name)
-
-#define BATADV_ATTR_SIF_STORE_UINT(_name, _var, _min, _max, _post_func)	=
\
-ssize_t batadv_store_##_name(struct kobject *kobj,			\
-			     struct attribute *attr, char *buff,	\
-			     size_t count)				\
-{									\
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);	\
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);		\
-	ssize_t length;							\
-									\
-	batadv_sysfs_deprecated(attr);					\
-	length =3D __batadv_store_uint_attr(buff, count, _min, _max,	\
-					  _post_func, attr,		\
-					  &bat_priv->_var, net_dev,	\
-					  NULL);			\
-									\
-	batadv_netlink_notify_mesh(bat_priv);				\
-									\
-	return length;							\
-}
-
-#define BATADV_ATTR_SIF_SHOW_UINT(_name, _var)				\
-ssize_t batadv_show_##_name(struct kobject *kobj,			\
-			    struct attribute *attr, char *buff)		\
-{									\
-	struct batadv_priv *bat_priv =3D batadv_kobj_to_batpriv(kobj);	\
-									\
-	batadv_sysfs_deprecated(attr);					\
-	return sprintf(buff, "%i\n", atomic_read(&bat_priv->_var));	\
-}									\
-
-/* Use this, if you are going to set [name] in the soft-interface
- * (bat_priv) to an unsigned integer value
- */
-#define BATADV_ATTR_SIF_UINT(_name, _var, _mode, _min, _max, _post_func)=
\
-	static BATADV_ATTR_SIF_STORE_UINT(_name, _var, _min, _max, _post_func)\
-	static BATADV_ATTR_SIF_SHOW_UINT(_name, _var)			\
-	static BATADV_ATTR(_name, _mode, batadv_show_##_name,		\
-			   batadv_store_##_name)
-
-#define BATADV_ATTR_VLAN_STORE_BOOL(_name, _post_func)			\
-ssize_t batadv_store_vlan_##_name(struct kobject *kobj,			\
-				  struct attribute *attr, char *buff,	\
-				  size_t count)				\
-{									\
-	struct batadv_priv *bat_priv =3D batadv_vlan_kobj_to_batpriv(kobj);\
-	struct batadv_softif_vlan *vlan =3D batadv_kobj_to_vlan(bat_priv,	\
-							      kobj);	\
-	size_t res =3D __batadv_store_bool_attr(buff, count, _post_func,	\
-					      attr, &vlan->_name,	\
-					      bat_priv->soft_iface);	\
-									\
-	batadv_sysfs_deprecated(attr);					\
-	if (vlan->vid)							\
-		batadv_netlink_notify_vlan(bat_priv, vlan);		\
-	else								\
-		batadv_netlink_notify_mesh(bat_priv);			\
-									\
-	batadv_softif_vlan_put(vlan);					\
-	return res;							\
-}
-
-#define BATADV_ATTR_VLAN_SHOW_BOOL(_name)				\
-ssize_t batadv_show_vlan_##_name(struct kobject *kobj,			\
-				 struct attribute *attr, char *buff)	\
-{									\
-	struct batadv_priv *bat_priv =3D batadv_vlan_kobj_to_batpriv(kobj);\
-	struct batadv_softif_vlan *vlan =3D batadv_kobj_to_vlan(bat_priv,	\
-							      kobj);	\
-	size_t res =3D sprintf(buff, "%s\n",				\
-			     atomic_read(&vlan->_name) =3D=3D 0 ?		\
-			     "disabled" : "enabled");			\
-									\
-	batadv_sysfs_deprecated(attr);					\
-	batadv_softif_vlan_put(vlan);					\
-	return res;							\
-}
-
-/* Use this, if you are going to turn a [name] in the vlan struct on or =
off */
-#define BATADV_ATTR_VLAN_BOOL(_name, _mode, _post_func)			\
-	static BATADV_ATTR_VLAN_STORE_BOOL(_name, _post_func)		\
-	static BATADV_ATTR_VLAN_SHOW_BOOL(_name)			\
-	static BATADV_ATTR_VLAN(_name, _mode, batadv_show_vlan_##_name,	\
-				batadv_store_vlan_##_name)
-
-#define BATADV_ATTR_HIF_STORE_UINT(_name, _var, _min, _max, _post_func)	=
\
-ssize_t batadv_store_##_name(struct kobject *kobj,			\
-			     struct attribute *attr, char *buff,	\
-			     size_t count)				\
-{									\
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);	\
-	struct batadv_hard_iface *hard_iface;				\
-	struct batadv_priv *bat_priv;					\
-	ssize_t length;							\
-									\
-	batadv_sysfs_deprecated(attr);					\
-	hard_iface =3D batadv_hardif_get_by_netdev(net_dev);		\
-	if (!hard_iface)						\
-		return 0;						\
-									\
-	length =3D __batadv_store_uint_attr(buff, count, _min, _max,	\
-					  _post_func, attr,		\
-					  &hard_iface->_var,		\
-					  hard_iface->soft_iface,	\
-					  net_dev);			\
-									\
-	if (hard_iface->soft_iface) {					\
-		bat_priv =3D netdev_priv(hard_iface->soft_iface);		\
-		batadv_netlink_notify_hardif(bat_priv, hard_iface);	\
-	}								\
-									\
-	batadv_hardif_put(hard_iface);				\
-	return length;							\
-}
-
-#define BATADV_ATTR_HIF_SHOW_UINT(_name, _var)				\
-ssize_t batadv_show_##_name(struct kobject *kobj,			\
-			    struct attribute *attr, char *buff)		\
-{									\
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);	\
-	struct batadv_hard_iface *hard_iface;				\
-	ssize_t length;							\
-									\
-	batadv_sysfs_deprecated(attr);					\
-	hard_iface =3D batadv_hardif_get_by_netdev(net_dev);		\
-	if (!hard_iface)						\
-		return 0;						\
-									\
-	length =3D sprintf(buff, "%i\n", atomic_read(&hard_iface->_var));	\
-									\
-	batadv_hardif_put(hard_iface);				\
-	return length;							\
-}
-
-/* Use this, if you are going to set [name] in hard_iface to an
- * unsigned integer value
- */
-#define BATADV_ATTR_HIF_UINT(_name, _var, _mode, _min, _max, _post_func)=
\
-	static BATADV_ATTR_HIF_STORE_UINT(_name, _var, _min,		\
-					  _max, _post_func)		\
-	static BATADV_ATTR_HIF_SHOW_UINT(_name, _var)			\
-	static BATADV_ATTR(_name, _mode, batadv_show_##_name,		\
-			   batadv_store_##_name)
-
-static int batadv_store_bool_attr(char *buff, size_t count,
-				  struct net_device *net_dev,
-				  const char *attr_name, atomic_t *attr,
-				  bool *changed)
-{
-	int enabled =3D -1;
-
-	*changed =3D false;
-
-	if (buff[count - 1] =3D=3D '\n')
-		buff[count - 1] =3D '\0';
-
-	if ((strncmp(buff, "1", 2) =3D=3D 0) ||
-	    (strncmp(buff, "enable", 7) =3D=3D 0) ||
-	    (strncmp(buff, "enabled", 8) =3D=3D 0))
-		enabled =3D 1;
-
-	if ((strncmp(buff, "0", 2) =3D=3D 0) ||
-	    (strncmp(buff, "disable", 8) =3D=3D 0) ||
-	    (strncmp(buff, "disabled", 9) =3D=3D 0))
-		enabled =3D 0;
-
-	if (enabled < 0) {
-		batadv_info(net_dev, "%s: Invalid parameter received: %s\n",
-			    attr_name, buff);
-		return -EINVAL;
-	}
-
-	if (atomic_read(attr) =3D=3D enabled)
-		return count;
-
-	batadv_info(net_dev, "%s: Changing from: %s to: %s\n", attr_name,
-		    atomic_read(attr) =3D=3D 1 ? "enabled" : "disabled",
-		    enabled =3D=3D 1 ? "enabled" : "disabled");
-
-	*changed =3D true;
-
-	atomic_set(attr, (unsigned int)enabled);
-	return count;
-}
-
-static inline ssize_t
-__batadv_store_bool_attr(char *buff, size_t count,
-			 void (*post_func)(struct net_device *),
-			 struct attribute *attr,
-			 atomic_t *attr_store, struct net_device *net_dev)
-{
-	bool changed;
-	int ret;
-
-	ret =3D batadv_store_bool_attr(buff, count, net_dev, attr->name,
-				     attr_store, &changed);
-	if (post_func && changed)
-		post_func(net_dev);
-
-	return ret;
-}
-
-static int batadv_store_uint_attr(const char *buff, size_t count,
-				  struct net_device *net_dev,
-				  struct net_device *slave_dev,
-				  const char *attr_name,
-				  unsigned int min, unsigned int max,
-				  atomic_t *attr)
-{
-	char ifname[IFNAMSIZ + 3] =3D "";
-	unsigned long uint_val;
-	int ret;
-
-	ret =3D kstrtoul(buff, 10, &uint_val);
-	if (ret) {
-		batadv_info(net_dev, "%s: Invalid parameter received: %s\n",
-			    attr_name, buff);
-		return -EINVAL;
-	}
-
-	if (uint_val < min) {
-		batadv_info(net_dev, "%s: Value is too small: %lu min: %u\n",
-			    attr_name, uint_val, min);
-		return -EINVAL;
-	}
-
-	if (uint_val > max) {
-		batadv_info(net_dev, "%s: Value is too big: %lu max: %u\n",
-			    attr_name, uint_val, max);
-		return -EINVAL;
-	}
-
-	if (atomic_read(attr) =3D=3D uint_val)
-		return count;
-
-	if (slave_dev)
-		snprintf(ifname, sizeof(ifname), "%s: ", slave_dev->name);
-
-	batadv_info(net_dev, "%s: %sChanging from: %i to: %lu\n",
-		    attr_name, ifname, atomic_read(attr), uint_val);
-
-	atomic_set(attr, uint_val);
-	return count;
-}
-
-static ssize_t __batadv_store_uint_attr(const char *buff, size_t count,
-					int min, int max,
-					void (*post_func)(struct net_device *),
-					const struct attribute *attr,
-					atomic_t *attr_store,
-					struct net_device *net_dev,
-					struct net_device *slave_dev)
-{
-	int ret;
-
-	ret =3D batadv_store_uint_attr(buff, count, net_dev, slave_dev,
-				     attr->name, min, max, attr_store);
-	if (post_func && ret)
-		post_func(net_dev);
-
-	return ret;
-}
-
-static ssize_t batadv_show_bat_algo(struct kobject *kobj,
-				    struct attribute *attr, char *buff)
-{
-	struct batadv_priv *bat_priv =3D batadv_kobj_to_batpriv(kobj);
-
-	batadv_sysfs_deprecated(attr);
-	return sprintf(buff, "%s\n", bat_priv->algo_ops->name);
-}
-
-static void batadv_post_gw_reselect(struct net_device *net_dev)
-{
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-
-	batadv_gw_reselect(bat_priv);
-}
-
-static ssize_t batadv_show_gw_mode(struct kobject *kobj, struct attribut=
e *attr,
-				   char *buff)
-{
-	struct batadv_priv *bat_priv =3D batadv_kobj_to_batpriv(kobj);
-	int bytes_written;
-
-	batadv_sysfs_deprecated(attr);
-
-	/* GW mode is not available if the routing algorithm in use does not
-	 * implement the GW API
-	 */
-	if (!bat_priv->algo_ops->gw.get_best_gw_node ||
-	    !bat_priv->algo_ops->gw.is_eligible)
-		return -ENOENT;
-
-	switch (atomic_read(&bat_priv->gw.mode)) {
-	case BATADV_GW_MODE_CLIENT:
-		bytes_written =3D sprintf(buff, "%s\n",
-					BATADV_GW_MODE_CLIENT_NAME);
-		break;
-	case BATADV_GW_MODE_SERVER:
-		bytes_written =3D sprintf(buff, "%s\n",
-					BATADV_GW_MODE_SERVER_NAME);
-		break;
-	default:
-		bytes_written =3D sprintf(buff, "%s\n",
-					BATADV_GW_MODE_OFF_NAME);
-		break;
-	}
-
-	return bytes_written;
-}
-
-static ssize_t batadv_store_gw_mode(struct kobject *kobj,
-				    struct attribute *attr, char *buff,
-				    size_t count)
-{
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	char *curr_gw_mode_str;
-	int gw_mode_tmp =3D -1;
-
-	batadv_sysfs_deprecated(attr);
-
-	/* toggling GW mode is allowed only if the routing algorithm in use
-	 * provides the GW API
-	 */
-	if (!bat_priv->algo_ops->gw.get_best_gw_node ||
-	    !bat_priv->algo_ops->gw.is_eligible)
-		return -EINVAL;
-
-	if (buff[count - 1] =3D=3D '\n')
-		buff[count - 1] =3D '\0';
-
-	if (strncmp(buff, BATADV_GW_MODE_OFF_NAME,
-		    strlen(BATADV_GW_MODE_OFF_NAME)) =3D=3D 0)
-		gw_mode_tmp =3D BATADV_GW_MODE_OFF;
-
-	if (strncmp(buff, BATADV_GW_MODE_CLIENT_NAME,
-		    strlen(BATADV_GW_MODE_CLIENT_NAME)) =3D=3D 0)
-		gw_mode_tmp =3D BATADV_GW_MODE_CLIENT;
-
-	if (strncmp(buff, BATADV_GW_MODE_SERVER_NAME,
-		    strlen(BATADV_GW_MODE_SERVER_NAME)) =3D=3D 0)
-		gw_mode_tmp =3D BATADV_GW_MODE_SERVER;
-
-	if (gw_mode_tmp < 0) {
-		batadv_info(net_dev,
-			    "Invalid parameter for 'gw mode' setting received: %s\n",
-			    buff);
-		return -EINVAL;
-	}
-
-	if (atomic_read(&bat_priv->gw.mode) =3D=3D gw_mode_tmp)
-		return count;
-
-	switch (atomic_read(&bat_priv->gw.mode)) {
-	case BATADV_GW_MODE_CLIENT:
-		curr_gw_mode_str =3D BATADV_GW_MODE_CLIENT_NAME;
-		break;
-	case BATADV_GW_MODE_SERVER:
-		curr_gw_mode_str =3D BATADV_GW_MODE_SERVER_NAME;
-		break;
-	default:
-		curr_gw_mode_str =3D BATADV_GW_MODE_OFF_NAME;
-		break;
-	}
-
-	batadv_info(net_dev, "Changing gw mode from: %s to: %s\n",
-		    curr_gw_mode_str, buff);
-
-	/* Invoking batadv_gw_reselect() is not enough to really de-select the
-	 * current GW. It will only instruct the gateway client code to perform
-	 * a re-election the next time that this is needed.
-	 *
-	 * When gw client mode is being switched off the current GW must be
-	 * de-selected explicitly otherwise no GW_ADD uevent is thrown on
-	 * client mode re-activation. This is operation is performed in
-	 * batadv_gw_check_client_stop().
-	 */
-	batadv_gw_reselect(bat_priv);
-	/* always call batadv_gw_check_client_stop() before changing the gatewa=
y
-	 * state
-	 */
-	batadv_gw_check_client_stop(bat_priv);
-	atomic_set(&bat_priv->gw.mode, (unsigned int)gw_mode_tmp);
-	batadv_gw_tvlv_container_update(bat_priv);
-
-	batadv_netlink_notify_mesh(bat_priv);
-
-	return count;
-}
-
-static ssize_t batadv_show_gw_sel_class(struct kobject *kobj,
-					struct attribute *attr, char *buff)
-{
-	struct batadv_priv *bat_priv =3D batadv_kobj_to_batpriv(kobj);
-
-	batadv_sysfs_deprecated(attr);
-
-	/* GW selection class is not available if the routing algorithm in use
-	 * does not implement the GW API
-	 */
-	if (!bat_priv->algo_ops->gw.get_best_gw_node ||
-	    !bat_priv->algo_ops->gw.is_eligible)
-		return -ENOENT;
-
-	if (bat_priv->algo_ops->gw.show_sel_class)
-		return bat_priv->algo_ops->gw.show_sel_class(bat_priv, buff);
-
-	return sprintf(buff, "%i\n", atomic_read(&bat_priv->gw.sel_class));
-}
-
-static ssize_t batadv_store_gw_sel_class(struct kobject *kobj,
-					 struct attribute *attr, char *buff,
-					 size_t count)
-{
-	struct batadv_priv *bat_priv =3D batadv_kobj_to_batpriv(kobj);
-	ssize_t length;
-
-	batadv_sysfs_deprecated(attr);
-
-	/* setting the GW selection class is allowed only if the routing
-	 * algorithm in use implements the GW API
-	 */
-	if (!bat_priv->algo_ops->gw.get_best_gw_node ||
-	    !bat_priv->algo_ops->gw.is_eligible)
-		return -EINVAL;
-
-	if (buff[count - 1] =3D=3D '\n')
-		buff[count - 1] =3D '\0';
-
-	if (bat_priv->algo_ops->gw.store_sel_class)
-		return bat_priv->algo_ops->gw.store_sel_class(bat_priv, buff,
-							      count);
-
-	length =3D __batadv_store_uint_attr(buff, count, 1, BATADV_TQ_MAX_VALUE=
,
-					  batadv_post_gw_reselect, attr,
-					  &bat_priv->gw.sel_class,
-					  bat_priv->soft_iface, NULL);
-
-	batadv_netlink_notify_mesh(bat_priv);
-
-	return length;
-}
-
-static ssize_t batadv_show_gw_bwidth(struct kobject *kobj,
-				     struct attribute *attr, char *buff)
-{
-	struct batadv_priv *bat_priv =3D batadv_kobj_to_batpriv(kobj);
-	u32 down, up;
-
-	batadv_sysfs_deprecated(attr);
-
-	down =3D atomic_read(&bat_priv->gw.bandwidth_down);
-	up =3D atomic_read(&bat_priv->gw.bandwidth_up);
-
-	return sprintf(buff, "%u.%u/%u.%u MBit\n", down / 10,
-		       down % 10, up / 10, up % 10);
-}
-
-static ssize_t batadv_store_gw_bwidth(struct kobject *kobj,
-				      struct attribute *attr, char *buff,
-				      size_t count)
-{
-	struct batadv_priv *bat_priv =3D batadv_kobj_to_batpriv(kobj);
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);
-	ssize_t length;
-
-	batadv_sysfs_deprecated(attr);
-
-	if (buff[count - 1] =3D=3D '\n')
-		buff[count - 1] =3D '\0';
-
-	length =3D batadv_gw_bandwidth_set(net_dev, buff, count);
-
-	batadv_netlink_notify_mesh(bat_priv);
-
-	return length;
-}
-
-/**
- * batadv_show_isolation_mark() - print the current isolation mark/mask
- * @kobj: kobject representing the private mesh sysfs directory
- * @attr: the batman-adv attribute the user is interacting with
- * @buff: the buffer that will contain the data to send back to the user
- *
- * Return: the number of bytes written into 'buff' on success or a negat=
ive
- * error code in case of failure
- */
-static ssize_t batadv_show_isolation_mark(struct kobject *kobj,
-					  struct attribute *attr, char *buff)
-{
-	struct batadv_priv *bat_priv =3D batadv_kobj_to_batpriv(kobj);
-
-	batadv_sysfs_deprecated(attr);
-	return sprintf(buff, "%#.8x/%#.8x\n", bat_priv->isolation_mark,
-		       bat_priv->isolation_mark_mask);
-}
-
-/**
- * batadv_store_isolation_mark() - parse and store the isolation mark/ma=
sk
- *  entered by the user
- * @kobj: kobject representing the private mesh sysfs directory
- * @attr: the batman-adv attribute the user is interacting with
- * @buff: the buffer containing the user data
- * @count: number of bytes in the buffer
- *
- * Return: 'count' on success or a negative error code in case of failur=
e
- */
-static ssize_t batadv_store_isolation_mark(struct kobject *kobj,
-					   struct attribute *attr, char *buff,
-					   size_t count)
-{
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);
-	struct batadv_priv *bat_priv =3D netdev_priv(net_dev);
-	u32 mark, mask;
-	char *mask_ptr;
-
-	batadv_sysfs_deprecated(attr);
-
-	/* parse the mask if it has been specified, otherwise assume the mask i=
s
-	 * the biggest possible
-	 */
-	mask =3D 0xFFFFFFFF;
-	mask_ptr =3D strchr(buff, '/');
-	if (mask_ptr) {
-		*mask_ptr =3D '\0';
-		mask_ptr++;
-
-		/* the mask must be entered in hex base as it is going to be a
-		 * bitmask and not a prefix length
-		 */
-		if (kstrtou32(mask_ptr, 16, &mask) < 0)
-			return -EINVAL;
-	}
-
-	/* the mark can be entered in any base */
-	if (kstrtou32(buff, 0, &mark) < 0)
-		return -EINVAL;
-
-	bat_priv->isolation_mark_mask =3D mask;
-	/* erase bits not covered by the mask */
-	bat_priv->isolation_mark =3D mark & bat_priv->isolation_mark_mask;
-
-	batadv_info(net_dev,
-		    "New skb mark for extended isolation: %#.8x/%#.8x\n",
-		    bat_priv->isolation_mark, bat_priv->isolation_mark_mask);
-
-	batadv_netlink_notify_mesh(bat_priv);
-
-	return count;
-}
-
-BATADV_ATTR_SIF_BOOL(aggregated_ogms, 0644, NULL);
-BATADV_ATTR_SIF_BOOL(bonding, 0644, NULL);
-#ifdef CONFIG_BATMAN_ADV_BLA
-BATADV_ATTR_SIF_BOOL(bridge_loop_avoidance, 0644, batadv_bla_status_upda=
te);
-#endif
-#ifdef CONFIG_BATMAN_ADV_DAT
-BATADV_ATTR_SIF_BOOL(distributed_arp_table, 0644, batadv_dat_status_upda=
te);
-#endif
-BATADV_ATTR_SIF_BOOL(fragmentation, 0644, batadv_update_min_mtu);
-static BATADV_ATTR(routing_algo, 0444, batadv_show_bat_algo, NULL);
-static BATADV_ATTR(gw_mode, 0644, batadv_show_gw_mode, batadv_store_gw_m=
ode);
-BATADV_ATTR_SIF_UINT(orig_interval, orig_interval, 0644, 2 * BATADV_JITT=
ER,
-		     INT_MAX, NULL);
-BATADV_ATTR_SIF_UINT(hop_penalty, hop_penalty, 0644, 0, BATADV_TQ_MAX_VA=
LUE,
-		     NULL);
-static BATADV_ATTR(gw_sel_class, 0644, batadv_show_gw_sel_class,
-		   batadv_store_gw_sel_class);
-static BATADV_ATTR(gw_bandwidth, 0644, batadv_show_gw_bwidth,
-		   batadv_store_gw_bwidth);
-#ifdef CONFIG_BATMAN_ADV_MCAST
-BATADV_ATTR_SIF_BOOL(multicast_mode, 0644, NULL);
-#endif
-#ifdef CONFIG_BATMAN_ADV_DEBUG
-BATADV_ATTR_SIF_UINT(log_level, log_level, 0644, 0, BATADV_DBG_ALL, NULL=
);
-#endif
-#ifdef CONFIG_BATMAN_ADV_NC
-BATADV_ATTR_SIF_BOOL(network_coding, 0644, batadv_nc_status_update);
-#endif
-static BATADV_ATTR(isolation_mark, 0644, batadv_show_isolation_mark,
-		   batadv_store_isolation_mark);
-
-static struct batadv_attribute *batadv_mesh_attrs[] =3D {
-	&batadv_attr_aggregated_ogms,
-	&batadv_attr_bonding,
-#ifdef CONFIG_BATMAN_ADV_BLA
-	&batadv_attr_bridge_loop_avoidance,
-#endif
-#ifdef CONFIG_BATMAN_ADV_DAT
-	&batadv_attr_distributed_arp_table,
-#endif
-#ifdef CONFIG_BATMAN_ADV_MCAST
-	&batadv_attr_multicast_mode,
-#endif
-	&batadv_attr_fragmentation,
-	&batadv_attr_routing_algo,
-	&batadv_attr_gw_mode,
-	&batadv_attr_orig_interval,
-	&batadv_attr_hop_penalty,
-	&batadv_attr_gw_sel_class,
-	&batadv_attr_gw_bandwidth,
-#ifdef CONFIG_BATMAN_ADV_DEBUG
-	&batadv_attr_log_level,
-#endif
-#ifdef CONFIG_BATMAN_ADV_NC
-	&batadv_attr_network_coding,
-#endif
-	&batadv_attr_isolation_mark,
-	NULL,
-};
-
-BATADV_ATTR_VLAN_BOOL(ap_isolation, 0644, NULL);
-
-/* array of vlan specific sysfs attributes */
-static struct batadv_attribute *batadv_vlan_attrs[] =3D {
-	&batadv_attr_vlan_ap_isolation,
-	NULL,
-};
-
-/**
- * batadv_sysfs_add_meshif() - Add soft interface specific sysfs entries
- * @dev: netdev struct of the soft interface
- *
- * Return: 0 on success or negative error number in case of failure
- */
-int batadv_sysfs_add_meshif(struct net_device *dev)
-{
-	struct kobject *batif_kobject =3D &dev->dev.kobj;
-	struct batadv_priv *bat_priv =3D netdev_priv(dev);
-	struct batadv_attribute **bat_attr;
-	int err;
-
-	bat_priv->mesh_obj =3D kobject_create_and_add(BATADV_SYSFS_IF_MESH_SUBD=
IR,
-						    batif_kobject);
-	if (!bat_priv->mesh_obj) {
-		batadv_err(dev, "Can't add sysfs directory: %s/%s\n", dev->name,
-			   BATADV_SYSFS_IF_MESH_SUBDIR);
-		goto out;
-	}
-
-	for (bat_attr =3D batadv_mesh_attrs; *bat_attr; ++bat_attr) {
-		err =3D sysfs_create_file(bat_priv->mesh_obj,
-					&((*bat_attr)->attr));
-		if (err) {
-			batadv_err(dev, "Can't add sysfs file: %s/%s/%s\n",
-				   dev->name, BATADV_SYSFS_IF_MESH_SUBDIR,
-				   ((*bat_attr)->attr).name);
-			goto rem_attr;
-		}
-	}
-
-	return 0;
-
-rem_attr:
-	for (bat_attr =3D batadv_mesh_attrs; *bat_attr; ++bat_attr)
-		sysfs_remove_file(bat_priv->mesh_obj, &((*bat_attr)->attr));
-
-	kobject_uevent(bat_priv->mesh_obj, KOBJ_REMOVE);
-	kobject_del(bat_priv->mesh_obj);
-	kobject_put(bat_priv->mesh_obj);
-	bat_priv->mesh_obj =3D NULL;
-out:
-	return -ENOMEM;
-}
-
-/**
- * batadv_sysfs_del_meshif() - Remove soft interface specific sysfs entr=
ies
- * @dev: netdev struct of the soft interface
- */
-void batadv_sysfs_del_meshif(struct net_device *dev)
-{
-	struct batadv_priv *bat_priv =3D netdev_priv(dev);
-	struct batadv_attribute **bat_attr;
-
-	for (bat_attr =3D batadv_mesh_attrs; *bat_attr; ++bat_attr)
-		sysfs_remove_file(bat_priv->mesh_obj, &((*bat_attr)->attr));
-
-	kobject_uevent(bat_priv->mesh_obj, KOBJ_REMOVE);
-	kobject_del(bat_priv->mesh_obj);
-	kobject_put(bat_priv->mesh_obj);
-	bat_priv->mesh_obj =3D NULL;
-}
-
-/**
- * batadv_sysfs_add_vlan() - add all the needed sysfs objects for the ne=
w vlan
- * @dev: netdev of the mesh interface
- * @vlan: private data of the newly added VLAN interface
- *
- * Return: 0 on success and -ENOMEM if any of the structure allocations =
fails.
- */
-int batadv_sysfs_add_vlan(struct net_device *dev,
-			  struct batadv_softif_vlan *vlan)
-{
-	char vlan_subdir[sizeof(BATADV_SYSFS_VLAN_SUBDIR_PREFIX) + 5];
-	struct batadv_priv *bat_priv =3D netdev_priv(dev);
-	struct batadv_attribute **bat_attr;
-	int err;
-
-	if (vlan->vid & BATADV_VLAN_HAS_TAG) {
-		sprintf(vlan_subdir, BATADV_SYSFS_VLAN_SUBDIR_PREFIX "%hu",
-			vlan->vid & VLAN_VID_MASK);
-
-		vlan->kobj =3D kobject_create_and_add(vlan_subdir,
-						    bat_priv->mesh_obj);
-		if (!vlan->kobj) {
-			batadv_err(dev, "Can't add sysfs directory: %s/%s\n",
-				   dev->name, vlan_subdir);
-			goto out;
-		}
-	} else {
-		/* the untagged LAN uses the root folder to store its "VLAN
-		 * specific attributes"
-		 */
-		vlan->kobj =3D bat_priv->mesh_obj;
-		kobject_get(bat_priv->mesh_obj);
-	}
-
-	for (bat_attr =3D batadv_vlan_attrs; *bat_attr; ++bat_attr) {
-		err =3D sysfs_create_file(vlan->kobj,
-					&((*bat_attr)->attr));
-		if (err) {
-			batadv_err(dev, "Can't add sysfs file: %s/%s/%s\n",
-				   dev->name, vlan_subdir,
-				   ((*bat_attr)->attr).name);
-			goto rem_attr;
-		}
-	}
-
-	return 0;
-
-rem_attr:
-	for (bat_attr =3D batadv_vlan_attrs; *bat_attr; ++bat_attr)
-		sysfs_remove_file(vlan->kobj, &((*bat_attr)->attr));
-
-	if (vlan->kobj !=3D bat_priv->mesh_obj) {
-		kobject_uevent(vlan->kobj, KOBJ_REMOVE);
-		kobject_del(vlan->kobj);
-	}
-	kobject_put(vlan->kobj);
-	vlan->kobj =3D NULL;
-out:
-	return -ENOMEM;
-}
-
-/**
- * batadv_sysfs_del_vlan() - remove all the sysfs objects for a given VL=
AN
- * @bat_priv: the bat priv with all the soft interface information
- * @vlan: the private data of the VLAN to destroy
- */
-void batadv_sysfs_del_vlan(struct batadv_priv *bat_priv,
-			   struct batadv_softif_vlan *vlan)
-{
-	struct batadv_attribute **bat_attr;
-
-	for (bat_attr =3D batadv_vlan_attrs; *bat_attr; ++bat_attr)
-		sysfs_remove_file(vlan->kobj, &((*bat_attr)->attr));
-
-	if (vlan->kobj !=3D bat_priv->mesh_obj) {
-		kobject_uevent(vlan->kobj, KOBJ_REMOVE);
-		kobject_del(vlan->kobj);
-	}
-	kobject_put(vlan->kobj);
-	vlan->kobj =3D NULL;
-}
-
-static ssize_t batadv_show_mesh_iface(struct kobject *kobj,
-				      struct attribute *attr, char *buff)
-{
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);
-	struct batadv_hard_iface *hard_iface;
-	ssize_t length;
-	const char *ifname;
-
-	batadv_sysfs_deprecated(attr);
-
-	hard_iface =3D batadv_hardif_get_by_netdev(net_dev);
-	if (!hard_iface)
-		return 0;
-
-	if (hard_iface->if_status =3D=3D BATADV_IF_NOT_IN_USE)
-		ifname =3D  "none";
-	else
-		ifname =3D hard_iface->soft_iface->name;
-
-	length =3D sprintf(buff, "%s\n", ifname);
-
-	batadv_hardif_put(hard_iface);
-
-	return length;
-}
-
-/**
- * batadv_store_mesh_iface_finish() - store new hardif mesh_iface state
- * @net_dev: netdevice to add/remove to/from batman-adv soft-interface
- * @ifname: name of soft-interface to modify
- *
- * Changes the parts of the hard+soft interface which can not be modifie=
d under
- * sysfs lock (to prevent deadlock situations).
- *
- * Return: 0 on success, 0 < on failure
- */
-static int batadv_store_mesh_iface_finish(struct net_device *net_dev,
-					  char ifname[IFNAMSIZ])
-{
-	struct net *net =3D dev_net(net_dev);
-	struct batadv_hard_iface *hard_iface;
-	int status_tmp;
-	int ret =3D 0;
-
-	ASSERT_RTNL();
-
-	hard_iface =3D batadv_hardif_get_by_netdev(net_dev);
-	if (!hard_iface)
-		return 0;
-
-	if (strncmp(ifname, "none", 4) =3D=3D 0)
-		status_tmp =3D BATADV_IF_NOT_IN_USE;
-	else
-		status_tmp =3D BATADV_IF_I_WANT_YOU;
-
-	if (hard_iface->if_status =3D=3D status_tmp)
-		goto out;
-
-	if (hard_iface->soft_iface &&
-	    strncmp(hard_iface->soft_iface->name, ifname, IFNAMSIZ) =3D=3D 0)
-		goto out;
-
-	if (status_tmp =3D=3D BATADV_IF_NOT_IN_USE) {
-		batadv_hardif_disable_interface(hard_iface,
-						BATADV_IF_CLEANUP_AUTO);
-		goto out;
-	}
-
-	/* if the interface already is in use */
-	if (hard_iface->if_status !=3D BATADV_IF_NOT_IN_USE)
-		batadv_hardif_disable_interface(hard_iface,
-						BATADV_IF_CLEANUP_AUTO);
-
-	ret =3D batadv_hardif_enable_interface(hard_iface, net, ifname);
-out:
-	batadv_hardif_put(hard_iface);
-	return ret;
-}
-
-/**
- * batadv_store_mesh_iface_work() - store new hardif mesh_iface state
- * @work: work queue item
- *
- * Changes the parts of the hard+soft interface which can not be modifie=
d under
- * sysfs lock (to prevent deadlock situations).
- */
-static void batadv_store_mesh_iface_work(struct work_struct *work)
-{
-	struct batadv_store_mesh_work *store_work;
-	int ret;
-
-	store_work =3D container_of(work, struct batadv_store_mesh_work, work);
-
-	rtnl_lock();
-	ret =3D batadv_store_mesh_iface_finish(store_work->net_dev,
-					     store_work->soft_iface_name);
-	rtnl_unlock();
-
-	if (ret < 0)
-		pr_err("Failed to store new mesh_iface state %s for %s: %d\n",
-		       store_work->soft_iface_name, store_work->net_dev->name,
-		       ret);
-
-	dev_put(store_work->net_dev);
-	kfree(store_work);
-}
-
-static ssize_t batadv_store_mesh_iface(struct kobject *kobj,
-				       struct attribute *attr, char *buff,
-				       size_t count)
-{
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);
-	struct batadv_store_mesh_work *store_work;
-
-	batadv_sysfs_deprecated(attr);
-
-	if (buff[count - 1] =3D=3D '\n')
-		buff[count - 1] =3D '\0';
-
-	if (strlen(buff) >=3D IFNAMSIZ) {
-		pr_err("Invalid parameter for 'mesh_iface' setting received: interface=
 name too long '%s'\n",
-		       buff);
-		return -EINVAL;
-	}
-
-	store_work =3D kmalloc(sizeof(*store_work), GFP_KERNEL);
-	if (!store_work)
-		return -ENOMEM;
-
-	dev_hold(net_dev);
-	INIT_WORK(&store_work->work, batadv_store_mesh_iface_work);
-	store_work->net_dev =3D net_dev;
-	strscpy(store_work->soft_iface_name, buff,
-		sizeof(store_work->soft_iface_name));
-
-	queue_work(batadv_event_workqueue, &store_work->work);
-
-	return count;
-}
-
-static ssize_t batadv_show_iface_status(struct kobject *kobj,
-					struct attribute *attr, char *buff)
-{
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);
-	struct batadv_hard_iface *hard_iface;
-	ssize_t length;
-
-	batadv_sysfs_deprecated(attr);
-
-	hard_iface =3D batadv_hardif_get_by_netdev(net_dev);
-	if (!hard_iface)
-		return 0;
-
-	switch (hard_iface->if_status) {
-	case BATADV_IF_TO_BE_REMOVED:
-		length =3D sprintf(buff, "disabling\n");
-		break;
-	case BATADV_IF_INACTIVE:
-		length =3D sprintf(buff, "inactive\n");
-		break;
-	case BATADV_IF_ACTIVE:
-		length =3D sprintf(buff, "active\n");
-		break;
-	case BATADV_IF_TO_BE_ACTIVATED:
-		length =3D sprintf(buff, "enabling\n");
-		break;
-	case BATADV_IF_NOT_IN_USE:
-	default:
-		length =3D sprintf(buff, "not in use\n");
-		break;
-	}
-
-	batadv_hardif_put(hard_iface);
-
-	return length;
-}
-
-#ifdef CONFIG_BATMAN_ADV_BATMAN_V
-
-/**
- * batadv_store_throughput_override() - parse and store throughput overr=
ide
- *  entered by the user
- * @kobj: kobject representing the private mesh sysfs directory
- * @attr: the batman-adv attribute the user is interacting with
- * @buff: the buffer containing the user data
- * @count: number of bytes in the buffer
- *
- * Return: 'count' on success or a negative error code in case of failur=
e
- */
-static ssize_t batadv_store_throughput_override(struct kobject *kobj,
-						struct attribute *attr,
-						char *buff, size_t count)
-{
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);
-	struct batadv_hard_iface *hard_iface;
-	struct batadv_priv *bat_priv;
-	u32 tp_override;
-	u32 old_tp_override;
-	bool ret;
-
-	batadv_sysfs_deprecated(attr);
-
-	hard_iface =3D batadv_hardif_get_by_netdev(net_dev);
-	if (!hard_iface)
-		return -EINVAL;
-
-	if (buff[count - 1] =3D=3D '\n')
-		buff[count - 1] =3D '\0';
-
-	ret =3D batadv_parse_throughput(net_dev, buff, "throughput_override",
-				      &tp_override);
-	if (!ret)
-		goto out;
-
-	old_tp_override =3D atomic_read(&hard_iface->bat_v.throughput_override)=
;
-	if (old_tp_override =3D=3D tp_override)
-		goto out;
-
-	batadv_info(hard_iface->soft_iface,
-		    "%s: %s: Changing from: %u.%u MBit to: %u.%u MBit\n",
-		    "throughput_override", net_dev->name,
-		    old_tp_override / 10, old_tp_override % 10,
-		    tp_override / 10, tp_override % 10);
-
-	atomic_set(&hard_iface->bat_v.throughput_override, tp_override);
-
-	if (hard_iface->soft_iface) {
-		bat_priv =3D netdev_priv(hard_iface->soft_iface);
-		batadv_netlink_notify_hardif(bat_priv, hard_iface);
-	}
-
-out:
-	batadv_hardif_put(hard_iface);
-	return count;
-}
-
-static ssize_t batadv_show_throughput_override(struct kobject *kobj,
-					       struct attribute *attr,
-					       char *buff)
-{
-	struct net_device *net_dev =3D batadv_kobj_to_netdev(kobj);
-	struct batadv_hard_iface *hard_iface;
-	u32 tp_override;
-
-	batadv_sysfs_deprecated(attr);
-
-	hard_iface =3D batadv_hardif_get_by_netdev(net_dev);
-	if (!hard_iface)
-		return -EINVAL;
-
-	tp_override =3D atomic_read(&hard_iface->bat_v.throughput_override);
-
-	batadv_hardif_put(hard_iface);
-	return sprintf(buff, "%u.%u MBit\n", tp_override / 10,
-		       tp_override % 10);
-}
-
-#endif
-
-static BATADV_ATTR(mesh_iface, 0644, batadv_show_mesh_iface,
-		   batadv_store_mesh_iface);
-static BATADV_ATTR(iface_status, 0444, batadv_show_iface_status, NULL);
-#ifdef CONFIG_BATMAN_ADV_BATMAN_V
-BATADV_ATTR_HIF_UINT(elp_interval, bat_v.elp_interval, 0644,
-		     2 * BATADV_JITTER, INT_MAX, NULL);
-static BATADV_ATTR(throughput_override, 0644, batadv_show_throughput_ove=
rride,
-		   batadv_store_throughput_override);
-#endif
-
-static struct batadv_attribute *batadv_batman_attrs[] =3D {
-	&batadv_attr_mesh_iface,
-	&batadv_attr_iface_status,
-#ifdef CONFIG_BATMAN_ADV_BATMAN_V
-	&batadv_attr_elp_interval,
-	&batadv_attr_throughput_override,
-#endif
-	NULL,
-};
-
-/**
- * batadv_sysfs_add_hardif() - Add hard interface specific sysfs entries
- * @hardif_obj: address where to store the pointer to new sysfs folder
- * @dev: netdev struct of the hard interface
- *
- * Return: 0 on success or negative error number in case of failure
- */
-int batadv_sysfs_add_hardif(struct kobject **hardif_obj, struct net_devi=
ce *dev)
-{
-	struct kobject *hardif_kobject =3D &dev->dev.kobj;
-	struct batadv_attribute **bat_attr;
-	int err;
-
-	*hardif_obj =3D kobject_create_and_add(BATADV_SYSFS_IF_BAT_SUBDIR,
-					     hardif_kobject);
-
-	if (!*hardif_obj) {
-		batadv_err(dev, "Can't add sysfs directory: %s/%s\n", dev->name,
-			   BATADV_SYSFS_IF_BAT_SUBDIR);
-		goto out;
-	}
-
-	for (bat_attr =3D batadv_batman_attrs; *bat_attr; ++bat_attr) {
-		err =3D sysfs_create_file(*hardif_obj, &((*bat_attr)->attr));
-		if (err) {
-			batadv_err(dev, "Can't add sysfs file: %s/%s/%s\n",
-				   dev->name, BATADV_SYSFS_IF_BAT_SUBDIR,
-				   ((*bat_attr)->attr).name);
-			goto rem_attr;
-		}
-	}
-
-	return 0;
-
-rem_attr:
-	for (bat_attr =3D batadv_batman_attrs; *bat_attr; ++bat_attr)
-		sysfs_remove_file(*hardif_obj, &((*bat_attr)->attr));
-out:
-	return -ENOMEM;
-}
-
-/**
- * batadv_sysfs_del_hardif() - Remove hard interface specific sysfs entr=
ies
- * @hardif_obj: address to the pointer to which stores batman-adv sysfs =
folder
- *  of the hard interface
- */
-void batadv_sysfs_del_hardif(struct kobject **hardif_obj)
-{
-	kobject_uevent(*hardif_obj, KOBJ_REMOVE);
-	kobject_del(*hardif_obj);
-	kobject_put(*hardif_obj);
-	*hardif_obj =3D NULL;
-}
diff --git a/net/batman-adv/sysfs.h b/net/batman-adv/sysfs.h
deleted file mode 100644
index d987f8b3..00000000
--- a/net/batman-adv/sysfs.h
+++ /dev/null
@@ -1,93 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2010-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner
- */
-
-#ifndef _NET_BATMAN_ADV_SYSFS_H_
-#define _NET_BATMAN_ADV_SYSFS_H_
-
-#include "main.h"
-
-#include <linux/kobject.h>
-#include <linux/netdevice.h>
-#include <linux/sysfs.h>
-#include <linux/types.h>
-
-#define BATADV_SYSFS_IF_MESH_SUBDIR "mesh"
-#define BATADV_SYSFS_IF_BAT_SUBDIR "batman_adv"
-/**
- * BATADV_SYSFS_VLAN_SUBDIR_PREFIX - prefix of the subfolder that will b=
e
- *  created in the sysfs hierarchy for each VLAN interface. The subfolde=
r will
- *  be named "BATADV_SYSFS_VLAN_SUBDIR_PREFIX%vid".
- */
-#define BATADV_SYSFS_VLAN_SUBDIR_PREFIX "vlan"
-
-/**
- * struct batadv_attribute - sysfs export helper for batman-adv attribut=
es
- */
-struct batadv_attribute {
-	/** @attr: sysfs attribute file */
-	struct attribute attr;
-
-	/**
-	 * @show: function to export the current attribute's content to sysfs
-	 */
-	ssize_t (*show)(struct kobject *kobj, struct attribute *attr,
-			char *buf);
-
-	/**
-	 * @store: function to load new value from character buffer and save it
-	 * in batman-adv attribute
-	 */
-	ssize_t (*store)(struct kobject *kobj, struct attribute *attr,
-			 char *buf, size_t count);
-};
-
-#ifdef CONFIG_BATMAN_ADV_SYSFS
-
-int batadv_sysfs_add_meshif(struct net_device *dev);
-void batadv_sysfs_del_meshif(struct net_device *dev);
-int batadv_sysfs_add_hardif(struct kobject **hardif_obj,
-			    struct net_device *dev);
-void batadv_sysfs_del_hardif(struct kobject **hardif_obj);
-int batadv_sysfs_add_vlan(struct net_device *dev,
-			  struct batadv_softif_vlan *vlan);
-void batadv_sysfs_del_vlan(struct batadv_priv *bat_priv,
-			   struct batadv_softif_vlan *vlan);
-
-#else
-
-static inline int batadv_sysfs_add_meshif(struct net_device *dev)
-{
-	return 0;
-}
-
-static inline void batadv_sysfs_del_meshif(struct net_device *dev)
-{
-}
-
-static inline int batadv_sysfs_add_hardif(struct kobject **hardif_obj,
-					  struct net_device *dev)
-{
-	return 0;
-}
-
-static inline void batadv_sysfs_del_hardif(struct kobject **hardif_obj)
-{
-}
-
-static inline int batadv_sysfs_add_vlan(struct net_device *dev,
-					struct batadv_softif_vlan *vlan)
-{
-	return 0;
-}
-
-static inline void batadv_sysfs_del_vlan(struct batadv_priv *bat_priv,
-					 struct batadv_softif_vlan *vlan)
-{
-}
-
-#endif
-
-#endif /* _NET_BATMAN_ADV_SYSFS_H_ */
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 965336a3..7cfe3081 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -187,9 +187,6 @@ struct batadv_hard_iface {
 	/** @net_dev: pointer to the net_device */
 	struct net_device *net_dev;
=20
-	/** @hardif_obj: kobject of the per interface sysfs "mesh" directory */
-	struct kobject *hardif_obj;
-
 	/** @refcount: number of contexts the object is used */
 	struct kref refcount;
=20
@@ -1512,9 +1509,6 @@ struct batadv_softif_vlan {
 	/** @vid: VLAN identifier */
 	unsigned short vid;
=20
-	/** @kobj: kobject for sysfs vlan subdirectory */
-	struct kobject *kobj;
-
 	/** @ap_isolation: AP isolation state */
 	atomic_t ap_isolation;		/* boolean */
=20
@@ -1667,9 +1661,6 @@ struct batadv_priv {
 	/** @batman_queue_left: number of remaining OGM packet slots */
 	atomic_t batman_queue_left;
=20
-	/** @mesh_obj: kobject for sysfs mesh subdirectory */
-	struct kobject *mesh_obj;
-
 #ifdef CONFIG_BATMAN_ADV_DEBUGFS
 	/** @debug_dir: dentry for debugfs batman-adv subdirectory */
 	struct dentry *debug_dir;
@@ -2274,10 +2265,6 @@ struct batadv_algo_gw_ops {
 	 */
 	ssize_t (*store_sel_class)(struct batadv_priv *bat_priv, char *buff,
 				   size_t count);
-
-	/** @show_sel_class: prints the current GW selection class (optional) *=
/
-	ssize_t (*show_sel_class)(struct batadv_priv *bat_priv, char *buff);
-
 	/**
 	 * @get_best_gw_node: select the best GW from the list of available
 	 *  nodes (optional)
@@ -2456,21 +2443,4 @@ enum batadv_tvlv_handler_flags {
 	BATADV_TVLV_HANDLER_OGM_CALLED =3D BIT(2),
 };
=20
-/**
- * struct batadv_store_mesh_work - Work queue item to detach add/del int=
erface
- *  from sysfs locks
- */
-struct batadv_store_mesh_work {
-	/**
-	 * @net_dev: netdevice to add/remove to/from batman-adv soft-interface
-	 */
-	struct net_device *net_dev;
-
-	/** @soft_iface_name: name of soft-interface to modify */
-	char soft_iface_name[IFNAMSIZ];
-
-	/** @work: work queue item */
-	struct work_struct work;
-};
-
 #endif /* _NET_BATMAN_ADV_TYPES_H_ */
--=20
2.28.0
