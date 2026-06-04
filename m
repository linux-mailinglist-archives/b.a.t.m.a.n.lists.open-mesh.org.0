Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6lY5HqMCIWqT+QAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:44:19 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CFD63CDCA
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:44:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="0/G2y9QB";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1667380452
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:44:19 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780548259;
 b=0McHgJbzbCJNeGg//4nyKwyw6ouP/M9AKIuSWous1nCpoBy/2/TLJ/I54CdB94rMuXP3i
 /PKKGV66ety2XqfpWtPXe/MhxoBIqBGlZvr8jDa9n7GwXbS2LcSt+hJZXoVw+nzpPQBYsVk
 sbm+HiuJiJ1IhefZlFwG5tcqPrpdHIs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780548259; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=2VoV62la6NL79k9mI63vTNI2rBYp8PTxWvsb+h57/fM=;
 b=YpCr4kOpgPEGPFfw4Xy9DX5ACaNxfPHFy6enHpdvbrdn0i559td1sZE0oNAyW5nN4MT+h
 w02xTn2I1PZEZRkANecenxyHmZfzUWxikoGDrFLegkZ6Ng+PDGDdbzfB1yTOM6tiVKLR11B
 xtNvN0+XdmV6qyoFliww1CgGB7LhCTY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 1B01284718
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 04 Jun 2026 06:41:11 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780548072;
	b=DqnbCU260o7eG4sozTnpaxbMKqVzCGANfFDPzw86iI3S54Lpy/rCGv57ebC/i4EL9daeKw
	hCBZ4DgrGiukw3NdslWn16/TAs7bs4PrNhqMRXGq91t/IeWnKlrEQ/vLX54BLdQdWt6r7F
	SZR/fnaZFePrTngXaWw9C8QkIIpT/Gs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="0/G2y9QB";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780548072;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=2VoV62la6NL79k9mI63vTNI2rBYp8PTxWvsb+h57/fM=;
	b=U0hGf2XSzf4x4VHotU91Lp9XS9ZBxlrAdxyNBUkyTd2fT52/QtC9ZoOrdv7Xruy0RQ3QTc
	txePPQjAtl2Y05aM3f/zyy5z/pVrezi1jUuZM0ZHl150aLVCaN8QVfrJvyZ1blm12phL64
	WSMqDBmi6srcJRsHJtc/pHFGgYIm+5Q=
Received: by dvalin.narfation.org (Postfix) id D6A2E1FEF0;
	Thu, 04 Jun 2026 04:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780548070;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2VoV62la6NL79k9mI63vTNI2rBYp8PTxWvsb+h57/fM=;
	b=0/G2y9QBMsAA4GUUSbvUc7IvPFRlZ06mwlFci6yPw7EgfJD7RBIVTjASGg3h84rm9wzN+4
	0KqJE3pKfbXRAvW8nypvyp90RtIIVIN6QU5XknQ7zs1Hrr8tt8n2BwZemBK5rqSeFHfkOh
	xaccVIuukwjjgLiEW7H4hj+kzTJe7z8=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv v2 0/4] batman-adv: wifi flags cache cleanup
Date: Thu, 04 Jun 2026 06:40:49 +0200
Message-Id: <20260604-wifi-cache-cleanup-v2-0-c89d32c02471@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANEBIWoC/22OTQ6CMBCFr0JmbU2pUsWV9zAsSjvAGNOStlQN4
 e4WdOny/cz7ZoaAnjDApZjBY6JAzmYhdgXoQdkeGZmsQXAhueSCPakjppUekOkHKjuNTFYS10z
 XRwn5cPTY0WsbvUGrojIJmq8fpvaOOq6La3OgEJ1/b/RUbv0f6PAPlErGmanQ8DM/VbqWV6t8p
 2L+ee98D82yLB8GD4+V0gAAAA==
X-Change-ID: 20260602-wifi-cache-cleanup-656e0602c946
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1114; i=sven@narfation.org;
 h=from:subject:message-id; bh=tOa5nF4drp3EP99AXkoEvrkHaTQKt5CB3K4Ruk5+6rs=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmKjJe+748+GDFHK+M9Y9lEO8u/K6f/Op+7sonfs9/kX
 9wazkChjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBE6m4yMtyby8Xz1m39nPKX
 3xMl3T7/66jyKeMV7793ssfZuE3QdDvDP42r5VFqXwUDzppl1i+6rXPjqtBvo8tnb+1akHlt/nX
 RnVwA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZOEHEUK2FGOONQ3HHOV3JVKQYLCMLLLM
X-Message-ID-Hash: ZOEHEUK2FGOONQ3HHOV3JVKQYLCMLLLM
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZOEHEUK2FGOONQ3HHOV3JVKQYLCMLLLM/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email,msgid.link:url,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38CFD63CDCA

Unfortunately, the new wifi flags cache had some problems in the kernel
doc and non-optimal code in batadv_wifi_net_device_insert(). Let us just
fix this while the code is fresh :)

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v2:
- added "@wifi_flags:" prefix to batadv_wifi_net_device_insert kerneldoc
- added comment about the process before rhashtable_destroy is called
- Link to v1: https://patch.msgid.link/20260603-wifi-cache-cleanup-v1-0-d5ed08075c96@narfation.org

---
Sven Eckelmann (4):
      batman-adv: correct batadv_wifi_* kernel-doc
      batman-adv: document cleanup of batadv_wifi_net_devices entries
      batman-adv: drop duplicated wifi_flags assignments
      batman-adv: use GFP_KERNEL allocations for the wifi detection cache

 net/batman-adv/hard-interface.c | 15 +++++++++------
 net/batman-adv/hard-interface.h |  4 ++--
 2 files changed, 11 insertions(+), 8 deletions(-)
---
base-commit: 7fb5fc7265f6ce4962357c5383873fd2ef9d50d4
change-id: 20260602-wifi-cache-cleanup-656e0602c946

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

