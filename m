Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A33291BA76D
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:10:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 641A880DFF;
	Mon, 27 Apr 2020 17:10:52 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588000251;
 b=LjmKsta8FWBRicwH7IlHeySxZKnBNp7hOSKHoURGwWpH2OKU+2g6B3CJTadqS5F3aSXG6
 Krm+vAa/8GMs4rNMbRHqmlcjDV3Ce2ykiz4eSNpY1NrVe8NLlDNn2j7w0oIw5GpA6LyGUN7
 h+hHaUG8oemx+M19ZqMh6n8PFov4muE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588000251; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9fyK5ulzDod0Mcd1rx7w9vnQM4JE6GiKzC4vWPOwOko=;
 b=kOkF3hDvf2MStpzseNGjf03SFtcR2UroqeIwXtyM9RPDvvZNdxjKMLo6sBdYx3HiJF7KT
 XSDOncXdzIMiuBnDrnscpb3k+3+KpF+6zRPV2DnGNz7scPR/Mp6Zom6N0dBTu+FX3nXKwYI
 pQszQig03+dKgUwApR4NDmsMTieLVhE=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 683D78002D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:10:49 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 805E06206C;
	Mon, 27 Apr 2020 17:00:44 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 4/4] batman-adv: Fix refcnt leak in batadv_v_ogm_process
Date: Mon, 27 Apr 2020 17:00:39 +0200
Message-Id: <20200427150039.28730-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427150039.28730-1-sw@simonwunderlich.de>
References: <20200427150039.28730-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588000249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iAthKBOrDvZCS7N6CscyqnQ85CaXvUr3rUYUdwS+jQE=;
	b=Fc0VuNOLaEh7jeetyVYKLTv7gYTfVeVWmkf5zSPOjnz7s0TOxS2e0gGXyf2vIJ76F2rUzi
	ZUQAVhcB6NL/XUSfhidgdRpsIxkW3bvB6nXbwyQFPNX1Sf5itfx9+Rx3Y9g7XC9ey/Y+N1
	2Kf37nsNwqcFHplKSR/wpPa/P2C9K+8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588000249; a=rsa-sha256;
	cv=none;
	b=kERi4UwpXiGvbVMLppK8JayhGZPGIw03623zJBEsRYUpx1KVPEBku8ZKENl7j3zBOnHeXm
	QXVDuh+7bXH9dImP0LmCU2moMQY9gEZPzgGr2hvX19ZWaacMhDHLll4dvM2rgLA2Bnm5Fy
	w8k62N1fQTeAgIFShYzvpzETNejFdn4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 6Z2CK2O7EU7WNLYP5PSO3YTFID3LWUC5
X-Message-ID-Hash: 6Z2CK2O7EU7WNLYP5PSO3YTFID3LWUC5
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6Z2CK2O7EU7WNLYP5PSO3YTFID3LWUC5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Xiyu Yang <xiyuyang19@fudan.edu.cn>

batadv_v_ogm_process() invokes batadv_hardif_neigh_get(), which returns
a reference of the neighbor object to "hardif_neigh" with increased
refcount.

When batadv_v_ogm_process() returns, "hardif_neigh" becomes invalid, so
the refcount should be decreased to keep refcount balanced.

The reference counting issue happens in one exception handling paths of
batadv_v_ogm_process(). When batadv_v_ogm_orig_get() fails to get the
orig node and returns NULL, the refcnt increased by
batadv_hardif_neigh_get() is not decreased, causing a refcnt leak.

Fix this issue by jumping to "out" label when batadv_v_ogm_orig_get()
fails to get the orig node.

Fixes: 9323158ef9f4 ("batman-adv: OGMv2 - implement originators logic")
Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_v_ogm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 969466218999..80b87b1f4e3a 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -893,7 +893,7 @@ static void batadv_v_ogm_process(const struct sk_buff=
 *skb, int ogm_offset,
=20
 	orig_node =3D batadv_v_ogm_orig_get(bat_priv, ogm_packet->orig);
 	if (!orig_node)
-		return;
+		goto out;
=20
 	neigh_node =3D batadv_neigh_node_get_or_create(orig_node, if_incoming,
 						     ethhdr->h_source);
--=20
2.20.1
