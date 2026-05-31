Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAIVJqbxG2oWHgkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 May 2026 10:30:30 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 407CC6150C9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 May 2026 10:30:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1728880BE2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 May 2026 10:30:30 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780216230;
 b=Qamt9w+n3ntGtJpPt6pRSJIxNqbBFXHv/MxIGiM+5b/fsEQOEbUadIgkLFesCfCTOtNV9
 5mVEPzJN+ZEydAT7cgSHLI8jmvudeHeR5VqIbUhcY5GFJuRDNbulfCQY9pLdTHaSVQhjhZE
 Jwq2fG05vPKB4fRbvk/qTsDVqxyeQn8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780216230; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9NP1Wtbh6WWJlAadv/8GX2qlLinuAxlul46x+KM9jOw=;
 b=ZkbMF01XC3iEoMbAUDC/38KFhY/UY4d9gQrDPwTX6lDJ3K5qYLCBQPm0g4FaATy5ZAAz6
 f1wV7ovqei/l3rcLEOkmO9cBEU6T9t8i94yTwrw6whKgGR1ZtpQXPlwbMA0wbtFMjqzT/Td
 sRHZgj678ciBceKXIAIZVHV+BHhpvO4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id C6E0A81461
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 31 May 2026 10:29:20 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780216165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=9NP1Wtbh6WWJlAadv/8GX2qlLinuAxlul46x+KM9jOw=;
	b=08hSP3TLMoHTGF/CfcUidXSlELz6CfhDio9m2Ci/d9bhhH+jxkscZmic6P2n9V/1isCLMM
	g42aFDxh5K1yM55X9DoK4EusuWUXT9NvINJVBPZPdD4Nlt/XrEQ5y0CaoX2Ravw+kIXnrA
	k7ZHuD3dzR9KizrNL5eHQquUtLPg2hw=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780216165;
	b=s0AoWECnM1hrP+va6mb95d8EoFpxUYf3BzV9xTEEOv/2r3as5IGmzjODKgOeU+zZ/e3gk+
	uKrepK9NhcXP7wZnOTzw1URzpVMKjOQo8Ku0wE3HDLBvmteXA5Tb2XregtEnqR2lXacis8
	lfIahlG6vJyO96+ZHqQi+wxz4G1Q9vM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="tRk/WNnK";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 580C520152;
	Sun, 31 May 2026 08:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780216159;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9NP1Wtbh6WWJlAadv/8GX2qlLinuAxlul46x+KM9jOw=;
	b=tRk/WNnKDfQ30GCAH5WtEOvvzK/82VFrK3y1CuLx40UOSCxwXs7QJt3p4H3W9VcphhrEdB
	9K+GU5qmwVG9PnW2PvWLzY0Nnn8nga9Gk6fGAG0fAyNI2RGfp9nLX0ohVtftl9cSBgCsVi
	CY55KcalLXMqvbTHlvlFnva/sn66syk=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 31 May 2026 10:28:51 +0200
Subject: [PATCH batadv v4 1/6] batman-adv: tp_meter: keep unacked list in
 ascending ordered
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260531-tp-reason-missing-v4-1-5d2556e00128@narfation.org>
References: <20260531-tp-reason-missing-v4-0-5d2556e00128@narfation.org>
In-Reply-To: <20260531-tp-reason-missing-v4-0-5d2556e00128@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1312; i=sven@narfation.org;
 h=from:subject:message-id; bh=FNBDbdS1MXMPx1UoVJ1QWcN9UpWNhV3MQtn6eQTKg8w=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnSH8MPdn/bcqG5vu/3i5vfzSfoSx9qK1jlF3uM25nz3
 a8mvYXHOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATYXJmZJi7/IhJ2O3upWs1
 rltLTU06tjpb/NfCz4/EVz3fqvEwc2IJwx/uvS//3E07K2lSoCTxjD9ud8e6vMCpegnN19V/XRP
 fsZ4VAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 3KHMW4ZEEZ2RJLW4AJV5DMPP4KZBNXTZ
X-Message-ID-Hash: 3KHMW4ZEEZ2RJLW4AJV5DMPP4KZBNXTZ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3KHMW4ZEEZ2RJLW4AJV5DMPP4KZBNXTZ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Queue-Id: 407CC6150C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When batadv_tp_handle_out_of_order inserts a new entry in the list of
unacked (out of order) packets, it searches from the entry with the newest
sequence number towards oldest sequence number. If an entry is found which
is older than the newly entry, the new entry has to be added after the
found one to keep the ascending order.

But for this operation list_add_tail() was used. But this function adds an
entry _before_ another one. As result, the list would contain a lot of
swapped sequence numbers. The consumer of this list
(batadv_tp_ack_unordered()) would then fail to correctly ack packets.

Fixes: 98d7a766b645 ("batman-adv: throughput meter implementation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 0fc4ca78..e8941f75 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -1325,7 +1325,7 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_vars *tp_vars,
 		 * one is attached _after_ it. In this way the list is kept in
 		 * ascending order
 		 */
-		list_add_tail(&new->list, &un->list);
+		list_add(&new->list, &un->list);
 		added = true;
 		break;
 	}

-- 
2.47.3

