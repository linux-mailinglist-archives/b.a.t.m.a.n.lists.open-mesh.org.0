Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBtELKSj+2mvegMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 22:25:08 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2954E4E025D
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 22:25:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DDAED844B6
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 22:25:07 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778099107;
 b=Pj3kXEUrNlP4xb92n1pgSrRFqXlC7skcjFXDcSbueSPVlLlmH3SsK9+v6A5v65ieyKG/c
 tAkCY/6A9TeEs1eCcJJQeNOmVNHVhgyiSABOTPlmc2ZnbiGQfviwtc0myh1qhj6tIkmsvSd
 mLgk53SM+EaLkY6oziZh9+plcW/nG5s=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778099107; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=fViRYA3vqCdIdBLTqLAoJ1EfUReki3G6wMAy+WH+MZw=;
 b=I4PhTWF7qKy2zyeuaopKXfJ75M136BmHl2PN34Nrsgzi6nbl/8LXxcIXSKiA/kS5O6YCS
 0H2kFvOT5qRnUuR++C16QeQNlOuYWDEWkUNYcaDHnTb65RWXGb60HbtIIYwEQd7PQkwfmub
 ZdVu+EJihrRRO9JkvwB28mEzvxFMtg4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id A18AE844D9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 06 May 2026 22:22:14 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778098934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=fViRYA3vqCdIdBLTqLAoJ1EfUReki3G6wMAy+WH+MZw=;
	b=i3IIB/lco+RILSnLeLD66zWN9+2OG58QOTA54j04/+z9F3uk6R9LahLNULu+G0ntLbFY8F
	ZkE5LoVqbaEE9EDgGmjFJUCaFqQ8Bxs4gAjXzpBAjRK3CHnT8IRQdgi7gh1+k2R8CjPzyS
	HQNmAhqgX0w/FgTe7dWp50qwgYmvutM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=bApNPEAg;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778098934;
	b=1Q+dJK8jpPvMGE6oDfcOca/VIvoIjtpuIiaMyGWxyMNRKJdkI7NLh9MtDIUTpWF9SFbYvW
	0VX5NPV9Do0U/JrO1l8m6U/560Tyqald+CX0os0aFF5YDuxRxWJ7C2IGrh2XwQjTpE7IKN
	S45U57dhaX7TqTbE7lpnhfpC2lS6txE=
Received: by dvalin.narfation.org (Postfix) id 608CE2170A;
	Wed, 06 May 2026 20:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778098934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fViRYA3vqCdIdBLTqLAoJ1EfUReki3G6wMAy+WH+MZw=;
	b=bApNPEAgTsqAPtMPShw4xGWshJkvlezYqnBWcWbZTt1b1a9+PkOzSNM4UvgJ6YQBbsSoaT
	VmrEzciq3Nw0X7ARlJaMRzNNl8I6hD2wUkP2UjFVACSY+LFLAu/MmmqJExDe0tJfK1HDha
	jCy55EBNJi9q0qT73l0hQ6WyuxqMVeA=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 06 May 2026 22:20:51 +0200
Subject: [PATCH batadv v2 04/11] batman-adv: bla: only purge non-released
 claims
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-fixes-followup-v2-4-ce32a2d8d4da@narfation.org>
References: <20260506-fixes-followup-v2-0-ce32a2d8d4da@narfation.org>
In-Reply-To: <20260506-fixes-followup-v2-0-ce32a2d8d4da@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Ao Zhou <n05ec@lzu.edu.cn>, Haoze Xie <royenheart@gmail.com>,
 Jiexun Wang <wangjiexun2025@gmail.com>, Juefei Pu <tomapufckgml@gmail.com>,
 Luxing Yin <tr0jan@lzu.edu.cn>, Ren Wei <n05ec@lzu.edu.cn>,
 Ruide Cao <caoruide123@gmail.com>, Xin Liu <bird@lzu.edu.cn>,
 Yifan Wu <yifanwucs@gmail.com>, Yuan Tan <yuantan098@gmail.com>,
 Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1868; i=sven@narfation.org;
 h=from:subject:message-id; bh=JWvaEfidmsriEfirxepF9Fk1Xa0aZCjroyap9WoBSuM=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJm/Fx0QWxDxluuR+exFlb8mzqux8wid0a9RIJ0/5bTsp
 5i7+9wvdJSyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAmUpnEyHBw9YSNGU2eoW65
 03iOBq7KK+fZfKU/laORPUnz6yrpx9wM/5N+KsTtTSqt+J9/uyjzyeMurmUz3kR8XX7699XTXw1
 stVkA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 3QVKXT7ZOGWR6PYZP5GUGO72MZIPDGI2
X-Message-ID-Hash: 3QVKXT7ZOGWR6PYZP5GUGO72MZIPDGI2
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3QVKXT7ZOGWR6PYZP5GUGO72MZIPDGI2/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 2954E4E025D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lzu.edu.cn,gmail.com,narfation.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:email,narfation.org:dkim,narfation.org:mid]

When batadv_bla_purge_claims() goes through the list of claims, it is only
traversing the hash list with an rcu_read_lock(). Due to a potential
parallel batadv_claim_put(), it can happen that it encounters a claim which
was actually in the process of being released+freed by
batadv_claim_release(). In this case, backbone_gw is set to NULL before the
delayed RCU kfree is started. Calling batadv_bla_claim_get_backbone_gw() is
then no longer allowed because it would cause a NULL-ptr derefence.

To avoid this, only claims with a valid reference counter must be purged.
All others are already taken care of.

Fixes: a9ce0dc43e2c ("batman-adv: add basic bridge loop avoidance code")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bridge_loop_avoidance.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 8b77dd2e..879ab043 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -1288,6 +1288,13 @@ static void batadv_bla_purge_claims(struct batadv_priv *bat_priv,
 
 		rcu_read_lock();
 		hlist_for_each_entry_rcu(claim, head, hash_entry) {
+			/* only purge claims not currently in the process of being released.
+			 * Such claims could otherwise have a NULL-ptr backbone_gw set because
+			 * they already went through batadv_claim_release()
+			 */
+			if (!kref_get_unless_zero(&claim->refcount))
+				continue;
+
 			backbone_gw = batadv_bla_claim_get_backbone_gw(claim);
 			if (now)
 				goto purge_now;
@@ -1313,6 +1320,7 @@ static void batadv_bla_purge_claims(struct batadv_priv *bat_priv,
 					      claim->addr, claim->vid);
 skip:
 			batadv_backbone_gw_put(backbone_gw);
+			batadv_claim_put(claim);
 		}
 		rcu_read_unlock();
 	}

-- 
2.47.3

