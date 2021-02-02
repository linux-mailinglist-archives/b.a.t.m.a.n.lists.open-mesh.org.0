Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1684D30C861
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  2 Feb 2021 18:50:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 90F20810E3;
	Tue,  2 Feb 2021 18:50:11 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D6907809ED
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  2 Feb 2021 18:50:07 +0100 (CET)
Received: from kero.packetmixer.de (p4fd575e2.dip0.t-ipconnect.de [79.213.117.226])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 7F9D3174027;
	Tue,  2 Feb 2021 18:40:40 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 4/4] batman-adv: Fix names for kernel-doc blocks
Date: Tue,  2 Feb 2021 18:40:36 +0100
Message-Id: <20210202174037.7081-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210202174037.7081-1-sw@simonwunderlich.de>
References: <20210202174037.7081-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612288207; a=rsa-sha256;
	cv=none;
	b=LAg0R1qStem6OwG4xp2yZ4UE5/UB0fr2Z6GJ8G+349Vix2yF5HvSAS2qi8rMIDIGIIAoxt
	UwbNJ+Apw+IZmH1GLc7f3ZW2M3xpWLLGoSAI7+osZqLYNqlFnugCTWP+oDyzxGt4CcyHdR
	6/MIvxHUjJMgX44hYL2SPi7n952FYJQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612288207;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S5xY22Po5DkZTAhBCaISoG8axL3cyHiiTngc+jXtSdg=;
	b=rPM5GbFneVQOumyaqS44NTn+qgK2SK39uZO+u1qgOXhasG09sg1OmB762liONsPN9LzR4S
	0QBIVC05NwQmL8JMTo31bgL9YH8oFOrA8jsgK9xrjcsDWy2B8UQ22QRgTAbGzBI1rInHRR
	/LAVEqgbbCnWUW06ZNUNrpNa7gUHGQw=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: IPCQJRACVUOYJU5RBBOWBNIJ7OFUK44O
X-Message-ID-Hash: IPCQJRACVUOYJU5RBBOWBNIJ7OFUK44O
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IPCQJRACVUOYJU5RBBOWBNIJ7OFUK44O/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

kernel-doc can only correctly identify the documented function or struct
when the name in the first kernel-doc line references it. But some of the
kernel-doc blocks referenced a different function/struct then it actually
documented.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/distributed-arp-table.c | 2 +-
 net/batman-adv/multicast.c             | 2 +-
 net/batman-adv/netlink.c               | 4 ++--
 net/batman-adv/tp_meter.c              | 2 +-
 net/batman-adv/types.h                 | 3 ++-
 5 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
index 61a6cfef2742..fcabd6b1e77f 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -1564,7 +1564,7 @@ static int batadv_dat_get_dhcp_message_type(struct =
sk_buff *skb)
 }
=20
 /**
- * batadv_dat_get_dhcp_yiaddr() - get yiaddr from a DHCP packet
+ * batadv_dat_dhcp_get_yiaddr() - get yiaddr from a DHCP packet
  * @skb: the DHCP packet to parse
  * @buf: a buffer to store the yiaddr in
  *
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 8db5d285c433..ad216c42406f 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -828,7 +828,7 @@ batadv_mcast_bridge_log(struct batadv_priv *bat_priv,
 }
=20
 /**
- * batadv_mcast_flags_logs() - output debug information about mcast flag=
 changes
+ * batadv_mcast_flags_log() - output debug information about mcast flag =
changes
  * @bat_priv: the bat priv with all the soft interface information
  * @flags: TVLV flags indicating the new multicast state
  *
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index 8eef71a62a5a..c80527b879a7 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -193,7 +193,7 @@ static int batadv_netlink_mesh_fill_ap_isolation(stru=
ct sk_buff *msg,
 }
=20
 /**
- * batadv_option_set_ap_isolation() - Set ap_isolation from genl msg
+ * batadv_netlink_set_mesh_ap_isolation() - Set ap_isolation from genl m=
sg
  * @attr: parsed BATADV_ATTR_AP_ISOLATION_ENABLED attribute
  * @bat_priv: the bat priv with all the soft interface information
  *
@@ -757,7 +757,7 @@ batadv_netlink_tp_meter_start(struct sk_buff *skb, st=
ruct genl_info *info)
 }
=20
 /**
- * batadv_netlink_tp_meter_start() - Cancel a running tp_meter session
+ * batadv_netlink_tp_meter_cancel() - Cancel a running tp_meter session
  * @skb: received netlink message
  * @info: receiver information
  *
diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index e61925f19f66..72ec4aab4813 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -131,7 +131,7 @@ static u32 batadv_tp_cwnd(u32 base, u32 increment, u3=
2 min)
 }
=20
 /**
- * batadv_tp_updated_cwnd() - update the Congestion Windows
+ * batadv_tp_update_cwnd() - update the Congestion Windows
  * @tp_vars: the private data of the current TP meter session
  * @mss: maximum segment size of transmission
  *
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 65985e262cde..aae7366bb679 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -228,7 +228,8 @@ struct batadv_hard_iface {
 };
=20
 /**
- * struct batadv_orig_ifinfo - B.A.T.M.A.N. IV private orig_ifinfo membe=
rs
+ * struct batadv_orig_ifinfo_bat_iv - B.A.T.M.A.N. IV private orig_ifinf=
o
+ *  members
  */
 struct batadv_orig_ifinfo_bat_iv {
 	/**
--=20
2.20.1
