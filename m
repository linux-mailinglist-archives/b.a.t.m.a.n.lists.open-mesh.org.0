Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A6EA0BBB4
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 13 Jan 2025 16:24:06 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1E15483E33
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 13 Jan 2025 16:24:06 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1736781846;
 b=J5wgcjJZg66WITWqHs6EHjzl4SAPxhGIOovIM4qKh1jHN9ggilNISeNXi+n7kyhBlJPFC
 whoo92XdwsxIxnsIRinhlti93IGwigL49kzEIjxRxnhHhk29Vv3aUusiQXsDQJV9fgqNFCn
 mMkPhV+3wMnxBGDxC3ZCeurOpZVlISE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1736781846; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=DBbRE3ugLp3qkRsaKhazYkz+BhLIeMQdruLA0C2fOWQ=;
 b=HfYTqL63UikYs+6Keg3JzAcFyuXq8Gd/g5X4102dO5VRbz1aKVAPy+ImkhrtWji28X/A0
 8rhWWE8J3q0U2/NruNZiUhBFN1+HgRcZs1J37w8HOt4c1YNMwDsYovWCGaGl/+qTRrYlCEH
 rw+OH8pNfHOFsQ0R3jdA3gfSWcvKHDA=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=gmail.com;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=gmail.com; arc=pass;
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BF73D81724
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 13 Jan 2025 15:37:57 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1736779077;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=DBbRE3ugLp3qkRsaKhazYkz+BhLIeMQdruLA0C2fOWQ=;
	b=g51g1eIzjbo0yyO1iUbePDfJeyArWvKuCZqFDROs1PRlhPNoo7l9yYcPqi4qfqWKRLv/8e
	feR91DxqTS1uSoIUEnrx1kEh5dCtXxb5bHsInXBIYQRUtGGjbUUPXp/lWLuAXj9K7dfZYM
	vVSBsuZ+sLsiJSJwZTNBHSj0CEXH4aY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=mjX10sIq;
	spf=pass (diktynna.open-mesh.org: domain of shaw.leon@gmail.com designates
 2607:f8b0:4864:20::633 as permitted sender)
 smtp.mailfrom=shaw.leon@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1736779077; a=rsa-sha256;
	cv=none;
	b=W3h6zcI7SSjZYWEtN64qP5Dxcl6bi8jOYe5/VXRFlaRsRcdBIRkorS6SpXE1KvWEspcK3p
	m0HvhsSOlOCHP0Ciu8xLR1+ZC7Fh8yHO/7oQRB+/VCt6wBE+rx5Qw9W1H1bkHzit/xAvXx
	zuJebpIIGluXsIC6K2+iul2pGBIy2aU=
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-21619108a6bso75026125ad.3
        for <b.a.t.m.a.n@lists.open-mesh.org>;
 Mon, 13 Jan 2025 06:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736779076; x=1737383876;
 darn=lists.open-mesh.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DBbRE3ugLp3qkRsaKhazYkz+BhLIeMQdruLA0C2fOWQ=;
        b=mjX10sIqblKrSKh7vWwYPHbjm+aB2OMTg6vex8MwdqO8TiOwlcux/L3lNtmqqbv3h5
         AuX1gK1Z7H+kMgOsQECj5cYnda0Ndf0W7JFFXm28ZbyJM2wKxsGdEeUvC2jBtlDQ8vVm
         QIXqMT0BL6LcQ4Xa072wB+dEqKT+uu4yhB9WpOM/dmniMIrg/6TAR1xns6L/WpHhb7nI
         Kuf2/8Mze0agVFeCDeNyfwsLstRvMU8P2v1Dv3rGuBHHYwAX3SdjQgdMLzNfoP1Smf/A
         O5Jk9uSqRXS/KjcPZ+lmjXfEPCpzl1WOJ14Ttj3TR4SpinOyiGm+pHkPKu4qeSSZqAqQ
         QAqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779076; x=1737383876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DBbRE3ugLp3qkRsaKhazYkz+BhLIeMQdruLA0C2fOWQ=;
        b=FbO44Vx1jUuxhkAnC8VMb/DcW7RARJuygX2QXf/M5mjiLhKS3kBYgQfQjxfI7iu4lY
         wsaqWOUvNfNuakWz4oRadk+hc/ofy7x5mvWaaYlNAVGRUdwYCS9qXHUBQFO/wrazBBov
         tZE8Khm5q5lfA9rmLY+7YzTrKksI/GlfCAxVBFZw2y8WTEwyrwG199HiKcB/UyJZu+Xf
         46Ys7UgqwP0VlfZsU/ZoP2UvJ63fySehLPHLKp88aspJdzFtN6ACArRW5yfPvLAtjAGE
         jefUc8YjzZazNjX97ZJhCa3OITNIOt3Lr0vIBAtXaxfnDedPTgQ2pVSvjsMUvifH+OeX
         JAkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgHwO2QZkPmO7cFmWGaClQ/YisFVywLczcB63HZiJNxpKYvNwT3tI5dn64V1p27ngUgTSOmqGdsUO4cA==@lists.open-mesh.org
X-Gm-Message-State: AOJu0YwwEgbngcD0kUcxTZypWwxbDZYy7ItfPDcw3HN3jXWLaJfSoZt+
	Mn9CBgWB6gxWq1CR18/qnKzsf4hQXrHns7vsvi2dUd5MEHqc6rcm
X-Gm-Gg: ASbGncuQm2VKAscCq0P7VjrM/+mIThBkzJ0B2xnpDWJVYciAgkZ91/oqBFMu/Nj91M+
	NbaC3IqNPRGyaYGJKUeEizD53j+eB0vjud7/EJmi76rAoHiTBSD62SXikV21ahtw/37OW/Ksrp/
	PaKH4pTuj4ZaGHLIwvXkBRndpYD1GeZ6TGSZbgEnuXKzwCwA6myeyn1OCi/uCeIe4us9JchvOqn
	D4j89JGT81gVhLvW8faleJU2e2TSnjGMFD5cYfDgvl7C8g=
X-Google-Smtp-Source: 
 AGHT+IFX1cL4DfnHS+w2s6yKcG/x/MBPAXrsYGSj+XPFymnbU/AVlf8tHVoVJUMT8dz5+FAel+SppA==
X-Received: by 2002:a17:902:ea09:b0:216:2a36:5b2e with SMTP id
 d9443c01a7336-21a83f76879mr310005155ad.32.1736779075712;
        Mon, 13 Jan 2025 06:37:55 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21a9f155e00sm54328715ad.103.2025.01.13.06.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:37:55 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	David Ahern <dsahern@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Simon Horman <horms@kernel.org>,
	Shuah Khan <shuah@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Alexander Aring <alex.aring@gmail.com>,
	Stefan Schmidt <stefan@datenfreihafen.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Steffen Klassert <steffen.klassert@secunet.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	linux-rdma@vger.kernel.org,
	linux-can@vger.kernel.org,
	osmocom-net-gprs@lists.osmocom.org,
	bpf@vger.kernel.org,
	linux-ppp@vger.kernel.org,
	wireguard@lists.zx2c4.com,
	linux-wireless@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	bridge@lists.linux.dev,
	linux-wpan@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v8 02/11] rtnetlink: Pack newlink() params into
 struct
Date: Mon, 13 Jan 2025 22:37:10 +0800
Message-ID: <20250113143719.7948-3-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250113143719.7948-1-shaw.leon@gmail.com>
References: <20250113143719.7948-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: SAT4IKXUWG7FXZSX6I5EXYR7MZ2UF2IQ
X-Message-ID-Hash: SAT4IKXUWG7FXZSX6I5EXYR7MZ2UF2IQ
X-Mailman-Approved-At: Mon, 13 Jan 2025 16:21:55 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SAT4IKXUWG7FXZSX6I5EXYR7MZ2UF2IQ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

There are 4 net namespaces involved when creating links:

 - source netns - where the netlink socket resides,
 - target netns - where to put the device being created,
 - link netns - netns associated with the device (backend),
 - peer netns - netns of peer device.

Currently, two nets are passed to newlink() callback - "src_net"
parameter and "dev_net" (implicitly in net_device). They are set as
follows, depending on netlink attributes in the request.

 +------------+-------------------+---------+---------+
 | peer netns | IFLA_LINK_NETNSID | src_net | dev_net |
 +------------+-------------------+---------+---------+
 |            | absent            | source  | target  |
 | absent     +-------------------+---------+---------+
 |            | present           | link    | link    |
 +------------+-------------------+---------+---------+
 |            | absent            | peer    | target  |
 | present    +-------------------+---------+---------+
 |            | present           | peer    | link    |
 +------------+-------------------+---------+---------+

When IFLA_LINK_NETNSID is present, the device is created in link netns
first and then moved to target netns. This has some side effects,
including extra ifindex allocation, ifname validation and link events.
These could be avoided if we create it in target netns from
the beginning.

On the other hand, the meaning of src_net parameter is ambiguous. It
varies depending on how parameters are passed. It is the effective
link (or peer netns) by design, but some drivers ignore it and use
dev_net instead.

This patch packs existing newlink() parameters, along with the source
netns, link netns and peer netns, into a struct. The old "src_net"
is renamed to "net" to avoid confusion with real source netns, and
will be deprecated later. The use of src_net are converted to
params->net trivially.

To make the semantics more clear, two helper functions -
rtnl_newlink_link_net() and rtnl_newlink_peer_net() - are provided
for netns fallback logic. Peer netns falls back to link netns, and
link netns falls back to source netns.

In following patches, to prepare for creating link in target netns
directly:

  - For device drivers that are aware of the old "src_net", the use of
    it are replace with one of the two helper functions.
  - And for those that takes dev_net() as link netns, we try
    params->link_net and then dev_net(), in order to maintain
    compatibility with the old behavior.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 drivers/infiniband/ulp/ipoib/ipoib_netlink.c  |  7 +++-
 drivers/net/amt.c                             |  7 +++-
 drivers/net/bareudp.c                         |  7 +++-
 drivers/net/bonding/bond_netlink.c            |  6 ++-
 drivers/net/can/dev/netlink.c                 |  4 +-
 drivers/net/can/vxcan.c                       |  7 +++-
 .../ethernet/qualcomm/rmnet/rmnet_config.c    |  7 +++-
 drivers/net/geneve.c                          |  7 +++-
 drivers/net/gtp.c                             |  6 ++-
 drivers/net/ipvlan/ipvlan.h                   |  3 +-
 drivers/net/ipvlan/ipvlan_main.c              |  6 ++-
 drivers/net/ipvlan/ipvtap.c                   |  6 +--
 drivers/net/macsec.c                          |  7 +++-
 drivers/net/macvlan.c                         |  7 ++--
 drivers/net/macvtap.c                         |  7 ++--
 drivers/net/netkit.c                          |  7 +++-
 drivers/net/pfcp.c                            |  5 ++-
 drivers/net/ppp/ppp_generic.c                 |  7 +++-
 drivers/net/team/team_core.c                  |  6 ++-
 drivers/net/veth.c                            |  7 +++-
 drivers/net/vrf.c                             |  5 ++-
 drivers/net/vxlan/vxlan_core.c                |  7 +++-
 drivers/net/wireguard/device.c                |  5 ++-
 drivers/net/wireless/virtual/virt_wifi.c      |  6 ++-
 drivers/net/wwan/wwan_core.c                  | 16 +++++--
 include/net/rtnetlink.h                       | 42 +++++++++++++++++--
 net/8021q/vlan_netlink.c                      |  7 +++-
 net/batman-adv/soft-interface.c               |  9 ++--
 net/bridge/br_netlink.c                       |  6 ++-
 net/caif/chnl_net.c                           |  5 ++-
 net/core/rtnetlink.c                          | 14 +++++--
 net/hsr/hsr_netlink.c                         |  6 ++-
 net/ieee802154/6lowpan/core.c                 |  5 ++-
 net/ipv4/ip_gre.c                             | 18 +++++---
 net/ipv4/ip_vti.c                             |  6 ++-
 net/ipv4/ipip.c                               |  6 ++-
 net/ipv6/ip6_gre.c                            | 14 +++++--
 net/ipv6/ip6_tunnel.c                         |  6 ++-
 net/ipv6/ip6_vti.c                            |  5 ++-
 net/ipv6/sit.c                                |  6 ++-
 net/xfrm/xfrm_interface_core.c                |  7 ++--
 41 files changed, 228 insertions(+), 99 deletions(-)

diff --git a/drivers/infiniband/ulp/ipoib/ipoib_netlink.c b/drivers/infiniband/ulp/ipoib/ipoib_netlink.c
index 9ad8d9856275..16cb8ced9f35 100644
--- a/drivers/infiniband/ulp/ipoib/ipoib_netlink.c
+++ b/drivers/infiniband/ulp/ipoib/ipoib_netlink.c
@@ -97,10 +97,13 @@ static int ipoib_changelink(struct net_device *dev, struct nlattr *tb[],
 	return ret;
 }
 
-static int ipoib_new_child_link(struct net *src_net, struct net_device *dev,
-				struct nlattr *tb[], struct nlattr *data[],
+static int ipoib_new_child_link(struct net_device *dev,
+				struct rtnl_newlink_params *params,
 				struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct net *src_net = params->net;
+	struct nlattr **tb = params->tb;
 	struct net_device *pdev;
 	struct ipoib_dev_priv *ppriv;
 	u16 child_pkey;
diff --git a/drivers/net/amt.c b/drivers/net/amt.c
index 98c6205ed19f..96b7ec9a2c13 100644
--- a/drivers/net/amt.c
+++ b/drivers/net/amt.c
@@ -3161,11 +3161,14 @@ static int amt_validate(struct nlattr *tb[], struct nlattr *data[],
 	return 0;
 }
 
-static int amt_newlink(struct net *net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int amt_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
 	struct amt_dev *amt = netdev_priv(dev);
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
+	struct net *net = params->net;
 	int err = -EINVAL;
 
 	amt->net = net;
diff --git a/drivers/net/bareudp.c b/drivers/net/bareudp.c
index 70814303aab8..fc21dcfb4848 100644
--- a/drivers/net/bareudp.c
+++ b/drivers/net/bareudp.c
@@ -698,10 +698,13 @@ static void bareudp_dellink(struct net_device *dev, struct list_head *head)
 	unregister_netdevice_queue(dev, head);
 }
 
-static int bareudp_newlink(struct net *net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+static int bareudp_newlink(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
+	struct net *net = params->net;
 	struct bareudp_conf conf;
 	int err;
 
diff --git a/drivers/net/bonding/bond_netlink.c b/drivers/net/bonding/bond_netlink.c
index 2a6a424806aa..ac5e402c34bc 100644
--- a/drivers/net/bonding/bond_netlink.c
+++ b/drivers/net/bonding/bond_netlink.c
@@ -564,10 +564,12 @@ static int bond_changelink(struct net_device *bond_dev, struct nlattr *tb[],
 	return 0;
 }
 
-static int bond_newlink(struct net *src_net, struct net_device *bond_dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int bond_newlink(struct net_device *bond_dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
 	int err;
 
 	err = bond_changelink(bond_dev, tb, data, extack);
diff --git a/drivers/net/can/dev/netlink.c b/drivers/net/can/dev/netlink.c
index 01aacdcda260..f1db9b7ffd4d 100644
--- a/drivers/net/can/dev/netlink.c
+++ b/drivers/net/can/dev/netlink.c
@@ -624,8 +624,8 @@ static int can_fill_xstats(struct sk_buff *skb, const struct net_device *dev)
 	return -EMSGSIZE;
 }
 
-static int can_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int can_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
 	return -EOPNOTSUPP;
diff --git a/drivers/net/can/vxcan.c b/drivers/net/can/vxcan.c
index ca8811941085..6f8ebb1cfd7b 100644
--- a/drivers/net/can/vxcan.c
+++ b/drivers/net/can/vxcan.c
@@ -172,10 +172,13 @@ static void vxcan_setup(struct net_device *dev)
 /* forward declaration for rtnl_create_link() */
 static struct rtnl_link_ops vxcan_link_ops;
 
-static int vxcan_newlink(struct net *peer_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
+static int vxcan_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct net *peer_net = params->net;
+	struct nlattr **tb = params->tb;
 	struct vxcan_priv *priv;
 	struct net_device *peer;
 
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
index f3bea196a8f9..8151e91395e2 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
@@ -117,11 +117,14 @@ static void rmnet_unregister_bridge(struct rmnet_port *port)
 	rmnet_unregister_real_device(bridge_dev);
 }
 
-static int rmnet_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
+static int rmnet_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
 	u32 data_format = RMNET_FLAGS_INGRESS_DEAGGREGATION;
+	struct nlattr **data = params->data;
+	struct net *src_net = params->net;
+	struct nlattr **tb = params->tb;
 	struct net_device *real_dev;
 	int mode = RMNET_EPMODE_VND;
 	struct rmnet_endpoint *ep;
diff --git a/drivers/net/geneve.c b/drivers/net/geneve.c
index 642155cb8315..d373a851930c 100644
--- a/drivers/net/geneve.c
+++ b/drivers/net/geneve.c
@@ -1614,10 +1614,13 @@ static void geneve_link_config(struct net_device *dev,
 	geneve_change_mtu(dev, ldev_mtu - info->options_len);
 }
 
-static int geneve_newlink(struct net *net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int geneve_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
+	struct net *net = params->net;
 	struct geneve_config cfg = {
 		.df = GENEVE_DF_UNSET,
 		.use_udp6_rx_checksums = false,
diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 89a996ad8cd0..80ad618ba423 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1460,10 +1460,12 @@ static int gtp_create_sockets(struct gtp_dev *gtp, const struct nlattr *nla,
 #define GTP_TH_MAXLEN	(sizeof(struct udphdr) + sizeof(struct gtp0_header))
 #define GTP_IPV6_MAXLEN	(sizeof(struct ipv6hdr) + GTP_TH_MAXLEN)
 
-static int gtp_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int gtp_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct net *src_net = params->net;
 	unsigned int role = GTP_ROLE_GGSN;
 	struct gtp_dev *gtp;
 	struct gtp_net *gn;
diff --git a/drivers/net/ipvlan/ipvlan.h b/drivers/net/ipvlan/ipvlan.h
index 025e0c19ec25..50de3ee204db 100644
--- a/drivers/net/ipvlan/ipvlan.h
+++ b/drivers/net/ipvlan/ipvlan.h
@@ -166,8 +166,7 @@ struct ipvl_addr *ipvlan_addr_lookup(struct ipvl_port *port, void *lyr3h,
 void *ipvlan_get_L3_hdr(struct ipvl_port *port, struct sk_buff *skb, int *type);
 void ipvlan_count_rx(const struct ipvl_dev *ipvlan,
 		     unsigned int len, bool success, bool mcast);
-int ipvlan_link_new(struct net *src_net, struct net_device *dev,
-		    struct nlattr *tb[], struct nlattr *data[],
+int ipvlan_link_new(struct net_device *dev, struct rtnl_newlink_params *params,
 		    struct netlink_ext_ack *extack);
 void ipvlan_link_delete(struct net_device *dev, struct list_head *head);
 void ipvlan_link_setup(struct net_device *dev);
diff --git a/drivers/net/ipvlan/ipvlan_main.c b/drivers/net/ipvlan/ipvlan_main.c
index da3a97a65507..19ce19ca7e32 100644
--- a/drivers/net/ipvlan/ipvlan_main.c
+++ b/drivers/net/ipvlan/ipvlan_main.c
@@ -532,11 +532,13 @@ static int ipvlan_nl_fillinfo(struct sk_buff *skb,
 	return ret;
 }
 
-int ipvlan_link_new(struct net *src_net, struct net_device *dev,
-		    struct nlattr *tb[], struct nlattr *data[],
+int ipvlan_link_new(struct net_device *dev, struct rtnl_newlink_params *params,
 		    struct netlink_ext_ack *extack)
 {
 	struct ipvl_dev *ipvlan = netdev_priv(dev);
+	struct nlattr **data = params->data;
+	struct net *src_net = params->net;
+	struct nlattr **tb = params->tb;
 	struct ipvl_port *port;
 	struct net_device *phy_dev;
 	int err;
diff --git a/drivers/net/ipvlan/ipvtap.c b/drivers/net/ipvlan/ipvtap.c
index 1afc4c47be73..edd13916831a 100644
--- a/drivers/net/ipvlan/ipvtap.c
+++ b/drivers/net/ipvlan/ipvtap.c
@@ -73,8 +73,8 @@ static void ipvtap_update_features(struct tap_dev *tap,
 	netdev_update_features(vlan->dev);
 }
 
-static int ipvtap_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int ipvtap_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
 	struct ipvtap_dev *vlantap = netdev_priv(dev);
@@ -97,7 +97,7 @@ static int ipvtap_newlink(struct net *src_net, struct net_device *dev,
 	/* Don't put anything that may fail after macvlan_common_newlink
 	 * because we can't undo what it does.
 	 */
-	err =  ipvlan_link_new(src_net, dev, tb, data, extack);
+	err = ipvlan_link_new(dev, params, extack);
 	if (err) {
 		netdev_rx_handler_unregister(dev);
 		return err;
diff --git a/drivers/net/macsec.c b/drivers/net/macsec.c
index 1bc1e5993f56..1869b0513f57 100644
--- a/drivers/net/macsec.c
+++ b/drivers/net/macsec.c
@@ -4141,11 +4141,14 @@ static int macsec_add_dev(struct net_device *dev, sci_t sci, u8 icv_len)
 
 static struct lock_class_key macsec_netdev_addr_lock_key;
 
-static int macsec_newlink(struct net *net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int macsec_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
 	struct macsec_dev *macsec = macsec_priv(dev);
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
+	struct net *net = params->net;
 	rx_handler_func_t *rx_handler;
 	u8 icv_len = MACSEC_DEFAULT_ICV_LEN;
 	struct net_device *real_dev;
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index fed4fe2a4748..0c496aa1f706 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1565,11 +1565,12 @@ int macvlan_common_newlink(struct net *src_net, struct net_device *dev,
 }
 EXPORT_SYMBOL_GPL(macvlan_common_newlink);
 
-static int macvlan_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+static int macvlan_newlink(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
-	return macvlan_common_newlink(src_net, dev, tb, data, extack);
+	return macvlan_common_newlink(params->net, dev, params->tb,
+				      params->data, extack);
 }
 
 void macvlan_dellink(struct net_device *dev, struct list_head *head)
diff --git a/drivers/net/macvtap.c b/drivers/net/macvtap.c
index 29a5929d48e5..6dbfeeac5c99 100644
--- a/drivers/net/macvtap.c
+++ b/drivers/net/macvtap.c
@@ -77,8 +77,8 @@ static void macvtap_update_features(struct tap_dev *tap,
 	netdev_update_features(vlan->dev);
 }
 
-static int macvtap_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+static int macvtap_newlink(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
 	struct macvtap_dev *vlantap = netdev_priv(dev);
@@ -105,7 +105,8 @@ static int macvtap_newlink(struct net *src_net, struct net_device *dev,
 	/* Don't put anything that may fail after macvlan_common_newlink
 	 * because we can't undo what it does.
 	 */
-	err = macvlan_common_newlink(src_net, dev, tb, data, extack);
+	err = macvlan_common_newlink(params->net, dev, params->tb, params->data,
+				     extack);
 	if (err) {
 		netdev_rx_handler_unregister(dev);
 		return err;
diff --git a/drivers/net/netkit.c b/drivers/net/netkit.c
index 1e1b00756be7..1e9eadc77da2 100644
--- a/drivers/net/netkit.c
+++ b/drivers/net/netkit.c
@@ -327,10 +327,13 @@ static int netkit_validate(struct nlattr *tb[], struct nlattr *data[],
 
 static struct rtnl_link_ops netkit_link_ops;
 
-static int netkit_new_link(struct net *peer_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+static int netkit_new_link(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct net *peer_net = params->net;
+	struct nlattr **tb = params->tb;
 	struct nlattr *peer_tb[IFLA_MAX + 1], **tbp = tb, *attr;
 	enum netkit_action policy_prim = NETKIT_PASS;
 	enum netkit_action policy_peer = NETKIT_PASS;
diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
index 69434fd13f96..d9e4b5185c51 100644
--- a/drivers/net/pfcp.c
+++ b/drivers/net/pfcp.c
@@ -184,11 +184,12 @@ static int pfcp_add_sock(struct pfcp_dev *pfcp)
 	return PTR_ERR_OR_ZERO(pfcp->sock);
 }
 
-static int pfcp_newlink(struct net *net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int pfcp_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
 	struct pfcp_dev *pfcp = netdev_priv(dev);
+	struct net *net = params->net;
 	struct pfcp_net *pn;
 	int err;
 
diff --git a/drivers/net/ppp/ppp_generic.c b/drivers/net/ppp/ppp_generic.c
index 4583e15ad03a..b3340f8a6149 100644
--- a/drivers/net/ppp/ppp_generic.c
+++ b/drivers/net/ppp/ppp_generic.c
@@ -1303,10 +1303,13 @@ static int ppp_nl_validate(struct nlattr *tb[], struct nlattr *data[],
 	return 0;
 }
 
-static int ppp_nl_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int ppp_nl_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct net *src_net = params->net;
+	struct nlattr **tb = params->tb;
 	struct ppp_config conf = {
 		.unit = -1,
 		.ifname_is_set = true,
diff --git a/drivers/net/team/team_core.c b/drivers/net/team/team_core.c
index dc7cbd6a9798..10e03fa33530 100644
--- a/drivers/net/team/team_core.c
+++ b/drivers/net/team/team_core.c
@@ -2218,10 +2218,12 @@ static void team_setup(struct net_device *dev)
 	dev->features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_STAG_TX;
 }
 
-static int team_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int team_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct nlattr **tb = params->tb;
+
 	if (tb[IFLA_ADDRESS] == NULL)
 		eth_hw_addr_random(dev);
 
diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index 01251868a9c2..7dfda89f072f 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1765,10 +1765,13 @@ static int veth_init_queues(struct net_device *dev, struct nlattr *tb[])
 	return 0;
 }
 
-static int veth_newlink(struct net *peer_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int veth_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct net *peer_net = params->net;
+	struct nlattr **tb = params->tb;
 	int err;
 	struct net_device *peer;
 	struct veth_priv *priv;
diff --git a/drivers/net/vrf.c b/drivers/net/vrf.c
index ca81b212a246..b2cf13ac0e47 100644
--- a/drivers/net/vrf.c
+++ b/drivers/net/vrf.c
@@ -1677,11 +1677,12 @@ static void vrf_dellink(struct net_device *dev, struct list_head *head)
 	unregister_netdevice_queue(dev, head);
 }
 
-static int vrf_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int vrf_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
 	struct net_vrf *vrf = netdev_priv(dev);
+	struct nlattr **data = params->data;
 	struct netns_vrf *nn_vrf;
 	bool *add_fib_rules;
 	struct net *net;
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 05c10acb2a57..86c620b4c26f 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -4393,10 +4393,13 @@ static int vxlan_nl2conf(struct nlattr *tb[], struct nlattr *data[],
 	return 0;
 }
 
-static int vxlan_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
+static int vxlan_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct net *src_net = params->net;
+	struct nlattr **tb = params->tb;
 	struct vxlan_config conf;
 	int err;
 
diff --git a/drivers/net/wireguard/device.c b/drivers/net/wireguard/device.c
index 6cf173a008e7..404cf05bd72b 100644
--- a/drivers/net/wireguard/device.c
+++ b/drivers/net/wireguard/device.c
@@ -307,11 +307,12 @@ static void wg_setup(struct net_device *dev)
 	wg->dev = dev;
 }
 
-static int wg_newlink(struct net *src_net, struct net_device *dev,
-		      struct nlattr *tb[], struct nlattr *data[],
+static int wg_newlink(struct net_device *dev,
+		      struct rtnl_newlink_params *params,
 		      struct netlink_ext_ack *extack)
 {
 	struct wg_device *wg = netdev_priv(dev);
+	struct net *src_net = params->net;
 	int ret = -ENOMEM;
 
 	rcu_assign_pointer(wg->creating_net, src_net);
diff --git a/drivers/net/wireless/virtual/virt_wifi.c b/drivers/net/wireless/virtual/virt_wifi.c
index 4ee374080466..26905b2b3ba3 100644
--- a/drivers/net/wireless/virtual/virt_wifi.c
+++ b/drivers/net/wireless/virtual/virt_wifi.c
@@ -519,11 +519,13 @@ static rx_handler_result_t virt_wifi_rx_handler(struct sk_buff **pskb)
 }
 
 /* Called with rtnl lock held. */
-static int virt_wifi_newlink(struct net *src_net, struct net_device *dev,
-			     struct nlattr *tb[], struct nlattr *data[],
+static int virt_wifi_newlink(struct net_device *dev,
+			     struct rtnl_newlink_params *params,
 			     struct netlink_ext_ack *extack)
 {
 	struct virt_wifi_netdev_priv *priv = netdev_priv(dev);
+	struct net *src_net = params->net;
+	struct nlattr **tb = params->tb;
 	int err;
 
 	if (!tb[IFLA_LINK])
diff --git a/drivers/net/wwan/wwan_core.c b/drivers/net/wwan/wwan_core.c
index a51e2755991a..53a6c437ff79 100644
--- a/drivers/net/wwan/wwan_core.c
+++ b/drivers/net/wwan/wwan_core.c
@@ -967,15 +967,18 @@ static struct net_device *wwan_rtnl_alloc(struct nlattr *tb[],
 	return dev;
 }
 
-static int wwan_rtnl_newlink(struct net *src_net, struct net_device *dev,
-			     struct nlattr *tb[], struct nlattr *data[],
+static int wwan_rtnl_newlink(struct net_device *dev,
+			     struct rtnl_newlink_params *params,
 			     struct netlink_ext_ack *extack)
 {
 	struct wwan_device *wwandev = wwan_dev_get_by_parent(dev->dev.parent);
-	u32 link_id = nla_get_u32(data[IFLA_WWAN_LINK_ID]);
 	struct wwan_netdev_priv *priv = netdev_priv(dev);
+	struct nlattr **data = params->data;
+	u32 link_id;
 	int ret;
 
+	link_id = nla_get_u32(data[IFLA_WWAN_LINK_ID]);
+
 	if (IS_ERR(wwandev))
 		return PTR_ERR(wwandev);
 
@@ -1064,6 +1067,11 @@ static void wwan_create_default_link(struct wwan_device *wwandev,
 	struct net_device *dev;
 	struct nlmsghdr *nlh;
 	struct sk_buff *msg;
+	struct rtnl_newlink_params params = {
+		.net = &init_net,
+		.tb = tb,
+		.data = data,
+	};
 
 	/* Forge attributes required to create a WWAN netdev. We first
 	 * build a netlink message and then parse it. This looks
@@ -1105,7 +1113,7 @@ static void wwan_create_default_link(struct wwan_device *wwandev,
 	if (WARN_ON(IS_ERR(dev)))
 		goto unlock;
 
-	if (WARN_ON(wwan_rtnl_newlink(&init_net, dev, tb, data, NULL))) {
+	if (WARN_ON(wwan_rtnl_newlink(dev, &params, NULL))) {
 		free_netdev(dev);
 		goto unlock;
 	}
diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
index bc0069a8b6ea..00c086ca0c11 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -69,6 +69,42 @@ static inline int rtnl_msg_family(const struct nlmsghdr *nlh)
 		return AF_UNSPEC;
 }
 
+/**
+ *	struct rtnl_newlink_params - parameters of rtnl_link_ops::newlink()
+ *
+ *	@net: Netns of interest
+ *	@src_net: Source netns of rtnetlink socket
+ *	@link_net: Link netns by IFLA_LINK_NETNSID, NULL if not specified
+ *	@peer_net: Peer netns
+ *	@tb: IFLA_* attributes
+ *	@data: IFLA_INFO_DATA attributes
+ */
+struct rtnl_newlink_params {
+	struct net *net;
+	struct net *src_net;
+	struct net *link_net;
+	struct net *peer_net;
+	struct nlattr **tb;
+	struct nlattr **data;
+};
+
+/* Get effective link netns from newlink params. Generally, this is link_net
+ * and falls back to src_net. But for compatibility, a driver may * choose to
+ * use dev_net(dev) instead.
+ */
+static inline struct net *rtnl_newlink_link_net(struct rtnl_newlink_params *p)
+{
+	return p->link_net ? : p->src_net;
+}
+
+/* Get peer netns from newlink params. Fallback to link netns if peer netns is
+ * not specified explicitly.
+ */
+static inline struct net *rtnl_newlink_peer_net(struct rtnl_newlink_params *p)
+{
+	return p->peer_net ? : rtnl_newlink_link_net(p);
+}
+
 /**
  *	struct rtnl_link_ops - rtnetlink link operations
  *
@@ -125,10 +161,8 @@ struct rtnl_link_ops {
 					    struct nlattr *data[],
 					    struct netlink_ext_ack *extack);
 
-	int			(*newlink)(struct net *src_net,
-					   struct net_device *dev,
-					   struct nlattr *tb[],
-					   struct nlattr *data[],
+	int			(*newlink)(struct net_device *dev,
+					   struct rtnl_newlink_params *params,
 					   struct netlink_ext_ack *extack);
 	int			(*changelink)(struct net_device *dev,
 					      struct nlattr *tb[],
diff --git a/net/8021q/vlan_netlink.c b/net/8021q/vlan_netlink.c
index 134419667d59..91df0f96e32a 100644
--- a/net/8021q/vlan_netlink.c
+++ b/net/8021q/vlan_netlink.c
@@ -135,11 +135,14 @@ static int vlan_changelink(struct net_device *dev, struct nlattr *tb[],
 	return 0;
 }
 
-static int vlan_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int vlan_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
 	struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
+	struct nlattr **data = params->data;
+	struct net *src_net = params->net;
+	struct nlattr **tb = params->tb;
 	struct net_device *real_dev;
 	unsigned int max_mtu;
 	__be16 proto;
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
index 2758aba47a2f..b85b368f8593 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -1063,19 +1063,18 @@ static int batadv_softif_validate(struct nlattr *tb[], struct nlattr *data[],
 
 /**
  * batadv_softif_newlink() - pre-initialize and register new batadv link
- * @src_net: the applicable net namespace
  * @dev: network device to register
- * @tb: IFLA_INFO_DATA netlink attributes
- * @data: enum batadv_ifla_attrs attributes
+ * @params: rtnl newlink parameters
  * @extack: extended ACK report struct
  *
  * Return: 0 if successful or error otherwise.
  */
-static int batadv_softif_newlink(struct net *src_net, struct net_device *dev,
-				 struct nlattr *tb[], struct nlattr *data[],
+static int batadv_softif_newlink(struct net_device *dev,
+				 struct rtnl_newlink_params *params,
 				 struct netlink_ext_ack *extack)
 {
 	struct batadv_priv *bat_priv = netdev_priv(dev);
+	struct nlattr **data = params->data;
 	const char *algo_name;
 	int err;
 
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 3e0f47203f2a..6e337937d0d7 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1553,11 +1553,13 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 	return 0;
 }
 
-static int br_dev_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int br_dev_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
 	struct net_bridge *br = netdev_priv(dev);
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
 	int err;
 
 	err = register_netdevice(dev);
diff --git a/net/caif/chnl_net.c b/net/caif/chnl_net.c
index 94ad09e36df2..fa6a3c2634a8 100644
--- a/net/caif/chnl_net.c
+++ b/net/caif/chnl_net.c
@@ -438,10 +438,11 @@ static void caif_netlink_parms(struct nlattr *data[],
 	}
 }
 
-static int ipcaif_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int ipcaif_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
 	int ret;
 	struct chnl_net *caifdev;
 	ASSERT_RTNL();
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index ec98349b9620..7ff5e96f6ba7 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3766,6 +3766,14 @@ static int rtnl_newlink_create(struct sk_buff *skb, struct ifinfomsg *ifm,
 	struct net_device *dev;
 	char ifname[IFNAMSIZ];
 	int err;
+	struct rtnl_newlink_params params = {
+		.net = net,
+		.src_net = net,
+		.link_net = link_net,
+		.peer_net = peer_net,
+		.tb = tb,
+		.data = data,
+	};
 
 	if (!ops->alloc && !ops->setup)
 		return -EOPNOTSUPP;
@@ -3787,12 +3795,12 @@ static int rtnl_newlink_create(struct sk_buff *skb, struct ifinfomsg *ifm,
 	dev->ifindex = ifm->ifi_index;
 
 	if (link_net)
-		net = link_net;
+		params.net = link_net;
 	if (peer_net)
-		net = peer_net;
+		params.net = peer_net;
 
 	if (ops->newlink)
-		err = ops->newlink(net, dev, tb, data, extack);
+		err = ops->newlink(dev, &params, extack);
 	else
 		err = register_netdevice(dev);
 	if (err < 0) {
diff --git a/net/hsr/hsr_netlink.c b/net/hsr/hsr_netlink.c
index b68f2f71d0e1..39add538ba99 100644
--- a/net/hsr/hsr_netlink.c
+++ b/net/hsr/hsr_netlink.c
@@ -29,10 +29,12 @@ static const struct nla_policy hsr_policy[IFLA_HSR_MAX + 1] = {
 /* Here, it seems a netdevice has already been allocated for us, and the
  * hsr_dev_setup routine has been executed. Nice!
  */
-static int hsr_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int hsr_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct net *src_net = params->net;
 	enum hsr_version proto_version;
 	unsigned char multicast_spec;
 	u8 proto = HSR_PROTOCOL_HSR;
diff --git a/net/ieee802154/6lowpan/core.c b/net/ieee802154/6lowpan/core.c
index 175efd860f7b..704bf9e3f097 100644
--- a/net/ieee802154/6lowpan/core.c
+++ b/net/ieee802154/6lowpan/core.c
@@ -129,10 +129,11 @@ static int lowpan_validate(struct nlattr *tb[], struct nlattr *data[],
 	return 0;
 }
 
-static int lowpan_newlink(struct net *src_net, struct net_device *ldev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int lowpan_newlink(struct net_device *ldev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct nlattr **tb = params->tb;
 	struct net_device *wdev;
 	int ret;
 
diff --git a/net/ipv4/ip_gre.c b/net/ipv4/ip_gre.c
index a020342f618d..4e8c310769ad 100644
--- a/net/ipv4/ip_gre.c
+++ b/net/ipv4/ip_gre.c
@@ -1392,10 +1392,12 @@ ipgre_newlink_encap_setup(struct net_device *dev, struct nlattr *data[])
 	return 0;
 }
 
-static int ipgre_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
+static int ipgre_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
 	struct ip_tunnel_parm_kern p;
 	__u32 fwmark = 0;
 	int err;
@@ -1410,10 +1412,12 @@ static int ipgre_newlink(struct net *src_net, struct net_device *dev,
 	return ip_tunnel_newlink(dev, tb, &p, fwmark);
 }
 
-static int erspan_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int erspan_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
 	struct ip_tunnel_parm_kern p;
 	__u32 fwmark = 0;
 	int err;
@@ -1698,6 +1702,10 @@ struct net_device *gretap_fb_dev_create(struct net *net, const char *name,
 	LIST_HEAD(list_kill);
 	struct ip_tunnel *t;
 	int err;
+	struct rtnl_newlink_params params = {
+		.net = net,
+		.tb = tb,
+	};
 
 	memset(&tb, 0, sizeof(tb));
 
@@ -1710,7 +1718,7 @@ struct net_device *gretap_fb_dev_create(struct net *net, const char *name,
 	t = netdev_priv(dev);
 	t->collect_md = true;
 
-	err = ipgre_newlink(net, dev, tb, NULL, NULL);
+	err = ipgre_newlink(dev, &params, NULL);
 	if (err < 0) {
 		free_netdev(dev);
 		return ERR_PTR(err);
diff --git a/net/ipv4/ip_vti.c b/net/ipv4/ip_vti.c
index f0b4419cef34..b901bee03e6d 100644
--- a/net/ipv4/ip_vti.c
+++ b/net/ipv4/ip_vti.c
@@ -575,11 +575,13 @@ static void vti_netlink_parms(struct nlattr *data[],
 		*fwmark = nla_get_u32(data[IFLA_VTI_FWMARK]);
 }
 
-static int vti_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int vti_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
 	struct ip_tunnel_parm_kern parms;
+	struct nlattr **tb = params->tb;
 	__u32 fwmark = 0;
 
 	vti_netlink_parms(data, &parms, &fwmark);
diff --git a/net/ipv4/ipip.c b/net/ipv4/ipip.c
index dc0db5895e0e..a8b844bcfc64 100644
--- a/net/ipv4/ipip.c
+++ b/net/ipv4/ipip.c
@@ -436,11 +436,13 @@ static void ipip_netlink_parms(struct nlattr *data[],
 		*fwmark = nla_get_u32(data[IFLA_IPTUN_FWMARK]);
 }
 
-static int ipip_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int ipip_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
 	struct ip_tunnel *t = netdev_priv(dev);
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
 	struct ip_tunnel_encap ipencap;
 	struct ip_tunnel_parm_kern p;
 	__u32 fwmark = 0;
diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
index 235808cfec70..863852abe8ea 100644
--- a/net/ipv6/ip6_gre.c
+++ b/net/ipv6/ip6_gre.c
@@ -2005,11 +2005,14 @@ static int ip6gre_newlink_common(struct net *src_net, struct net_device *dev,
 	return err;
 }
 
-static int ip6gre_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int ip6gre_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
 	struct ip6_tnl *nt = netdev_priv(dev);
+	struct nlattr **data = params->data;
+	struct net *src_net = params->net;
+	struct nlattr **tb = params->tb;
 	struct net *net = dev_net(dev);
 	struct ip6gre_net *ign;
 	int err;
@@ -2241,11 +2244,14 @@ static void ip6erspan_tap_setup(struct net_device *dev)
 	netif_keep_dst(dev);
 }
 
-static int ip6erspan_newlink(struct net *src_net, struct net_device *dev,
-			     struct nlattr *tb[], struct nlattr *data[],
+static int ip6erspan_newlink(struct net_device *dev,
+			     struct rtnl_newlink_params *params,
 			     struct netlink_ext_ack *extack)
 {
 	struct ip6_tnl *nt = netdev_priv(dev);
+	struct nlattr **data = params->data;
+	struct net *src_net = params->net;
+	struct nlattr **tb = params->tb;
 	struct net *net = dev_net(dev);
 	struct ip6gre_net *ign;
 	int err;
diff --git a/net/ipv6/ip6_tunnel.c b/net/ipv6/ip6_tunnel.c
index 48fd53b98972..54b843d20870 100644
--- a/net/ipv6/ip6_tunnel.c
+++ b/net/ipv6/ip6_tunnel.c
@@ -2002,10 +2002,12 @@ static void ip6_tnl_netlink_parms(struct nlattr *data[],
 		parms->fwmark = nla_get_u32(data[IFLA_IPTUN_FWMARK]);
 }
 
-static int ip6_tnl_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+static int ip6_tnl_newlink(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
 	struct net *net = dev_net(dev);
 	struct ip6_tnl_net *ip6n = net_generic(net, ip6_tnl_net_id);
 	struct ip_tunnel_encap ipencap;
diff --git a/net/ipv6/ip6_vti.c b/net/ipv6/ip6_vti.c
index 590737c27537..993f85aeb882 100644
--- a/net/ipv6/ip6_vti.c
+++ b/net/ipv6/ip6_vti.c
@@ -997,10 +997,11 @@ static void vti6_netlink_parms(struct nlattr *data[],
 		parms->fwmark = nla_get_u32(data[IFLA_VTI_FWMARK]);
 }
 
-static int vti6_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int vti6_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
 	struct net *net = dev_net(dev);
 	struct ip6_tnl *nt;
 
diff --git a/net/ipv6/sit.c b/net/ipv6/sit.c
index 39bd8951bfca..e2bd52cabdee 100644
--- a/net/ipv6/sit.c
+++ b/net/ipv6/sit.c
@@ -1550,10 +1550,12 @@ static bool ipip6_netlink_6rd_parms(struct nlattr *data[],
 }
 #endif
 
-static int ipip6_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
+static int ipip6_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
+	struct nlattr **tb = params->tb;
 	struct net *net = dev_net(dev);
 	struct ip_tunnel *nt;
 	struct ip_tunnel_encap ipencap;
diff --git a/net/xfrm/xfrm_interface_core.c b/net/xfrm/xfrm_interface_core.c
index 98f1e2b67c76..b7ac558025d5 100644
--- a/net/xfrm/xfrm_interface_core.c
+++ b/net/xfrm/xfrm_interface_core.c
@@ -814,10 +814,11 @@ static void xfrmi_netlink_parms(struct nlattr *data[],
 		parms->collect_md = true;
 }
 
-static int xfrmi_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int xfrmi_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
+			 struct netlink_ext_ack *extack)
 {
+	struct nlattr **data = params->data;
 	struct net *net = dev_net(dev);
 	struct xfrm_if_parms p = {};
 	struct xfrm_if *xi;
-- 
2.47.1

