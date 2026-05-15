Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UK/NDzbwBmofpAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 12:06:46 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF5854D046
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 12:06:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A8181854C7
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 12:06:45 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778839605;
 b=1+Xr2uwPSrzUInK4YekAsltP1lgrjx2exoGHeIlIP29ZF5PLFo61PQhSGFr4Ku/rtQ/bM
 8U+smsTN8OC31SLN8smvY2V880UEbYU82vqmthdyphpVcCrw7XqI1z5wkrt+8qb+ey/P3hW
 OUbm6wf99mrd/8OqI0Dh++oCaWPguEU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778839605; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=FhfNjkuMbZpr2ack+ilUXPWHeaOvldZUmgcoY4j+Ous=;
 b=sy+zj5OizwX3VSBXJl9ahRga7ADCtFgoQx5B7wuiVNEUCvXOx8jGtX50RqH4+ESTAdwgv
 2Qcvd+CWS0qr/Hi9VIOe61iOen2qwypEloiYF4M83Kzd2Ska6vvwq0MZbjwWpWjXR+MbnYI
 +ikMpDbjzhrZJxRyk6BkIY3mXYWiquo=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B772285423
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 May 2026 11:55:58 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778838958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=FhfNjkuMbZpr2ack+ilUXPWHeaOvldZUmgcoY4j+Ous=;
	b=AeHLmNFAKSnX+zX9guv+aKd83+0zQiYQ34aFYH1HeoLW8Kq2cia/d0g1ZuO64rrGtBmqeE
	EhYUc5tYE4K8YhJi4yBo4EF7cNIjiaeWNd2GGDQY9Ys8Q/ebXptnGgEyi2llWdkAyjZ5uL
	TzXkDk/swwObtp2D4c9o7/jx0sTSg/4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=KzdBiR9d;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778838958;
	b=I3T3MqFAQp8ekMdg0t1ymE11030cSrOQRUDsgtF0b+6f/jh1JT9tWDhVZfrLeI1+o96EvP
	RvhHwunm/98hMNDuh/HU4ahMNdH1IZz+GaOOQEblx7ow87uN5ka0FrKXg5dKsq26QiZ6ei
	KdMZc5mEdGXDFpt4SmfEjhawo2acDgc=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1778838957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FhfNjkuMbZpr2ack+ilUXPWHeaOvldZUmgcoY4j+Ous=;
	b=KzdBiR9dK3q3KNFqxvVPUJJ9mvASjFeyFmJxgXi3Pl7WwzY7hkSYJqy5DDsAJjXwig7dcE
	luK2JPVw63+x43YGA+5SziXHLvYtg69FX67mkOH+U06saSO969F3OcFHkPN8s4BalosU+W
	kQlG/yuiBxkMHU39dyax4Qkdh/OCMlJGbZW6mEOAAtZ8u0deSbx4CZGr2eADYstc9cd2C/
	rBAuEhV8MW7kx+RnOrlIpc9yOME11s6h2vqlICRDo3qkoiW7xv+aVVYY4UOvFx2DP7FH2x
	LSdSbWhbG+D0gu/e5wEOSlASAe2WdulE8ZVtgK5Fey4Zv7DvK+VTw9B87ePk+w==
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
	Yuan Tan <yuantan098@gmail.com>,
	Yifan Wu <yifanwucs@gmail.com>,
	Juefei Pu <tomapufckgml@gmail.com>,
	Xin Liu <bird@lzu.edu.cn>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 13/14] batman-adv: frag: disallow unicast fragment in
 fragment
Date: Fri, 15 May 2026 11:55:38 +0200
Message-ID: <20260515095540.325586-14-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260515095540.325586-1-sw@simonwunderlich.de>
References: <20260515095540.325586-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: N7T4ERDFKPERBH2ZQ5UV35O4Q5H7HP3O
X-Message-ID-Hash: N7T4ERDFKPERBH2ZQ5UV35O4Q5H7HP3O
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N7T4ERDFKPERBH2ZQ5UV35O4Q5H7HP3O/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: DAF5854D046
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
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lists.open-mesh.org,narfation.org,gmail.com,lzu.edu.cn,simonwunderlich.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Action: no action

From: Sven Eckelmann <sven@narfation.org>

batadv_frag_skb_buffer() is called by batadv_batman_skb_recv() when a
BATADV_UNICAST_FRAG packet is received. Once all fragments are collected
and the packet is reassembled, batadv_recv_frag_packet() calls
batadv_batman_skb_recv() again to process the defragmented payload.

A malicious sender can craft a BATADV_UNICAST_FRAG packet whose reassembled
payload is itself a BATADV_UNICAST_FRAG packet (matryoshka-style nesting).
Each nesting level recurses through batadv_batman_skb_recv() without bound,
growing the kernel stack until it is exhausted.

Since refragmentation or fragments in fragments are not actually allowed,
discard all packets which are still BATADV_UNICAST_FRAG packets after the
defragmentation process.

Cc: stable@kernel.org
Fixes: 610bfc6bc99b ("batman-adv: Receive fragmented packets and merge")
Reported-by: Yuan Tan <yuantan098@gmail.com>
Reported-by: Yifan Wu <yifanwucs@gmail.com>
Reported-by: Juefei Pu <tomapufckgml@gmail.com>
Reported-by: Xin Liu <bird@lzu.edu.cn>
Reviewed-by: Yuan Tan <yuantan098@gmail.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/fragmentation.c | 35 ++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentation.c
index 1152c2ce0c1ea..4a594aa2ebf66 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -304,6 +304,31 @@ batadv_frag_merge_packets(struct hlist_head *chain)
 	return skb_out;
 }
 
+/**
+ * batadv_skb_is_frag() - check if newly merged skb is gain a unicast packet
+ * @skb: newly merged skb
+ *
+ * Return: if newly skb is of type BATADV_UNICAST_FRAG
+ */
+static bool batadv_skb_is_frag(struct sk_buff *skb)
+{
+	struct batadv_ogm_packet *batadv_ogm_packet;
+
+	/* packet should hold at least type and version */
+	if (unlikely(!pskb_may_pull(skb, 2)))
+		return false;
+
+	batadv_ogm_packet = (struct batadv_ogm_packet *)skb->data;
+
+	if (batadv_ogm_packet->version != BATADV_COMPAT_VERSION)
+		return false;
+
+	if (batadv_ogm_packet->packet_type != BATADV_UNICAST_FRAG)
+		return false;
+
+	return true;
+}
+
 /**
  * batadv_frag_skb_buffer() - buffer fragment for later merge
  * @skb: skb to buffer
@@ -337,6 +362,16 @@ bool batadv_frag_skb_buffer(struct sk_buff **skb,
 	if (!skb_out)
 		goto out_err;
 
+	/* fragment in fragment is not allowed. otherwise it is possible
+	 * to exhaust the stack when receiving a matryoshka-style
+	 * "fragments in a fragment packet"
+	 */
+	if (batadv_skb_is_frag(skb_out)) {
+		kfree_skb(skb_out);
+		skb_out = NULL;
+		goto out_err;
+	}
+
 out:
 	ret = true;
 out_err:
-- 
2.47.3

