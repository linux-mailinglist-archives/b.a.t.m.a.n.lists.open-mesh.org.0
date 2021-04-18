Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D5B363778
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 18 Apr 2021 22:14:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 517498020F;
	Sun, 18 Apr 2021 22:14:29 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DB2278020F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 18 Apr 2021 22:14:26 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 870073ED83
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 18 Apr 2021 22:14:24 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [RFC PATCH] batman-adv: convert ifmcaddr6 to RCU
Date: Sun, 18 Apr 2021 22:14:22 +0200
Message-Id: <20210418201422.8415-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1618776867; a=rsa-sha256;
	cv=none;
	b=oZLIvfnqPAMGJs7AnHQAXytVQwiZuzvrC1dOGvWAgFEbZl/QHf98iXRXMDA9ivbA7x348v
	YiPtXbXO1RY0SB7bNIp3cUqmNRxN55ttaFfRaPwfmBN3VfhK6WaBXQq/2vtzewA12JTyYa
	VurHdKCUQ7Loktt+Yndy/0Il77loZt4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1618776867;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/A6h/Zb124xj/9rGhMWBLZjudapSlND80290mXNvOO0=;
	b=P76mySQJU3kLF/dyrWFn4ZlFHZwL3K3g0vh1WCvqXgcG2RKCvZTUF4DCmcGBkY9HRUVZvl
	ynnS3oWDgSDgTO4giEVa9ursiEQD1/4wuAIGFtVCJVtWdsW9SdxiwwejdUN55vELtNWn7I
	mzt19/aZcMa/I91KXdsx6jDhB1PdNvg=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: OIBIJ3NYBZSRE7R4AFU3Q3M3BD3TQ6SW
X-Message-ID-Hash: OIBIJ3NYBZSRE7R4AFU3Q3M3BD3TQ6SW
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OIBIJ3NYBZSRE7R4AFU3Q3M3BD3TQ6SW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Taehee Yoo <ap420073@gmail.com>

The ifmcaddr6 has been protected by inet6_dev->lock(rwlock) so that
the critical section is atomic context. In order to switch this context,
changing locking is needed. The ifmcaddr6 actually already protected by
RTNL So if it's converted to use RCU, its control path context can be
switched to sleepable.

Suggested-by: Cong Wang <xiyou.wangcong@gmail.com>
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
[linus.luessing@c0d3.blue: Add compat code]
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
@Sven: maybe something like this?

Seems to compile fine for me, without warnings and seems to run fine and
use the compat code for me.

I tried to create and add it to compat-include/net/if_inet6.h, as that
would fit better for the "struct ifmcaddr6", but couldn't get that
to work, lots of errors. And when adding it to compat.h the compat code
does not seem to be used at all.

Also let me know if the kernel version is correct or if it should be
5.14 instead?

 compat-include/net/addrconf.h | 85 +++++++++++++++++++++++++++++++++++
 net/batman-adv/multicast.c    |  6 +--
 2 files changed, 88 insertions(+), 3 deletions(-)

diff --git a/compat-include/net/addrconf.h b/compat-include/net/addrconf.=
h
index 30124124..080e1dda 100644
--- a/compat-include/net/addrconf.h
+++ b/compat-include/net/addrconf.h
@@ -25,4 +25,89 @@ static inline int batadv_ipv6_mc_check_mld(struct sk_b=
uff *skb)
=20
 #endif /* LINUX_VERSION_IS_LESS(5, 1, 0) */
=20
+#if LINUX_VERSION_IS_LESS(5, 13, 0)
+
+static bool batadv_mcast_mla_is_duplicate(u8 *mcast_addr,
+					  struct hlist_head *mcast_list);
+
+static inline int
+compat_batadv_mcast_mla_softif_get_ipv6(struct net_device *dev,
+				 struct hlist_head *mcast_list,
+				 struct batadv_mcast_mla_flags *flags,
+				 u8 *mcast_addr,
+				struct batadv_hw_addr *new,
+				struct inet6_dev *in6_dev)
+
+{
+	struct ifmcaddr6 *pmc6;
+	int ret =3D 0;
+
+	if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV6)
+		return 0;
+
+	rcu_read_lock();
+
+	in6_dev =3D __in6_dev_get(dev);
+	if (!in6_dev) {
+		rcu_read_unlock();
+		return 0;
+	}
+
+	read_lock_bh(&in6_dev->lock);
+	for (pmc6 =3D in6_dev->mc_list; pmc6; pmc6 =3D pmc6->next) {
+		if (IPV6_ADDR_MC_SCOPE(&pmc6->mca_addr) <
+		    IPV6_ADDR_SCOPE_LINKLOCAL)
+			continue;
+
+		if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
+		    ipv6_addr_is_ll_all_nodes(&pmc6->mca_addr))
+			continue;
+
+		if (!(flags->tvlv_flags & BATADV_MCAST_WANT_NO_RTR6) &&
+		    IPV6_ADDR_MC_SCOPE(&pmc6->mca_addr) >
+		    IPV6_ADDR_SCOPE_LINKLOCAL)
+			continue;
+
+		ipv6_eth_mc_map(&pmc6->mca_addr, mcast_addr);
+
+		if (batadv_mcast_mla_is_duplicate(mcast_addr, mcast_list))
+			continue;
+
+		new =3D kmalloc(sizeof(*new), GFP_ATOMIC);
+		if (!new) {
+			ret =3D -ENOMEM;
+			break;
+		}
+
+		ether_addr_copy(new->addr, mcast_addr);
+		hlist_add_head(&new->list, mcast_list);
+		ret++;
+	}
+	read_unlock_bh(&in6_dev->lock);
+	rcu_read_unlock();
+
+	return ret;
+}
+
+#define ifmcaddr6 \
+		net_device *orig_dev =3D dev; \
+		return compat_batadv_mcast_mla_softif_get_ipv6(orig_dev, \
+							       mcast_list, \
+							       flags, \
+							       mcast_addr, \
+							       new =3D NULL, \
+							       in6_dev =3D NULL); \
+	} \
+	static inline int \
+	__unused_batadv_mcast_mla_softif_get_ipv6(struct net_device *dev, \
+					     struct hlist_head *mcast_list, \
+					     struct batadv_mcast_mla_flags *flags) \
+	{ \
+		struct batadv_hw_addr *new; \
+		struct inet6_dev *in6_dev; \
+		u8 mcast_addr[ETH_ALEN]; \
+		struct ifmcaddr6
+
+#endif /* LINUX_VERSION_IS_LESS(5, 13, 0) */
+
 #endif	/* _NET_BATMAN_ADV_COMPAT_NET_ADDRCONF_H_ */
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 28166402..1d63c8cb 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -454,8 +454,9 @@ batadv_mcast_mla_softif_get_ipv6(struct net_device *d=
ev,
 		return 0;
 	}
=20
-	read_lock_bh(&in6_dev->lock);
-	for (pmc6 =3D in6_dev->mc_list; pmc6; pmc6 =3D pmc6->next) {
+	for (pmc6 =3D rcu_dereference(in6_dev->mc_list);
+	     pmc6;
+	     pmc6 =3D rcu_dereference(pmc6->next)) {
 		if (IPV6_ADDR_MC_SCOPE(&pmc6->mca_addr) <
 		    IPV6_ADDR_SCOPE_LINKLOCAL)
 			continue;
@@ -484,7 +485,6 @@ batadv_mcast_mla_softif_get_ipv6(struct net_device *d=
ev,
 		hlist_add_head(&new->list, mcast_list);
 		ret++;
 	}
-	read_unlock_bh(&in6_dev->lock);
 	rcu_read_unlock();
=20
 	return ret;
--=20
2.31.0
