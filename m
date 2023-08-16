Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 543AB77E6BF
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 16 Aug 2023 18:43:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2A35D800F3
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 16 Aug 2023 18:43:26 +0200 (CEST)
ARC-Seal: i=3; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1692204206;
 b=Wb38efqsiciYU0iFvEuDuSNm8jXihmO2bJ8ExCNEKpQPIDEhDeohAbgoU36HB/RFJpgCU
 ZUUpRvoMg5N1Qmi1sxA5YsI1+4C0KI3J8z0dGFW2IhKQbLqKnl8E7HBj+Hou5oexSwubKei
 rbnbwloS1VLvuOz6s4C7l7wlKQh87Xc=
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1692204206; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=3aowMFLZM7X2HepHolPQIe7EpcGzJaDXnHi+P/sor0M=;
 b=4Qi0Uothx3gGftSbFMSaOY9XPQi2n6vFNODw/ZJrger0hlWS9VazkpiY/O6GYqtv1PfO0
 ha9F1RCz/LNQ4q+knyOpjDemJa6ubDxIF6l0fkhL32myqbuqC+yUjes8XgoM2s+ASRZEm4v
 jfjfHMxCi7ixHHkDDTu5RE7zocJRQF0=
ARC-Authentication-Results: i=3; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C4D218011C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 16 Aug 2023 18:40:02 +0200 (CEST)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1692204003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=3aowMFLZM7X2HepHolPQIe7EpcGzJaDXnHi+P/sor0M=;
	b=C4/5H2P6Z5aij5f5mnWo8ChZN+B9iwGHYgVwtxhIq1V+3uVSrctvbVjribA2kHvHEv1uJE
	yFiBOKHpn+MgSHs/F7NmOLJRBr1ko2O8fEIJ0Vwt9IOoNS2t5fH0eaYtuuiL03urEp9oto
	pLTcPyCzSZNcinXk8Xd4HiHnjxQE7p0=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=lV5p9bQi;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("simonwunderlich.de:s=09092022:i=1")
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1692204003; a=rsa-sha256;
	cv=pass;
	b=Q5weDyg13BiZ2tWeIMI2AWwOV72YVa4oGDX94w6irGoHnXCh1zQ1/ZOkO9r419Pak5ItWx
	dkufia6CImrQbpUx0fp8hpRUq5jjtDEbsoTxOo4XdfU5V7w6Jkcp62Zuqn47YvOuLaHJM7
	PB2BzWnVhTUV9XlkrlIE9EdB4wUzPeM=
Received: from kero.packetmixer.de
 (p200300fA272a67000bB2d6DCAf57d46e.dip0.t-ipconnect.de
 [IPv6:2003:fa:272a:6700:bb2:d6dc:af57:d46e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 97F40FB5C6;
	Wed, 16 Aug 2023 18:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1692204002;
 h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3aowMFLZM7X2HepHolPQIe7EpcGzJaDXnHi+P/sor0M=;
	b=lV5p9bQiZs5uw9YhXxAdIBYSQRi9TQNzfgmvcXkc8vfyCVqRIcJFPOlwrtGYcioQf2XPqr
	iyA4FyKm551rS3fH9PBoC9iyzJB149Pyhz3gHRay8LXROX6uBLJMXhymGJUr/ijr2H/LcD
	fJFXOJTzcaqZErKtd7G0PgGcIjnqdfgZcrE/xjkWcmL8j/q8mQYZ1kFqJRDq2znldRC9Fz
	lvXgV1Ptikdv+hzHlP6ePhjUwzY2lR7TqpySmXmMq1uvqF8S1lEzMugxVizWZcLl0jOsZd
	Y/HiGFRPgotuDZqKH78ZmhXKyLVfRo980b2lsUiOTVXOKoKixVyWgozR8+7TfQ==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 3/7] batman-adv: Avoid magic value for minimum MTU
Date: Wed, 16 Aug 2023 18:39:56 +0200
Message-Id: <20230816164000.190884-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230816164000.190884-1-sw@simonwunderlich.de>
References: <20230816164000.190884-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=simonwunderlich.de; s=09092022; t=1692204002;
	h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3aowMFLZM7X2HepHolPQIe7EpcGzJaDXnHi+P/sor0M=;
	b=D3jg9HpRScAbHmU4fzYNsyqDBrLhJkWu2jp/8I6VZv8vKolum0b1g7okYPvoLR7qr6MxAv
	X7PQ5K5743sI5+Y6D3NNmEuaNZrNteQhCJGxk81/EBpnGPJo5uDJRBXqgXA26ud3omSqx9
	0GzMtfpcQCUyJ2bxjUiiwtbxdABnVtgNmzc6rWd6iT3I4gT8Iue7b4Bwj1aPpoitLnwEcW
	02juqOWlHXj1DfUjveaoIlbPomJLsyxuY7gQZTTyuXEBIXwDu7tip8aufzeuAhGmeSYzVI
	vwQ/8RmOhDSbCVzGPw/dCBdt+7tGFgRzOVHaET05G+ShT1egCQANKYNg6Gi1rA==
ARC-Seal: i=1; s=09092022; d=simonwunderlich.de; t=1692204002; a=rsa-sha256;
	cv=none;
	b=0bv9CU+vS79LbFiWF/Hp+8NyIdw1kx//W84joQFfSPCYewUimo3wPPW0mThM+qhVCHf7j/lOvHgrcxQbKaws9dN/dkjROLDyTdVVqxvTpNF8NHNqKzEFAsR9qt9ddEefKXZlhatEeF14mOrhPPrUSR/8k+WhsmMRR24LOdt4TmivYj1Xjt/NSe/Lt4oMpzsbXx81QYhNQFnS1kJMk4UB1ytCVRViHrmjLLtNGg958i6Vf8wywvgMwfP0/w2SVmOZWMjbOwJeBJ0NremwtkApuFRCLOHVHd8XHQerMj+nvEU0FWv+HPLVksG5seZ+fzid3FxEjvxQLo9EPumVLolGJA==
ARC-Authentication-Results: i=1;
	mail.simonwunderlich.de;
	auth=pass smtp.auth=sw@simonwunderlich.de smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: BEL2BT3ZU2VK4EMNNRS6ETLZF5XKEKEM
X-Message-ID-Hash: BEL2BT3ZU2VK4EMNNRS6ETLZF5XKEKEM
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BEL2BT3ZU2VK4EMNNRS6ETLZF5XKEKEM/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The header linux/if_ether.h already defines a constant for the minimum MTU.
So simply use it instead of having a magic constant in the code.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/soft-interface.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
index d3fdf82282af..f7947fad06f2 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -154,7 +154,7 @@ static int batadv_interface_set_mac_addr(struct net_device *dev, void *p)
 static int batadv_interface_change_mtu(struct net_device *dev, int new_mtu)
 {
 	/* check ranges */
-	if (new_mtu < 68 || new_mtu > batadv_hardif_min_mtu(dev))
+	if (new_mtu < ETH_MIN_MTU || new_mtu > batadv_hardif_min_mtu(dev))
 		return -EINVAL;
 
 	dev->mtu = new_mtu;
-- 
2.39.2

