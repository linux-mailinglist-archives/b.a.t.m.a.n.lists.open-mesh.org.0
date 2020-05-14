Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 002BF1D3B27
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2020 21:05:22 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B7044809AA;
	Thu, 14 May 2020 21:05:16 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589483115;
 b=ahgf7iKGsZdtwRXSizmAxs5r6wtJNsrzTgI+QVkmtTQ58XkGNZEH9NAxyWo/5uKziNejL
 gCXA6yOYbbHagpTl/enJPMS/TNCzUm7ArhaCSCg2ZjSIPhLP7TzFnZDCeNM4vuyUh0oz5Vv
 +9h3R07jjZCKAfq241Wko4O5Vo/ZaTs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589483115; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=IO2jMV6CDIappY2Ns15LJ1UGU71koqdydVPN/qG+Mbk=;
 b=AGNyR2uuLQl+c/ZPuKhwDKasELzVUJYqTCqSBjhXppiSaawTtL8d8xrDwk1/MNkYEJYUr
 CZbfcQUjfSo0aLb8Sruf6e1zHNSgAU+mbxamnx3qZ/QD7s2ExbvkQfiE4BSTEo0s/xLCxon
 Bqz2LMPBrG25g8rBwNH4nYt0AGeappc=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail header.d=kernel.org;
  arc=fail;
  dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail header.d=kernel.org; arc=fail; dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 717DB808C4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 21:05:13 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BD7C3206DC;
	Thu, 14 May 2020 18:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1589482559;
	bh=5PdqGDBag7/RCDTVeur3CUfRLsoo1DOUY0IAK6ySQhI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mKZ0GR1ONoFAZz4qhA6KLKTUAlYHf+4Gx775ZeOVMZ0mu64Z9W0VHnyx6tUtQYGrF
	 wu2OdCM0prhyV1+XJpI8x+GhCEPCZBsrJuGS6BVp5i2USxhPfMsq0uTtl+8DArl2UZ
	 jJcu8+x/lFkjR0OK5NxSVm7xpnQ2hQgcdoM1XEBM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 07/27] batman-adv: Fix refcnt leak in batadv_v_ogm_process
Date: Thu, 14 May 2020 14:55:30 -0400
Message-Id: <20200514185550.21462-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514185550.21462-1-sashal@kernel.org>
References: <20200514185550.21462-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589483113;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=SkWPawAHqeQKMNhTi+TcHz4CLy+CCW4pzELwLaFIcQI=;
	b=grsrdworxBP3BE7ciouR7cFppX+LLEhLKcJNl01hvgGsLdhwqg0sE73a0c+pK9CUQGaaMh
	fRJqHs06N4ySfmvvHtmFiRI1O1rLR7AmptCCZmf4ZqsIa9+XbyqI1rjDRMvDa8wKGfM2iD
	DTaZc6r6kQoX72BAP5z6oWS9XwQMPYI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589483113; a=rsa-sha256;
	cv=none;
	b=lqaYL54dC/X+5FOJFSSD2cJJzW0zhaT/IXt4DbqZRhsHiVORh8QYA/ci0X+aot3QKtR997
	btJk03SoVjAci0LW9ObxCYk3s8Cs9y4NY+kfoddfKJYy9z+QGu3Lx5pBf8Dlp0eyFUUoJg
	u4A4b2+loNlINOvqlb/tXrQe+9FIn78=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=mKZ0GR1O;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JIOIZALOA63KK7R2FAA34NL5AGE7REHM
X-Message-ID-Hash: JIOIZALOA63KK7R2FAA34NL5AGE7REHM
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>, Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JIOIZALOA63KK7R2FAA34NL5AGE7REHM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Xiyu Yang <xiyuyang19@fudan.edu.cn>

[ Upstream commit 6f91a3f7af4186099dd10fa530dd7e0d9c29747d ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/bat_v_ogm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index b0cae59bd327c..d2e6885479cb1 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -709,7 +709,7 @@ static void batadv_v_ogm_process(const struct sk_buff=
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
