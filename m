Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E325639FAA0
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Jun 2021 17:27:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 963EC83EC9;
	Tue,  8 Jun 2021 17:27:06 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E777481708
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 17:27:03 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970dd3e020a52263b5aabfb3.dip0.t-ipconnect.de [IPv6:2003:c5:970d:d3e0:20a5:2263:b5aa:bfb3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 8DB35174026;
	Tue,  8 Jun 2021 17:27:03 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 04/11] batman-adv: bcast: avoid skb-copy for (re)queued broadcasts
Date: Tue,  8 Jun 2021 17:26:53 +0200
Message-Id: <20210608152700.30315-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210608152700.30315-1-sw@simonwunderlich.de>
References: <20210608152700.30315-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623166023; a=rsa-sha256;
	cv=none;
	b=dY0zBlY1EhiRz34CPR0VsnLCCmiJh93Gs//dFDFk3RmQOTKpyFXyGBtkFx+6O5Ad+zhDWp
	Ji7yNG6aGzwHwhzwk/k1U3IWw7F+bbEWnmiBy+kaT9R8Nw9rNOdSmkGnB1D1VOWkE/V0zR
	IV2cDqaV015FGXPAQYZeCKwF5GyjxTA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623166023;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6A8eDAkN8BXpdPnoDIN54H97A9q3+FTlWZjlAIpcYQI=;
	b=uYWXynHRDk80BpvCfNZjLnl3R74Fb9bTSgTPtR5EEEybB4ET3++3/fOOmoHKh4S9UCwfPO
	Vhqaao17sAuLerRokyAA9cBTc97+HXROauyiAuAdKXu3tORnPS2PjmlwEMXya4bgNKjFPw
	tWKWjUCd6QAr1YFQdJZo8fieTRfwILw=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5DOMZOARHR7Z27J27427ENUTFGHFCFEZ
X-Message-ID-Hash: 5DOMZOARHR7Z27J27427ENUTFGHFCFEZ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5DOMZOARHR7Z27J27427ENUTFGHFCFEZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

Broadcast packets send via batadv_send_outstanding_bcast_packet() were
originally copied in batadv_forw_bcast_packet_to_list() before being
queued. And after that only the ethernet header will be pushed through
batadv_send_broadcast_skb()->batadv_send_skb_packet() which works safely
on skb clones as it uses batadv_skb_head_push()->skb_cow_head().

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/send.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/send.c b/net/batman-adv/send.c
index 07b0ba265472..0b9dd29d3b6a 100644
--- a/net/batman-adv/send.c
+++ b/net/batman-adv/send.c
@@ -1072,7 +1072,7 @@ static void batadv_send_outstanding_bcast_packet(st=
ruct work_struct *work)
 	}
=20
 	/* send a copy of the saved skb */
-	skb1 =3D skb_copy(forw_packet->skb, GFP_ATOMIC);
+	skb1 =3D skb_clone(forw_packet->skb, GFP_ATOMIC);
 	if (!skb1)
 		goto out;
=20
--=20
2.20.1
