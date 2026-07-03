Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 28XmG9EHSGpikAAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 03 Jul 2026 21:04:49 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EE86E705074
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 03 Jul 2026 21:04:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=m3nY6u3M;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AA1CE84034
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 03 Jul 2026 21:04:48 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783105488;
 b=vHX3SZ1VmwtZ1KBVk0mdr1weHseh6NW+IzDvOJe8kQZNVMd3ODARbEc0gmYIJWAtYyQTX
 o6HQ6vPpKxkzJEqEnWE/F8NrZTue4ie8INVXFePXrE+a/eM/HYy4gBZDzJOkYoves5mvAxy
 uBS3A3d8XzqiNEnupZFr+oDZQHoCj3Y=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783105488; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=3B9PzGIOyOhWn4nnKtriRJTrxBEiNVwayk+InVbRlDQ=;
 b=ouO7zupW1E41e3Hp6GvRns7HGCBmBYoxC39Y+gDa5BToFXVOPY33NrIQNE3DtQ+/3zOQ9
 uJuLTTyuZXDutCGAPCvya7CxX23uf+i8qrQ0ydzoxBravpkHrfOCFYtR/jTt8vXlMVWLgbg
 p956wTp8HZNLMlFwstXSS1zJHLAPAjY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id AC79180BB6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 03 Jul 2026 21:04:21 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783105471;
	b=MP16C5vclUNl5LAYFRiYDwmPEhPpYs/fZ39QTz6AYCcjTQkjYev+fw94DizdX+Nw89TPC6
	U6+z406Nhk/5qvA3R7Pza+KhMxhIwmCoxQ2sT3tuhgvedBEpYDAJVzc0+jdU9Lb7gZa4XP
	JGKsDUb1goRbtSWaWoT61k3DmIdTy+g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783105471;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=3B9PzGIOyOhWn4nnKtriRJTrxBEiNVwayk+InVbRlDQ=;
	b=sFEZXbg3fdx4gaMiz4wVcexOXojSCBCXgagTQPjRYX3j2PQXGvkcxtTWYm/JAZyKM2J+qf
	oEXZqE3bqQ8pQmGi68p6/LJaw/9p9UgemLx6DV8c+OGFUxA9E9W4V9OQCSeht+ROxKCvJJ
	9cUfm43tVWhUVl2IBpw+KYwd9vlFc9A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=m3nY6u3M;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id DB8FC20477;
	Fri, 03 Jul 2026 19:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783105461;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3B9PzGIOyOhWn4nnKtriRJTrxBEiNVwayk+InVbRlDQ=;
	b=m3nY6u3MadLEJVtlXSIQVSQUAAjFcAgC4lDVkx8ZkqodzoRuMrGUDp3Ce543qE9WXSZ9kj
	3W+v+IdO2aZnMB0xQxoyyesilAiBwwC4GdTYghNLYPeomfHfZZZl3fgqdX6tCZVTql+Q/y
	btjtVs/R+RJYspF8NPSHwLaLdkoPJRM=
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 03 Jul 2026 21:04:03 +0200
Subject: [PATCH batadv] batman-adv: frag: fix primary_if leak on failed
 linearization
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260703-frag-tx-primary-leak-v1-1-7dfaedb5aeb9@narfation.org>
X-B4-Tracking: v=1; b=H4sIAKIHSGoC/yWMyw6CMBAAf4Xs2U1qIYD+ivGwtFtYH0i2lWAI/
 26V40wys0JkFY5wLlZQniXKa8xwPBTgBhp7RvGZwRpbm8aUGJR6TAtOKk/SDz6Y7lg7S/4U2qq
 iEnI6KQdZ/tsLdJTIz3DdfXx3N3bp94Rt+wLjYjmtgAAAAA==
X-Change-ID: 20260703-frag-tx-primary-leak-6c2ad9f844a3
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sashiko <sashiko-bot@kernel.org>, Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1119; i=sven@narfation.org;
 h=from:subject:message-id; bh=Mw+zcg0UtSsskeciFvtiFOiPwm8eclPuTqoGwsd5cv4=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFke7Kti630+2jLPLTSev3lBe1Go+tncZ9utdOJMH4vs8
 NJiSFjbUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAZhIZyAjw5UkWYMolyppN3WN
 4F3RXO93ZW7qeG639Ij5DxnL3sbjuxn+O/+MP7n4SY/28+DErvzntXb9navuWhy+vnVX3OsvVic
 1WQE=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: XLJS2ZW3I2O4Q3LOHD3WG6NG47QN6CXZ
X-Message-ID-Hash: XLJS2ZW3I2O4Q3LOHD3WG6NG47QN6CXZ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XLJS2ZW3I2O4Q3LOHD3WG6NG47QN6CXZ/>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sashiko-bot@kernel.org,m:sven@narfation.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_THREE(0.00)[3];
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
X-Rspamd-Queue-Id: EE86E705074

If the skb has a frag_list, it must be linearized before it can be split
using skb_split(). But when this step failed, it must not only free the skb
but also take care of the reference to the already found primary_if.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Fixes: d467720acaf1 ("batman-adv: Don't skb_split skbuffs with frag_list")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/fragmentation.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentation.c
index e2c74ae6..5606e284 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -551,7 +551,7 @@ int batadv_frag_send_packet(struct sk_buff *skb,
 	 */
 	if (skb_has_frag_list(skb) && __skb_linearize(skb)) {
 		ret = -ENOMEM;
-		goto free_skb;
+		goto put_primary_if;
 	}
 
 	/* Create one header to be copied to all fragments */

---
base-commit: 22b12d005035f37f898e5bf80480719fe1ef4fba
change-id: 20260703-frag-tx-primary-leak-6c2ad9f844a3

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

