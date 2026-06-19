Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id anZqHaLqNGomkAYAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 19 Jun 2026 09:07:14 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FE66A4396
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 19 Jun 2026 09:07:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=FIOOpDlp;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BFFD7853D3
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 19 Jun 2026 09:07:13 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781852833;
 b=Rf3dw9H5UTaCemjrLSmgBrxoMDJcozOnTbtKadAX7JQYIXCyidgSNGwY+tQsiQ5l8hzlL
 h6NrX6LAP2uXnDIw6ePxYvBvmkdb82j8aWTvafxdpF+mvG4w68X42yZ5fWXxuS7oxKQvXfY
 ilMfONdFOmPJrwplaz7xn9S6OZtDqyI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781852833; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=dTo7HP3hlGc7rZ83ftkOmb/zYr3PlmAHJyPALL5z5tY=;
 b=ULRXo+wuF2nZfessxEwbXA2yS+eoYQd5ikp3E7GA8Nz7iltjRXULy79EOMIRBUxnwgpYy
 f26K5CrPKkcUDJh627D0LJouqyRtaSJupGpXgJnbwrMIjjw6Zkrk+l+OkrhPWevUTDVfFD/
 vs2DDcO4bn2Xn/BU5UBgOJdYuVUYwYI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 571F083258
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 19 Jun 2026 09:00:49 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781852454;
	b=fAOUR0KwJzuGNwAuEgnwOeM8yq/ZqV9VhgH9DeF85J9lTOQVvY9U/eBPjIPEFr/jfcq+h/
	0FskJzMHyNA2MfA7W8AP0W9zNTmCpUe2zyJ5mQqO61RWv4Oj93pBPi08daWiglYuOZSIj1
	pQ9RqkWEIe+209FAwujEDY2mL5Qiozs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781852454;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=dTo7HP3hlGc7rZ83ftkOmb/zYr3PlmAHJyPALL5z5tY=;
	b=KKYmwuTKUDwB0D6GCcX3JYefsi1WaU092TxHdMtna3yOESNStJWZlGDhiAXsVJhzUzMn9j
	qzsd5J+pZF8qSsAawQSbF016449OLUvR4YRJdWw5X/8U6ZaqcZfxH8vcIhDZWi0ucJ2mef
	aHxuRvirzSmBKCpHvAnGKKL4uriPds8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=FIOOpDlp;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1781852448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dTo7HP3hlGc7rZ83ftkOmb/zYr3PlmAHJyPALL5z5tY=;
	b=FIOOpDlpkqTk6XP9L4L0d+M7DDT5UljVxuHwOZ10ok9fHkjWWDgh5N+zMHOi+PixRfmZxy
	X67YceFqMZawsFr5k+9vixqOW/8Ak8Otq0piMS2+JL3zaawW3az8NR3Z71RRB4m9PoerPH
	IX5GF2RyS5KW63Kp9mI6SfKBhmU8mNilIZjWeCpBb9Dd2Vk3RIMAcluPdHfkc4Jl52kCpn
	/63f42HXR8d6iZBFpsy6E8ISUwVk+2ddlnirl18j3EsTvn3yzH1FfHt0koeEryhUGGSnGO
	OIuQOCVMRQ9hgAGgFVHLliA/a0R2aCVb5pK9X/PpChM+sMSoKgJQKQWRd7ZfMA==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	stable@kernel.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 02/15] batman-adv: ensure bcast is writable before
 modifying TTL
Date: Fri, 19 Jun 2026 09:00:32 +0200
Message-ID: <20260619070045.438101-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260619070045.438101-1-sw@simonwunderlich.de>
References: <20260619070045.438101-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: ASCN7W4LPK44AFFTPRQJ73UVPWXLMP5J
X-Message-ID-Hash: ASCN7W4LPK44AFFTPRQJ73UVPWXLMP5J
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ASCN7W4LPK44AFFTPRQJ73UVPWXLMP5J/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:stable@kernel.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:from_mime];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E2FE66A4396

From: Sven Eckelmann <sven@narfation.org>

Before batman-adv is allowed to write to an skb, it either has to have its
own copy of the skb or used skb_cow() to ensure that the data part is not
shared.

The old implementation used a shared queue and created copies before
attempting to write to it. But with the new implementation, the broadcast
packet is already modified when it gets received. Potentially writing to
shared buffers in this process.

Adding a skb_cow() right before this operation avoids this and can at the
same time prepare it for the modifications required to rebroadcast the
packet.

Cc: stable@kernel.org
Fixes: 3f69339068f9 ("batman-adv: bcast: queue per interface, if needed")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/routing.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index cd4368b846add..7b4acd1ad991a 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -1191,6 +1191,12 @@ int batadv_recv_bcast_packet(struct sk_buff *skb,
 	if (batadv_is_my_mac(bat_priv, bcast_packet->orig))
 		goto free_skb;
 
+	/* create a copy of the skb, if needed, to modify it. */
+	if (skb_cow(skb, ETH_HLEN) < 0)
+		goto free_skb;
+
+	bcast_packet = (struct batadv_bcast_packet *)skb->data;
+
 	if (bcast_packet->ttl-- < 2)
 		goto free_skb;
 
-- 
2.47.3

