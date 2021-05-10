Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CD35E378C9F
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 15:15:23 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 875B583EF2;
	Mon, 10 May 2021 15:15:18 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C84BC83E68
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 15:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620652072;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kQkx43KxA4d+1FIGI7hfjNvvWtSnp9coinGS9U9qgD8=;
	b=BEDTal13th2GadSMwGoxsWKU25cfrYJ7nLPM7E1jsfKlQKZN4LooRaWBQFVsgqU8FMSkcs
	fSrKi7d1XcQcSHZF2YSpd/IJ29QwxZUoaerTL+OGEwkUnZo9QS9ddEb5ltXfAKILDiNAn0
	Ioi3Jwy96CE9PUOkkmb/jtWbbiDx9Lk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 4/4] batctl: event: Get ifname from netlink message
Date: Mon, 10 May 2021 15:07:34 +0200
Message-Id: <20210510130734.41080-4-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210510130734.41080-1-sven@narfation.org>
References: <20210510130734.41080-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620652501; a=rsa-sha256;
	cv=none;
	b=nDPXxJTjwjA4izT3R87nx7hSW4BmSiL3Qj9XrPd7vldet13WLwGxohv6RReTDGQe3K/BX/
	2AqUtYM6/3/LQQ7Y/bjV62aOcN1cZaTooO+z6etSLieo75IlKDmb8yd6z5g5H4v6bTG8fX
	t15tvDUG5CAxbl1f3Nu6FA3x2IySZHc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=BEDTal13;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620652501;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=kQkx43KxA4d+1FIGI7hfjNvvWtSnp9coinGS9U9qgD8=;
	b=WRj3iYtdqCIcu3BROq3d+ZwQdvmYTeGXmb4oJ3tn5yaBYbblk0G0dk1ZbxZMRcwLUC9Jdm
	uTc5aA86/rsF3urtWdUZfJdnA+ZPkwn+07+eyt46veN8YvhLrnjpS4eeLXcYTSTXVaPXy1
	c9rc+clRaJyUCpbodFCh/c98RXDWl/4=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: BIB6XU3WMNBJMTRUOO74XLSPGWUQWSHB
X-Message-ID-Hash: BIB6XU3WMNBJMTRUOO74XLSPGWUQWSHB
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BIB6XU3WMNBJMTRUOO74XLSPGWUQWSHB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

There is no need to gather the interface name for an interface via a
different syscall(s) when the kernel directly provides this information i=
n
the netlink message for this event.

batman-adv provides this functionality with Linux 5.14/batman-adv 2021.2.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 event.c | 52 ++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 36 insertions(+), 16 deletions(-)

diff --git a/event.c b/event.c
index 955fe11..274f99f 100644
--- a/event.c
+++ b/event.c
@@ -174,10 +174,15 @@ static void event_parse_set_mesh(struct nlattr **at=
trs)
 				    ARRAY_SIZE(mesh_mandatory)))
 		return;
=20
-	mesh_ifindex =3D nla_get_u32(attrs[BATADV_ATTR_MESH_IFINDEX]);
-	meshif_name =3D if_indextoname(mesh_ifindex, meshif_buf);
-	if (!meshif_name)
-		return;
+	if (attrs[BATADV_ATTR_MESH_IFNAME]) {
+		meshif_name =3D nla_get_string(attrs[BATADV_ATTR_MESH_IFNAME]);
+	} else {
+		/* compatibility for Linux < 5.14/batman-adv < 2021.2 */
+		mesh_ifindex =3D nla_get_u32(attrs[BATADV_ATTR_MESH_IFINDEX]);
+		meshif_name =3D if_indextoname(mesh_ifindex, meshif_buf);
+		if (!meshif_name)
+			return;
+	}
=20
 	printf("%s: set mesh:\n", meshif_name);
=20
@@ -305,15 +310,25 @@ static void event_parse_set_hardif(struct nlattr **=
attrs)
 				    ARRAY_SIZE(hardif_mandatory)))
 		return;
=20
-	mesh_ifindex =3D nla_get_u32(attrs[BATADV_ATTR_MESH_IFINDEX]);
-	meshif_name =3D if_indextoname(mesh_ifindex, meshif_buf);
-	if (!meshif_name)
-		return;
+	if (attrs[BATADV_ATTR_MESH_IFNAME]) {
+		meshif_name =3D nla_get_string(attrs[BATADV_ATTR_MESH_IFNAME]);
+	} else {
+		/* compatibility for Linux < 5.14/batman-adv < 2021.2 */
+		mesh_ifindex =3D nla_get_u32(attrs[BATADV_ATTR_MESH_IFINDEX]);
+		meshif_name =3D if_indextoname(mesh_ifindex, meshif_buf);
+		if (!meshif_name)
+			return;
+	}
=20
-	hardif_ifindex =3D nla_get_u32(attrs[BATADV_ATTR_HARD_IFINDEX]);
-	hardif_name =3D if_indextoname(hardif_ifindex, hardif_buf);
-	if (!hardif_name)
-		return;
+	if (attrs[BATADV_ATTR_MESH_IFNAME]) {
+		hardif_name =3D nla_get_string(attrs[BATADV_ATTR_HARD_IFNAME]);
+	} else {
+		/* compatibility for Linux < 5.14/batman-adv < 2021.2 */
+		hardif_ifindex =3D nla_get_u32(attrs[BATADV_ATTR_HARD_IFINDEX]);
+		hardif_name =3D if_indextoname(hardif_ifindex, hardif_buf);
+		if (!hardif_name)
+			return;
+	}
=20
 	printf("%s (%s): set hardif:\n", meshif_name, hardif_name);
=20
@@ -350,10 +365,15 @@ static void event_parse_set_vlan(struct nlattr **at=
trs)
 				    ARRAY_SIZE(vlan_mandatory)))
 		return;
=20
-	mesh_ifindex =3D nla_get_u32(attrs[BATADV_ATTR_MESH_IFINDEX]);
-	meshif_name =3D if_indextoname(mesh_ifindex, meshif_buf);
-	if (!meshif_name)
-		return;
+	if (attrs[BATADV_ATTR_MESH_IFNAME]) {
+		meshif_name =3D nla_get_string(attrs[BATADV_ATTR_MESH_IFNAME]);
+	} else {
+		/* compatibility for Linux < 5.14/batman-adv < 2021.2 */
+		mesh_ifindex =3D nla_get_u32(attrs[BATADV_ATTR_MESH_IFINDEX]);
+		meshif_name =3D if_indextoname(mesh_ifindex, meshif_buf);
+		if (!meshif_name)
+			return;
+	}
=20
 	vid =3D nla_get_u16(attrs[BATADV_ATTR_VLANID]);
=20
--=20
2.30.2
