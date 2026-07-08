Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 94Y+OSCuTmowSQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:08:00 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8793272A191
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:08:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Su04FdzU;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 644C28547A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:08:00 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783541280;
 b=zUdxEuI5pp9ASHx4ENQ2PxIh0uQLUsO6NQ9bBhVGoAqAMlL97ofKsLORz+HgR/P7PV4AW
 fqYpMnhrBbDp7NsNbUj8easSQHFr/rFXcN3aY1QXaDi9bHhOCkag3O1BYIkkL81hJJ9bWos
 MaHDaSy+tESsGvBm6oqnlJiGlCWGlaw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783541280; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7nZPGCReblucpjmIEGz6KNld42AVgmaUicFohXF3KPk=;
 b=FL/fJ8CZaGnOobdWX9Xu/8Io0RYEa/Uih//Bhs01pPmyJKaKJhP1s2w1R7xtIS/BiqNgo
 b0g8qyZr21FpPPundd1LMrr2oowe2LdgFed7gRgJ0swV+CPZIMqXyzbx2F70UREgw0Or8aM
 fExgtl05grAIiV4Hhd65KBMfrFtrLtg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0B42B847F2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:01:05 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540865;
	b=qPgWjFobCqvYxudqJ4sAJFMXBC3pYIig/NkMCXzEqWM77yGGKLwnjPMSGH3z72JRLdu1Ny
	jDfYFRDQ0LxcrabddAn4O2KVo1l9QiYgriTIh6H9wYpbf9t9CcAB/kfyiwYeaZ2BQ+/mxj
	apijTwBWFC6xljOJTK1GWLV2KTJDI0k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=7nZPGCReblucpjmIEGz6KNld42AVgmaUicFohXF3KPk=;
	b=cUngO26x7eCsf8EuHEEWou/RYfKoWkSbn3WP6qltYtRv8O9Yo3Eq+nyh/r2ywrdbam7PSS
	797Jwk/qawwqkzpkyqjNVwtLt8xBdZPSYz/xhtyWm34m5fifeul1onuDznS8fW4Nb6nYIt
	RaBoYAdCtZ9KtSgskFcj08W+4AtwpQ4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Su04FdzU;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 9D37220019;
	Wed, 08 Jul 2026 20:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540864;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7nZPGCReblucpjmIEGz6KNld42AVgmaUicFohXF3KPk=;
	b=Su04FdzUxjoCSzFBRDB7Z+ySYQ4H2mYgV89HPZQWcgu+/rHQnsadoayG/RQEAC7I6VCcqi
	h9kQb1h3vvgB2qwfXMtV/YpSqi0/Kc1+JucmAbf340NjxpiKPOGaL8Q7AE9aDvoKOiDJFY
	eM/m4wurx+AfViu6hNQyYbIBqKTadms=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jul 2026 22:00:16 +0200
Subject: [PATCH 10/12] batctl: netlink: detect receive errors in
 query_rtnl_link_single
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-bugfixes-netlink-v1-10-8ce03e37f17b@narfation.org>
References: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
In-Reply-To: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4123; i=sven@narfation.org;
 h=from:subject:message-id; bh=31xLegGk8US39pT7VbL3QBzRh+rwoGgvFaqBNu48F1s=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+azx9uG2/JS+ZFcva0bjH8v6deUyfA8X03t/pLktyY
 ONYEmjWUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAZgISxUjwxX+9pYufZ6j0ZM6
 E6LVlS4JLru14jSH5Etxp16ujZn9fIwMM2PNtcKvf1RY4uc3Jy5GV3BtZt1nDtMcd7bKYM9q6wo
 GAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: TMTHMMRGGEQJEY6DPQUC6TFOTZRE23NK
X-Message-ID-Hash: TMTHMMRGGEQJEY6DPQUC6TFOTZRE23NK
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TMTHMMRGGEQJEY6DPQUC6TFOTZRE23NK/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8793272A191

With the exception of nl_socket_alloc(), query_rtnl_link_single() always
returns 0, no matter what happens. All callers rely solely on the *_found
flags in link_data to decide what an interface is.

Return proper negative errno codes from the setup error paths, mirroring
the sibling helper query_rtnl_link(). These need to be handled also by the
callers.

Fixes: 07967cd19702 ("batctl: Support checking of meshif without sysfs")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 functions.c | 51 ++++++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 40 insertions(+), 11 deletions(-)

diff --git a/functions.c b/functions.c
index 36cae49..56bacdf 100644
--- a/functions.c
+++ b/functions.c
@@ -667,6 +667,7 @@ static int query_rtnl_link_single(int mesh_ifindex,
 	};
 	struct nl_cb *cb = NULL;
 	struct nl_sock *sock;
+	int err = 0;
 	int ret;
 
 	link_data->kind_found = false;
@@ -676,42 +677,55 @@ static int query_rtnl_link_single(int mesh_ifindex,
 
 	sock = nl_socket_alloc();
 	if (!sock)
-		return -1;
+		return -ENOMEM;
 
 	ret = nl_connect(sock, NETLINK_ROUTE);
-	if (ret < 0)
+	if (ret < 0) {
+		err = -ENOMEM;
 		goto free_sock;
+	}
 
 	ret = nl_send_simple(sock, RTM_GETLINK, NLM_F_REQUEST,
 			     &ifinfo, sizeof(ifinfo));
-	if (ret < 0)
+	if (ret < 0) {
+		err = -EIO;
 		goto free_sock;
+	}
 
 	cb = nl_cb_alloc(NL_CB_DEFAULT);
-	if (!cb)
+	if (!cb) {
+		err = -ENOMEM;
 		goto free_sock;
+	}
 
 	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, query_rtnl_link_single_parse,
 		  link_data);
-	nl_recvmsgs(sock, cb);
+
+	ret = nl_recvmsgs(sock, cb);
+	if (ret < 0)
+		err = -EIO;
 
 	nl_cb_put(cb);
 free_sock:
 	nl_socket_free(sock);
 
-	return 0;
+	return err;
 }
 
 int translate_vlan_iface(struct state *state, const char *vlandev)
 {
 	struct rtnl_link_iface_data link_data;
 	unsigned int arg_ifindex;
+	int ret;
 
 	arg_ifindex = if_nametoindex(vlandev);
 	if (arg_ifindex == 0)
 		return -ENODEV;
 
-	query_rtnl_link_single(arg_ifindex, &link_data);
+	ret = query_rtnl_link_single(arg_ifindex, &link_data);
+	if (ret < 0)
+		return ret;
+
 	if (!link_data.vid_found)
 		return -ENODEV;
 
@@ -785,12 +799,16 @@ int translate_hard_iface(struct state *state, const char *hardif)
 {
 	struct rtnl_link_iface_data link_data;
 	unsigned int arg_ifindex;
+	int ret;
 
 	arg_ifindex = if_nametoindex(hardif);
 	if (arg_ifindex == 0)
 		return -ENODEV;
 
-	query_rtnl_link_single(arg_ifindex, &link_data);
+	ret = query_rtnl_link_single(arg_ifindex, &link_data);
+	if (ret < 0)
+		return ret;
+
 	if (!link_data.master_found)
 		return -ENOLINK;
 
@@ -806,8 +824,12 @@ int translate_hard_iface(struct state *state, const char *hardif)
 static int check_mesh_iface_netlink(unsigned int ifindex)
 {
 	struct rtnl_link_iface_data link_data;
+	int ret;
+
+	ret = query_rtnl_link_single(ifindex, &link_data);
+	if (ret < 0)
+		return ret;
 
-	query_rtnl_link_single(ifindex, &link_data);
 	if (!link_data.kind_found)
 		return -1;
 
@@ -821,12 +843,15 @@ int guess_netdev_type(const char *netdev, enum selector_prefix *type)
 {
 	struct rtnl_link_iface_data link_data;
 	unsigned int netdev_ifindex;
+	int ret;
 
 	netdev_ifindex = if_nametoindex(netdev);
 	if (netdev_ifindex == 0)
 		return -ENODEV;
 
-	query_rtnl_link_single(netdev_ifindex, &link_data);
+	ret = query_rtnl_link_single(netdev_ifindex, &link_data);
+	if (ret < 0)
+		return ret;
 
 	if (link_data.kind_found && strcmp(link_data.kind, "batadv") == 0) {
 		*type = SP_MESHIF;
@@ -860,12 +885,16 @@ int check_mesh_iface_ownership(struct state *state, char *hard_iface)
 {
 	struct rtnl_link_iface_data link_data;
 	unsigned int hardif_index;
+	int ret;
 
 	hardif_index = if_nametoindex(hard_iface);
 	if (hardif_index == 0)
 		return EXIT_FAILURE;
 
-	query_rtnl_link_single(hardif_index, &link_data);
+	ret = query_rtnl_link_single(hardif_index, &link_data);
+	if (ret < 0)
+		return EXIT_FAILURE;
+
 	if (!link_data.master_found)
 		return EXIT_FAILURE;
 

-- 
2.47.3

