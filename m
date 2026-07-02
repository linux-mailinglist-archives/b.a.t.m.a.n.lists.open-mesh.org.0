Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6yPYAMfFRmo2dQsAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 22:10:47 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E0F6FCAF7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 22:10:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="IXpgbyj/";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 613D584306
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 22:10:46 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783023046;
 b=0Y760zBH6JPSrw4HUht0xcWSE3tRR2wk9hoIuNOr4hER3TyDa5IT+nH5BOycPmYTFTrvQ
 t3rCq4UQl5HGo5cFVKTn+MGIo6aoznLHAAEXvj2h4DPl8/7kPDfg8Y2W9oD4ZLUxoCdBKMV
 OY5snnVyBdQzjDtx20gvXPR6Xjjjh50=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783023046; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wGwCl5iVRSfEkkNxNnuYkz695IUlD3CjLzDZqDuU/9c=;
 b=QBfzpp5wfltIi8UQU+Wx+/MD3kz98Tz6DsQMJDMA/GQovuNtOgVFmek1tryK//lR0XejG
 XbtC9KhGzHJcf1iaBK/0s/Ls3gkree4jld4GQ6PNGaw0CA5k/AnGE+G8XTnNy9/GgEzeoL7
 dRLLv9SAmw57u/pDb0U7HoVh5G+Q+wc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 31C67810BB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 02 Jul 2026 22:10:18 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783023029;
	b=r98C31aw1ZSAX5kfWOcdYN0yYUBwyCaLp+eGVR0lzQT0t475cHzHV8d3EAc0YPBFh1XPMg
	eb3FMVOuaYfWy3cD8a3OOUp9nkAZIKL7D83TFGYzP9r07gyI77k2ghZoh6xRzNLxK1ovUR
	EcmAMqFR32iSdnFYdlyZBctwsYnCdK4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783023029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=wGwCl5iVRSfEkkNxNnuYkz695IUlD3CjLzDZqDuU/9c=;
	b=rizh2GddPRPs6fWQp2RpXzGvCe6pDpC5M7fE57qETHAriLtLsbsL+NPGhEf+E/A96u3G5W
	kJE8CFrlZpjm6rbxAwob/2O8gF5/5QmBEEUF228EctKwYtK3WWygwlc9SQf9mDIdi5+Z0u
	NoeQF/cMh5Q5swKXPOXT0KwGhwfJEj8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="IXpgbyj/";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 0FEB320378;
	Thu, 02 Jul 2026 20:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783023017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=wGwCl5iVRSfEkkNxNnuYkz695IUlD3CjLzDZqDuU/9c=;
	b=IXpgbyj/38dbskkRj56e7TOiWKvjdoTUwPBmm6kBDCVk6CehSTshJdFwIzlk/mijHanZ/U
	DhSPl3AB8qV8/7Yh+59HTmmlXkNFycoiMOLK44nJpf78uKkgT046/699D6js502Qd78L/m
	+aDtrU2E2+oyAlOjpqvWRzO6L8oBTqk=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 02 Jul 2026 22:10:02 +0200
Subject: [PATCH batadv] batman-adv: dat: drop non-4addr backwards
 compatibility
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-dat-drop-non-4addr-v1-1-7a7d35ff38f3@narfation.org>
X-B4-Tracking: v=1; b=H4sIAJnFRmoC/yWMQQqDMBAAvyJ77kISpIZ+pfSwuqtuD4lsUimIf
 2/aHmdg5oAiplLg1h1gsmvRnBr4SwfTSmkRVG4MwYWrG1xApopsecOUE/bEbDhT9FGclz4O0ML
 NZNb3b3qHkSrxDo+/L6/xKVP9HuE8P/37B3l+AAAA
X-Change-ID: 20260702-dat-drop-non-4addr-fa818e01e487
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1611; i=sven@narfation.org;
 h=from:subject:message-id; bh=Tiqi2o0rp/9hEU3cDz8IFstpyOp8aPdKwxFT4gNcYWs=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFluRxdemhXz69gX3qyPp5lcfzc/maTk916dYdfdludba
 06F+d9J6ihlYRDjYpAVU2TZcyX//Gb2t/Kfp308CjOHlQlkCAMXpwBMZNcJRoanrxpWczoGVXg8
 9qnz/eXM+2/Ckj1ndmYY37z49LurZuxGRoabyZMnLqzLWbip/p6in3l95He914WLmKO9dh0492b
 55XxuAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: E5TZODW44V7IP67Z7RECAICCPCQU5GGM
X-Message-ID-Hash: E5TZODW44V7IP67Z7RECAICCPCQU5GGM
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/E5TZODW44V7IP67Z7RECAICCPCQU5GGM/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 83E0F6FCAF7

The 4addr unicast packet support is mandatory in compat version 15. No
older compat version is supported and the kernel doesn't need to keep code
to talk to nodes which cannot be in the same mesh.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/distributed-arp-table.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index 25004ce3..a5c9b6d0 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -1372,17 +1372,9 @@ bool batadv_dat_snoop_incoming_arp_request(struct batadv_priv *bat_priv,
 	if (!skb_new)
 		goto out;
 
-	/* To preserve backwards compatibility, the node has choose the outgoing
-	 * format based on the incoming request packet type. The assumption is
-	 * that a node not using the 4addr packet format doesn't support it.
-	 */
-	if (hdr_size == sizeof(struct batadv_unicast_4addr_packet))
-		err = batadv_send_skb_via_tt_4addr(bat_priv, skb_new,
-						   BATADV_P_DAT_CACHE_REPLY,
-						   NULL, vid);
-	else
-		err = batadv_send_skb_via_tt(bat_priv, skb_new, NULL, vid);
-
+	err = batadv_send_skb_via_tt_4addr(bat_priv, skb_new,
+					   BATADV_P_DAT_CACHE_REPLY,
+					   NULL, vid);
 	if (err != NET_XMIT_DROP) {
 		batadv_inc_counter(bat_priv, BATADV_CNT_DAT_CACHED_REPLY_TX);
 		ret = true;

---
base-commit: 22b12d005035f37f898e5bf80480719fe1ef4fba
change-id: 20260702-dat-drop-non-4addr-fa818e01e487

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

