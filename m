Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a9C9Mz5KTWr9xgEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:49:34 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7276371EBC2
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:49:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=OdJDRkAG;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3B82C84497
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:49:34 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783450174;
 b=tBSQ8ElcKppApi5+rj4vfZSO26aRWoQ8hjtA4HAOyPKRv1m2ocLA8CB+mU26N6rBULQqP
 Y5+1nOGl86ljmZA9ds01a2MsJMhiN8za9VnymcrLJbWRitXeMuIOrRWsA0E6KqlBBA14/NV
 V3d7m1p/q/gXnUOsPdzXkanR0cBgyJY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783450174; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=HD/FzkQ0p759m4I477DfN78ex+HPljmhLqMPGbCKRtw=;
 b=kX2jMjH2hqs3HLtKmrgC54Qo/g3jIGgflgeQZZU76+a1ijItfW+0AkniisCZqvG4RLg/c
 QJInhgMRXdnf9Kvlu27j8I81Rk3Iq1QEDVYrSrXvmwumkWoOLAXhnHPPm/YtMXg9EftTEv1
 5DM5oUZ4QkMvg+0f01YnX2O23vdK9QA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 15C5283454
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 20:47:02 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783450022;
	b=iZsVvvvT3mAuwVrL1wZTyuiZoexMbHcckv+SMcIN8zYZH/VZAs0dwO4DX6/im++wn4bI14
	kptNDnzNYezROnIt3ji+YOANck+7xFOvJ63sT1579p/g1R9vviNVWhdbfvUMH3ghnOXvkb
	mkY/KRgupg426TBh9HOV+zlPCU22qSk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783450022;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=HD/FzkQ0p759m4I477DfN78ex+HPljmhLqMPGbCKRtw=;
	b=RJF3BTCE5MlqtvFOgcoJXVB5q0xVRutT0mFEod0NCLR0Z0n0ixGlrd94rHus5p3mYUM/vi
	x4bKCguYD5Q2IP7JJd1u4RSAmGFVL+lYlOH5jyipDpVHFHH7s5LtdblaAWPhBk7RsnMgD7
	ZgIeb/k7qaoSN1fTS+qf/E2GnFWc5r0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=OdJDRkAG;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id AF7F520442;
	Tue, 07 Jul 2026 18:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783450021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HD/FzkQ0p759m4I477DfN78ex+HPljmhLqMPGbCKRtw=;
	b=OdJDRkAGz8i324J1TxbZTEcDJAQjkic+Bm1aVJER2+8XemyFoL8Pjo9kKguc9dmxgiLMiM
	TpE9AmpjZ5LjKBZ6u2vX2kvjzSLxbdQhwyDdNol+xCiXYEz811QU8dau+YfP7Hel+8Zxni
	pMCWj/QuUFA1mDGotOQ/t+mGKineXaM=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 07 Jul 2026 20:46:46 +0200
Subject: [PATCH 04/11] batctl: ping/traceroute: don't restart RTT timer on
 stray replies
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-bugfixes-icmp-v1-4-ee563a984acf@narfation.org>
References: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
In-Reply-To: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1731; i=sven@narfation.org;
 h=from:subject:message-id; bh=5q4BDQayQ4/FXlcIDQMAFZ9NNT5ERBLPs/1Qr8fu3xA=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+nlMfbXFUEXnzs6J+XpN8YrdPzu4Xf2tm7Ny9t98v7
 +136+odHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJqMkw/A995p9ybEtXQsWj
 JZNm7lqwJG8jq4vt1fMHVkmdb34T8+cGI8P33fYmUuf/rW0+z/DZxGdXfrdJ3atZxhOuy/zz8xB
 kWs4NAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: OTDLY3YB2LAECKQHZUIZU5F4CMUDCRXM
X-Message-ID-Hash: OTDLY3YB2LAECKQHZUIZU5F4CMUDCRXM
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OTDLY3YB2LAECKQHZUIZU5F4CMUDCRXM/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7276371EBC2

When a reply with an unexpected seqno arrives (for example a late answer to
an already timed out request), ping and traceroute jump back to read_packet
to keep waiting for the real answer. The jump target also re-runs
start_timer(), so the reported round trip time only measures from the
arrival of the stray packet instead of from the transmission of the
request, underreporting the RTT and polluting the min/avg/max statistics.

Start the timer (and initialize the timeout in traceroute) once per
transmitted request. At the same time, let select in icmp_interface_read()
the wait time instead of restarting it each time.

Fixes: 2ecb2c8b060b ("batctl: tr / ping - ignore packets with wrong sequence number")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 ping.c       | 2 +-
 traceroute.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/ping.c b/ping.c
index 5eafdad..fcb8d5e 100644
--- a/ping.c
+++ b/ping.c
@@ -215,9 +215,9 @@ static int ping(struct state *state, int argc, char **argv)
 
 		packets_out++;
 
-read_packet:
 		start_timer();
 
+read_packet:
 		read_len = icmp_interface_read((struct batadv_icmp_header *)&icmp_packet_in,
 					       packet_len, &tv);
 
diff --git a/traceroute.c b/traceroute.c
index 94443d7..975c9ff 100644
--- a/traceroute.c
+++ b/traceroute.c
@@ -142,12 +142,12 @@ static int traceroute(struct state *state, int argc, char **argv)
 				continue;
 			}
 
-read_packet:
 			start_timer();
 
 			tv.tv_sec = 2;
 			tv.tv_usec = 0;
 
+read_packet:
 			read_len = icmp_interface_read((struct batadv_icmp_header *)&icmp_packet_in,
 						       sizeof(icmp_packet_in), &tv);
 			if (read_len <= 0)

-- 
2.47.3

