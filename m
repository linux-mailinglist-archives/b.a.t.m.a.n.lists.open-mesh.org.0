Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D3165A14F77
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jan 2025 13:43:43 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8F53D844E3
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jan 2025 13:43:43 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1737117823;
 b=bqqPUNdU/Nqn7wIcyzMCbzrzONbHhx6ca1lgfW1t2Hxm2z7RgQXEuedNxoYWq7rZ8CMD8
 D8DYiHZ8cKqGQwWfXyO5uEGmhajzPaTbJhSqnFOEEbzwmcQdsZusEHVEnQQRtSAl173hugf
 MiRMHadt2UDIWtHlGJTD2FLcsIsTLCw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1737117823; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=q486DhNGkxMBBH5aZKvCNvWbWT29epSttkr3tU1CmVo=;
 b=Cp9RfVxaYJM/xYE7fmUjOf7boGyJ+BkLrc2KQRdEi/Z5gFb8BYgbfeu1kU70fIM8/vJHN
 n2rOriWu/yDUnWPUwbB6tS42j5RTBx5BB9ZfuQgHZuZyEWTI7N1kZV+yKt6KG0lXmBP+qXt
 9QaQ+1MJtVnkczJBF8bcjRIPUCeGNH0=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 86ADD840DD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Jan 2025 13:39:39 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1737117579;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q486DhNGkxMBBH5aZKvCNvWbWT29epSttkr3tU1CmVo=;
	b=i0RiTRQF2CWn1Ncn4hRLxdoyeh9O8sdgcJ5ugstH9gdu1Piu5fX1Ot3tUUfiF7F6NHaqQO
	VE4ksFj9KFvpJwlva6ZSKI06yK1v+wkdyHSnE0SKoAoavzb/o1JqJoWcuyFKxVthLbfzBm
	toZViDhVp0fYjRftCYM80XCmtOxkRdM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1737117579; a=rsa-sha256;
	cv=none;
	b=Mm/zgEq+fw1BqoIRK3ROoI9FDWrF2peXO5qHw1dSuj7yYzRKyuqJnEzjdG3akQedM5sMsC
	BxFGBMeVfnH7x3RzlHicUFvdJRMaHSGYJR0WqJ2344+ox6g3qwl0lMrG+48MzrHqePGzYg
	e87FgK5XZbeyr/9vXnUgXNTxIS3by+4=
Received: from kero.packetmixer.de
 (p200300C5973c90D8A96Dd71A2E03F697.dip0.t-ipconnect.de
 [IPv6:2003:c5:973c:90d8:a96d:d71a:2e03:f697])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id F23C8FA365;
	Fri, 17 Jan 2025 13:39:38 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	Antonio Quartulli <antonio@mandelbit.com>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 05/10] batman-adv: Map VID 0 to untagged TT VLAN
Date: Fri, 17 Jan 2025 13:39:05 +0100
Message-Id: <20250117123910.219278-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250117123910.219278-1-sw@simonwunderlich.de>
References: <20250117123910.219278-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Message-ID-Hash: UC7PFGFX7DOSGYOUTOD2GIXPRLPWBYP5
X-Message-ID-Hash: UC7PFGFX7DOSGYOUTOD2GIXPRLPWBYP5
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UC7PFGFX7DOSGYOUTOD2GIXPRLPWBYP5/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

VID 0 is not a valid VLAN according to "802.1Q-2011" "Table 9-2—Reserved
VID values". It is only used to indicate "priority tag" frames which only
contain priority information and no VID.

The 8021q is also redirecting the priority tagged frames to the underlying
interface since commit ad1afb003939 ("vlan_dev: VLAN 0 should be treated as
"no vlan tag" (802.1p packet)"). But at the same time, it automatically
adds the VID 0 to all devices to ensure that VID 0 is in the allowed list
of the HW filter. This resulted in a VLAN 0 which was always announced in
OGM messages.

batman-adv should therefore not create a new batadv_softif_vlan for VID 0
and handle all VID 0 related frames using the "untagged" global/local
translation tables.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Acked-by: Antonio Quartulli <antonio@mandelbit.com>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.c           |  7 +++++++
 net/batman-adv/soft-interface.c | 14 ++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 8e0f44c71696..333e947afcce 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -637,6 +637,13 @@ unsigned short batadv_get_vid(struct sk_buff *skb, size_t header_len)
 
 	vhdr = (struct vlan_ethhdr *)(skb->data + header_len);
 	vid = ntohs(vhdr->h_vlan_TCI) & VLAN_VID_MASK;
+
+	/* VID 0 is only used to indicate "priority tag" frames which only
+	 * contain priority information and no VID.
+	 */
+	if (vid == 0)
+		return BATADV_NO_FLAGS;
+
 	vid |= BATADV_VLAN_HAS_TAG;
 
 	return vid;
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
index 5666c268cead..822d788a5f86 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -637,6 +637,14 @@ static int batadv_interface_add_vid(struct net_device *dev, __be16 proto,
 	if (proto != htons(ETH_P_8021Q))
 		return -EINVAL;
 
+	/* VID 0 is only used to indicate "priority tag" frames which only
+	 * contain priority information and no VID. No management structures
+	 * should be created for this VID and it should be handled like an
+	 * untagged frame.
+	 */
+	if (vid == 0)
+		return 0;
+
 	vid |= BATADV_VLAN_HAS_TAG;
 
 	/* if a new vlan is getting created and it already exists, it means that
@@ -684,6 +692,12 @@ static int batadv_interface_kill_vid(struct net_device *dev, __be16 proto,
 	if (proto != htons(ETH_P_8021Q))
 		return -EINVAL;
 
+	/* "priority tag" frames are handled like "untagged" frames
+	 * and no softif_vlan needs to be destroyed
+	 */
+	if (vid == 0)
+		return 0;
+
 	vlan = batadv_softif_vlan_get(bat_priv, vid | BATADV_VLAN_HAS_TAG);
 	if (!vlan)
 		return -ENOENT;
-- 
2.39.5

