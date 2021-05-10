Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A370E378C99
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 15:15:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4AE0F83E87;
	Mon, 10 May 2021 15:15:04 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9CED0807D5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 15:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620652070;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hOiZCmVObJ8cm01LCdzLlLHRqWtvDRxGDiwx7tLhlzg=;
	b=ulKJygLKwftEUbU7t88tbHEaGuTy7q+nHgOwZdesBouBzGj0R1yrrgmmBB4h69QCsp7S8s
	cXrd4xWaX+HF2An46RqhLXVCzse1RhfV85Ei7I/He9UCq7BB1RLAScVttV97xKME+n8Zz0
	mOGtA9NVTgyTSCpd0IliLtr62XVVum8=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 3/4] batctl: ping: Get outgoing ifname from netlink
Date: Mon, 10 May 2021 15:07:33 +0200
Message-Id: <20210510130734.41080-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210510130734.41080-1-sven@narfation.org>
References: <20210510130734.41080-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620652501; a=rsa-sha256;
	cv=none;
	b=uJfQFhoyH8XxhYXakAAsJSJfPfikc/Vod9ReuE55NW9gmGrHLwkfyPaFaLULEUntVrailV
	Ao0+n58LCw84NymJt4BpZaZpZ02/g1ZYULsqk96pjQ0nSbKqO6CC5Gbk4c7NcgC+XbxZud
	aosFl/gFkuxw2C/SYY4mO1lA134uQg4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ulKJygLK;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620652501;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hOiZCmVObJ8cm01LCdzLlLHRqWtvDRxGDiwx7tLhlzg=;
	b=GSybpfelsSbEmrcZ1fGyVtDwjFiwKeY6BfJICGX8yaCOvIsJziTnJ3YQhvkfvwjuLJ6IBQ
	qqV6TJGg/1Ca2my/mOHBV27YLiAhc6aIvt0rnhtABTG802sKHRqODWmQYQck1+HkJPcZ0z
	V0pkqUWuBvRDrlLqGPmFB8isvBi9kzU=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ENQJAZTSKO3KLIYRM47TGRTVOB3TJQ7E
X-Message-ID-Hash: ENQJAZTSKO3KLIYRM47TGRTVOB3TJQ7E
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ENQJAZTSKO3KLIYRM47TGRTVOB3TJQ7E/>
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
 netlink.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/netlink.c b/netlink.c
index 31c9b01..4e616b6 100644
--- a/netlink.c
+++ b/netlink.c
@@ -728,9 +728,16 @@ static int get_nexthop_netlink_cb(struct nl_msg *msg=
, void *arg)
=20
 	/* save result */
 	memcpy(opts->nexthop, neigh, ETH_ALEN);
-	ifname =3D if_indextoname(index, opts->ifname);
-	if (!ifname)
-		return NL_OK;
+
+	if (attrs[BATADV_ATTR_HARD_IFNAME]) {
+		ifname =3D nla_get_string(attrs[BATADV_ATTR_HARD_IFNAME]);
+		strncpy(opts->ifname, ifname, IFNAMSIZ);
+	} else {
+		/* compatibility for Linux < 5.14/batman-adv < 2021.2 */
+		ifname =3D if_indextoname(index, opts->ifname);
+		if (!ifname)
+			return NL_OK;
+	}
=20
 	opts->found =3D true;
 	opts->query_opts.err =3D 0;
--=20
2.30.2
