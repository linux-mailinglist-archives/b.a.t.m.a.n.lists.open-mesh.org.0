Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F50328A6E0
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 11 Oct 2020 12:09:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1F2AB80244;
	Sun, 11 Oct 2020 12:09:53 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1B42B80244
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 11 Oct 2020 12:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1602410989;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=P+i6i1x3o1pOfe4CDa2RmbiBZdRZRFvPIPj8oBLBqdY=;
	b=lvuNGzXIYV3Pam7PS+0WFCuGBRbY2CPvjnIexPj0nyNA3AAaUwInydCv1TekMmL0wUabif
	QWQ8OEo8veKg6CWNJ4os47qzBBfzESHab6PwHe86u3C0rrS+dwaldZ8V29CMEFe9y/qext
	TNFOBjeaxug+hT3B1B/eiTgBltu7MV0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 1/2] batman-adv: Prepare infrastructure for newlink settings
Date: Sun, 11 Oct 2020 12:09:40 +0200
Message-Id: <20201011100941.299742-1-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1602410990; a=rsa-sha256;
	cv=none;
	b=GB2VhN618xfpmh6pNg5Os4CECFZrxRyZkEPQaz9iz8m+ILWzO8lxPcJZF4BdhrViX7mXUg
	efpO8Z6ojvZw8OjCe9xGWoJHtOEwokJAzreIwIyuww2mZSQtwEB/Up/sL7MEHgK4G2RL2C
	r19FYy2M24vYXxGSLvJ664TcE1Entug=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=lvuNGzXI;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1602410990;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=P+i6i1x3o1pOfe4CDa2RmbiBZdRZRFvPIPj8oBLBqdY=;
	b=02CotQxSZik7ePDHAxtkGRKHBX6vxzrQwlOlYyzdZnPNE7mbsN/JvihwxxFyBm1TkrG0DJ
	xnCmwNSnzSt9lPb02vIjvNbFmScMc1rJB9t6duDyCvoOr/dIv+ZlXXE/I80m/bWl9L7mgu
	25CkLhmV4I4gjssvqPckSyGVBe4/ciU=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: CKI57G3VEUF3A5YYMIIRCWTIJBWTKFCL
X-Message-ID-Hash: CKI57G3VEUF3A5YYMIIRCWTIJBWTKFCL
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Annika Wickert <annika.wickert@exaring.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CKI57G3VEUF3A5YYMIIRCWTIJBWTKFCL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The batadv generic netlink family can be used to retrieve the current sta=
te
and set various configuration settings. But there are also settings which
must be set before the actual interface is created.

The rtnetlink already uses IFLA_INFO_DATA to allow net_device families to
transfer such configurations. The minimal required functionality for this
is now available for the batadv rtnl_link_ops. Also a new IFLA class of
attributes will be attached to it because rtnetlink only allows 51
different attributes but batadv_nl_attrs already contains 62 attributes.

Cc: Annika Wickert <annika.wickert@exaring.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
v2:
* don't use compat code for kernel 4.13 and 4.14

 compat.h                        | 11 ++++++++++
 include/uapi/linux/batman_adv.h | 20 +++++++++++++++++
 net/batman-adv/soft-interface.c | 39 +++++++++++++++++++++++++++++++++
 3 files changed, 70 insertions(+)

diff --git a/compat.h b/compat.h
index e3220e39..9da9feb7 100644
--- a/compat.h
+++ b/compat.h
@@ -15,6 +15,17 @@
=20
 #include "compat-autoconf.h"
=20
+#if LINUX_VERSION_IS_LESS(4, 13, 0)
+
+#define batadv_softif_validate(__tb, __data, __extack) \
+	batadv_softif_validate(__tb, __data)
+
+#define batadv_softif_newlink(__src_net, __dev, __tb, __data, __extack) =
\
+	batadv_softif_newlink(__src_net, __dev, __tb, __data)
+
+#endif /* LINUX_VERSION_IS_LESS(4, 13, 0) */
+
+
 #if LINUX_VERSION_IS_LESS(4, 15, 0)
=20
 #define batadv_softif_slave_add(__dev, __slave_dev, __extack) \
diff --git a/include/uapi/linux/batman_adv.h b/include/uapi/linux/batman_=
adv.h
index bb0ae945..b05399d8 100644
--- a/include/uapi/linux/batman_adv.h
+++ b/include/uapi/linux/batman_adv.h
@@ -675,4 +675,24 @@ enum batadv_tp_meter_reason {
 	BATADV_TP_REASON_TOO_MANY		=3D 133,
 };
=20
+/**
+ * enum batadv_ifla_attrs - batman-adv ifla nested attributes
+ */
+enum batadv_ifla_attrs {
+	/**
+	 * @IFLA_BATADV_UNSPEC: unspecified attribute which is not parsed by
+	 *  rtnetlink
+	 */
+	IFLA_BATADV_UNSPEC,
+
+	/* add attributes above here, update the policy in soft-interface.c */
+
+	/**
+	 * @__IFLA_BATADV_MAX: internal use
+	 */
+	__IFLA_BATADV_MAX,
+};
+
+#define IFLA_BATADV_MAX (__IFLA_BATADV_MAX - 1)
+
 #endif /* _UAPI_LINUX_BATMAN_ADV_H_ */
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 82e7ca88..9c7b8968 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -38,6 +38,7 @@
 #include <linux/stddef.h>
 #include <linux/string.h>
 #include <linux/types.h>
+#include <net/netlink.h>
 #include <uapi/linux/batadv_packet.h>
 #include <uapi/linux/batman_adv.h>
=20
@@ -1073,6 +1074,37 @@ static void batadv_softif_init_early(struct net_de=
vice *dev)
 	dev->ethtool_ops =3D &batadv_ethtool_ops;
 }
=20
+/**
+ * batadv_softif_validate() - validate configuration of new batadv link
+ * @tb: IFLA_INFO_DATA netlink attributes
+ * @data: enum batadv_ifla_attrs attributes
+ * @extack: extended ACK report struct
+ *
+ * Return: 0 if successful or error otherwise.
+ */
+static int batadv_softif_validate(struct nlattr *tb[], struct nlattr *da=
ta[],
+				  struct netlink_ext_ack *extack)
+{
+	return 0;
+}
+
+/**
+ * batadv_softif_newlink() - pre-initialize and register new batadv link
+ * @src_net: the applicable net namespace
+ * @dev: network device to register
+ * @tb: IFLA_INFO_DATA netlink attributes
+ * @data: enum batadv_ifla_attrs attributes
+ * @extack: extended ACK report struct
+ *
+ * Return: 0 if successful or error otherwise.
+ */
+static int batadv_softif_newlink(struct net *src_net, struct net_device =
*dev,
+				 struct nlattr *tb[], struct nlattr *data[],
+				 struct netlink_ext_ack *extack)
+{
+	return register_netdevice(dev);
+}
+
 /**
  * batadv_softif_create() - Create and register soft interface
  * @net: the applicable net namespace
@@ -1171,9 +1203,16 @@ bool batadv_softif_is_valid(const struct net_devic=
e *net_dev)
 	return false;
 }
=20
+static const struct nla_policy batadv_ifla_policy[IFLA_BATADV_MAX + 1] =3D=
 {
+};
+
 struct rtnl_link_ops batadv_link_ops __read_mostly =3D {
 	.kind		=3D "batadv",
 	.priv_size	=3D sizeof(struct batadv_priv),
 	.setup		=3D batadv_softif_init_early,
+	.maxtype	=3D IFLA_BATADV_MAX,
+	.policy		=3D batadv_ifla_policy,
+	.validate	=3D batadv_softif_validate,
+	.newlink	=3D batadv_softif_newlink,
 	.dellink	=3D batadv_softif_destroy_netlink,
 };
--=20
2.28.0
