Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CVyGFg8AGqXEgEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 10:05:44 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 197C250306F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 10:05:43 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7A4D785AD0
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 10:05:43 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778400343;
 b=eEWAiOJCb8MdT0CCtoNEfkxgx5BYIMZlzhxh6ipmy3Ph+OflBRNoxAZRa/gwGE5eH1JgY
 Mfz8x8CvP4cZ3JPvn7Fhem956TRpig8xx7K0SS8+OH/nANLejT6WkP27y3St9ec0Iyawk4q
 pApGZl1OQ/091+bCWrA4C1pPeUQ6C/g=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778400343; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=b+6MqIJnJRgcUaZr33tcmO6u41qqKCpv1Gvyt/Zdykg=;
 b=jvX3QBjmCHsXK0O4S23GmfY/b7rkc3Fl/KrgkApd49TPW5DpU/8zGxKSrqDJSo4kuzgaY
 CWe/7hr7sFSlhp/QKQ4+mjtlSAyd6jSEBJwHNfEPZ4MNzN9oMYEq4mhRVu+gYJXg6sOS4bH
 gpoUS78X8t/w3dSqmZMgU9dZiYcf8dY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 8D30583AB1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 10 May 2026 10:05:00 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778400300;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=b+6MqIJnJRgcUaZr33tcmO6u41qqKCpv1Gvyt/Zdykg=;
	b=JCuS8EY4KWRZgfAxMxLyr7pymseGtNabB9+OjNdN3JdU4MC1oTLzSPFvbb/Jlud+ZC1j27
	fqWp6DL1O94vRs/fwc4OHDQqY+TV4rYNbLXNkUfBd81f99URb3d1YTSAEocghby1MDEf1U
	DhaXDsipQ9G6mvZL6I2W5G+Un8v2YNk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=l1NCDPgG;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778400300;
	b=I8Et/zuWMN50uXxdkbfu9P4XphunMfWgOrfxjqgVEeAQpY3qxSYDeSZRE9Z0heFjS+3wPt
	TT+WbVm51SrZtRYVKEOC/KEe+/VWwXw5R7GxW/T87DNdgxBdmMH+dI6h7AQ8iLj1l828Yf
	nkDkrc9gRAE4olzq9tdTSPmmmwY9Zyg=
Received: by dvalin.narfation.org (Postfix) id B58E92024F;
	Sun, 10 May 2026 08:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778400299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=b+6MqIJnJRgcUaZr33tcmO6u41qqKCpv1Gvyt/Zdykg=;
	b=l1NCDPgGRIvi4THwik9V5xNuwt1bigLQoo5pLdTTvbwJjkaEeKLDRgR2a0oqZpwBkvYZYk
	tTEernlN7nCXUZJFGqn6PFFKhKe5gKAVVyHPBikOwup5J/Y6EhdvDmTbJ75dCBsi4r7MhM
	hTzHD/hjiIKjC7lxWRKaT+FkRDJLnJI=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 10 May 2026 10:04:27 +0200
Subject: [PATCH batadv] batman-adv: tp_meter: directly shut down timer on
 cleanup
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260510-tp-shutdown-v1-1-770f2ad24e29@narfation.org>
X-B4-Tracking: v=1; b=H4sIAAo8AGoC/yWMzQrCMBAGX6V8ZwPbxB/wVcRDfrZ2PaQlm1ah9
 N2NepyBmQ3KRVhx7TYUXkVlyg36Q4c4+vxgI6kxLNkznXoydTY6LjVNr2wGZy+RQiR3dGjFXHi
 Q9+92Q/DVpxX3v9clPDnW7wr7/gHYM3nXdwAAAA==
X-Change-ID: 20260510-tp-shutdown-f327c0bc0343
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1618; i=sven@narfation.org;
 h=from:subject:message-id; bh=YbVrDTrZq7nqqi8FZPh02QZIRNvSC4L7377CAr3fTR8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkMNjxt91JqZz/YXHKPp1gx285nwp59CSpb73aHWXHq7
 EmcuKW6o5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjCRjGmMDBM0NCXyxC6Y6Oaz
 saulGkuptFRsMzDoms+tfNPjdt6rrQz/s9PFXRxK1bam/mQob9/+fHJAxJErCqyrUs31i+q84p4
 yAwA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: INYDCUJSMKCWE35XW6NS44Y54JZR3JUA
X-Message-ID-Hash: INYDCUJSMKCWE35XW6NS44Y54JZR3JUA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/INYDCUJSMKCWE35XW6NS44Y54JZR3JUA/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 197C250306F
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
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:email,narfation.org:mid,narfation.org:dkim];
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

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 759ae923..d27c3da9 100644
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
base-commit: f876964b732393119a036ff1ce7a1c94290b09ed
change-id: 20260510-tp-shutdown-f327c0bc0343

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

