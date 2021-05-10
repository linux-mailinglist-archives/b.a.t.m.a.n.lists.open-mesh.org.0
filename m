Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDE0378C9B
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 15:15:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 768E883ED6;
	Mon, 10 May 2021 15:15:06 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C3CCC81529
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 15:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620652065;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Yr4fjz9A0y8N+SO/0aFjgwtdSqOJp11PlTma8VQPvWY=;
	b=E5m+KMnx57zkGfDLFDjDdFgiXYI0lebtDmyo/7bYWE2Fmtc/EWreK1yxbu18Hn/N2QDyfi
	iTCGEafuF5QLGBKrOrvXgpJk1kI8wLP8OalpELvrJvzaVBhL/9QgWzMCQNU/hdv3EjBiGl
	XkHuODKIFKyWv1LlyTkArTJYWZyHs50=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/4] batctl: originators: Get outgoing ifname from netlink
Date: Mon, 10 May 2021 15:07:31 +0200
Message-Id: <20210510130734.41080-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620652502; a=rsa-sha256;
	cv=none;
	b=yt6juysR63xGJluxCm0YFVvBWv9L/9V+28n4ws6BOYxctTDEjDe/hCwZB61jRhOz0j3tC4
	xTM22egdWUN4quOc3KZO74A2KQRXAf+B0AJhboyiXoAo2KJFIM7KVcVsCztsKUC/FWjRNt
	jf6jrn5BlcL+ECNvf31i8rUUqf5cKdY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=E5m+KMnx;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620652502;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=Yr4fjz9A0y8N+SO/0aFjgwtdSqOJp11PlTma8VQPvWY=;
	b=MljDGEXu/6uzAG0nlrtFVeU4pSTGxpMqwGNuMTeQVkRlPRlR0mWJ+K6zG9Pp+qftDVu9Vc
	iXoxKU3Uk2v97nsqcY9ycqc9l2WX1e+SN+qxBJ3qCwcqVfbkEJ+Qdlb+fWygolm7uKbwQF
	FrSp8GJmFctDccDT1EAES23mzkjKvn0=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: IV2OFJ2KJX52K4ARZ5MIWZ2A42WOKJRO
X-Message-ID-Hash: IV2OFJ2KJX52K4ARZ5MIWZ2A42WOKJRO
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IV2OFJ2KJX52K4ARZ5MIWZ2A42WOKJRO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

There is no need to gather the interface name for an outgoing interface
via a different syscall(s) when the kernel directly provides this
information in the netlink message for this originator table entry.

batman-adv provides this functionality with Linux 5.14/batman-adv 2021.2.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 originators.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/originators.c b/originators.c
index 8a29dd7..11ca4b9 100644
--- a/originators.c
+++ b/originators.c
@@ -40,12 +40,14 @@ static int originators_callback(struct nl_msg *msg, v=
oid *arg)
 	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
 	int last_seen_msecs, last_seen_secs;
 	struct print_opts *opts =3D arg;
+	char ifname_buf[IF_NAMESIZE];
 	struct bat_host *bat_host;
 	struct genlmsghdr *ghdr;
-	char ifname[IF_NAMESIZE];
+	uint32_t ifindex;
 	float last_seen;
 	uint8_t *neigh;
 	uint8_t *orig;
+	char *ifname;
 	char c =3D ' ';
 	uint8_t tq;
=20
@@ -74,9 +76,16 @@ static int originators_callback(struct nl_msg *msg, vo=
id *arg)
 	orig =3D nla_data(attrs[BATADV_ATTR_ORIG_ADDRESS]);
 	neigh =3D nla_data(attrs[BATADV_ATTR_NEIGH_ADDRESS]);
=20
-	if (!if_indextoname(nla_get_u32(attrs[BATADV_ATTR_HARD_IFINDEX]),
-			    ifname))
-		ifname[0] =3D '\0';
+	if (attrs[BATADV_ATTR_HARD_IFNAME]) {
+		ifname =3D nla_get_string(attrs[BATADV_ATTR_HARD_IFNAME]);
+	} else {
+		/* compatibility for Linux < 5.14/batman-adv < 2021.2 */
+		ifindex =3D nla_get_u32(attrs[BATADV_ATTR_HARD_IFINDEX]);
+		if (!if_indextoname(ifindex, ifname_buf))
+			ifname_buf[0] =3D '\0';
+
+		ifname =3D ifname_buf;
+	}
=20
 	if (attrs[BATADV_ATTR_FLAG_BEST])
 		c =3D '*';
--=20
2.30.2
