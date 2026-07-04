Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BMOsBL5gSWqW0wAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:36:30 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFA070841A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:36:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=oMaEVi9x;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 66D9684204
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:36:29 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783193789;
 b=xbZ8O5Ta5Q7sy5RqU3WdgL+BcaBT5XmKJnzCVkmQPxTzOvJq3fmScyxD8zy35QI255lpE
 VvpJV8mIJKgK9o/rT3GpapEUSFIl1jlmLTBpPuLiTxfHhfex7ihFMivChtMGraYaRryizSd
 Kkh2/SjehBkZycerIVrAPHjuB3VnrVg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783193789; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=mZ2EODVgf62VGVP5ya2QZaWBMdAl32ncRazPz43QMeY=;
 b=qRRXwRAYzp1S94OwE7OV8uQmZ+4sh0eZaGN4Zjnb0i+2vPQDz8LwkIkt/KsoXkAdQAKDT
 qrmZrO5zESXM1eUGECbm4zqc18hW06C9W9SxbMF2ScDE6ThywzJw2sOMwLvQpTPuR7VW6U8
 vRQKvNkh8ZKkZZiW4C6sFSFoGDOa5O8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 3517B80EB6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 04 Jul 2026 21:36:12 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783193773;
	b=yqDxTrwaB8Lv6WIC2D9P1kBrBIqSHCyMLTzLmi1bF6NGWPfAJlmUnUf7ANlrXwYcEQKErZ
	N+Xp0/q9lURSownLSxjNfjpmhM155nAPw4dD4hoMTPGBxENs4L+9f2y7E8OwPPj/L3Raio
	CdrEOyhSMUc17pRmdLuTln+60EXn8G4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783193773;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=mZ2EODVgf62VGVP5ya2QZaWBMdAl32ncRazPz43QMeY=;
	b=OfThKuAIy8dVQpdXV8irM/69I2Db6+ndXKzOGrykVXDTSAaoccKmLHUnEsOHI/XXFeRRkF
	urWjPJdEg29oludPPMFFNRkO00NAjPNDsURieaL2XpYGWn817Q4jScL7vHXLdyDOXzYAbp
	TLzCAUq7o08LZmTaNf9t3cKG0zTfRec=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=oMaEVi9x;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 9DF9220685;
	Sat, 04 Jul 2026 19:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783193771;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mZ2EODVgf62VGVP5ya2QZaWBMdAl32ncRazPz43QMeY=;
	b=oMaEVi9xRPr2t0tTndZ4chwpljQMWQiTnHeBNBm5LdwFoU9y+WoT9k9OxFrBQjCEIvLeRU
	5vYW679CfJhbaTBh+haE14csIvLQ0wTAlxDmcuC9MH0uhWJRrVA1WJs/RWgiEvEiA1rlPR
	I6fOQoEpHsNBX6pDThIt3xUNRaUlo+8=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 0/5] batctl: debug tables bugfixes
Date: Sat, 04 Jul 2026 21:35:58 +0200
Message-Id: <20260704-bugfixes-debug-v1-0-888ddc878206@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ9gSWoC/yWMQQ5AMBBFryKz1qSkSF1FLJQpY4F0VCTi7ga7/
 /Lz3gWMgZChTi4IeBDTughkaQL91C0jKhqEIdd5qSttlIujpxNZDShTWWNNYb11vipApC3gd4v
 TtD9zdDP2+1uB+34Ahp2C+3IAAAA=
X-Change-ID: 20260704-bugfixes-debug-949459f9bf75
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=986; i=sven@narfation.org;
 h=from:subject:message-id; bh=FVRzZ9JVB+oj1H+Fi14CEDsXjwoVun1VJbIVVr2sjZM=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmeCct0+adP2yf7rqH3oP6ftrDKLRLp58KyvxhGWqhdn
 GV+ZkdBRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAiTfaMDPc3/3R8PGPzVcvq
 A/NXPlm82aVZTfDfiUkLZ6+7KVedp3aJkWGfUbwW61rFF8HzVr+9oORwSlDgrOa5e6GP3acFfdi
 8U5sDAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: PEXHRR7AGB2QQOOW356PUQ63QQARFILL
X-Message-ID-Hash: PEXHRR7AGB2QQOOW356PUQ63QQARFILL
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PEXHRR7AGB2QQOOW356PUQ63QQARFILL/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9CFA070841A

I have now splitted the bugfixes for batctl in topic branches to make it a
little bit easier to review. Similar to the "random bugfixes 2026-06-21"
patchset, they are just various (mostly minor) problems which should be
tackled at some point.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (5):
      batctl: debug: avoid endless getopt loop for attached '-w' argument
      batctl: debug: use strict interval/timeout parsing
      batctl: debug: reject trailing garbage for intervals
      batctl: debug: reject non-finite/negative interval/timeout values
      batctl: debug: don't return negative error codes from handle_debug_table

 debug.c      | 29 ++++++++++++++++-------------
 man/batctl.8 | 18 +++++++++---------
 2 files changed, 25 insertions(+), 22 deletions(-)
---
base-commit: e93995999e80513db80eba200ea682b5b15556af
change-id: 20260704-bugfixes-debug-949459f9bf75

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

