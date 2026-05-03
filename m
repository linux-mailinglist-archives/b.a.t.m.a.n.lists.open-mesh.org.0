Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SB7PBvE+92k2dwIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 14:26:25 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B84D04B5BB1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 14:26:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7E09585B70
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 14:26:24 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777811184;
 b=0bMZ290THppd1kBIqbxHd1ejE4Mm32NV8c1umNLI48m9UjCulj04/3FgM/1IvmtIFLj32
 XoP2V+a1+UWyLcpgfObdoIQyUonCN06qFV3wEKu/Dt4uBtfuSIqesDC9jhRLCXDffy8QBPW
 T/i1truTcK/UXpGtb23XRJp43jagukU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777811184; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=samGb3z6dCDDaDRS0M76gCcHmbiT9j+PlgK7fTp49Lc=;
 b=jO6CYftzzCVk/W8VuGrG1xR1rVAA6lWOck1JQCdZajhhAQ7TBb7tn0l7VTScZ/Ggr4Udz
 2aIrMNS4keBE4MgdUJAK+oA73ppQG//iFF52ihuxP/gF4RLutenpqh42BMaPeY7P9/deo3+
 vBbrqahS2sDlD2Q3AWbv/MEPPW7L6q0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 987F385341
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 03 May 2026 14:23:17 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777810997;
	b=p32OGjSX8Fklzn0g2PhPREHpNkKApSAxYaTrapkDelYBZZokS3H15SsL1h2YauZCrjqHbk
	HSmK8tswhndFLvaZy/vJG+s1+Oq8KTUJtI5LoIOZoxA3a07rLn2I2I6jsj+B/EQO+ylQlA
	usBYkK/eTUqsy9wOZZvuE8s4KF3Tdg0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="ztr/6Xkz";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777810997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=samGb3z6dCDDaDRS0M76gCcHmbiT9j+PlgK7fTp49Lc=;
	b=lwzzpRnwfX0V4lj01uccQshA66VG60yznNQ7vtAZ4L6Ww7MqoWJLLuc1U9kf6nSIfYIchl
	FcAKlNLAePNuK32egKxQeBvxiXaqH2IIsdtKqgeeey0EX1x1K6meAoSs14M24xlVxOp6Qp
	6tA/mirBSpXGC2puV0vrIELRdjJ9ZSc=
Received: by dvalin.narfation.org (Postfix) id 2785A20D39;
	Sun, 03 May 2026 12:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777810997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=samGb3z6dCDDaDRS0M76gCcHmbiT9j+PlgK7fTp49Lc=;
	b=ztr/6XkzVLBVj5yBpWQQWjYaRI64iCxnXJoVRbjTkBnBkbotlbxp99tDmugyDY/u1dXqyK
	slCNrT7Q9ER1fAFxGwNij3gFxwDEZ4NEjXURUS5LYoEKZgQ0M6bWVAHh3DytYRgNhTQKZs
	0bwqOHJREWdW5P8LVUFzcCWvZ5Em/14=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 03 May 2026 14:22:35 +0200
Subject: [PATCH batadv 2/8] batman-adv: bla: prevent use-after-free when
 deleting claims
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260503-fixes-followup-v1-2-4313278918d3@narfation.org>
References: <20260503-fixes-followup-v1-0-4313278918d3@narfation.org>
In-Reply-To: <20260503-fixes-followup-v1-0-4313278918d3@narfation.org>
To: Marek Lindner <marek.lindner@mailbox.org>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <antonio@mandelbit.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ao Zhou <n05ec@lzu.edu.cn>,
 Haoze Xie <royenheart@gmail.com>, Jiexun Wang <wangjiexun2025@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Luxing Yin <tr0jan@lzu.edu.cn>,
 Ren Wei <n05ec@lzu.edu.cn>, Ruide Cao <caoruide123@gmail.com>,
 Xin Liu <bird@lzu.edu.cn>, Yifan Wu <yifanwucs@gmail.com>,
 Yuan Tan <yuantan098@gmail.com>, Sven Eckelmann <sven@narfation.org>,
 stable@kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1274; i=sven@narfation.org;
 h=from:subject:message-id; bh=hj/nqN5j0xZ710VI2jMwCjeM18garF0jjKOPz1zQWLQ=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJnf7WSLPHq/Tat9eD2/W3aaM+/0N6WuLBKFlwo64p4/v
 bzkUua1jlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBELIUZ/tm9sOr5sXmq1r7b
 hpclrEtOTliwdHaMQu/7gif810qWOKszMqw2TPuzWb7woVrR4o1X11yU9D35MadDyWyf+J1OT02
 tV/wA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-size;
 news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: FM5WKNJA72NOSW2RUAAKWUORLDL66FHZ
X-Message-ID-Hash: FM5WKNJA72NOSW2RUAAKWUORLDL66FHZ
X-Mailman-Approved-At: Sun, 03 May 2026 14:24:15 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FM5WKNJA72NOSW2RUAAKWUORLDL66FHZ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: B84D04B5BB1
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
	FREEMAIL_CC(0.00)[lists.open-mesh.org,vger.kernel.org,lzu.edu.cn,gmail.com,narfation.org,kernel.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[23];
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:dkim,narfation.org:mid,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]

When batadv_bla_del_backbone_claims() removes all claims for a backbone, it
does this by dropping the link entry in the hash list. This list entry
itself was one of the references which need to be dropped at the same time
via batadv_claim_put().

But the batadv_claim_put() must not be done before the last access to the
claim object in this function. Otherwise the claim might be freed already
by the batadv_claim_release() function before the list entry was dropped.

Cc: stable@kernel.org
Fixes: 23721387c409 ("batman-adv: add basic bridge loop avoidance code")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bridge_loop_avoidance.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 51fe028b9088..8b77dd2ecfa4 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -318,8 +318,8 @@ batadv_bla_del_backbone_claims(struct batadv_bla_backbone_gw *backbone_gw)
 			if (claim->backbone_gw != backbone_gw)
 				continue;
 
-			batadv_claim_put(claim);
 			hlist_del_rcu(&claim->hash_entry);
+			batadv_claim_put(claim);
 		}
 		spin_unlock_bh(list_lock);
 	}

-- 
2.47.3

