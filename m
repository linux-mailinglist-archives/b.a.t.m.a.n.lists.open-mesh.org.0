Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB9A2A18E6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 31 Oct 2020 18:09:57 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 60D5E802F3;
	Sat, 31 Oct 2020 18:09:56 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3CC4B80244
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Oct 2020 18:09:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1604163640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dvphOMRM9KyvNf7BTwaf8R0Eov7kTXuIJNJd6pO7qJ0=;
	b=XdyGcBoz2xCChrIJldAeZDSWzFVdpdBGKhhJ0aT0yI659ZGnVjegRYKRlEzT1zXkoNI5N/
	lY3QMBBs6k2tDC4YAoZWGR1tasSPoOXrOTS4sjpxU9oiwBXSAydqlfbE0dPMFFazHyL1R/
	1HkbebjRh0IpmT0I63AYSoo8BFQZTyE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batctl: Fix retrieval of meshif ap_isolation
Date: Sat, 31 Oct 2020 18:00:26 +0100
Message-Id: <20201031170026.106930-1-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604164193; a=rsa-sha256;
	cv=none;
	b=Oe7EmD6b455sB43bosr9AYtwvLNJwnzhTHvTShhOCZWLJQkx0fVqUsvrzSbqzTT6wHj2eL
	4tW/Iq9sc7qWeuWbpjl7XlMDhckz8PquXVGqaz5A996uYvcOe7L+BosLa2w2MEaSE8HPN0
	92aFhJvvL+sW6WtA8VZyRylF/OMrRGc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=XdyGcBoz;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604164193;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=dvphOMRM9KyvNf7BTwaf8R0Eov7kTXuIJNJd6pO7qJ0=;
	b=NoqZv3seJp9L4kinde7bwbT7flZ96VaXqJa5/TVf/OFhw+Q1BWPmd1y6mPXHvfiNwW33jw
	4MoALR9wcYnOLgjW+3J1ms4d1OQV3gM9hbUmUKMJMvycd5ZoX0UnL0duivZKBDypf88Awm
	8c2Ei94hOGytwgRpY5oVHpPvcu8hwIs=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 55UECCDWL6ICTGM2Z4VLGNHFMYHIZ7BT
X-Message-ID-Hash: 55UECCDWL6ICTGM2Z4VLGNHFMYHIZ7BT
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/55UECCDWL6ICTGM2Z4VLGNHFMYHIZ7BT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The batadv command to retrieve the attributes is called
BATADV_CMD_GET_MESH. The used BATADV_CMD_SET_MESH will only return the
current settings via the "config" multicast group which is not evaluated =
by
the ap_isolation command.

Fixes: c56a63a5f12a ("batctl: Support generic netlink for ap_isolation co=
mmand")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 ap_isolation.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/ap_isolation.c b/ap_isolation.c
index df19072..c8675f5 100644
--- a/ap_isolation.c
+++ b/ap_isolation.c
@@ -36,7 +36,7 @@ static int get_attrs_ap_isolation(struct nl_msg *msg, v=
oid *arg)
=20
 static int get_ap_isolation(struct state *state)
 {
-	enum batadv_nl_commands nl_cmd =3D BATADV_CMD_SET_MESH;
+	enum batadv_nl_commands nl_cmd =3D BATADV_CMD_GET_MESH;
=20
 	if (state->selector =3D=3D SP_VLAN)
 		nl_cmd =3D BATADV_CMD_GET_VLAN;
--=20
2.28.0
