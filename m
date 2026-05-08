Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNJqC/kF/mnumAAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 08 May 2026 17:49:13 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3EF4F8F9F
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 08 May 2026 17:49:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8A3A985A94
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 08 May 2026 17:49:12 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778255352;
 b=T5L2OQCBAxmFsVk1d696vk54ew67jnS8+LUqiAjmKxTO3q8piD5nJgqmWWBKtPyd8MbRw
 gTK3zlIFCy5QGC+Iw/sohrfOKlz/xJ+FBJepFp1wyKM09VFiYIgDv8Ld7yeJsKAhL1/KqTw
 s/LJ27sKuI2yZVgzkx2yAGz2c/Ql+44=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778255352; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=t2WVnKodF7OA43BNZg/AbdNpLnEVxLugYisgg7uXA3A=;
 b=XROPttm1gUbpoj4F1RzKMVGcQrJX7Tswbpe8Mcmf+fvn314X25nA91jktfOfNJpLgDhpb
 4pHDYNZVdga8M788wt74/2Mqt8RTgzSp/hmrwHRp5rXk+XxjWOobRKBpVS7MMjtpx9ryHaW
 UndyRXRPBh2lgAhmh5r6NUiClc/Yz50=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5EBC485A9E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 08 May 2026 17:43:35 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778255015;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=t2WVnKodF7OA43BNZg/AbdNpLnEVxLugYisgg7uXA3A=;
	b=SSEWz/MS2QmDpBAEJpzrXOSb7hzHO6lVR4JO1fZBwb6pgnyXx72oD5ilYV1g64GrjkLAgp
	obbamhiLeBuULyEh5Ov97KCzY1ShgpbuaFx9u2qZq/xaSDLvxfKR5W8pp8n0DYfF/W5lMS
	jB3h0UHML4fbiGYVKVTUSVPOji38f/E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=HekLV+e3;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778255015;
	b=Tjvv2oDW7KqHAM7DWl4k8uXdkSF83kySB5Ef/t9FWkDyHg8glXUAncOIAQHkxVeync+D5J
	RWlKObdxi8w61VTvLGOkCKI82E/LzqPZblUEgG9weFUNd6lCFE+FqeW8kCVJtoDPWuBCB/
	gQbUCi8rhomv5GCzC5r36ldeEXKtxwk=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1778255014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t2WVnKodF7OA43BNZg/AbdNpLnEVxLugYisgg7uXA3A=;
	b=HekLV+e3twos4FvXcDO/PZmGKBhyVJ5u+/IWhNtiWCQeyYwvIYa6Bya9gdOVId7tQ3ZFMW
	HibHj3QhsCoq2OpA19T7ED93XQuJbrTiiYIFaRv4TA3SaIOiFKKEsUqY53yrkzKuRSkCAL
	CAxgIg+tCpM+31PzcQ8LfvIAr0VqnjUl8xGxmfwubFMKc1rGE1Gwx7RPqAPK2E/ShpUYx+
	pjIYgJ/ZadC+RfWwEtPsJkyvZOuQQ2wpBgMoVpy7B25Y8X03fYbSYHaF4rG6Vd5qT5i2I3
	7RzMIv6AncAu1KKdUy2/TeIk7LqVECu71CRaa2un37U+oviBx/K8Eq3UQpVzvw==
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
Subject: [PATCH net 8/8] batman-adv: bla: put backbone reference on failed
 claim hash insert
Date: Fri,  8 May 2026 17:43:14 +0200
Message-ID: <20260508154314.12817-9-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260508154314.12817-1-sw@simonwunderlich.de>
References: <20260508154314.12817-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 3DIBTN3K7NNN6VHB3KSFZAY2QWXOSIMJ
X-Message-ID-Hash: 3DIBTN3K7NNN6VHB3KSFZAY2QWXOSIMJ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3DIBTN3K7NNN6VHB3KSFZAY2QWXOSIMJ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: CC3EF4F8F9F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:dkim,narfation.org:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Action: no action

From: Sven Eckelmann <sven@narfation.org>

When batadv_bla_add_claim() fails to insert a new claim into the hash, it
leaked a reference to the backbone_gw for which the claim was intended.
Call batadv_backbone_gw_put() on the error path to release the reference
and avoid leaking the backbone_gw object.

Cc: stable@kernel.org
Fixes: 3db0decf1185 ("batman-adv: Fix non-atomic bla_claim::backbone_gw access")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 879ab043d57a9..cec11f1251d66 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -723,6 +723,7 @@ static void batadv_bla_add_claim(struct batadv_priv *bat_priv,
 
 		if (unlikely(hash_added != 0)) {
 			/* only local changes happened. */
+			batadv_backbone_gw_put(backbone_gw);
 			kfree(claim);
 			return;
 		}
-- 
2.47.3

