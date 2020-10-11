Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6C028A6F6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 11 Oct 2020 12:25:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C170280A27;
	Sun, 11 Oct 2020 12:25:33 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DFB7A809D1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 11 Oct 2020 12:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1602411931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5r0mwlKX6SczlN02/2SghQ9VZ/OGeSs+yaatz30N524=;
	b=CuXQ39BSmn9b5mKz6gk8IwfTkWB34THxtJP5SJQEkEpWIEyQCWqt/jmSjqhHg8211/t4Tv
	e8JRENKcz98e6E27YJicY0azWxze+282LCMFbHneEpiLKdO6D4HL+rsEHh3ZnrYjlq3G/G
	8CIYZ7JDIjHDup3oStmXNzdWqwN8GXI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v3 2/2] batman-adv: Allow selection of routing algorithm over rtnetlink
Date: Sun, 11 Oct 2020 12:25:24 +0200
Message-Id: <20201011102524.302085-2-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201011102524.302085-1-sven@narfation.org>
References: <20201011102524.302085-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1602411931; a=rsa-sha256;
	cv=none;
	b=hMBx/5HVGRI6hb5kaYEEkoxTJwfm4cOa5NWkwkSuVdDl5LilJwkcqJLtlf4WbrCb8SpTa9
	Y113s4Gk8cwgZtMeUzITPuP+/AaimHMHl/5ImRasoxB0UQCd+S3p5gsC08ArnLeI+SF9Lp
	21nfh2fdtbLKvCXevGY2uh68f8VaQxo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=CuXQ39BS;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1602411931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=5r0mwlKX6SczlN02/2SghQ9VZ/OGeSs+yaatz30N524=;
	b=1wWl70t/+2a5c6XoYDEeazbS7BBicr4O+WKtT/rBV4sPQI+P7Vp4Plm1DhTKssvK17YR7f
	ARKgemA2rZxQ09fDk+ktwqweKIkJav8nTtqBzrL5CYbSfNi6QdJ/n4SA58SK6c0XBa+Uny
	xEpm4XMTkEn7gWCAhMd2FBLeqjxp/a0=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: AAGHOI75R63IDI5AG5UXBNCSCIZS7BB4
X-Message-ID-Hash: AAGHOI75R63IDI5AG5UXBNCSCIZS7BB4
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Annika Wickert <annika.wickert@exaring.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AAGHOI75R63IDI5AG5UXBNCSCIZS7BB4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

A batadv net_device is associated to a B.A.T.M.A.N. routing algorithm. Th=
is
algorithm has to be selected before the interface is initialized and cann=
ot
be changed after that. The only way to select this algorithm was a module
parameter which specifies the default algorithm used during the creation =
of
the net_device.

This module parameter is writeable over
/sys/module/batman_adv/parameters/routing_algo and thus allows switching =
of
the routing algorithm:

1. change routing_algo parameter
2. create new batadv net_device

But this is not race free because another process can be scheduled betwee=
n
1 + 2 and in that time frame change the routing_algo parameter again.

It is much cleaner to directly provide this information inside the
rtnetlink's RTM_NEWLINK message. The two processes would be (in regards o=
f
the creation parameter of their batadv interfaces) be isolated. This also
eases the integration of batadv devices inside tools like network-manager
or systemd-networkd which are not expecting to operate on /sys before a n=
ew
net_device is created.

Cc: Annika Wickert <annika.wickert@exaring.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
v3:
* still allow RTM_NEWLINK messages without IFLA_INFO_DATA for backwards
  compatibility
v2:
* no change

 include/uapi/linux/batman_adv.h |  6 ++++++
 net/batman-adv/bat_algo.c       | 10 ++++++++--
 net/batman-adv/bat_algo.h       |  3 ++-
 net/batman-adv/soft-interface.c | 31 ++++++++++++++++++++++++++++---
 4 files changed, 44 insertions(+), 6 deletions(-)

diff --git a/include/uapi/linux/batman_adv.h b/include/uapi/linux/batman_=
adv.h
index b05399d8..bdb317fa 100644
--- a/include/uapi/linux/batman_adv.h
+++ b/include/uapi/linux/batman_adv.h
@@ -685,6 +685,12 @@ enum batadv_ifla_attrs {
 	 */
 	IFLA_BATADV_UNSPEC,
=20
+	/**
+	 * @IFLA_BATADV_ALGO_NAME: routing algorithm (name) which should be
+	 *  used by the newly registered batadv net_device.
+	 */
+	IFLA_BATADV_ALGO_NAME,
+
 	/* add attributes above here, update the policy in soft-interface.c */
=20
 	/**
diff --git a/net/batman-adv/bat_algo.c b/net/batman-adv/bat_algo.c
index 382fbe51..500db94a 100644
--- a/net/batman-adv/bat_algo.c
+++ b/net/batman-adv/bat_algo.c
@@ -34,7 +34,13 @@ void batadv_algo_init(void)
 	INIT_HLIST_HEAD(&batadv_algo_list);
 }
=20
-static struct batadv_algo_ops *batadv_algo_get(char *name)
+/**
+ * batadv_algo_get() - Search for algorithm with specific name
+ * @name: algorithm name to find
+ *
+ * Return: Pointer to batadv_algo_ops on success, NULL otherwise
+ */
+struct batadv_algo_ops *batadv_algo_get(const char *name)
 {
 	struct batadv_algo_ops *bat_algo_ops =3D NULL, *bat_algo_ops_tmp;
=20
@@ -97,7 +103,7 @@ int batadv_algo_register(struct batadv_algo_ops *bat_a=
lgo_ops)
  *
  * Return: 0 on success or negative error number in case of failure
  */
-int batadv_algo_select(struct batadv_priv *bat_priv, char *name)
+int batadv_algo_select(struct batadv_priv *bat_priv, const char *name)
 {
 	struct batadv_algo_ops *bat_algo_ops;
=20
diff --git a/net/batman-adv/bat_algo.h b/net/batman-adv/bat_algo.h
index 686a60bc..2ae140ea 100644
--- a/net/batman-adv/bat_algo.h
+++ b/net/batman-adv/bat_algo.h
@@ -18,8 +18,9 @@ extern char batadv_routing_algo[];
 extern struct list_head batadv_hardif_list;
=20
 void batadv_algo_init(void);
+struct batadv_algo_ops *batadv_algo_get(const char *name);
 int batadv_algo_register(struct batadv_algo_ops *bat_algo_ops);
-int batadv_algo_select(struct batadv_priv *bat_priv, char *name);
+int batadv_algo_select(struct batadv_priv *bat_priv, const char *name);
 int batadv_algo_seq_print_text(struct seq_file *seq, void *offset);
 int batadv_algo_dump(struct sk_buff *msg, struct netlink_callback *cb);
=20
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 9c7b8968..8116631c 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -846,9 +846,11 @@ static int batadv_softif_init_late(struct net_device=
 *dev)
=20
 	batadv_nc_init_bat_priv(bat_priv);
=20
-	ret =3D batadv_algo_select(bat_priv, batadv_routing_algo);
-	if (ret < 0)
-		goto free_bat_counters;
+	if (!bat_priv->algo_ops) {
+		ret =3D batadv_algo_select(bat_priv, batadv_routing_algo);
+		if (ret < 0)
+			goto free_bat_counters;
+	}
=20
 	ret =3D batadv_debugfs_add_meshif(dev);
 	if (ret < 0)
@@ -1085,6 +1087,17 @@ static void batadv_softif_init_early(struct net_de=
vice *dev)
 static int batadv_softif_validate(struct nlattr *tb[], struct nlattr *da=
ta[],
 				  struct netlink_ext_ack *extack)
 {
+	struct batadv_algo_ops *algo_ops;
+
+	if (!data)
+		return 0;
+
+	if (data[IFLA_BATADV_ALGO_NAME]) {
+		algo_ops =3D batadv_algo_get(nla_data(data[IFLA_BATADV_ALGO_NAME]));
+		if (!algo_ops)
+			return -EINVAL;
+	}
+
 	return 0;
 }
=20
@@ -1102,6 +1115,17 @@ static int batadv_softif_newlink(struct net *src_n=
et, struct net_device *dev,
 				 struct nlattr *tb[], struct nlattr *data[],
 				 struct netlink_ext_ack *extack)
 {
+	struct batadv_priv *bat_priv =3D netdev_priv(dev);
+	const char *algo_name;
+	int err;
+
+	if (data && data[IFLA_BATADV_ALGO_NAME]) {
+		algo_name =3D nla_data(data[IFLA_BATADV_ALGO_NAME]);
+		err =3D batadv_algo_select(bat_priv, algo_name);
+		if (err)
+			return -EINVAL;
+	}
+
 	return register_netdevice(dev);
 }
=20
@@ -1204,6 +1228,7 @@ bool batadv_softif_is_valid(const struct net_device=
 *net_dev)
 }
=20
 static const struct nla_policy batadv_ifla_policy[IFLA_BATADV_MAX + 1] =3D=
 {
+	[IFLA_BATADV_ALGO_NAME]	=3D { .type =3D NLA_NUL_STRING },
 };
=20
 struct rtnl_link_ops batadv_link_ops __read_mostly =3D {
--=20
2.28.0
