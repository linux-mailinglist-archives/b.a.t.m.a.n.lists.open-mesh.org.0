Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E95CEA81E4F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Apr 2025 09:30:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CA92A84251
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Apr 2025 09:30:56 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1744183856;
 b=ZNIm8TweCv3+3bmv3KUTW9c3KZIKxa3MHANtXBjqGVVrp6Kr/F2jkJ8u71GDrZaVvIaJ/
 aFfUy/xX3ESe7WUWqGz32wqhJvVdRYyVIhenbO2CFDEvKQ51O5uYL9ifTaMXji0zgRoDJUG
 BhitQRzghPCRsMqma1RdYuF4D3ZQddk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1744183856; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=NahKR4D7zw6yAZl62BqbkPPNvwTaypc5laDZMUthQtg=;
 b=WM+kVmEJpvz8VfHpdqRVsQdf41BePKPxE1BbU1AI3uppQb3zB0xQeq67ttEREOBz7F1z4
 /DvnFbHq8watZwapvfM9tpKbwEJ3yab6VCqelISy0G9A/86LuSTaOH26Pi2CSjg8xezGgas
 BVO4u8Ri2wImcKwsPw5+r7eAcnWWUTo=
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
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B27B580BCA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Apr 2025 09:30:13 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1744183813;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=NahKR4D7zw6yAZl62BqbkPPNvwTaypc5laDZMUthQtg=;
	b=yoJQqF03qoInYcX/JSt2BK55BC2hk+eNJvTyWOIZ+0kDHdoGmEV9F/GAw3gOBgILFGR/+i
	o9BNKnSc5Ei7GxSdkaPzxvKrtOzXUZVFpACAYwMwsa3Vq7eUPp4krRS7NbEGzS7ERFtdra
	kZtOL6N/WsDtPSfz6anCctB9yfvsqVI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Vhg2ETxI;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1744183813; a=rsa-sha256;
	cv=none;
	b=qnaFwT+Xor8svLjx3fdWdP4bQRX02b+aJH7E1iLchJ6ob1TPzEuWhruyW/SqHKxV4+poM9
	SYezGbhwvF4SGEja/a6mRIwYI6yFz0x/RNrca01ywjmNZyEZXOzH1QjPMdHbRr7oMzkMli
	MWREbiSPK42G+jFXK0USQpF1MBF1Mss=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1744183811;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=NahKR4D7zw6yAZl62BqbkPPNvwTaypc5laDZMUthQtg=;
	b=Vhg2ETxIPSTvVWXaj9ILySdSaaS4rDCbdSTM/Ab7bXZZ8scMcgT7ThHW+XGZMDsGmSzntR
	N71GC5ShIfZNESMvWAbZ7N0BMMvgaen0cyKtZUxEMb+wEmpKcoXRVRymjfH5lDRKJLPgQs
	lsmbfyCHfvcnuM1wQ6azex22hq0/4+s=
From: Sven Eckelmann <sven@narfation.org>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>
Subject: batman-adv: Fix double-hold of meshif when getting enabled
Date: Wed,  9 Apr 2025 09:30:00 +0200
Message-Id: <20250409073000.556263-1-sven@narfation.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: I3XLMAAFO7NX3TKWBXITJQJH6OAJ44LA
X-Message-ID-Hash: I3XLMAAFO7NX3TKWBXITJQJH6OAJ44LA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/I3XLMAAFO7NX3TKWBXITJQJH6OAJ44LA/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Fixes: 00b35530811f ("batman-adv: adopt netdev_hold() / netdev_put()")
Signed-off-by: Sven Eckelmann <sven@narfation.org>

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index f145f96626531053bbf8f58a31f28f625a9d80f9..7cd4bdcee43935b9e5fb7d1696430909b7af67b4 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -725,7 +725,6 @@ int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
 
 	kref_get(&hard_iface->refcount);
 
-	dev_hold(mesh_iface);
 	netdev_hold(mesh_iface, &hard_iface->meshif_dev_tracker, GFP_ATOMIC);
 	hard_iface->mesh_iface = mesh_iface;
 	bat_priv = netdev_priv(hard_iface->mesh_iface);
