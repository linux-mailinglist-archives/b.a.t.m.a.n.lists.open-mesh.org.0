Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AF25F2CF149
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  4 Dec 2020 16:55:41 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AA5B582647;
	Fri,  4 Dec 2020 16:55:28 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 025E380DFD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Dec 2020 16:55:08 +0100 (CET)
Received: from kero.packetmixer.de (p200300c59716c1e0c1b6a3b925be22c4.dip0.t-ipconnect.de [IPv6:2003:c5:9716:c1e0:c1b6:a3b9:25be:22c4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 23AF1174062;
	Fri,  4 Dec 2020 16:46:34 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 3/8] batman-adv: Prepare infrastructure for newlink settings
Date: Fri,  4 Dec 2020 16:46:26 +0100
Message-Id: <20201204154631.21063-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201204154631.21063-1-sw@simonwunderlich.de>
References: <20201204154631.21063-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1607097308;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FJsqWjV0zvMLt4M1VWbbp7PAELV28y24AhLVp4NhqQw=;
	b=S8BAYJnn4Vba5ujlQvryNL4yWswkpFJYTBhEvijTEv97VUbi03rtGjwLPjaRH08Sh3X9+Q
	B9ysO4dQpTAc3CUkLUy2xGPxME113wV+7FNGJWOc+8gwvsn4nwAo63IomXJpOgRDpNOeLQ
	+ESwZayuy++ana/bIQZeSzXv9mdQ3iQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1607097308; a=rsa-sha256;
	cv=none;
	b=Tr5ThdZe9WHUVi2SQeDcUq7tOJUIQMucORwVXQcglNqy+FuuW8Ugkytywq3ZEhFYPWmTdd
	zRZiS8Tw8lQWtgV6YBMFynD10GeNMqnR0sK1CDKHk0faBsnQV6aLaVIqTp2be3J5Uht6Cp
	aQYaChlvEVDP+NMVgXZI8Hy2OlzHqok=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: IGCQ4MQPXOKGLMOJQEHVUE6YWEQZQJY4
X-Message-ID-Hash: IGCQ4MQPXOKGLMOJQEHVUE6YWEQZQJY4
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IGCQ4MQPXOKGLMOJQEHVUE6YWEQZQJY4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The batadv generic netlink family can be used to retrieve the current sta=
te
and set various configuration settings. But there are also settings which
must be set before the actual interface is created.

The rtnetlink already uses IFLA_INFO_DATA to allow net_device families to
transfer such configurations. The minimal required functionality for this
is now available for the batadv rtnl_link_ops. Also a new IFLA class of
attributes will be attached to it because rtnetlink only allows 51
different attributes but batadv_nl_attrs already contains 62 attributes.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 include/uapi/linux/batman_adv.h | 20 +++++++++++++++++
 net/batman-adv/soft-interface.c | 39 +++++++++++++++++++++++++++++++++
 2 files changed, 59 insertions(+)

diff --git a/include/uapi/linux/batman_adv.h b/include/uapi/linux/batman_=
adv.h
index bb0ae945b36a..b05399d8a127 100644
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
index 82e7ca886605..9c7b89689c97 100644
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
2.20.1
