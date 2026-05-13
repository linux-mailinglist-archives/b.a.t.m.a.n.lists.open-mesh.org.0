Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KO9CAs6BGphGAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 13 May 2026 10:44:59 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE5152FDD9
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 13 May 2026 10:44:58 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EEFDF85B2F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 13 May 2026 10:44:57 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778661897;
 b=R23NoDaDvr81DdXpqOu1KD61LwZVPWVxaxw1o43KFU2GYMMbvtFCOL0RI+RJybniOCIEa
 W1oRYzYhuPz1KsPE2aWoTRi7CLAirMLZpQkOnw702o3jSWcsprjH4N0PpG/X392Fv0yzx9m
 gXtS55SHtJ953kz41neNNTgLNhef7E4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778661897; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pC44xmObWAdQVYkDuZ9iW8v5zzxJa87vZywkn5SDdlY=;
 b=BgvPVVsnbtIkwXBxHKfy4wgBGbzTKnfkxcMA3xiDdhR0iq4bugPh9iWs3VXcxIchfDPx9
 FdN/0e585Gm/6HZKsSba/p3/NB6hdky+VxlC5YCOjSGivAkFsyjkLHEn7rENDYMNVljW5Ke
 mPEhsHtTG65QUAkXAcd8SYefZJ87ag4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0DAE6825F5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 13 May 2026 10:44:05 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778661855;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=pC44xmObWAdQVYkDuZ9iW8v5zzxJa87vZywkn5SDdlY=;
	b=hsoH6MZqrSzRDvCtmocBhvVH8r7078xKOVADS157FcpSGxjtp8bSWi1y01Y9On8qWc/NTH
	La7Tq+wjnxrDDn3XGMjtMZDECArsLhjaEsa7nvNIzKIbRV7nAqU3IXD0ak4clDDnsA63Kz
	P8adbGDyOpFrJFTAdtF1qln70jlZepc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=pYX6lzWK;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778661855;
	b=hV4x9ncwYsU+dDKdJkZ4vrwIzHJOiH5NtEOMlA2naLQf7HWRi+9ALSG+t5YjixNnTuuyLO
	dRWG+ZrAZJyGC0QN+J2zSlp+Ea891uCbtYln5y03MGEdrn2f+ih+cVh33ZsidiQMxKRhQg
	H63vGDQOhkqB9C3WspYr+jVE3E5KUAo=
Received: by dvalin.narfation.org (Postfix) id 1D481200D8;
	Wed, 13 May 2026 08:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778661839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pC44xmObWAdQVYkDuZ9iW8v5zzxJa87vZywkn5SDdlY=;
	b=pYX6lzWKK9b6GPqod4DCWTvWkEhMMngT/z+G7Hy/ucabIC5+Oo3t0IWD3EB2pk1RtUAAPK
	SpBzoW6mAkhovsJvYOOSYov60ADOIH9yARjtNPPFgQ+BcAI+vsSZh7LS3aE1IOm1ND2/iK
	F3vBiD53NEBYcFJX1EPMonvxf8V5OUc=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 13 May 2026 10:43:54 +0200
Subject: [PATCH batadv v2] batman-adv: tp_meter: directly shut down timer
 on cleanup
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-tp-shutdown-v2-1-fe4082fec691@narfation.org>
X-B4-Tracking: v=1; b=H4sIAMk5BGoC/1WOQQ6CMBREr0L+2pq2CBVW3sO4+NBfqIktaQuaE
 O5u0Y0u32TmZVaIFCxFaIsVAi02Wu8yyEMB/YhuIGZ1ZpBc1rwSJUsTi+OctH861pyxq2SpRK9
 qyIspkLGvj+0KHSbUC9y+eZy7O/VpV+1NE/yDpTEQ/tr5n30RTDCluJGo5Ylkc3EYDKb88OjDA
 Nv2Bm1+DM6+AAAA
X-Change-ID: 20260513-tp-shutdown-98ab52371c76
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2315; i=sven@narfation.org;
 h=from:subject:message-id; bh=Yy4WcpeaM9m0NyEEfHtEVcYFh+QfFm8pzLIgN9ZqtDM=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkslmeS9b7Gvmt/6PhdV/P1JsaCVo0Hh0OWx07PPpL9L
 7W12Meuo5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjCR6kOMDOvW79jjuLw5sJmL
 6ZC65ZPuf0EbN58x1S1+u9Wn9+FcU26G/9F35jZvUps9Wc//yv+zd9/bn2l4NXFd3kGhxjNr/pr
 3OzIBAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: QBPIUHCXQ7UMV5MLDZ6JLEUGTK6Y3LF7
X-Message-ID-Hash: QBPIUHCXQ7UMV5MLDZ6JLEUGTK6Y3LF7
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QBPIUHCXQ7UMV5MLDZ6JLEUGTK6Y3LF7/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 9DE5152FDD9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim,msgid.link:url,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

batadv_tp_sender_cleanup() was calling timer_delete_sync() followed by
timer_delete() to guard against the timer handler re-arming itself between
the two calls. This double-deletion hack relied on the sending status being
set to 0 to suppress re-arming.

Replace both calls with a single timer_shutdown_sync(). This function both
waits for any running timer callback to complete (like timer_delete_sync())
and permanently disarms the timer so it cannot be re-armed afterwards,
making re-arming prevention unconditional and self-documenting.

The re-arming property is also required because otherwise:

1. context 0 (batadv_tp_recv_ack()) checks in
   batadv_tp_reset_sender_timer() if sending is still 1 -> it is
2. context 1 changes in batadv_tp_sender_shutdown() sending to 0 and in
   this process forces the kthread to stop timer in
   batadv_tp_sender_cleanup()
3. context 0 continues in batadv_tp_reset_sender_timer() and rearms the
   timer -> but the reference for it is already gone

Fixes: 98d7a766b645 ("batman-adv: throughput meter implementation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v2:
- modified commit message to make clear it is a fix
- Link to v1: https://patch.msgid.link/20260510-tp-shutdown-v1-1-770f2ad24e29@narfation.org
---
 net/batman-adv/tp_meter.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index ca6c3f63..345e5b35 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -401,13 +401,7 @@ static void batadv_tp_sender_cleanup(struct batadv_tp_vars *tp_vars)
 	batadv_tp_list_detach(tp_vars);
 
 	/* kill the timer and remove its reference */
-	timer_delete_sync(&tp_vars->timer);
-	/* the worker might have rearmed itself therefore we kill it again. Note
-	 * that if the worker should run again before invoking the following
-	 * timer_delete(), it would not re-arm itself once again because the status
-	 * is OFF now
-	 */
-	timer_delete(&tp_vars->timer);
+	timer_shutdown_sync(&tp_vars->timer);
 	batadv_tp_vars_put(tp_vars);
 }
 

---
base-commit: 57c6af492c1948145db835bb3ea2980472558298
change-id: 20260513-tp-shutdown-98ab52371c76

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

