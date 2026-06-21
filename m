Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AKGAELv4N2ppWQcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:44:11 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3D86AB1EC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:44:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=kPzGvbfY;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B2BAE853AA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:44:10 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782053050;
 b=MD8uBprqj7BLj4/TbE7kEfT+ci4LKg52iE2UHW/GWGRx19mdNxXZy8UVkYUIbgaVtNryq
 HVB5MSHgKNKxY44Pa4B7AoMt48VN0HH9k15f2IHpqmGqmrpqjfZAarcUyRQFgz3r4eChZqL
 Iyvlq66bg+4WUkHdFGzFa4jBeCEWGxk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782053050; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=VFreN2hoSH6+jcZf23yrJjP6DATfU/PdL2n7LQyk+zg=;
 b=piXazMhbrPF6wwOt22yfXW7u64UQ0yMNDnf7qQz0FWyQyATC8fe6vsmD7dQdUhlR6aqvD
 feRN3GEK6fnzDB83vMHUl741SMNvUqSEfEeCDaDY8iCAFm3w1cBKXf0JAt3kwOprdvVfig+
 fRb9ACMqdb0ZqSGnVvuW/qHYUwk87Qw=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id D8D4B80BC1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:26:18 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051978;
	b=cwkxkK6wiTgW8jRO3PoShshAy6EBlzanjG1hf9f4teq3WE6mdnWvrAjK9ty5lMmohh5t1K
	MR4I7DnDQiqhT882wPUvh9ONQXJcgaAFP7DXjKswTRGUxbOEW20cRps1ad2F8AVvRLCt5o
	5ZSgjspRZsqJZR+38vFdS+KBnMbEQ0k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=VFreN2hoSH6+jcZf23yrJjP6DATfU/PdL2n7LQyk+zg=;
	b=CNPcf3vJU+NDLa+ujQNpyrminyoFplQrRkXKMcrNuPQtdAtRXiQdK1LvY2iMm17/cCd4TN
	RmnpXIpugZwLrMi549ggn5p/AjodSribip0RZMOTM6G3APvfDbNbcd+GERaNWfQLVdbd+G
	fcL5m3A7wM/Eon7WynuGGMBFHq6Ug0A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=kPzGvbfY;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 9C40F20059;
	Sun, 21 Jun 2026 14:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VFreN2hoSH6+jcZf23yrJjP6DATfU/PdL2n7LQyk+zg=;
	b=kPzGvbfYbqyn7dIGHC0Ln0J6lMlRwWKLGXRXbRrFXzy9YeAYC3xT6TdI+v68uyIQdX31/Z
	1DSzrEINGZzBMx6DunZ9R/z6vvs+L4CJqJ1rahHTZLFxbZWqpb2HAazhSW7M6cCFXgRgI/
	kqh+KuSp7qzxq/3t0mpnM9E+oJB0Z/g=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:16 +0200
Subject: [PATCH 26/28] batctl: bisect_iv: avoid write before buffer whole
 tokenizing log
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-26-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1239; i=sven@narfation.org;
 h=from:subject:message-id; bh=p17SV1tRZvXWixXuoyn5Yz6nJl2rT0w1tHl31ZsqMu4=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmXzgmagjvD3U+bLTurV+fbfqx89/zlk57JhGsvORge
 k6syK6ajlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBErpozMpw7bPkh+G9USqd2
 CleNiNHnC9kf1umf3xlknZ8+I3K5LgPD/3r2KVu67thef5G/5Pa2ayqWV5eIr7Ey/b6y6XnK1U0
 ak3gB
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: IAFO4QHVDECTVGRYJ3FVHR2ZENGGEJGO
X-Message-ID-Hash: IAFO4QHVDECTVGRYJ3FVHR2ZENGGEJGO
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IAFO4QHVDECTVGRYJ3FVHR2ZENGGEJGO/>
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
X-Rspamd-Queue-Id: DA3D86AB1EC

When neigh and prev_sender are tokenized, their string length is removed by
2 characters. But strtok_r only guarantees 1 character. A malformed log
would therefore cause a write before the start of the actual data.

Fixes: c3b15dbec883 ("[batctl] bisect - better routing table handling due to add/update/delete detection")
Fixes: 8a3d4fed1067 ("[batctl] bisect - fix handling of large bat-host files")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 bisect_iv.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/bisect_iv.c b/bisect_iv.c
index 0e34d37..4420be9 100644
--- a/bisect_iv.c
+++ b/bisect_iv.c
@@ -593,7 +593,8 @@ static int parse_log_file(char *file_path)
 				case 4:
 					if (rt_flag == RT_FLAG_ADD) {
 						neigh = tok_ptr;
-						neigh[strlen(neigh) - 2] = 0;
+						if (strlen(neigh) >= 2)
+							neigh[strlen(neigh) - 2] = 0;
 					}
 					break;
 				case 5:
@@ -601,7 +602,8 @@ static int parse_log_file(char *file_path)
 					break;
 				case 9:
 					prev_sender = tok_ptr;
-					prev_sender[strlen(prev_sender) - 2] = 0;
+					if (strlen(prev_sender) >= 2)
+						prev_sender[strlen(prev_sender) - 2] = 0;
 					break;
 				}
 			}

-- 
2.47.3

