Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B111378C9A
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 15:15:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E19CD81529;
	Mon, 10 May 2021 15:15:04 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C9DCF83E87
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 15:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620652067;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m1Sq9TusxZBFYp2VlNSWsV94tdJaY8qTuO4r9nK+8J0=;
	b=do9GvE6dkX2u4JP0Ye5g2DePIeJWQoFWcy4HbM4r8bw5XwD47WnTACt0i2t5E6b6OfgT/b
	3J5fzwYnCfrBfPg01P7JFNopRYXyRAk3Hj4FQoRCu9uv4wZopO9mJdx+T/Y0fJzA/RlQY4
	neMhg90UrgAHDQWU8+rY+0WwizvWDp4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/4] batctl: neighbors: Get outgoing ifname from netlink
Date: Mon, 10 May 2021 15:07:32 +0200
Message-Id: <20210510130734.41080-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210510130734.41080-1-sven@narfation.org>
References: <20210510130734.41080-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620652501; a=rsa-sha256;
	cv=none;
	b=mrnG0zoSeCJ6wrTMEFnLXhgVZZIROxl6pVBiIY2PFs/Pd/XPyxPw6JHTRY2jWlI2Jwl1y2
	/9yBWOowN+2mt+AhZ2qHw8iRzktkEPwCHFEXK++8+EMohimsWsdx0nEGzlYio7V8JXg5jc
	ju8XTQs14Fj2sTX7ssrtiGoSfaMNXzA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=do9GvE6d;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620652501;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=m1Sq9TusxZBFYp2VlNSWsV94tdJaY8qTuO4r9nK+8J0=;
	b=zVup+xOkqFz5pCSw9WkuGNsNX3jQsiISIBhI5BRge3B5fus1dvG2lULZFjPh2hrdOB8VM8
	G/c3YdncYmZ+Rc4yiDmxuZocqVqGKlMOZj/1w31HV/qNO5j2el1PedHtVkMN/hbBriIB8o
	KXJMgqhTapXmbMWaOkdK4NuaLVICCZM=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2VU4TGGKUUZEAAEHTUA2CKZPUOSDWD6J
X-Message-ID-Hash: 2VU4TGGKUUZEAAEHTUA2CKZPUOSDWD6J
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2VU4TGGKUUZEAAEHTUA2CKZPUOSDWD6J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

There is no need to gather the interface name for an outgoing interface
via a different syscall(s) when the kernel directly provides this
information in the netlink message for this neighbor table entry.

batman-adv provides this functionality with Linux 5.14/batman-adv 2021.2.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 neighbors.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/neighbors.c b/neighbors.c
index af76d0f..3102b0e 100644
--- a/neighbors.c
+++ b/neighbors.c
@@ -36,10 +36,12 @@ static int neighbors_callback(struct nl_msg *msg, voi=
d *arg)
 	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
 	int last_seen_msecs, last_seen_secs;
 	struct print_opts *opts =3D arg;
+	char ifname_buf[IF_NAMESIZE];
 	struct bat_host *bat_host;
-	char ifname[IF_NAMESIZE];
 	struct genlmsghdr *ghdr;
+	uint32_t ifindex;
 	uint8_t *neigh;
+	char *ifname;
=20
 	if (!genlmsg_valid_hdr(nlh, 0)) {
 		fputs("Received invalid data from kernel.\n", stderr);
@@ -66,9 +68,16 @@ static int neighbors_callback(struct nl_msg *msg, void=
 *arg)
 	neigh =3D nla_data(attrs[BATADV_ATTR_NEIGH_ADDRESS]);
 	bat_host =3D bat_hosts_find_by_mac((char *)neigh);
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
 	last_seen_msecs =3D nla_get_u32(attrs[BATADV_ATTR_LAST_SEEN_MSECS]);
 	last_seen_secs =3D last_seen_msecs / 1000;
--=20
2.30.2
