Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qkxqF3kFSWrKxgAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 15:07:05 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BE6707AF3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 15:07:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=BZKMswEB;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 599CE8406C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 15:07:04 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783170424;
 b=Vmlaw6qjndkgCs05187huo85hKyuJbAUv5xd8p+7cK9hOaF7WOmT3YbvCNYg0zYDYsOcW
 XnPzkcEl2PXPzk9M/dT2G7xubmtQAtLsNYTJIq/KvaJw2/eEiEFjonXSYEOuHcvFDLEZOKj
 9+tytnWTkTwfcTUFu3Q20K3PM0XKwdc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783170424; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rFbcg3q7SkSPXXegVsSztrbQO6JaRdxBuPXoyVpXlXM=;
 b=ZG9v02aspzay5Fyd9VBGpuhLo8GQKwS27lEir7oMQ4EV1I8OX0h8lpLQaPQCHUSbodqga
 DTDZe5GXS+yHsskitFaJEHQboCCigeOTvlYy3CzDT4AloVJyIHr6dChX+cTAQ+AWCQgRBbo
 6sa4bkjDNvxD4YAEYrjCUAdPUvrVF5Y=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0B2CA808C4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 04 Jul 2026 15:06:46 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783170407;
	b=x9/T0Ct9Y2r9BHQvhzqwuQC019WEgk5Xe2Bg0uDpwM5Vl2pabLoVOfhzqwznsTmw7VnBXA
	1Gto77xy9Z70QvHPoezVp0d0Eb7PYvR6obHLhuhv7giAtaRsHy6eSB/u9rTSdloXiEUGv5
	TTwp/ss7vazwg4u5VgRbp7ekURDHmrQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783170407;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=rFbcg3q7SkSPXXegVsSztrbQO6JaRdxBuPXoyVpXlXM=;
	b=zTuE4HjeAkRFux4ruUbQybHCgcroBoevhOTSwSBApRLLBqaJCIPXL6iAbECVu2+u8Fb/pI
	yQgi7KKkl/BO2+E7HNsZy3lwn0kZCx9zNNa1lETML8toZPiQVa75A70J3F8yMx9Ctv1ppt
	b/YQDbKvVpfotmZi5FFV3Ivw7ILrGS0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=BZKMswEB;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 2D06F1FE5D;
	Sat, 04 Jul 2026 13:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783170401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rFbcg3q7SkSPXXegVsSztrbQO6JaRdxBuPXoyVpXlXM=;
	b=BZKMswEBEheneAJOboKDIKZofFeXOhEdHb2SW9TDB9PfEAMB0XWmkjwTHLrPATGJHYwkC8
	e3q/23hRg0Q2gZ9CvRPko1+B3cPk9ETtslaJaqveN4eWhjBwVUQh55qIjYSDkpL8B7dRb0
	/h6aY9KJCRFPk/mF6cCVS2iDSe96uJ4=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 04 Jul 2026 15:06:35 +0200
Subject: [PATCH] batctl: event: don't print timestamp prefix for skipped
 events
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260704-bugfixes-event-v1-1-554d51ea1b2d@narfation.org>
X-B4-Tracking: v=1; b=H4sIAFoFSWoC/yXMSwqEMBCE4atIrw3EB5qZq8gsTKxozyJKWmVAv
 LtxXH4Ufx0kiAyhd3ZQxM7Cc0go8ozc1IcRiodkKnXZ6FbXym6j5x9EYUdYleud8fDGVi9DKVo
 i/nNqus9j2ewXbr1f6DwvSYf5iHIAAAA=
X-Change-ID: 20260704-bugfixes-event-cac8fef8b398
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4477; i=sven@narfation.org;
 h=from:subject:message-id; bh=Ep/ujb/ZA3UMMaaeJGrGYVZmMtf5biPIAa1ptzyiYII=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmerDFrgzQjE7MnCe/93tFRKuht8lak3GjFh/9Msyxu5
 Ns3X0/uKGVhEONikBVTZNlzJf/8Zva38p+nfTwKM4eVCWQIAxenAEzktjUjwwnOfZGH9PKu1b61
 mth8r371+cJSswXMtk+uX90QmPP4aRojwwKfjVe9bnEyeFU/n2u+7u73/Y8/MiWZThDeY8LBp/f
 wDTcA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: H6EPHIPNZEFP476RPPCUETZWLFFOXVZJ
X-Message-ID-Hash: H6EPHIPNZEFP476RPPCUETZWLFFOXVZJ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/H6EPHIPNZEFP476RPPCUETZWLFFOXVZJ/>
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D4BE6707AF3

The timestamp is printed before the event is parsed. Each parse function
can still decide to skip the event without printing anything In these cases
a bare "1234.567890: " fragment without newline remains on the line and the
next event is appended to it, corrupting the output stream.

Format the timestamp into a prefix string instead and let the parse
functions print it together with their first line.

Fixes: 5d7850e3582e ("batctl: Add command to monitor for netlink events")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 event.c | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/event.c b/event.c
index e061c2c..4a1085d 100644
--- a/event.c
+++ b/event.c
@@ -114,7 +114,7 @@ static const int tp_meter_mandatory[] = {
 	BATADV_ATTR_TPMETER_RESULT,
 };
 
-static void event_parse_tp_meter(struct nlattr **attrs)
+static void event_parse_tp_meter(struct nlattr **attrs, const char *prefix)
 {
 	const char *result_str;
 	uint32_t cookie;
@@ -155,10 +155,10 @@ static void event_parse_tp_meter(struct nlattr **attrs)
 		break;
 	}
 
-	printf("tp_meter 0x%08x: %s\n", cookie, result_str);
+	printf("%stp_meter 0x%08x: %s\n", prefix, cookie, result_str);
 }
 
-static void event_parse_set_mesh(struct nlattr **attrs)
+static void event_parse_set_mesh(struct nlattr **attrs, const char *prefix)
 {
 	static const int mesh_mandatory[] = {
 		BATADV_ATTR_MESH_IFINDEX,
@@ -183,7 +183,7 @@ static void event_parse_set_mesh(struct nlattr **attrs)
 			return;
 	}
 
-	printf("%s: set mesh:\n", meshif_name);
+	printf("%s%s: set mesh:\n", prefix, meshif_name);
 
 	if (attrs[BATADV_ATTR_AGGREGATED_OGMS_ENABLED])
 		printf("* aggregated_ogms %s\n",
@@ -287,7 +287,7 @@ static void event_parse_set_mesh(struct nlattr **attrs)
 		       nla_get_u32(attrs[BATADV_ATTR_ORIG_INTERVAL]));
 }
 
-static void event_parse_set_hardif(struct nlattr **attrs)
+static void event_parse_set_hardif(struct nlattr **attrs, const char *prefix)
 {
 	static const int hardif_mandatory[] = {
 		BATADV_ATTR_MESH_IFINDEX,
@@ -325,7 +325,7 @@ static void event_parse_set_hardif(struct nlattr **attrs)
 			return;
 	}
 
-	printf("%s (%s): set hardif:\n", meshif_name, hardif_name);
+	printf("%s%s (%s): set hardif:\n", prefix, meshif_name, hardif_name);
 
 	if (attrs[BATADV_ATTR_HOP_PENALTY])
 		printf("* hop_penalty %u\n",
@@ -344,7 +344,7 @@ static void event_parse_set_hardif(struct nlattr **attrs)
 	}
 }
 
-static void event_parse_set_vlan(struct nlattr **attrs)
+static void event_parse_set_vlan(struct nlattr **attrs, const char *prefix)
 {
 	static const int vlan_mandatory[] = {
 		BATADV_ATTR_MESH_IFINDEX,
@@ -372,7 +372,7 @@ static void event_parse_set_vlan(struct nlattr **attrs)
 
 	vid = nla_get_u16(attrs[BATADV_ATTR_VLANID]);
 
-	printf("%s (vid %u): set vlan:\n", meshif_name, vid);
+	printf("%s%s (vid %u): set vlan:\n", prefix, meshif_name, vid);
 
 	if (attrs[BATADV_ATTR_AP_ISOLATION_ENABLED])
 		printf("* ap_isolation %s\n",
@@ -403,6 +403,7 @@ static int event_parse(struct nl_msg *msg, void *arg)
 	struct event_args *event_args = arg;
 	unsigned long long timestamp;
 	struct genlmsghdr *ghdr;
+	char prefix[32] = "";
 
 	if (!genlmsg_valid_hdr(nlh, 0))
 		return NL_OK;
@@ -417,24 +418,25 @@ static int event_parse(struct nl_msg *msg, void *arg)
 
 	if (event_args->mode != EVENT_TIME_NO) {
 		timestamp = get_timestamp(event_args);
-		printf("%llu.%06llu: ", timestamp / 1000000, timestamp % 1000000);
+		snprintf(prefix, sizeof(prefix), "%llu.%06llu: ",
+			 timestamp / 1000000, timestamp % 1000000);
 	}
 
 	switch (ghdr->cmd) {
 	case BATADV_CMD_TP_METER:
-		event_parse_tp_meter(attrs);
+		event_parse_tp_meter(attrs, prefix);
 		break;
 	case BATADV_CMD_SET_MESH:
-		event_parse_set_mesh(attrs);
+		event_parse_set_mesh(attrs, prefix);
 		break;
 	case BATADV_CMD_SET_HARDIF:
-		event_parse_set_hardif(attrs);
+		event_parse_set_hardif(attrs, prefix);
 		break;
 	case BATADV_CMD_SET_VLAN:
-		event_parse_set_vlan(attrs);
+		event_parse_set_vlan(attrs, prefix);
 		break;
 	default:
-		printf("Received unknown event %u\n", ghdr->cmd);
+		printf("%sReceived unknown event %u\n", prefix, ghdr->cmd);
 		break;
 	}
 

---
base-commit: e93995999e80513db80eba200ea682b5b15556af
change-id: 20260704-bugfixes-event-cac8fef8b398

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

