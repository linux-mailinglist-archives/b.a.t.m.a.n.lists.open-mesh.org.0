Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FQVvLEvySGoJvwAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 13:45:15 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4347076F7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 13:45:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=BLoSeWxd;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E1F3F840F4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 13:45:14 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783165514;
 b=ueY2mpoUSER5wdkSm5Mlgr+S9h/SZBaOIBWD1ml4d63xiXw0ovEXqweFvzTOLcrt2SXa+
 FqxsNe0PxOtpppKHbI3qbJATHVEsYrSs/B0prsHhQV1E8JUPyTx0JRukdGhbhoS4G8nm0Gc
 0PWljyn22xbzsCFubpmjfIMaFpYj9nU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783165514; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=nVJ2C5s3e1RVvw2+XDswv9hqfDBjQYACzs8fYLQofJA=;
 b=FFsTeSzvArLBARZN6vw/+jXTnWzejB99vdKr5NzXnu1u+P2KnClzIfY4okN1Kagt8WHpK
 0xFZS0SzSTh4JrRtbDL8Sn9qehNFxRUh7TJ6KaXht+/90+H6ASH4JDaGc5g8odcHX7MP6uQ
 UO5qZb9+eenR66o1XUc3BWlI0osLsfY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 8CB1281CDC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 04 Jul 2026 13:44:46 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783165496;
	b=gLun30KJje11xRyqj2XkleCqx2XCNKKJdWzH6+m9OW/LeBmdbs5JDLgQvtW9fEdK+rZ9oy
	vft0YTZC/MV0+j47ZlLIP4LSUvPQ0G8AsIQHlBygNkaYQPca7esi5uO+w56jpBeCwixfXL
	HFvG0IMiXCtco9xZ1ssJxsdrtEaw+wM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783165496;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=nVJ2C5s3e1RVvw2+XDswv9hqfDBjQYACzs8fYLQofJA=;
	b=l1JpD39kSTy7wSaGI3uV9aPRJ8YBvOH2XBB/fualtW2EEX7nu89/YF6OmJDW8KJjO/Hgmq
	SCwsU59Pr/8gqkHbLYIQG7AsrYweABbluQ1yudLEDfMXLf7FS5PDXkWfWCw8HLdbQPifDP
	/UbZNkqChHyV1ftg5iXpabws/KgS3gw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=BLoSeWxd;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id CA54C1FECA;
	Sat, 04 Jul 2026 11:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783165485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nVJ2C5s3e1RVvw2+XDswv9hqfDBjQYACzs8fYLQofJA=;
	b=BLoSeWxdGDTQygMqnXSYedxM9e29GuG+fGDFIJbhhJbdZiM0PXXqaUbfHK3k2d0+/buOyc
	YBt4FbhMZ+a3EswFM9+lLS8I++HGDQKbWeDE85wyFBNz0Xm4KmP7Pa3FSdyFzCRBXWOHpz
	YPA7Hf/R74NvOi+opi2Yqo5q8BABLeA=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 04 Jul 2026 13:44:29 +0200
Subject: [PATCH] batctl: dat_cache: fix multicast/unicast filter for MAC
 address
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260704-bugfixes-dat_cache-v1-1-beb52095f587@narfation.org>
X-B4-Tracking: v=1; b=H4sIABzySGoC/yXMQQqEMAyF4atI1lPoaFXwKjJI00aNC0eaKoJ4d
 6suP3j/O0AoMAk02QGBNhb+zwnfTwZutPNAin0y5DqvdK2NwnXoeSdR3sbOWTeSMr4usERjS6w
 ghUugZ5K69vdaVpzIxfsJzvMCcQQaNXYAAAA=
X-Change-ID: 20260704-bugfixes-dat_cache-4d73b5b4a5b6
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1359; i=sven@narfation.org;
 h=from:subject:message-id; bh=ReAwaDjYwZz8+HdzCkIGC0zJt3RmxQF5mZVQc+8QuVU=;
 b=kA0DAAoWTQ93K9MU9csByyZiAGpI8h3IPO33HkJRfLFwdI/CWzm64PgRB498tUgV9NumnlQEy
 4h1BAAWCgAdFiEEvNRvz7MH7R/zlvHFTQ93K9MU9csFAmpI8h0ACgkQTQ93K9MU9csoyAD/WZUl
 u4kIdOxyCnL0i/4KLaQ5q9yDa3WrJrAZUwtEQ2EA/1tKS74sSqqDzUZlOnYj5YvccaGMknooIah
 ulWvkKjsC
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: N4TIGHB67AD443VVQZVDUB7QDMR3V7HP
X-Message-ID-Hash: N4TIGHB67AD443VVQZVDUB7QDMR3V7HP
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N4TIGHB67AD443VVQZVDUB7QDMR3V7HP/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B4347076F7

The -u/-m filters in the DAT cache callback test addr[0], but addr in this
callback is function is the text representation of the mac address - not
the binary representation like in all other functions. The binary check of
the multicast-bit will therefore not correctly identify multicast entries.

The kernel reply BATADV_ATTR_DAT_CACHE_HWADDRESS has to be checked instead.

Fixes: d8dd1ff1a0fe ("batctl: Use netlink to replace some of debugfs")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 dat_cache.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/dat_cache.c b/dat_cache.c
index 2dee27a..b8a9656 100644
--- a/dat_cache.c
+++ b/dat_cache.c
@@ -78,10 +78,10 @@ static int dat_cache_callback(struct nl_msg *msg, void *arg)
 	last_seen_msecs = last_seen_msecs % 60000;
 	last_seen_secs = last_seen_msecs / 1000;
 
-	if (opts->read_opt & MULTICAST_ONLY && !(addr[0] & 0x01))
+	if (opts->read_opt & MULTICAST_ONLY && !(hwaddr[0] & 0x01))
 		return NL_OK;
 
-	if (opts->read_opt & UNICAST_ONLY && (addr[0] & 0x01))
+	if (opts->read_opt & UNICAST_ONLY && (hwaddr[0] & 0x01))
 		return NL_OK;
 
 	printf(" * %15s ", addr);

---
base-commit: e93995999e80513db80eba200ea682b5b15556af
change-id: 20260704-bugfixes-dat_cache-4d73b5b4a5b6

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

