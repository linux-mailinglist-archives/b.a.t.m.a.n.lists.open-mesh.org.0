Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PpKcCmj1N2pMWAcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:30:00 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC5D6AB10E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:29:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=wjDMpdbg;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 93BCC84472
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:29:59 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052199;
 b=07r+kT2fYoYclfYo99lP5JSfHssFAUOBKBrMlylHgqCxjD87g/3EaDBYuUGZUYt+6Axbo
 87yDcDG6YRPwzcjerban5inJUiuUWhoMyTrktFhpoSX3oCDGTD+e47c+O9lLcC5G2HnVNR2
 zVYg8fHnm3GQc18vGdaBEafdn3+XHJ4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052199; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=IkFsw5uDtgwNRbBaLKr/0cp6vRnqXWvYfsLu5FO699s=;
 b=wxqGojUdx0hyTjRrFCWkOXWCUdql4uTWffFjmIi0J0tOirQ4diLUwwZRyPZbZOFvjIN3M
 p8MXW4IJp9hefcn5qE0t3V9MXuW+Cq2Mvl2VBgCi+iq/0CWQ0KYVCyGoxyeYmMygBBml7tx
 W5sMWExlkUuuWXscGKtMTaMDjSaReLY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 1EF3D81125
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:24:57 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051897;
	b=x/WicKarQyIR8lssfqTW54fTbyIEvnxmlPwu1RSAY6/KVQ1hUEGxmCkAL4+Q8wS5HAI5D5
	qHD+yu1a1eEAdmim+8rxprIIJAwyFRa9HhkTymVLqpvRDQLpAQGSkg5QYEOfQIKvygjmsc
	235REzuDs6pMx82qYsIGpB0KQEDkA84=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051897;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=IkFsw5uDtgwNRbBaLKr/0cp6vRnqXWvYfsLu5FO699s=;
	b=x+GK7TiVDvvmO/2iA0Q9F/9qZwCwUUKAG0y3dxAz/5wkUpkcV5gG0cJxvoSAaxG+lH0qgP
	KcIYOSmmj5ZprNqO6QjVHz3ba8xAXjc73sbPDpOEctNVm2W67gxbbFVYkL4deWJHjd9yHv
	kiV9NIiqyTs0Y0YuVFfFv/H3QzGO8SA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=wjDMpdbg;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id CCAE220059;
	Sun, 21 Jun 2026 14:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051896;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IkFsw5uDtgwNRbBaLKr/0cp6vRnqXWvYfsLu5FO699s=;
	b=wjDMpdbg31RBi456Q6D0x3m6Wm93BqfLPe1wAc3cbeWAgMQ9lVdyb+iZJfaCfQKHaB8qZg
	+yAXyy4lFmZL889sGxZGyaiFpGIPuy1fwlixPhB7HlGksO7WfYWcLgkVsoQ/gwMP4TaZ4W
	Ho1TqAYVd7YR/uIAiKAzyCI/O/ch5SM=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:23:57 +0200
Subject: [PATCH 07/28] batctl: ping: count sent and not received pings
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-7-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1026; i=sven@narfation.org;
 h=from:subject:message-id; bh=8LnwiXHKuxUIYyyeSkYrJ+KnhUF6Wo5jsOCJh8bXBeg=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX1gzzZleObFMuPjv/ulY5apXRlWRT0TdrpQc/Wiyb
 2p07CfujlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBERF8w/K8zmVxr6Huskm3H
 vWv7gxdfzW4pfGAleYZJ7u7HH2UsiXMYGXr6GJz0BOzELBUdrq4M5Ld9N+P5Eudfm1mKldUv9n2
 O5gUA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: HT7VJ433CVFTVRY2VWJBZOTG4Q5DKHJA
X-Message-ID-Hash: HT7VJ433CVFTVRY2VWJBZOTG4Q5DKHJA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HT7VJ433CVFTVRY2VWJBZOTG4Q5DKHJA/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BAC5D6AB10E

packets_out was increased whenever a read of a packet was started. But the
read was repeated whenever the sequence number of a received packet was
incorrect. The packets_out would then be higher then the actual sent ones.

Fixes: 2474249a6312 ("[batctl] ping utility updated to latest batman adv")
Fixes: 2ecb2c8b060b ("batctl: tr / ping - ignore packets with wrong sequence number")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 ping.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/ping.c b/ping.c
index 4dbbada..98a4570 100644
--- a/ping.c
+++ b/ping.c
@@ -207,6 +207,8 @@ static int ping(struct state *state, int argc, char **argv)
 			goto sleep;
 		}
 
+		packets_out++;
+
 read_packet:
 		start_timer();
 
@@ -216,8 +218,6 @@ static int ping(struct state *state, int argc, char **argv)
 		if (is_aborted)
 			break;
 
-		packets_out++;
-
 		if (read_len == 0) {
 			printf("Reply from host %s timed out\n", dst_string);
 			goto sleep;

-- 
2.47.3

