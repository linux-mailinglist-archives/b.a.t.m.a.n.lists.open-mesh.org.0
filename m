Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC07313A7C
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  8 Feb 2021 18:10:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F117980551;
	Mon,  8 Feb 2021 18:10:11 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BE47980EE9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  8 Feb 2021 18:10:09 +0100 (CET)
Received: from kero.packetmixer.de (p4fd575e5.dip0.t-ipconnect.de [79.213.117.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id C2D4E174021;
	Mon,  8 Feb 2021 17:59:40 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 3/4] batman-adv: Avoid sizeof on flexible structure
Date: Mon,  8 Feb 2021 17:59:37 +0100
Message-Id: <20210208165938.13262-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208165938.13262-1-sw@simonwunderlich.de>
References: <20210208165938.13262-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612804209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=L6QU5QWx0fPi0gBMdBYiYNzx4OqtslwNZjk0VQ26Y+Q=;
	b=rWY5LFGChL649cKJPH9nS7PAzLx1VURyFenzGRuIRZ73hGCLXD7EpyzbxKRCo8KhGb5tzX
	VIakeuo0GWRJzweWrjQkz/pbRGswAOm1yecd5q7AMgogi03Op4B1LzMqhxVUG/iOL1iCkq
	2JeFlCI4paYK83CsyaNkeTyhmIPCzTk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612804209; a=rsa-sha256;
	cv=none;
	b=TIpJGqvWfnayobpJtgAoZChN7+NgmEk/IkiAgRg/GCQDNyUbESerbWRiO7a5KvTBglcznY
	biT7Am8Hf5RH5LuzOUKjMqs3i32r5jsy85egtWK0Z7ikh1HmdcWUDYyeTgItTZXnR1SCQa
	i2jZJ9WI/t/TeR5KfChHtEuVGtPSDuw=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2CMYSLA2WVZEZBUAUNGPV7UTO5HF7XPB
X-Message-ID-Hash: 2CMYSLA2WVZEZBUAUNGPV7UTO5HF7XPB
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2CMYSLA2WVZEZBUAUNGPV7UTO5HF7XPB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The batadv_dhcp_packet is used to read in parts of the DHCP packet and
extract relevant information for the distributed arp table. But the
structure contained the flexible member "options" which is no where used =
in
the code.

A sizeof on this kind of type would return the size of everything except
the flexible member. But sparse will detect this kind of sizeof and warn
with

  warning: using sizeof on a flexible structure

This can be avoided by dropping the unused flexible member.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/distributed-arp-table.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
index 01e0f84cb1ff..2542d85a59b4 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -87,7 +87,7 @@ struct batadv_dhcp_packet {
 	__u8 sname[64];
 	__u8 file[128];
 	__be32 magic;
-	__u8 options[];
+	/* __u8 options[]; */
 };
=20
 #define BATADV_DHCP_YIADDR_LEN sizeof(((struct batadv_dhcp_packet *)0)->=
yiaddr)
--=20
2.20.1
