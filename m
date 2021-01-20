Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA982FDA64
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 Jan 2021 21:08:12 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C44FC807A5;
	Wed, 20 Jan 2021 21:08:10 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 78CBD803D5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 20 Jan 2021 21:08:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1611172819;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=l++HVqNEBpdnehBRBkbBrna3eZpKlPReaDBZzYzwmUI=;
	b=g7Cwzi1joIRO/bKgQX4otfXQTZ3fvD8rUI3CB1BnJCHHZtY8d8yEXCOU8+CTvZfk+0Xeii
	5fLJohBtbCy/HmNv2nLOCG99YkKhlkUajwHyhdvLul1hFtZpilysCYUKjgQkdiUUS1lhiD
	2xN4WyxXWnFURl15H2/vmkcjD5Wt1bQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: batman-adv: Fix names for kernel-doc blocks
Date: Wed, 20 Jan 2021 21:00:14 +0100
Message-Id: <20210120200014.8894-1-sven@narfation.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1611173287; a=rsa-sha256;
	cv=none;
	b=I/H8X7hRQueeWg0vIpBccfTPPGAhRUX1hAfZ9NOvDTaCtR8kFnOsGpZSpTfUs/mDWt07MG
	uzVZX0ImhugMjGVF8r3EWviEbi4g2wdDCIhVfVIHujFna8PIK+j8F7deaGNC/lca+5xjy1
	+l86LXtgXSffIdjVNha1NjuGLxP/oc8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=g7Cwzi1j;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1611173287;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=l++HVqNEBpdnehBRBkbBrna3eZpKlPReaDBZzYzwmUI=;
	b=TNv51Rr5RcFvMsupDPdKfV71Cx8XHioDKC8hU7UoHheD0veYt9/oA7t84ODUtlsNEvpMJ/
	JuaAyny5uCsIR2jFWd+vZetDEdVvk/YxarV1/1jbGDZ2vmp0Gt9dxJbxgl2ywqrMmP1Mtn
	citLxBjSv3vHOIz3uGtkzRxxb6kmA4A=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: VQEPWXOV2ZVFBHJACNVIIEBK2UH2TYRZ
X-Message-ID-Hash: VQEPWXOV2ZVFBHJACNVIIEBK2UH2TYRZ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VQEPWXOV2ZVFBHJACNVIIEBK2UH2TYRZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

kernel-doc can only correctly identify the documented function or struct
when the name in the first kernel-doc line references it. But some of the
kernel-doc blocks referenced a different function/struct then it actually
documented.

Signed-off-by: Sven Eckelmann <sven@narfation.org>

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
index fd7ba6bbdf85eb7d7240cfd50e44d522335bca13..0a367a92b5f62afd5a8635ad2=
70353291cd36464 100644
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
index 854e5ff28a3fe5d2d57862142be45d56a403c448..4f250551a589ca5c7f495612e=
826e6fd5234dc79 100644
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
index 97bcf149633d850ff4fcece6d7dc0d799adb1444..1c002236e351b75f8888a35c7=
423e3ac6244df42 100644
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
index d4e10005df6cd2936a3132e1ad7bd8bf3c1d99b6..f9e35a2d2b1ac15aa851c3279=
a262827a01f9bff 100644
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
index 2f96e96a5ca4ddb800f9bac66a118a6f97d86d89..490503dc5581346af7d94e9fc=
18e6858e6ecfee1 100644
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
