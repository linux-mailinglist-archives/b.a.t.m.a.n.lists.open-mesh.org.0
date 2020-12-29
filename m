Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B1F2E6EF0
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 29 Dec 2020 09:30:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 190CE80A65;
	Tue, 29 Dec 2020 09:30:12 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id ABCC5800E2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Dec 2020 09:30:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1609230266;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vERLyCZvktCOgNaX3QZwj3bj6HShIEtUkhhAiEdZlgA=;
	b=J8z+Sb84Ak9KukVEcp06nk/Kvb1UGKSH2hR6F3Dh5qUQYfkl6ym1iyVSmY2YOUwlUGabod
	TMYgg8QWtpYbbYtrWUX0BoxqIEABHbzEGzBzR8M7h1tbodPmm8xncAV25YYm8wXCNUM32Y
	QZlbfeBiyQ1iWyx5w9NR1nVzA0zPL28=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Avoid sizeof on flexible structure
Date: Tue, 29 Dec 2020 09:24:21 +0100
Message-Id: <20201229082421.214284-1-sven@narfation.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1609230609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=vERLyCZvktCOgNaX3QZwj3bj6HShIEtUkhhAiEdZlgA=;
	b=HZFSVcb7gV7bBVSZpu8FjDQCyrxUE45m5MuzmEnWT6+iXD0DNtwoXgK67bSVeushMwUtaZ
	vYtQQNlLwcm5mJSoX8nY02F23806Z9vXf5ybxdjxJqWzKjx7ezE8CpugZrmExHanFBW6dt
	TwnSor3OF204ZLOTaEpM6JxL+SHk7X8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=J8z+Sb84;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1609230609; a=rsa-sha256;
	cv=none;
	b=joNjanmDY01xBd6WY5JWjjPCZ10JL/rnsybxhMshc+E2QcFUrxITcgvU+zAHHI5lik92rC
	zANW3uHKCXFlK5K5DZgClzYH6GhqBDI0okk9N3B4lozZc2GbilDwkepNt/R/PD6DXVIbvs
	vl5plVJvYtUxMrBS4vGdK5KvhZFXKcs=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 4RPGYVTFLIJZWN33MQFANA6XWTIO7N56
X-Message-ID-Hash: 4RPGYVTFLIJZWN33MQFANA6XWTIO7N56
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4RPGYVTFLIJZWN33MQFANA6XWTIO7N56/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

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
---
 net/batman-adv/distributed-arp-table.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
index fd7ba6bb..d2ec419d 100644
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
2.29.2
