Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D31D4AD215
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Feb 2022 08:20:00 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0831681DB1;
	Tue,  8 Feb 2022 08:19:59 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A2AE4808EB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Feb 2022 08:19:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1644304794;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=se6LTT+kX9A685apxIMdrA3B+bYReqnE+Z8/fg+zJD4=;
	b=e2jbxH0CK9qYuxzVUwPCzdHTfY1zK2yjnN3VM67ZMua6/65WZiD1n03dlMNcVmqngfX5bv
	+MhFvJ2scglecR6oqHFAtpdh6LDaztoVEYp/vxFjzQ5ST1HrKGvZaMg+ofO6+/QK2+O7HM
	+zESHDecmXcS3AM2i7Exy3chFkwD7bA=
From: Sven Eckelmann <sven@narfation.org>
To: linus.luessing@c0d3.blue
Subject: [RFC] batman-adv: make mc_forwarding atomic
Date: Tue,  8 Feb 2022 08:19:42 +0100
Message-Id: <20220208071942.7884-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=e2jbxH0C;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1644304795; a=rsa-sha256;
	cv=none;
	b=w5P5BnV6MNHi8hUFQOM7EX1fgwqZWxF/fpEp+OvdVM6olaPEtH05H+wA53rH3ANj7cmDbY
	Qm5tpp0wVNfLhT4zsrnloK42UKsbkzQcvIybdGlwPh2lRBaNY4Bn+fmELk7kycXawbgLgh
	kVMdD+DP33vkIITV7aYk2jEye+xLLn0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1644304795;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=se6LTT+kX9A685apxIMdrA3B+bYReqnE+Z8/fg+zJD4=;
	b=dLhgMqlJir5deMSm9pPEvE+0az3UsGerliQOTrtaDRM19yg+xq8XLsE4qtICL+T9mFPKFt
	PxbjKG2qrDssRYTkPo0Fy3fJrAlyQtffGM80jNRuvq1t1FYj8/SFw6RJ2LBye6yraDzZ4F
	Ko/YwBU7JspOFnNFl8HwstZQMpUN1Kc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LT2FXR5ZO37SAEO2EIVHA6BGDPETLAMN
X-Message-ID-Hash: LT2FXR5ZO37SAEO2EIVHA6BGDPETLAMN
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LT2FXR5ZO37SAEO2EIVHA6BGDPETLAMN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Eric Dumazet <edumazet@google.com>

This fixes minor data-races in ip6_mc_input() and
batadv_mcast_mla_rtr_flags_softif_get_ipv6()

Signed-off-by: Eric Dumazet <edumazet@google.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
---
net-next commit 145c7a793838 ("ipv6: make mc_forwarding atomic")

This still needs compat code - does anyone have ideas?

 net/batman-adv/multicast.c | 2 +-
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index f4004cf0ff6f..9f311fddfaf9 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -134,7 +134,7 @@ static u8 batadv_mcast_mla_rtr_flags_softif_get_ipv6(=
struct net_device *dev)
 {
 	struct inet6_dev *in6_dev =3D __in6_dev_get(dev);
=20
-	if (in6_dev && in6_dev->cnf.mc_forwarding)
+	if (in6_dev && atomic_read(&in6_dev->cnf.mc_forwarding))
 		return BATADV_NO_FLAGS;
 	else
 		return BATADV_MCAST_WANT_NO_RTR6;
--=20
2.30.2
