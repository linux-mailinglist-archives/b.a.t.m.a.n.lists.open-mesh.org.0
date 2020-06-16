Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0941FAE1E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 16 Jun 2020 12:39:23 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1D0EE8101B;
	Tue, 16 Jun 2020 12:39:22 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 238E5801FD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 16 Jun 2020 12:39:19 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1592303958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=J0+loVwbXRVDCbequ0WqDWYf9VCb1pKf5qtT0v45YNo=;
	b=JMYuz9u3fRRMjwQ64jITgO03pSGEUwIlhaGrsVJYXceOvalT7N+YFyNcF9EHylzeVzBRLD
	SG0OXIFOB+YfGEp6XzoFgtatju5z8e3shjwEFZaJpiRX1jSkn+LiZhLxmqqY6zc3/t+5cb
	+r2PRgYETfj1X1z5ptB6fVv1ZKGpWKOUNXgYP+1qHs3WUuReSdvNLXkqV3tZDb5YtZEDUj
	BriWNNnPC3sxDMCrB6r8Yc/OBggMHMXeqM1MM35tE4G9Nr+OG7eLqms2OQcDCCyG65u0Ri
	AifRJ2HwB7fgSvNR3vyZhpv4gdmClwFlv8DxAfEusb34ZelT7yywIv/l269Xzw==
To: Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH v2] mac80211: mesh: add mesh_param "mesh_nolearn" to skip path discovery
Date: Tue, 16 Jun 2020 12:39:10 +0200
Message-Id: <20200616103911.20501-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1592303959;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=J0+loVwbXRVDCbequ0WqDWYf9VCb1pKf5qtT0v45YNo=;
	b=lUKR3MTUgsBxNtNC34DN/rv/rTb7iDF/MbxZPSasJ981RF9mXLxpGmh/HcDgMM2UvdYs8X
	SCPS2nFZJiDw66eRMJyMYR/mKHfgHkL8ieDqNyb3csfKAtg5W2cq2dzOnAqm/ypZbeCpwj
	79OMO8XNrhHFWcjSuzKzHioTZYttp1A=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1592303959; a=rsa-sha256;
	cv=none;
	b=q1HdRG43r6+UiWePZdEdIyHjzeb+8P11uc6RxJhcdLxEcv91zQhzSlBd/tZYQvCAzdYyrn
	jfaj/xflQCd/wZCUB9q44Lo3lZiEXD2kG5ZVislaHHe+qos/axxRpRULyPDi3V25otLZJJ
	tV9+vMgDHZzF0A8tLymFyl8Tw9fBXok=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=JMYuz9u3;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: KNHXX7UTDQE3YJNAHFIXKYN4QJGUCOL5
X-Message-ID-Hash: KNHXX7UTDQE3YJNAHFIXKYN4QJGUCOL5
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, =?UTF-8?q?Linus=20L=C3=BCssing?= <ll@simonwunderlich.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KNHXX7UTDQE3YJNAHFIXKYN4QJGUCOL5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <ll@simonwunderlich.de>

Currently, before being able to forward a packet between two 802.11s
nodes, both a PLINK handshake is performed upon receiving a beacon and
then later a PREQ/PREP exchange for path discovery is performed on
demand upon receiving a data frame to forward.

When running a mesh protocol on top of an 802.11s interface, like
batman-adv, we do not need the multi-hop mesh routing capabilities of
802.11s and usually set mesh_fwding=3D0. However, even with mesh_fwding=3D=
0
the PREQ/PREP path discovery is still performed on demand. Even though
in this scenario the next hop PREQ/PREP will determine is always the
direct 11s neighbor node.

The new mesh_nolearn parameter allows to skip the PREQ/PREP exchange in
this scenario, leading to a reduced delay, reduced packet buffering and
simplifies HWMP in general.

mesh_nolearn is still rather conservative in that if the packet destinati=
on
is not a direct 11s neighbor, it will fall back to PREQ/PREP path
discovery.

For normal, multi-hop 802.11s mesh routing it is usually not advisable
to enable mesh_nolearn as a transmission to a direct but distant neighbor
might be worse than reaching that same node via a more robust /
higher throughput etc. multi-hop path.

Cc: Sven Eckelmann <sven@narfation.org>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Linus L=C3=BCssing <ll@simonwunderlich.de>
---

Changelog v2:
* moved nolearn lookup closer into the actual nexthop_lookup function,
  so that the nolearn feature is not confusingly avoided on
  forwarded frames

 include/net/cfg80211.h        |  6 ++++++
 include/uapi/linux/nl80211.h  |  7 +++++++
 net/mac80211/cfg.c            |  2 ++
 net/mac80211/debugfs_netdev.c |  2 ++
 net/mac80211/mesh_hwmp.c      | 39 +++++++++++++++++++++++++++++++++++
 net/wireless/mesh.c           |  1 +
 net/wireless/nl80211.c        |  8 ++++++-
 net/wireless/trace.h          |  4 +++-
 8 files changed, 67 insertions(+), 2 deletions(-)

diff --git a/include/net/cfg80211.h b/include/net/cfg80211.h
index fc7e8807838d..5ffb35592a23 100644
--- a/include/net/cfg80211.h
+++ b/include/net/cfg80211.h
@@ -1853,6 +1853,11 @@ struct bss_parameters {
  *      connected to a mesh gate in mesh formation info.  If false, the
  *      value in mesh formation is determined by the presence of root pa=
ths
  *      in the mesh path table
+ * @dot11MeshNolearn: Try to avoid multi-hop path discovery (e.g. PREQ/P=
REP
+ *      for HWMP) if the destination is a direct neighbor. Note that thi=
s might
+ *      not be the optimal decision as a multi-hop route might be better=
. So
+ *      if using this setting you will likely also want to disable
+ *      dot11MeshForwarding and use another mesh routing protocol on top=
.
  */
 struct mesh_config {
 	u16 dot11MeshRetryTimeout;
@@ -1884,6 +1889,7 @@ struct mesh_config {
 	enum nl80211_mesh_power_mode power_mode;
 	u16 dot11MeshAwakeWindowDuration;
 	u32 plink_timeout;
+	bool dot11MeshNolearn;
 };
=20
 /**
diff --git a/include/uapi/linux/nl80211.h b/include/uapi/linux/nl80211.h
index 4e6339ab1fce..f6560bb9644c 100644
--- a/include/uapi/linux/nl80211.h
+++ b/include/uapi/linux/nl80211.h
@@ -4236,6 +4236,12 @@ enum nl80211_mesh_power_mode {
  *	field.  If left unset then the mesh formation field will only
  *	advertise such if there is an active root mesh path.
  *
+ * @NL80211_MESHCONF_NOLEARN: Try to avoid multi-hop path discovery (e.g=
.
+ *      PREQ/PREP for HWMP) if the destination is a direct neighbor. Not=
e that
+ *      this might not be the optimal decision as a multi-hop route migh=
t be
+ *      better. So if using this setting you will likely also want to di=
sable
+ *      dot11MeshForwarding and use another mesh routing protocol on top=
.
+ *
  * @__NL80211_MESHCONF_ATTR_AFTER_LAST: internal use
  */
 enum nl80211_meshconf_params {
@@ -4269,6 +4275,7 @@ enum nl80211_meshconf_params {
 	NL80211_MESHCONF_AWAKE_WINDOW,
 	NL80211_MESHCONF_PLINK_TIMEOUT,
 	NL80211_MESHCONF_CONNECTED_TO_GATE,
+	NL80211_MESHCONF_NOLEARN,
=20
 	/* keep last */
 	__NL80211_MESHCONF_ATTR_AFTER_LAST,
diff --git a/net/mac80211/cfg.c b/net/mac80211/cfg.c
index 9b360544ad6f..f48e095e912a 100644
--- a/net/mac80211/cfg.c
+++ b/net/mac80211/cfg.c
@@ -2126,6 +2126,8 @@ static int ieee80211_update_mesh_config(struct wiph=
y *wiphy,
 	if (_chg_mesh_attr(NL80211_MESHCONF_CONNECTED_TO_GATE, mask))
 		conf->dot11MeshConnectedToMeshGate =3D
 			nconf->dot11MeshConnectedToMeshGate;
+	if (_chg_mesh_attr(NL80211_MESHCONF_NOLEARN, mask))
+		conf->dot11MeshNolearn =3D nconf->dot11MeshNolearn;
 	ieee80211_mbss_info_change_notify(sdata, BSS_CHANGED_BEACON);
 	return 0;
 }
diff --git a/net/mac80211/debugfs_netdev.c b/net/mac80211/debugfs_netdev.=
c
index d7e955127d5c..09eab2c3f380 100644
--- a/net/mac80211/debugfs_netdev.c
+++ b/net/mac80211/debugfs_netdev.c
@@ -638,6 +638,7 @@ IEEE80211_IF_FILE(dot11MeshAwakeWindowDuration,
 		  u.mesh.mshcfg.dot11MeshAwakeWindowDuration, DEC);
 IEEE80211_IF_FILE(dot11MeshConnectedToMeshGate,
 		  u.mesh.mshcfg.dot11MeshConnectedToMeshGate, DEC);
+IEEE80211_IF_FILE(dot11MeshNolearn, u.mesh.mshcfg.dot11MeshNolearn, DEC)=
;
 #endif
=20
 #define DEBUGFS_ADD_MODE(name, mode) \
@@ -762,6 +763,7 @@ static void add_mesh_config(struct ieee80211_sub_if_d=
ata *sdata)
 	MESHPARAMS_ADD(power_mode);
 	MESHPARAMS_ADD(dot11MeshAwakeWindowDuration);
 	MESHPARAMS_ADD(dot11MeshConnectedToMeshGate);
+	MESHPARAMS_ADD(dot11MeshNolearn);
 #undef MESHPARAMS_ADD
 }
 #endif
diff --git a/net/mac80211/mesh_hwmp.c b/net/mac80211/mesh_hwmp.c
index aa5150929996..615db30b765a 100644
--- a/net/mac80211/mesh_hwmp.c
+++ b/net/mac80211/mesh_hwmp.c
@@ -1175,6 +1175,40 @@ int mesh_nexthop_resolve(struct ieee80211_sub_if_d=
ata *sdata,
 	return -ENOENT;
 }
=20
+/**
+ * mesh_nexthop_lookup_nolearn - try to set next hop without path discov=
ery
+ * @skb: 802.11 frame to be sent
+ * @sdata: network subif the frame will be sent through
+ *
+ * Check if the meshDA (addr3) of a unicast frame is a direct neighbor.
+ * And if so, set the RA (addr1) to it to transmit to this node directly=
,
+ * avoiding PREP/PREP path discovery.
+ *
+ * Returns: 0 if the next hop was found and -ENOENT otherwise.
+ */
+static int mesh_nexthop_lookup_nolearn(struct ieee80211_sub_if_data *sda=
ta,
+				       struct sk_buff *skb)
+{
+	struct ieee80211_hdr *hdr =3D (struct ieee80211_hdr *)skb->data;
+	struct sta_info *sta;
+
+	if (is_multicast_ether_addr(hdr->addr1))
+		return -ENOENT;
+
+	rcu_read_lock();
+	sta =3D sta_info_get(sdata, hdr->addr3);
+
+	if (!sta || sta->mesh->plink_state !=3D NL80211_PLINK_ESTAB) {
+		rcu_read_unlock();
+		return -ENOENT;
+	}
+	rcu_read_unlock();
+
+	memcpy(hdr->addr1, hdr->addr3, ETH_ALEN);
+	memcpy(hdr->addr2, sdata->vif.addr, ETH_ALEN);
+	return 0;
+}
+
 /**
  * mesh_nexthop_lookup - put the appropriate next hop on a mesh frame. C=
alling
  * this function is considered "using" the associated mpath, so preempt =
a path
@@ -1188,11 +1222,16 @@ int mesh_nexthop_resolve(struct ieee80211_sub_if_=
data *sdata,
 int mesh_nexthop_lookup(struct ieee80211_sub_if_data *sdata,
 			struct sk_buff *skb)
 {
+	struct ieee80211_if_mesh *ifmsh =3D &sdata->u.mesh;
 	struct mesh_path *mpath;
 	struct sta_info *next_hop;
 	struct ieee80211_hdr *hdr =3D (struct ieee80211_hdr *) skb->data;
 	u8 *target_addr =3D hdr->addr3;
=20
+	if (ifmsh->mshcfg.dot11MeshNolearn &&
+	    !mesh_nexthop_lookup_nolearn(sdata, skb))
+		return 0;
+
 	mpath =3D mesh_path_lookup(sdata, target_addr);
 	if (!mpath || !(mpath->flags & MESH_PATH_ACTIVE))
 		return -ENOENT;
diff --git a/net/wireless/mesh.c b/net/wireless/mesh.c
index eac5aa1419fc..e4e363138279 100644
--- a/net/wireless/mesh.c
+++ b/net/wireless/mesh.c
@@ -78,6 +78,7 @@ const struct mesh_config default_mesh_config =3D {
 	.power_mode =3D NL80211_MESH_POWER_ACTIVE,
 	.dot11MeshAwakeWindowDuration =3D MESH_DEFAULT_AWAKE_WINDOW,
 	.plink_timeout =3D MESH_DEFAULT_PLINK_TIMEOUT,
+	.dot11MeshNolearn =3D false,
 };
=20
 const struct mesh_setup default_mesh_setup =3D {
diff --git a/net/wireless/nl80211.c b/net/wireless/nl80211.c
index 263ae395ad44..b0b7f110064f 100644
--- a/net/wireless/nl80211.c
+++ b/net/wireless/nl80211.c
@@ -6884,7 +6884,9 @@ static int nl80211_get_mesh_config(struct sk_buff *=
skb,
 	    nla_put_u32(msg, NL80211_MESHCONF_PLINK_TIMEOUT,
 			cur_params.plink_timeout) ||
 	    nla_put_u8(msg, NL80211_MESHCONF_CONNECTED_TO_GATE,
-		       cur_params.dot11MeshConnectedToMeshGate))
+		       cur_params.dot11MeshConnectedToMeshGate) ||
+	    nla_put_u8(msg, NL80211_MESHCONF_NOLEARN,
+		       cur_params.dot11MeshNolearn))
 		goto nla_put_failure;
 	nla_nest_end(msg, pinfoattr);
 	genlmsg_end(msg, hdr);
@@ -6942,6 +6944,7 @@ nl80211_meshconf_params_policy[NL80211_MESHCONF_ATT=
R_MAX+1] =3D {
 	[NL80211_MESHCONF_AWAKE_WINDOW] =3D { .type =3D NLA_U16 },
 	[NL80211_MESHCONF_PLINK_TIMEOUT] =3D { .type =3D NLA_U32 },
 	[NL80211_MESHCONF_CONNECTED_TO_GATE] =3D NLA_POLICY_RANGE(NLA_U8, 0, 1)=
,
+	[NL80211_MESHCONF_NOLEARN] =3D { .type =3D NLA_U8 },
 };
=20
 static const struct nla_policy
@@ -7093,6 +7096,9 @@ do {									\
 				  NL80211_MESHCONF_AWAKE_WINDOW, nla_get_u16);
 	FILL_IN_MESH_PARAM_IF_SET(tb, cfg, plink_timeout, mask,
 				  NL80211_MESHCONF_PLINK_TIMEOUT, nla_get_u32);
+	FILL_IN_MESH_PARAM_IF_SET(tb, cfg, dot11MeshNolearn, 0, 1,
+				  mask, NL80211_MESHCONF_NOLEARN,
+				  nl80211_check_bool);
 	if (mask_out)
 		*mask_out =3D mask;
=20
diff --git a/net/wireless/trace.h b/net/wireless/trace.h
index b23cab016521..6e218a0acd4e 100644
--- a/net/wireless/trace.h
+++ b/net/wireless/trace.h
@@ -68,7 +68,8 @@
 		       __field(u16, ht_opmode)				   \
 		       __field(u32, dot11MeshHWMPactivePathToRootTimeout)  \
 		       __field(u16, dot11MeshHWMProotInterval)		   \
-		       __field(u16, dot11MeshHWMPconfirmationInterval)
+		       __field(u16, dot11MeshHWMPconfirmationInterval)	   \
+		       __field(bool, dot11MeshNolearn)
 #define MESH_CFG_ASSIGN							      \
 	do {								      \
 		__entry->dot11MeshRetryTimeout =3D conf->dot11MeshRetryTimeout; \
@@ -109,6 +110,7 @@
 				conf->dot11MeshHWMProotInterval;	      \
 		__entry->dot11MeshHWMPconfirmationInterval =3D		      \
 				conf->dot11MeshHWMPconfirmationInterval;      \
+		__entry->dot11MeshNolearn =3D conf->dot11MeshNolearn;	      \
 	} while (0)
=20
 #define CHAN_ENTRY __field(enum nl80211_band, band) \
--=20
2.27.0
