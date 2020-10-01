Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DA50527FC7D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Oct 2020 11:30:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5694A80852;
	Thu,  1 Oct 2020 11:30:40 +0200 (CEST)
Received: from us-smtp-delivery-44.mimecast.com (us-smtp-delivery-44.mimecast.com [207.211.30.44])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9BC0B80823
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  1 Oct 2020 10:01:00 +0200 (CEST)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-459-tXKJ2mOlNPC8hhpcPpgx8A-1; Thu, 01 Oct 2020 04:00:34 -0400
X-MC-Unique: tXKJ2mOlNPC8hhpcPpgx8A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 169FB9CC0C;
	Thu,  1 Oct 2020 08:00:32 +0000 (UTC)
Received: from hog.localdomain, (unknown [10.40.192.241])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CEA055C1D0;
	Thu,  1 Oct 2020 08:00:28 +0000 (UTC)
From: Sabrina Dubroca <sd@queasysnail.net>
To: netdev@vger.kernel.org
Subject: [PATCH net 00/12] net: iflink and link-netnsid fixes
Date: Thu,  1 Oct 2020 09:59:24 +0200
Message-Id: <cover.1600770261.git.sd@queasysnail.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sd@queasysnail.net
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: queasysnail.net
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=WINDOWS-1252
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601539269;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vSh+5Xi+Z7ZlHfcfmPGlIfj+VyaSTzZk+ZeXgdWjt8k=;
	b=QnvtRbLu9XdNyrSqg8VOvwYE1N28gLCZARx48tN/dOsFVOduNywRkjPwyiiBhbhJIV2GqG
	WNO2xxEVpSkxwM4F+IpL1sAYuCJoTSNC/BYqIYFIgNtuZhMGvCq0b3cqM+seGwCUwnLijk
	Dj7W3nvt0MRvVxZ4m8dqAADmvCAeefY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601539269; a=rsa-sha256;
	cv=none;
	b=iJvabLdV+ROKEFCUZdLmT+n6u2+2XagxBsQbbsIt/djCQSL6Kr9kgewoBM0jYFy6qo781Q
	nM1X/P6nxxpLNWR65mddl8PN/bFGav06lMquTg9/jMekGEQaJWKM0A6gw2nKk3DDIo1Y6r
	kMK0eA8dT9312UPAgpNIQxeScbHDQb4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of sd@queasysnail.net has no SPF policy when checking 207.211.30.44) smtp.mailfrom=sd@queasysnail.net
X-MailFrom: sd@queasysnail.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: UQHLDH22OQ6GTULDHZUF5P3IML5SE7CQ
X-Message-ID-Hash: UQHLDH22OQ6GTULDHZUF5P3IML5SE7CQ
X-Mailman-Approved-At: Thu, 01 Oct 2020 09:30:35 +0200
CC: Sabrina Dubroca <sd@queasysnail.net>, Nicolas Dichtel <nicolas.dichtel@6wind.com>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UQHLDH22OQ6GTULDHZUF5P3IML5SE7CQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

In a lot of places, we use this kind of comparison to detect if a
device has a lower link:

  dev->ifindex !=3D dev_get_iflink(dev)

This seems to be a leftover of the pre-netns days, when the ifindex
was unique over the whole system. Nowadays, with network namespaces,
it's very easy to create a device with the same ifindex as its lower
link:

    ip netns add main
    ip netns add peer
    ip -net main link add dummy0 type dummy
    ip -net main link add link dummy0 macvlan0 netns peer type macvlan
    ip -net main link show type dummy
        9: dummy0: <BROADCAST,NOARP> mtu 1500 qdisc noop ...
    ip -net peer link show type macvlan
        9: macvlan0@if9: <BROADCAST,MULTICAST> mtu 1500 qdisc noop ...

To detect if a device has a lower link, we can simply check the
existence of the dev->netdev_ops->ndo_get_iflink operation, instead of
checking its return value. In particular, I attempted to fix one of
these checks in commit feadc4b6cf42 ("rtnetlink: always put IFLA_LINK
for links with a link-netnsid"), but this patch isn't correct, since
tunnel devices can export IFLA_LINK_NETNSID without IFLA_LINK. That
patch needs to be reverted.

This series will fix all those bogus comparisons, and export missing
IFLA_LINK_NETNSID attributes in bridge and ipv6 dumps.

ipvlan and geneve are also missing the get_link_net operation, so
userspace can't know when those device are cross-netns. There are a
couple of other device types that have an ndo_get_iflink op but no
get_link_net (virt_wifi, ipoib), and should probably also have a
get_link_net.

Sabrina Dubroca (12):
  ipvlan: add get_link_net
  geneve: add get_link_net
  Revert "rtnetlink: always put IFLA_LINK for links with a link-netnsid"
  rtnetlink: always put IFLA_LINK for links with ndo_get_iflink
  bridge: always put IFLA_LINK for ports with ndo_get_iflink
  bridge: advertise IFLA_LINK_NETNSID when dumping bridge ports
  ipv6: always put IFLA_LINK for devices with ndo_get_iflink
  ipv6: advertise IFLA_LINK_NETNSID when dumping ipv6 addresses
  net: link_watch: fix operstate when the link has the same index as the
    device
  net: link_watch: fix detection of urgent events
  batman-adv: fix iflink detection in batadv_is_on_batman_iface
  batman-adv: fix detection of lower link in batadv_get_real_netdevice

 drivers/net/can/vxcan.c          |  2 +-
 drivers/net/geneve.c             |  8 ++++++++
 drivers/net/ipvlan/ipvlan_main.c |  9 +++++++++
 drivers/net/veth.c               |  2 +-
 include/net/rtnetlink.h          |  4 ++++
 net/batman-adv/hard-interface.c  |  4 ++--
 net/bridge/br_netlink.c          |  4 +++-
 net/core/link_watch.c            |  4 ++--
 net/core/rtnetlink.c             | 25 ++++++++++++-------------
 net/ipv6/addrconf.c              | 11 ++++++++++-
 10 files changed, 52 insertions(+), 21 deletions(-)

--=20
2.28.0
