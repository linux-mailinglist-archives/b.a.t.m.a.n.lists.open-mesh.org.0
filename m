Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7fOdBDb1N2o0WAcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:29:10 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B806E6AB10B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:29:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=1bp77wyM;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 92B4C82587
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:29:09 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052149;
 b=IIJLcWveY9ye33k3rMlXfl9VBewkQIO1OMeWgp9W2cLPHwrj2vAL456yGToxQug7cG7qK
 PYo2ZE6CvKoOVfNpInzKDCfNVcNwS9PknxdrhOWSMOOiz82Gcxmxd2mEZV+M7mkKlJ/i9XD
 KYLREKyAe84ZC4ez1jj2YmF5fb6zxPw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052149; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=BsLSNHzzbUopmdD/CHZEkH9aHcOwJdraGDEfI05W0+s=;
 b=EhQeIRF6k6erjTHiSx2j82M4jA0+/BXElNiRrHaPMy3B2Aguzhx06MU/ufkD5+GoNixmZ
 pKH0O0tVvK2Lsa/PsS+BN9M1+dcbpzQII2ZcSzkNZkes+jwhbZQb+x+IpLJmGAc+FJ0X7om
 FELm+BtMyOGVQbNpVqooFHzIoLtxSjg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0470184016
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:24:53 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051894;
	b=f+PnEVAHaBJRbul9G9ef73KToIBfHXc2EEVn5m9NReX7WYZpR87qtKkR82n+fNH2ytlxD3
	XGPqfXMLGXl6AMVyHqkxB2j8TC4ffgcf4SQ/5ObP66LZFrvf97rAfOHlCaRFRZyOIRmb0O
	ieJ+i98X3xoMoPqhQBWJ2NSvNeWFFak=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051894;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BsLSNHzzbUopmdD/CHZEkH9aHcOwJdraGDEfI05W0+s=;
	b=eg+t0AxxgdcNQU/QyaO3ycqxQk6krbCyWawkegvtytnzTO+0dTfqljxEEuh/imOlhpd3po
	hYkRQbSV0LsJwI0S+TvLjbn0zg2OkSphN+oonYNDEMAQLkxPpd6fsrc0Fb2Oto+7DwT/nM
	JmjinPNuYDqKurNVj1V35r0TWcTRa2c=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=1bp77wyM;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 4F85F20059;
	Sun, 21 Jun 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051893;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BsLSNHzzbUopmdD/CHZEkH9aHcOwJdraGDEfI05W0+s=;
	b=1bp77wyM+RwlxcyVlXlIO3tkQ0uSRzK+nFnMM8EDL3eCnrKg7VvVodj5mzfM8VGK2ardMT
	JgrQ1T8aSsokbSOGkrnlg3f/wl91A8z7r9PwMOvxIDSMhDBgQc20lffb7H9xlv0PZhhr1y
	I1ogMxT8Ywyo1TFZ/KmAgoQLHtCEtXs=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:23:56 +0200
Subject: [PATCH 06/28] batctl: traceroute: handle fast replies
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-6-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1929; i=sven@narfation.org;
 h=from:subject:message-id; bh=A/1YzooUHK2kKnwYV448jx6r+BrJ0S/ZLtn7afO3BOA=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX1gTXTtu3jh4gfGC6f+7Xyt/yP3dc3vVkpidy50XP
 oqN/eLZ1lHKwiDGxSArpsiy50r++c3sb+U/T/t4FGYOKxPIEAYuTgGYiKkFI8PZ85O/BFQIXzYx
 zlzBevj1gv+8KQ3F++3CWmcxat4Ne6/O8M+2bb5+vr/3w/MBr72mLwpbf2fG8r3Od1fvt1Ot4F+
 7IJQJAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: LR7NMEAU6KC4YFJ7XXF2RVUQ2OKQWCQY
X-Message-ID-Hash: LR7NMEAU6KC4YFJ7XXF2RVUQ2OKQWCQY
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LR7NMEAU6KC4YFJ7XXF2RVUQ2OKQWCQY/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B806E6AB10B

If a reply for a traceroute is received faster than the CLOCK_MONOTONIC
precision or (in the rather unlikely scenario) the double precision,
time_delta[i] would be 0. In this case, the packet would be counted as
lost. Introduce a new array "received" to only track whether the packet was
received or not.

Fixes: 0641511400dc ("batctl: traceroute - use all received packets to retrieve neighbor mac")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 traceroute.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/traceroute.c b/traceroute.c
index 8f23128..d9db618 100644
--- a/traceroute.c
+++ b/traceroute.c
@@ -42,6 +42,7 @@ static int traceroute(struct state *state, int argc, char **argv)
 	struct batadv_icmp_packet icmp_packet_in;
 	struct ether_addr *dst_mac = NULL;
 	double time_delta[NUM_PACKETS];
+	uint8_t received[NUM_PACKETS];
 	int disable_translate_mac = 0;
 	int read_opt = USE_BAT_HOSTS;
 	struct bat_host *bat_host;
@@ -125,6 +126,7 @@ static int traceroute(struct state *state, int argc, char **argv)
 		for (i = 0; i < NUM_PACKETS; i++) {
 			icmp_packet_out.seqno = htons(++seq_counter);
 			time_delta[i] = 0.0;
+			received[i] = 0;
 
 			res = icmp_interface_write(state,
 						   (struct batadv_icmp_header *)&icmp_packet_out,
@@ -162,6 +164,7 @@ static int traceroute(struct state *state, int argc, char **argv)
 				/* fall through */
 			case BATADV_TTL_EXCEEDED:
 				time_delta[i] = end_timer();
+				received[i] = 1;
 
 				if (!return_mac) {
 					return_mac = ether_ntoa_long((struct ether_addr *)&icmp_packet_in.orig);
@@ -195,7 +198,7 @@ static int traceroute(struct state *state, int argc, char **argv)
 			       bat_host->name, return_mac);
 
 		for (i = 0; i < NUM_PACKETS; i++) {
-			if (time_delta[i])
+			if (received[i])
 				printf("  %.3f ms", time_delta[i]);
 			else
 				printf("   *");

-- 
2.47.3

