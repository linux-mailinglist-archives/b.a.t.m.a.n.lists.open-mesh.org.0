Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RU6/MKz0N2rqVwcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:26:52 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E36C6AB0F8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:26:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=XbdecJNZ;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 485D283FF7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:26:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052012;
 b=V3yHp4hS9smGtcEZuS0FQqNZ+o26LXOlVYsvgjfneaMAGQBKLn0pDnGZ5pmWf4f75ZVdR
 m6AzJKkCYxZ2kl/OXwA353y1fpFJW6AnerGn5V3Na6HUBimRbSxm7B5W2upj74rUJGnLgtY
 SiNzsKlwmHt0jVlLmRvUJCvooueuGHU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052012; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=xbC/EiZfjTBjh6YTTOuxS51BT3ny5Vn8ungWVzCYJ14=;
 b=J5JzY9Hwjo6vBSkkkZzvv2YhXVt6ju/HUfLyOoJM5wW0aPxvQgTysJx+tXh81dyG+wjvi
 wEAUSf9htjqEC/FpnO9g/rG4QzErEWNDYpg+YZeQ7XuzcddAsZjH0IF9Sqd8QjAeDwrOx1A
 QjkbCL18fPMgcGjoDWbXX/h3/HzYP20=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 634738111C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:24:17 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051862;
	b=qtU2z5buRbkyqdyDYgMQH1iX2hDAR4+S1iZd7NhmU8BZmKBcRDTRxtmxV37IRSHC+tvi9K
	aHJWhIu+MG/qaMqrsg1vgtnKlnQw5ivEHljb1p5CjdlM4NO9QE71kRrfDKUbxycXMJWP9E
	Fwnr8lJCZWu8Pebs/qswTXj+cmrvxQw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051862;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=xbC/EiZfjTBjh6YTTOuxS51BT3ny5Vn8ungWVzCYJ14=;
	b=gwdQThtT9vpinbQPN8UZQFcN+Z7yJl6WBhrTgAR5TAUGUNGG0Qrmf1cs41n5W73LcjeW6d
	UuO9KSiM0gANKEYZ/TPLnb/izZnrpmMG2HWsd02+SDyhgMScLFcAg4InXvESSxxCcBGgu6
	ZO+hJaBkcp4UcXb/RWetP/TC73bsuOM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=XbdecJNZ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 0B30A20131;
	Sun, 21 Jun 2026 14:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051857;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xbC/EiZfjTBjh6YTTOuxS51BT3ny5Vn8ungWVzCYJ14=;
	b=XbdecJNZHdsfx2h0KoWraArsuCyo3VSDnBqLNnc5MVfPv9Wsp+ZPM2aANgn3ZQZR4IdKzq
	Yk94JFMm89KXJX1LVklwn9cMfJLsZ9J2P8CkYoDF+8Ojmos9Ay5Wbnd1wgJFKcB+lEJmE4
	nGw561xDo9yYU7CASJbxhuUBjYp/frk=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:23:52 +0200
Subject: [PATCH 02/28] batctl: originators: fix throughput lines with
 bat_hosts
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-2-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1242; i=sven@narfation.org;
 h=from:subject:message-id; bh=nySeFBdQ0x1je2MbkpfjIVkHflh5KQwuoSogxc+hcYw=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX1h0ZXgv2Zpdb7vAfcRlyaw9E3u2O/pynpX0L+Sdd
 6Ga5+DrjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBENJkY/vB1346r/OF1NjRd
 x9Q8OP3Rp8sLwx6dOcQTwH/Q9Z/ggV8Mf+W0XEwNOE5OeV/xgkvw4gz52TFNjt8fnlyV/Fu+W+b
 QV14A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: IMEVKOJBAL5BQA5SIQ6IRSVZ2EMGEC4Z
X-Message-ID-Hash: IMEVKOJBAL5BQA5SIQ6IRSVZ2EMGEC4Z
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IMEVKOJBAL5BQA5SIQ6IRSVZ2EMGEC4Z/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E36C6AB0F8

When bat_hosts is used, the output should be the same as without it. But
for B.A.T.M.A.N. V, there were two major differences:

* when no hostname was found: extra space before the nexthop neighbor
* when hostname was found: best-flag character before the hostname

Sync the implementation with the B.A.T.M.A.N. IV implementation to get rid
of the unexpected differences.

Fixes: d8dd1ff1a0fe ("batctl: Use netlink to replace some of debugfs")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 originators.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/originators.c b/originators.c
index 8059bdd..7f06b09 100644
--- a/originators.c
+++ b/originators.c
@@ -130,9 +130,9 @@ static int originators_callback(struct nl_msg *msg, void *arg)
 			       throughput_mbits, throughput_kbits / 100);
 			bat_host = bat_hosts_find_by_mac((char *)neigh);
 			if (bat_host)
-				printf(" %c %17s ", c, bat_host->name);
+				printf("%17s ", bat_host->name);
 			else
-				printf(" %02x:%02x:%02x:%02x:%02x:%02x ",
+				printf("%02x:%02x:%02x:%02x:%02x:%02x ",
 				       neigh[0], neigh[1], neigh[2],
 				       neigh[3], neigh[4], neigh[5]);
 			printf("[%10s]\n", ifname);

-- 
2.47.3

