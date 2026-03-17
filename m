Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0O2KL+Z6uWnQGQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 17 Mar 2026 17:01:42 +0100
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 974C72AD787
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 17 Mar 2026 17:01:42 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6E4D385A43
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 17 Mar 2026 17:01:42 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1773763302;
 b=ZLCQUc5AGYcH0ggsUKJhGqUjT9EUgv3DKtMW9lk56Mdaa+fbdixhhtSDe9tsMQkUmKwQa
 iwwRdUVe2vcouVrzPF9JFzZSxhmgWWKsdzO1RQVZc/9fkJR09ijZOIYFy0jq9JhEuaby/r6
 mMD/Lk+k9zILGugpt7Ud4oO2OSoP7iw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1773763302; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9xx7mjI2MofOxW6iU5Fob/w9bvKDeUmPtcm6wJ652Ow=;
 b=G/1FESBhaWxIIOHcnE2aWbFpJtxMuiZQvA4jf+RxlPqo4+y8oLPH0aoXReDkblFJXf8uz
 tO7wRmaB36FsjFJcF4Vy5N1qJ3ZU/gzu/sKvXf8SEoFCBbG0d0VtQoNQzKuE4qx/ao25kvt
 UrU/JgOXJt09XNbyaN+Kad4/o1r33Dc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 18117849FB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 17 Mar 2026 17:00:07 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1773763217;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=9xx7mjI2MofOxW6iU5Fob/w9bvKDeUmPtcm6wJ652Ow=;
	b=Myx65LSkYM8U+wzUGR4Jff1A2YDVA6cwdlUNdGTNspf0gkOzm0w+dUH+AjIwt7X8YJYB2K
	uBGsyif/M9abbmHagJzQFjIuvWUAP8dqlZamStp1AEz2r6geuKHnTQp4oHiahup6dUcbW2
	T2AfAXS3R3BqI0srU2itbLgIT+0gsKc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=gcYa9d+H;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1773763217;
	b=ya6POuHtE7CCXwNaUGOpO1f1Yt+WSvnF9il9XI7vGr8Aa/WX+/V4nnpo/C6i3yi8pE97lJ
	mXN5yEhBxmKhlNFzO7WRxlwgaoHtiEfe6Y2pQe8j4xKzg6OTKn0Jrvp9nPncczktzcIvLk
	syd2FPqOmnLZ1BF97XGZVmeymzPe+wo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1773763204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9xx7mjI2MofOxW6iU5Fob/w9bvKDeUmPtcm6wJ652Ow=;
	b=gcYa9d+HZBCXiDYZTLSwbEcTys8KHFnDaShmRPpIlHNKm+lWIyTeCxvvGE2O2Oxl5o60QB
	9BwxhlW2xJwZiAcLsdUl4tMCuxMZ3Q4LS1LOGp3W32GCi2lA1dgBe6llcRhKUs9csM8Fib
	7hVRmtNLKEruKiG2tcv2rdXH1c0KQ+1NNIZQ0ZYqMkiLHAvgr1+GBLrmBGmosy6kmmmvRe
	Fk+jr5nD8X+i1yvkq/HmmxalTD7/FWpNoBn0K1H2GkRjCYoU1TGWcwFVoNoLvS9cDJ6GHx
	wcDijEtQKYYnGbGIms9+f1ZNtnwhbzq10gahJsQmp2Humcb7sShsIaDPuf8DsA==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Yang Yang <n05ec@lzu.edu.cn>,
	stable@vger.kernel.org,
	Yifan Wu <yifanwucs@gmail.com>,
	Juefei Pu <tomapufckgml@gmail.com>,
	Yuan Tan <tanyuan98@outlook.com>,
	Xin Liu <bird@lzu.edu.cn>,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 1/1] batman-adv: avoid OGM aggregation when skb tailroom
 is insufficient
Date: Tue, 17 Mar 2026 17:00:02 +0100
Message-ID: <20260317160002.1869478-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260317160002.1869478-1-sw@simonwunderlich.de>
References: <20260317160002.1869478-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: MEE7WPKSJMLN3J2GGCZ5LMACKSGSUBGA
X-Message-ID-Hash: MEE7WPKSJMLN3J2GGCZ5LMACKSGSUBGA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MEE7WPKSJMLN3J2GGCZ5LMACKSGSUBGA/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.open-mesh.org,lzu.edu.cn,gmail.com,outlook.com,narfation.org,simonwunderlich.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,lzu.edu.cn:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:email,simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: 974C72AD787
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Yang Yang <n05ec@lzu.edu.cn>

When OGM aggregation state is toggled at runtime, an existing forwarded
packet may have been allocated with only packet_len bytes, while a later
packet can still be selected for aggregation. Appending in this case can
hit skb_put overflow conditions.

Reject aggregation when the target skb tailroom cannot accommodate the new
packet. The caller then falls back to creating a new forward packet
instead of appending.

Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
Cc: stable@vger.kernel.org
Reported-by: Yifan Wu <yifanwucs@gmail.com>
Reported-by: Juefei Pu <tomapufckgml@gmail.com>
Signed-off-by: Yuan Tan <tanyuan98@outlook.com>
Signed-off-by: Xin Liu <bird@lzu.edu.cn>
Signed-off-by: Ao Zhou <n05ec@lzu.edu.cn>
Signed-off-by: Yang Yang <n05ec@lzu.edu.cn>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_iv_ogm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index b75c2228e69a6..f28e9cbf8ad5f 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -473,6 +473,9 @@ batadv_iv_ogm_can_aggregate(const struct batadv_ogm_packet *new_bat_ogm_packet,
 	if (aggregated_bytes > max_bytes)
 		return false;
 
+	if (skb_tailroom(forw_packet->skb) < packet_len)
+		return false;
+
 	if (packet_num >= BATADV_MAX_AGGREGATION_PACKETS)
 		return false;
 
-- 
2.47.3

