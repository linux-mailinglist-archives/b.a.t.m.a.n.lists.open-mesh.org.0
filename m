Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AB13E377843
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 May 2021 21:46:16 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6DE7B83EC1;
	Sun,  9 May 2021 21:46:13 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F2C1183E98
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 May 2021 21:45:31 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6413D3EDDF;
	Sun,  9 May 2021 21:45:31 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [net-next v2 10/11] net: bridge: mcast: add ip4+ip6 mcast router timers to mdb netlink
Date: Sun,  9 May 2021 21:45:08 +0200
Message-Id: <20210509194509.10849-11-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620589532; a=rsa-sha256;
	cv=none;
	b=kqFq6BZJWsXlDezRdy66SdAycrxJMUujf+TFsJrZqwaSd13BSZSUNV0zP+GfDzaadzhYa3
	MKw3PcB+j1iOZK/vHpagfsdijHPjQaS6KK8ZZMXlf34MyF7psUyH3yg7O6LyiOIGqqK0ZM
	GX+b8HzmoaKfp2w2Ijaib1IsM2ExrsY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620589532;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QbZKj4qo//i72h9OX7LZ12dKLTmP3WU2PQmFP9nGfxw=;
	b=AB5Lad4fR72Dsa3UHnmfHSzg5t910OWOvUfi8zjbi1qaEr633dDlBiMwjVBiJ8sjjs3eap
	gPSlwRNdtEsiZnqsxw0Ygr8tkU5kl9ueQA+8Hotoi5jJlfYeTkc3yP7gweBfytMYvVrnMW
	NqvsjnBXQsC2ZFxs5EkBhOcDziP3uGU=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DY2JKD6WIAR76O56GVK5HCDJ32USF33Q
X-Message-ID-Hash: DY2JKD6WIAR76O56GVK5HCDJ32USF33Q
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DY2JKD6WIAR76O56GVK5HCDJ32USF33Q/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Now that we have split the multicast router state into two, one for IPv4
and one for IPv6, also add individual timers to the mdb netlink router
port dump. Leaving the old timer attribute for backwards compatibility.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 include/uapi/linux/if_bridge.h | 2 ++
 net/bridge/br_mdb.c            | 8 +++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridg=
e.h
index 13d59c5..6b56a75 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -627,6 +627,8 @@ enum {
 	MDBA_ROUTER_PATTR_UNSPEC,
 	MDBA_ROUTER_PATTR_TIMER,
 	MDBA_ROUTER_PATTR_TYPE,
+	MDBA_ROUTER_PATTR_INET_TIMER,
+	MDBA_ROUTER_PATTR_INET6_TIMER,
 	__MDBA_ROUTER_PATTR_MAX
 };
 #define MDBA_ROUTER_PATTR_MAX (__MDBA_ROUTER_PATTR_MAX - 1)
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 3c608da..2cdd9b6 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -79,7 +79,13 @@ static int br_rports_fill_info(struct sk_buff *skb, st=
ruct netlink_callback *cb,
 		    nla_put_u32(skb, MDBA_ROUTER_PATTR_TIMER,
 				max(ip4_timer, ip6_timer)) ||
 		    nla_put_u8(skb, MDBA_ROUTER_PATTR_TYPE,
-			       p->multicast_router)) {
+			       p->multicast_router) ||
+		    (have_ip4_mc_rtr &&
+		     nla_put_u32(skb, MDBA_ROUTER_PATTR_INET_TIMER,
+				 ip4_timer)) ||
+		    (have_ip6_mc_rtr &&
+		     nla_put_u32(skb, MDBA_ROUTER_PATTR_INET6_TIMER,
+				 ip6_timer))) {
 			nla_nest_cancel(skb, port_nest);
 			goto fail;
 		}
--=20
2.31.0
