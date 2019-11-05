Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 9294EEF9E0
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  5 Nov 2019 10:46:35 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 8BBE780C5D;
	Tue,  5 Nov 2019 10:45:45 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
 by open-mesh.org (Postfix) with ESMTPS id 2761780175
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  5 Nov 2019 10:45:23 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F5D00F0ACF07C9CF9C7D8.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:5d00:f0ac:f07c:9cf9:c7d8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 103D66205D;
 Tue,  5 Nov 2019 10:35:35 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 4/5] batman-adv: Use 'fallthrough' pseudo keyword
Date: Tue,  5 Nov 2019 10:35:30 +0100
Message-Id: <20191105093531.11398-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105093531.11398-1-sw@simonwunderlich.de>
References: <20191105093531.11398-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1572947123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WIT20E8jUoELiGRnxHRnK6l+kYjKjwDtl/HgW9I6++Y=;
 b=s5Vx2OHr8+4Dnp7nf/yObyVhrHLN3CRcfq4fDQzf8M/6n5s558MLOdRdkwOYOKms8V/brL
 bQ0CVmFSlOUxmrbamoFKsmj1++TN8tzDKZ1PzSAzVvftE9e5MuOkQBcdarnZq4dMKvIUOt
 fttCS5s0rMhManoL4Ib4GMuxGh5LU2U=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572947123; a=rsa-sha256; cv=none;
 b=pGz646EZkoKELTd3ACMoo5+NyifELLYg/yPRSvdS4rT3dEau3tjYZm0kCtklpGwrh4q1vv
 5InTRchlZbfkSaztYWtt2N4gEXS1SASNhCr/PmnlcGCcUgo0hqA58fbzrFdj4B00asN5ev
 OluX6/TYrKfvqG2GamVIesS8Yp8takk=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of sw@simonwunderlich.de designates
 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The usage of the '/* fall through */' comments in switches are no longer
marked as non-deprecated variant of implicit fall throughs for switch
statements. The commit 294f69e662d1 ("compiler_attributes.h: Add
'fallthrough' pseudo keyword for switch/case use") introduced a replacement
keyword which should be used instead.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/multicast.c      | 2 +-
 net/batman-adv/soft-interface.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 1d5bdf3a4b65..f9ec8e7507b6 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -1421,7 +1421,7 @@ batadv_mcast_forw_mode(struct batadv_priv *bat_priv, struct sk_buff *skb,
 		if (*orig)
 			return BATADV_FORW_SINGLE;
 
-		/* fall through */
+		fallthrough;
 	case 0:
 		return BATADV_FORW_NONE;
 	default:
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
index 5ee8e9a100f9..697f2da12487 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -230,7 +230,7 @@ static netdev_tx_t batadv_interface_tx(struct sk_buff *skb,
 			break;
 		}
 
-		/* fall through */
+		fallthrough;
 	case ETH_P_BATMAN:
 		goto dropped;
 	}
@@ -455,7 +455,7 @@ void batadv_interface_rx(struct net_device *soft_iface,
 		if (vhdr->h_vlan_encapsulated_proto != htons(ETH_P_BATMAN))
 			break;
 
-		/* fall through */
+		fallthrough;
 	case ETH_P_BATMAN:
 		goto dropped;
 	}
-- 
2.20.1

