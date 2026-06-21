Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k+mnHEv3N2r3WAcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:38:03 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 012026AB180
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:38:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=XKanUPQj;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CF2298476F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:38:02 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052682;
 b=YH/tHUVLYnhFr8ze+5PfvvxNLmx6MsCiAb61TYOfvCumYkDobw29NU0w/AzYs6GYufB0m
 J3U3+IHjniQLAvBkfaJOtRJ744SgUp09/B3DCvoJlzTfsMm8oiPqogKg8u/rxnc9+2Tkcx5
 b80J36h0sKX/GEZIW8ArUsuAtMxqm7I=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052682; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=IOtLERlnPLNAM9Nsc2UxVDCOzfln0HUSSXxzVL2uKOc=;
 b=fPYp+VVCS/F1N+ylsNqGb9NpXIXWdjzABQPqs08tCrKkhVCd2xZ0vg+aMhHWri+LKqPvG
 nHBdFv9Nf3BaOXp1QsRpTnhR9H/9NSBLjyKdo4SutZXfJkUqpqn4lbFKHyuFWxSVg+bOyYK
 TGcTDaHUmqMjH9jkteNUsxUI3nwf594=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 496C580DE1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:21 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051921;
	b=dagBXyQM2OexWy4J4TLQ/7gK2cVcKaOhk9WrdkfNZH2cszs+r8JTD0RIMMdIH7M+LzrFOj
	+cWxbsgVzw+kjMD4xW+IJmEJa3In47gHwTAKdUzXa2zLSVpkCiy1P0iE5M8O9pb+QO6IoK
	cF8JLqphnV/IWEVgSCO+Nt6n8ygts1w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=IOtLERlnPLNAM9Nsc2UxVDCOzfln0HUSSXxzVL2uKOc=;
	b=cPWitEyg1rMt07/Kqp4q96tIT6gnz9ocmUGZrwRIVKcKpQho3O/B+dASRzOKOd10jR27mm
	3zeDdWhehJKy5TlYmVCcnmFDvKWwB5dYHzCNMuSdmbWS7IE0dkNgzHXFpadZ1dZYxtgTLg
	g+++b8aT9lti9pWFZqNm9To3elLuZaU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=XKanUPQj;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 0162920131;
	Sun, 21 Jun 2026 14:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IOtLERlnPLNAM9Nsc2UxVDCOzfln0HUSSXxzVL2uKOc=;
	b=XKanUPQja53ccodlHxEvePLaKBkZRzFmTj/+gPVnUXQZ1oZHB7sj4q06kLmHSp4bt8g6rY
	AMogqMbBNqd+GhY2208buHcCpPjk7jR+zBRg1YRohdnVzcBUjCQhtvJBuyN5t3AEspKFxp
	pIPXUrSDc7X1xySROxy64KNicctD0n4=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:08 +0200
Subject: [PATCH 18/28] batctl: netlink: consume until acks even on errors
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-18-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1528; i=sven@narfation.org;
 h=from:subject:message-id; bh=RmaaFrO4w2MVTO+YYRW6OVu1BHkoKAoQnQoyF6jyEEs=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX9huyC+7Xuz1vdbyY/Lh++pvbPnCvFecW3TvyOotX
 Y9KhFIiOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATiVVhZLgqs1g4yvun6M4z
 ZvO1qxtdQpymlbP1NKXkcTDauPBzJTEyvLX7fGHh6VlbukLsdjrYyDBc0C3maVjxh+XMHOX526a
 pcQEA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: GZL3MHVSM5KJ6XDNPJT7DX2VQDXWW6ZD
X-Message-ID-Hash: GZL3MHVSM5KJ6XDNPJT7DX2VQDXWW6ZD
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GZL3MHVSM5KJ6XDNPJT7DX2VQDXWW6ZD/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 012026AB180

THe sys_simple_nlquery() function is used on a shared socket. The data
until the ack must therefore _always_ be consumed to avoid receive
confusions when another command is started on the same socket.

Fixes: 0b81e8fbaed5 ("batctl: Consume genl ACKs after setting reads")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 netlink.c | 8 +-------
 sys.c     | 2 +-
 2 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/netlink.c b/netlink.c
index be92a9c..3a1c3a5 100644
--- a/netlink.c
+++ b/netlink.c
@@ -466,7 +466,6 @@ char *netlink_get_info(struct state *state, uint8_t nl_cmd, const char *header)
 	};
 	struct nl_msg *msg;
 	struct nl_cb *cb;
-	int ret;
 
 	msg = nlmsg_alloc();
 	if (!msg)
@@ -488,12 +487,7 @@ char *netlink_get_info(struct state *state, uint8_t nl_cmd, const char *header)
 	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, info_callback, &opts);
 	nl_cb_err(cb, NL_CB_CUSTOM, netlink_print_error, NULL);
 
-	ret = nl_recvmsgs(state->sock, cb);
-	if (ret < 0) {
-		nl_cb_put(cb);
-		return opts.remaining_header;
-	}
-
+	nl_recvmsgs(state->sock, cb);
 	nl_wait_for_ack(state->sock);
 
 	nl_cb_put(cb);
diff --git a/sys.c b/sys.c
index 35a026e..3018c09 100644
--- a/sys.c
+++ b/sys.c
@@ -110,7 +110,7 @@ int sys_simple_nlquery(struct state *state, enum batadv_nl_commands nl_cmd,
 	if (callback) {
 		ret = nl_recvmsgs(state->sock, state->cb);
 		if (ret < 0)
-			return ret;
+			result = ret;
 	}
 
 	nl_wait_for_ack(state->sock);

-- 
2.47.3

