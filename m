Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNjzOV/uBmrOowIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 11:58:55 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9780554CE40
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 11:58:55 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C8C0F85624
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 11:58:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778839134;
 b=wT7pJP2t1hWggf5UcLgjlklXfIvZpBfqUfw/c15lyXtQgU6vOwgtEy+MEDyD+NfpKVxHN
 iBqB8lAvhS/eIz87GStRMvbfqSM67FRCeybq+LyzqrMMw8dq65nW1YvmXQg3tg87EWlX4h6
 kVs5Wvr5D3B5eFJJ3olga8CQvLRB80o=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778839134; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=oT/G9+Zz9YlSVEJ/eFHA+Bgj5aclyRHbfRtU5iwzmRQ=;
 b=n44WOHJhTBxV9iLT+BQ3STz1L7sHJrZGEeMgY2CLFursOSEuFF19FWf5hHbYHzsYcYExd
 X3lCImxqN8JpQKnt8S7bMnOv7+2Mad6wbiavXiMy63xkpt0J0ooclHnLKOdXoNsSO1fodEJ
 OWMzV5yRH/U7wEbFj4eyycS6qabSb60=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BD4B285337
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 May 2026 11:55:52 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778838952;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=oT/G9+Zz9YlSVEJ/eFHA+Bgj5aclyRHbfRtU5iwzmRQ=;
	b=F+kCO1d6W2/xZnSI+ALJXMF5JWBIaQCwpbPKRUENmkosa3u+WdUZT4WNIEg0pAU7oPmS1e
	d4qooRtLKJgAIhIZLM+5h1wz8X+M8Sp9iwwHMtUsxRHC3einKT6j925iYrUqckxdfnkXUH
	f9ck8wq57RjodaXf2ZuZ6xqSEux1YQI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=0N2lOlnx;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778838952;
	b=Q/hOWYgqnCFTnZ9xn8LBaQfRFHosOZJFFDoQy2jA64kGLT+r6P1YEQsclX+1o8gbBwU56R
	xB1dguslDIWwAPYk5XmTQmVzRbcI8QzcdM+iWXWn0x7V8OPBBzaWf+qy5kPBxKiQOffN0V
	9e3OObp/swTRbLMoSoBkMWeoSuDOiMQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1778838951;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oT/G9+Zz9YlSVEJ/eFHA+Bgj5aclyRHbfRtU5iwzmRQ=;
	b=0N2lOlnxd5O0KTE7O9focD8AsoIu80ISUws5w2c72OgQUPTEU9OY0h2DT9jbXD45KHga+a
	U7Hj1kzRW80/SWsqwCyCuFzZc9yyT69h1zkMY9lpItD0ClK9e/Y4DqUU3liUVnSGpGp2zg
	Clo5pkOcppsPUMt4PHb/LpFjdurqJ+lItO2MB5TgOuG9OyVGcchj9DsPBmznV5kXw15ZfP
	y8HTFwKsyaJsnSsEPy4wYvUY6fyx9vg/LMxSVkgnrI8jEm0zmfBzUd1I016kbrnGoGBhUS
	FKlxKCxpKrHsa7WjknsC32DjD9Dgkbyk7bBJuzYyjBvJCeBP+BeCNfyt5paFCg==
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
Subject: [PATCH net 05/14] batman-adv: tt: fix negative last_changeset_len
Date: Fri, 15 May 2026 11:55:30 +0200
Message-ID: <20260515095540.325586-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260515095540.325586-1-sw@simonwunderlich.de>
References: <20260515095540.325586-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: PCQ7W6VWL3BCQQVLCVAXOT6RQA3ALYLL
X-Message-ID-Hash: PCQ7W6VWL3BCQQVLCVAXOT6RQA3ALYLL
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PCQ7W6VWL3BCQQVLCVAXOT6RQA3ALYLL/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 9780554CE40
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[simonwunderlich.de:+]
X-Rspamd-Action: no action

From: Sven Eckelmann <sven@narfation.org>

batadv_piv_tt::last_changeset_len len was declared as s16, but the field is
never intended to hold a negative value. When a value greater than 32767 is
assigned, it wraps to a negative signed integer.

In batadv_send_my_tt_response(), last_changeset_len is temporarily widened
to s32. The incorrectly negative s16 value propagates into the s32, causing
batadv_tt_prepare_tvlv_local_data() to allocate a full sized buffer but
populates only a small portion of it with the collected changeset. All
remaining bits are kept uninitialized.

Using an u16 avoids this type confusion and ensures that no (negative) sign
extension is performed in batadv_send_my_tt_response().

Cc: stable@kernel.org
Fixes: a73105b8d4c7 ("batman-adv: improved client announcement mechanism")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 888f337a194bf..739439e2b2350 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -993,7 +993,7 @@ struct batadv_priv_tt {
 	 * @last_changeset_len: length of last tt changeset this host has
 	 *  generated
 	 */
-	s16 last_changeset_len;
+	u16 last_changeset_len;
 
 	/**
 	 * @last_changeset_lock: lock protecting last_changeset &
-- 
2.47.3

