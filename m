Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ECC430289
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Oct 2021 14:13:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3CC6282602;
	Sat, 16 Oct 2021 14:13:48 +0200 (CEST)
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D1E028064C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Oct 2021 13:21:46 +0200 (CEST)
Received: by mail-pj1-x1033.google.com with SMTP id ls18so9015281pjb.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Oct 2021 04:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v+ROWip2DOu/ejvMTpR01JMqGD3ACZ+pK2z8e30nwBU=;
        b=U6gEy6R2isS5ApGPffAomw4itnMKRCLFRnH5F1vc3cmy3P5fxilDkNWDakQPr6TEn5
         nY0UTdBZDHpe8Eq9unND/qfujdHhpqp2zCGE+IKpJagGKhMNfSHSVVKPgbHj9+LLW5J6
         Ekgfu3L/E+Z8d8XQ4c9MDyKQYL2PKl1TtMGnRr+qrzXE7CiAJf2Jzj4KhS3wPv17TUeR
         5vp5S3rilwTz3+CWsIMVSno2bSXDhtkmZ2m4RZsPJyQ1HNWjdv3RIuob6PT99l4g5nKW
         EJ015IviUY6BL4tidEGWSu61iZzKrxHS7a6v2cdioxum98KfoxgWB15si2tUKEv7F5Qe
         hDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v+ROWip2DOu/ejvMTpR01JMqGD3ACZ+pK2z8e30nwBU=;
        b=XFaam0tOxE0V3IonI09fuh0EOmwVYx5dc++10NJODtJamUTLoLAZCINwK/gtE568qq
         MNpS+N52rHsN3vNIhkqSPtniL9X2KBoSXnKaavhbdUOPLfgxAyw8lEFznOxE6lVulcxT
         o1NXW/EwhRsfbL3BOhNXffReG42dQprmvOdOD/uknL/sRNZ8YNiFTVbGsbNdDUm8EryI
         9r+/667RO5jmd+kGoKxdRv9Weqa5orzpJbG4O9KH7s9n+5VLzDk05+FqOpfsSI7N0z2L
         UrrM5J2miYcA2aGHIjo0jLPVzADfs0nz2fdO08dAwFwQ8zdiZFls7zxPExib0PlT/1uF
         DGow==
X-Gm-Message-State: AOAM532zo2M6U0T/CMUxsPoFMPjDdQynx+NvuIT7R4F7ZPNlWWx/7w8t
	8yWTDo6WmB2MKwrX67LFkv0=
X-Google-Smtp-Source: ABdhPJyaV9NtD0ddKyNyjSDHSOdDhYIYDTt623NEd5phUE6MFqERN6ln5jxLvm5swtvCYllDVMQSbg==
X-Received: by 2002:a17:90b:4b03:: with SMTP id lx3mr19636771pjb.162.1634383304729;
        Sat, 16 Oct 2021 04:21:44 -0700 (PDT)
Received: from rok-te3.kortoor.gmail.com.beta.tailscale.net ([211.250.198.237])
        by smtp.googlemail.com with ESMTPSA id b16sm7905873pfm.58.2021.10.16.04.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Oct 2021 04:21:44 -0700 (PDT)
From: Kyungrok Chung <acadx0@gmail.com>
To: Marek Lindner <mareklindner@neomailbox.ch>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Antonio Quartulli <a@unstable.cc>,
	Sven Eckelmann <sven@narfation.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Roopa Prabhu <roopa@nvidia.com>,
	Nikolay Aleksandrov <nikolay@nvidia.com>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>
Subject: [PATCH v3 net-next] net: make use of helper netif_is_bridge_master()
Date: Sat, 16 Oct 2021 20:21:36 +0900
Message-Id: <20211016112137.18858-1-acadx0@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634383306;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=v+ROWip2DOu/ejvMTpR01JMqGD3ACZ+pK2z8e30nwBU=;
	b=lu6V9M61jgblnzuDRykklt0UWJCjuhdLMkxxl+43GN1hGNaqJrFRyEpdRo3RxoCKTZdXxn
	vUxDqXcDNHb4IkbjaAkUDkmS2/jp2SwaQeC22oG6sQOAkVaRzC5ZCtIPY3zADze9HPGBJb
	q/mDanYWOxNY2GlMzfUMQtExWZWW4Tk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=U6gEy6R2;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of acadx0@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=acadx0@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634383306; a=rsa-sha256;
	cv=none;
	b=U34lvoC2MZDvIaVPPsVTUJeGz/7ocfLth0qIWgHEIsCMPEkwXG7Dj/aDAHMHvua9JAHLcq
	LcUeX/8xqqPNibjrK1BmPiL+qDOdeUC6MZbxEri4U42ub5BA8xIsIRznQbKKiIYWr33vpR
	IOVfneRaK87+um83dPt6a1+zx6dokHY=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: acadx0@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: NJL6SRON24HH4V6QSJZBC6A3ERPMJF3Q
X-Message-ID-Hash: NJL6SRON24HH4V6QSJZBC6A3ERPMJF3Q
X-Mailman-Approved-At: Sat, 16 Oct 2021 12:13:44 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NJL6SRON24HH4V6QSJZBC6A3ERPMJF3Q/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Make use of netdev helper functions to improve code readability.
Replace 'dev->priv_flags & IFF_EBRIDGE' with netif_is_bridge_master(dev).

Signed-off-by: Kyungrok Chung <acadx0@gmail.com>
---

v1->v2:
  - Apply fixes to batman-adv, core too.

v2->v3:
  - Fix wrong logic.

 net/batman-adv/multicast.c      | 2 +-
 net/bridge/br.c                 | 4 ++--
 net/bridge/br_fdb.c             | 6 +++---
 net/bridge/br_if.c              | 2 +-
 net/bridge/br_ioctl.c           | 2 +-
 net/bridge/br_mdb.c             | 4 ++--
 net/bridge/br_netfilter_hooks.c | 2 +-
 net/bridge/br_netlink.c         | 4 ++--
 net/core/rtnetlink.c            | 2 +-
 9 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index a3b6658ed789..433901dcf0c3 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -89,7 +89,7 @@ static struct net_device *batadv_mcast_get_bridge(struc=
t net_device *soft_iface)
 	rcu_read_lock();
 	do {
 		upper =3D netdev_master_upper_dev_get_rcu(upper);
-	} while (upper && !(upper->priv_flags & IFF_EBRIDGE));
+	} while (upper && !netif_is_bridge_master(upper));
=20
 	dev_hold(upper);
 	rcu_read_unlock();
diff --git a/net/bridge/br.c b/net/bridge/br.c
index d3a32c6813e0..1fac72cc617f 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -36,7 +36,7 @@ static int br_device_event(struct notifier_block *unuse=
d, unsigned long event, v
 	bool changed_addr;
 	int err;
=20
-	if (dev->priv_flags & IFF_EBRIDGE) {
+	if (netif_is_bridge_master(dev)) {
 		err =3D br_vlan_bridge_event(dev, event, ptr);
 		if (err)
 			return notifier_from_errno(err);
@@ -349,7 +349,7 @@ static void __net_exit br_net_exit(struct net *net)
=20
 	rtnl_lock();
 	for_each_netdev(net, dev)
-		if (dev->priv_flags & IFF_EBRIDGE)
+		if (netif_is_bridge_master(dev))
 			br_dev_delete(dev, &list);
=20
 	unregister_netdevice_many(&list);
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 46812b659710..a6a68e18c70a 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -825,7 +825,7 @@ int br_fdb_dump(struct sk_buff *skb,
 	struct net_bridge_fdb_entry *f;
 	int err =3D 0;
=20
-	if (!(dev->priv_flags & IFF_EBRIDGE))
+	if (!netif_is_bridge_master(dev))
 		return err;
=20
 	if (!filter_dev) {
@@ -1076,7 +1076,7 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb=
[],
 		return -EINVAL;
 	}
=20
-	if (dev->priv_flags & IFF_EBRIDGE) {
+	if (netif_is_bridge_master(dev)) {
 		br =3D netdev_priv(dev);
 		vg =3D br_vlan_group(br);
 	} else {
@@ -1173,7 +1173,7 @@ int br_fdb_delete(struct ndmsg *ndm, struct nlattr =
*tb[],
 	struct net_bridge *br;
 	int err;
=20
-	if (dev->priv_flags & IFF_EBRIDGE) {
+	if (netif_is_bridge_master(dev)) {
 		br =3D netdev_priv(dev);
 		vg =3D br_vlan_group(br);
 	} else {
diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index 4a02f8bb278a..c11bba3e7ec0 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -471,7 +471,7 @@ int br_del_bridge(struct net *net, const char *name)
 	if (dev =3D=3D NULL)
 		ret =3D  -ENXIO; 	/* Could not find device */
=20
-	else if (!(dev->priv_flags & IFF_EBRIDGE)) {
+	else if (!netif_is_bridge_master(dev)) {
 		/* Attempt to delete non bridge device! */
 		ret =3D -EPERM;
 	}
diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
index 49c268871fc1..db4ab2c2ce18 100644
--- a/net/bridge/br_ioctl.c
+++ b/net/bridge/br_ioctl.c
@@ -26,7 +26,7 @@ static int get_bridge_ifindices(struct net *net, int *i=
ndices, int num)
 	for_each_netdev_rcu(net, dev) {
 		if (i >=3D num)
 			break;
-		if (dev->priv_flags & IFF_EBRIDGE)
+		if (netif_is_bridge_master(dev))
 			indices[i++] =3D dev->ifindex;
 	}
 	rcu_read_unlock();
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 0281453f7766..61ccf46fcc21 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -422,7 +422,7 @@ static int br_mdb_dump(struct sk_buff *skb, struct ne=
tlink_callback *cb)
 	cb->seq =3D net->dev_base_seq;
=20
 	for_each_netdev_rcu(net, dev) {
-		if (dev->priv_flags & IFF_EBRIDGE) {
+		if (netif_is_bridge_master(dev)) {
 			struct net_bridge *br =3D netdev_priv(dev);
 			struct br_port_msg *bpm;
=20
@@ -1016,7 +1016,7 @@ static int br_mdb_parse(struct sk_buff *skb, struct=
 nlmsghdr *nlh,
 		return -ENODEV;
 	}
=20
-	if (!(dev->priv_flags & IFF_EBRIDGE)) {
+	if (!netif_is_bridge_master(dev)) {
 		NL_SET_ERR_MSG_MOD(extack, "Device is not a bridge");
 		return -EOPNOTSUPP;
 	}
diff --git a/net/bridge/br_netfilter_hooks.c b/net/bridge/br_netfilter_ho=
oks.c
index 8edfb98ae1d5..b5af68c105a8 100644
--- a/net/bridge/br_netfilter_hooks.c
+++ b/net/bridge/br_netfilter_hooks.c
@@ -968,7 +968,7 @@ static int brnf_device_event(struct notifier_block *u=
nused, unsigned long event,
 	struct net *net;
 	int ret;
=20
-	if (event !=3D NETDEV_REGISTER || !(dev->priv_flags & IFF_EBRIDGE))
+	if (event !=3D NETDEV_REGISTER || !netif_is_bridge_master(dev))
 		return NOTIFY_DONE;
=20
 	ASSERT_RTNL();
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 5c6c4305ed23..0c8b5f1a15bc 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -106,7 +106,7 @@ static size_t br_get_link_af_size_filtered(const stru=
ct net_device *dev,
 		p =3D br_port_get_check_rcu(dev);
 		if (p)
 			vg =3D nbp_vlan_group_rcu(p);
-	} else if (dev->priv_flags & IFF_EBRIDGE) {
+	} else if (netif_is_bridge_master(dev)) {
 		br =3D netdev_priv(dev);
 		vg =3D br_vlan_group_rcu(br);
 	}
@@ -1050,7 +1050,7 @@ int br_dellink(struct net_device *dev, struct nlmsg=
hdr *nlh, u16 flags)
=20
 	p =3D br_port_get_rtnl(dev);
 	/* We want to accept dev as bridge itself as well */
-	if (!p && !(dev->priv_flags & IFF_EBRIDGE))
+	if (!p && !netif_is_bridge_master(dev))
 		return -EINVAL;
=20
 	err =3D br_afspec(br, p, afspec, RTM_DELLINK, &changed, NULL);
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 2dc1b209ba91..564d24c451af 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4384,7 +4384,7 @@ static int rtnl_fdb_dump(struct sk_buff *skb, struc=
t netlink_callback *cb)
 					continue;
=20
 				if (br_dev !=3D netdev_master_upper_dev_get(dev) &&
-				    !(dev->priv_flags & IFF_EBRIDGE))
+				    !netif_is_bridge_master(dev))
 					continue;
 				cops =3D ops;
 			}
--=20
2.33.0
