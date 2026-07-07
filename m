Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id alYHK5RKTWoLxwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:51:00 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B3071EBF7
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:51:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=bYCsvR8S;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3669584B00
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:51:00 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783450260;
 b=VJ+MK/dZ4X2eyWtQ9kDrwY1BgF7PoH8LRw62rBAbYUMa6/bpZyYUx4/j2mLFNzgWZki2Y
 rM9nhmn24LSSslpRedTVdUt5XC7Nu8kRTd5CUfsBB9jnarEtjB7kLk/h8jyhvCFT3oVXhYK
 giniwFcPr37PwKBmWn2KC3dEoKxJKFQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783450260; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=P94ZArtKvpyHdCfaj0ZIyoaNSWZcI/XRLMSCBOcZZLY=;
 b=T8XIXF3T9K58J8swv0L1Y7nfyAaRXUiSk5i0WcFxsi3AHNbz/O3ftT0PYyRo11AyFID+h
 2dcCyDtS0eoM+ng84VvTu9RrZh3jzqNt8IaRv+sm0RQjkNVI/2ePT5iuV1a9msVDzDVMqTm
 R2ba1FnVXIcZWPPOfFvYyLCuwhpXTAw=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id F241980C7B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 20:47:03 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783450024;
	b=C51NTXw4QQm08Hkm2JrXy2QVyoV3hr1AT1972Rp8jQpHig/lz7WyQZ9q2GqF0ujQSVP1Lg
	oJKmpNu3HZg59mCB+CJ3yNu2racki/IAlK3OKVXV7SSWjSk74GHrAHygxkR1wiccPmAG6m
	S1OCa0IRod++/HBgcuQ/hx0SHY6XSFA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783450024;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=P94ZArtKvpyHdCfaj0ZIyoaNSWZcI/XRLMSCBOcZZLY=;
	b=y6OSEoJo7noXT1fV+8LA0bUH9vGXGIZlBmzEElhqPrbFbD+Nm8cNY8JsiGwyXMitIdm1Jh
	v5ujqM0akk8dkallteWsKTOQ7skkzgaK15fBOqDkPqe2tWjfettPeSQ6qgynJGQdbnQRcq
	YRw0K+VyHpFezoJgCFDHk9M8UPftU4I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=bYCsvR8S;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id AFEB3202D1;
	Tue, 07 Jul 2026 18:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783450023;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P94ZArtKvpyHdCfaj0ZIyoaNSWZcI/XRLMSCBOcZZLY=;
	b=bYCsvR8SJsDc+6hGOKUpUuwSMV/YQBlMQbZ0/RgkcYSxQ2IIP50mDBqP1x4k1HS1Qoxezp
	JdU7FD3BqfptrMsly+LuNHTE+pLR7yLSJmN6/EPtrYUL94XvPpqhVuAa88SV+4AASd9h4e
	iMl1u6jsjkAK+aKRgVLlUshxfwLvrX8=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 07 Jul 2026 20:46:47 +0200
Subject: [PATCH 05/11] batctl: traceroute: probe the advertised maximum
 number of hops
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-bugfixes-icmp-v1-5-ee563a984acf@narfation.org>
References: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
In-Reply-To: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1012; i=sven@narfation.org;
 h=from:subject:message-id; bh=H4ojzUNkpb3anuk0AacR+ctmqv50LQTsYYozdONB2K4=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+ntNa7k5wXz058vGyy/+lrosp/rF0WMy2wdid/SH/J
 OEovfAdHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJCE5gZDj01LD1potXYPxj
 /zPhbp+e13hEfFxbuG1iEt+RvEPf2DIZGfa11Rbz1pXt4arb9Piw3aYv+jPlar+yKMWsbKiYbSm
 swwQA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 65MTHXGUBFC4CJEZW44O6QZ67BTKB6J7
X-Message-ID-Hash: 65MTHXGUBFC4CJEZW44O6QZ67BTKB6J7
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/65MTHXGUBFC4CJEZW44O6QZ67BTKB6J7/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58B3071EBF7

The hop loop stops when the TTL reaches TTL_MAX, so only 49 hops are probed
while the header line announces "50 hops max". A destination which is
exactly TTL_MAX hops away is reported as unreachable even though the last
probe was never sent.

Run the loop up to and including TTL_MAX.

Fixes: e1c83d9260e8 ("[batctl] traceroute utility updated to latest batman adv")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 traceroute.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/traceroute.c b/traceroute.c
index 975c9ff..76f0f80 100644
--- a/traceroute.c
+++ b/traceroute.c
@@ -123,7 +123,7 @@ static int traceroute(struct state *state, int argc, char **argv)
 	       dst_string, mac_string, TTL_MAX, sizeof(icmp_packet_out));
 
 	for (icmp_packet_out.ttl = 1;
-	     !dst_reached && icmp_packet_out.ttl < TTL_MAX;
+	     !dst_reached && icmp_packet_out.ttl <= TTL_MAX;
 	     icmp_packet_out.ttl++) {
 		return_mac = NULL;
 		bat_host = NULL;

-- 
2.47.3

