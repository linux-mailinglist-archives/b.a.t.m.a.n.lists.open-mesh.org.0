Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B52C9F391C
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 16 Dec 2024 19:38:08 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CA78783F77
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 16 Dec 2024 19:38:07 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1734374287;
 b=I2lDJsgf8ZEs8z4aZmNM6CmSZsKvsH2O2nnYXD6PI63VaH9ver7rNgImdyYQTYi7IK8xp
 7rCxfQAaiW19ZTOMRjK2TmkjVFB0i2SMSbkj0rHUj0c3xTQkXqwiePAOf3L+LbVEynGal2m
 7WxnHSr9ALEIgkweX/IKNxtG+KKNV8U=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1734374287; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=WV7YsBo72+haMjufm3ReCWM30T9c3oBk4qv40HoeU0I=;
 b=EPOf71qORLDyAgz+ZjZG3tPInDzIymTsTDmd6T6N5yAREoLMFYgGdWj8L7R89xScdBn/l
 4Rr6Tf4WCnBf1bOrksSjdZXtRGdxSr9tE5ohG8bur209mnikWtD5k6kAtpNBPtPiNPHfth7
 VjIr/SwZjUHg8yujU7G13vfUyBRBCBE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4932C80F42
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 16 Dec 2024 19:37:38 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1734374258;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=WV7YsBo72+haMjufm3ReCWM30T9c3oBk4qv40HoeU0I=;
	b=qIk+X1FFMGKXjlR5ZdbrZGSXC+LAfqTFbPFdtE92OtCp+XwGkr0IG1TgcJy8bXyRS7DYxN
	vxS3jeKrQVeOJi/KoA27RPQ7K424o+xusNB3TLFMiWhIGRPlBpMkE0BAg9s7uvgzXYRBC5
	agVeU2HTGKMgVSSroysCtFn873eZywc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1734374258; a=rsa-sha256;
	cv=none;
	b=pO8VnNAFx0dXpMfPqQf4Bpw0xDB54F8AqzsiAv9B3Vm9KgbtbaAnbpXZ6b/WvohLbKnqP5
	CCPkT+4Rvy1sRa9LI3Zrcb5Z/wPhZQ0FwiaBKvriKJuVu65W6DWafNBsPkn0SIfcCiXBHw
	97WutWevZVGep7fZlGnPYgvx+FM4HYI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ZvtzBLAQ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1734374257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WV7YsBo72+haMjufm3ReCWM30T9c3oBk4qv40HoeU0I=;
	b=ZvtzBLAQzg7/Ek5lXlWBz0eWeaf21uqS+ta1aexypKZuHuvbwbnafZAPXZf2wRnjh/eL97
	uGF5i46kIAIYUIUvk4rUZP/CPMzf11evWoRSdNX8+JQzTObX3gljh0ZNeUdgwdMOV8m9bR
	yjCwFVNr8mzRvgJhJ739aNzwlCzjYeg=
From: Sven Eckelmann <sven@narfation.org>
Date: Mon, 16 Dec 2024 19:37:12 +0100
Subject: [PATCH] batman-adv: Map VID 0 to untagged TT VLAN
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241216-no-vlan-0-v1-1-62586f97fd88@narfation.org>
X-B4-Tracking: v=1; b=H4sIAFdzYGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDI0Mz3bx83bKcxDxdA11TC1NTEwPzJMtks2QloPqCotS0zAqwWdGxtbU
 AjMKUiFsAAAA=
X-Change-ID: 20241216-no-vlan-0-5855407b9c6c
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2967; i=sven@narfation.org;
 h=from:subject:message-id; bh=PNPaqyRtXFgSeCUQm7ygxT1TjfKbWiZCk0mYC4BYyA8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDOkJxek2x9o/f02zUrwiZmZzYu3zzqItctsm+nNreKqsO
 3Z3zsJvHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJBC5jZHh+5kqf55MCAVnn
 3qOm59112TP58uVbhXZv9Nyv4eDFIsrwh//ec+c7XG/vLmDJNRfL3Xd4l+DKY2aev12LvGXuWWn
 tYgEA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: NRHO5V6UPI6DF2HT2PNCBS5Z2Y4MEGL3
X-Message-ID-Hash: NRHO5V6UPI6DF2HT2PNCBS5Z2Y4MEGL3
X-MailFrom: sven@narfation.org
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NRHO5V6UPI6DF2HT2PNCBS5Z2Y4MEGL3/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

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
---
 net/batman-adv/main.c           |  7 +++++++
 net/batman-adv/soft-interface.c | 14 ++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 8e0f44c71696f642d80304ec2724e8b5e56a5d93..333e947afcce7ca4128be8406f23295df723515c 100644
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
index 1f06861bc86a7d23c48d91e61298f48f6ec6b3f9..282a8f9b144471b12f62a547b3e57666cbb22c6d 100644
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

---
base-commit: 4e395d4d6908da373f00752c363c82ccf99a427e
change-id: 20241216-no-vlan-0-5855407b9c6c

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>

