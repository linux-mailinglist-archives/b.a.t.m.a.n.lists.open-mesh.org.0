Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKNINtzvBmofpAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 12:05:16 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EADF54CFDB
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 12:05:16 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6619C85D92
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 12:05:16 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778839516;
 b=DhISUidNrTDlsHbdAiv80r9wTu5HAm9jyxmuPTdUjpkhCQAb1oToYp1QspDth3eTbjnv6
 DK0vAh7KbjrAOKitV0LEP0y2cwQSFN+Ngb5PdQayNtlFHPVSZuLnln3CZ1VgaGSCf+YTVWr
 X4SU6OAg1H4NtyaB3xPwZEoh9rGeHtg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778839516; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JeFU2yocd90391ZPALZwK9q60q3TKgjMlk+bp4HtH7o=;
 b=BhpvgsS/mRC20hKH9uPdjFqd3r3+uI4AkesT2XnSGlHtnHBsuY7NZ76FHkctIKzSbhrjV
 URdfGFvlYphMNy3tYmBb8mxHiAJ9IHtLIcUhMS0D6Vz8zcxJpUQDek/dFagu22Rfrg2N6Tz
 ydf0bX2WGnIph/b6Fv3qIjp1yGDKl+w=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4841285337
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 May 2026 11:55:57 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778838957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JeFU2yocd90391ZPALZwK9q60q3TKgjMlk+bp4HtH7o=;
	b=uTuFZp2DXWygRyVNWIiHGIxG1iz0X/TXKKruQwaLEMNkJHYkzJ+1PcWwWjU/rvRhnjmpfu
	VWo0chszclOq7ZFAeRiKMOhsv7XXRQeUpRk+o/jGt/qkrSzxcttgYwHanS8v1xjt3R0GK3
	KA9t18G7WRFtjF1FD3TCK3Zm4UAgnDQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=e7kNwOJF;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778838957;
	b=zoCwZVSKUZG+FEyjeZgrDJ3CFW4aWqlp9FpBNjxV0C5R7hRdoz/lH+wxDxFBV23K68bako
	AW/dO9ozEkXHdkMwJPkxItiUYK+hsDvgLzXVhaici9a9+DNuyHp1PqL3BnIjYR0rmvXsTR
	uZz4JSa7T7uq9YfuSFCQotnsLCGMEwg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1778838956;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JeFU2yocd90391ZPALZwK9q60q3TKgjMlk+bp4HtH7o=;
	b=e7kNwOJFS6mSE1d3pyb3IM9FkmKlhNQ1XjGK1d1aJtc4F3DIWFQUd13UfQYned1DoroL5j
	RkjHEb+OlxkleU1xe7J1TDRB4W1cZiiJs1n8knzN70FdPrGbIE1gGc5S2TPk29Ogw4J6oI
	mgBNYFeCcyEHdtPPBjqBsSZlmOsvuHBAKhl0/UAEYVfPPSQ32UJdMgKfn3zumkjKtCpq49
	MW9ggHk0qjaz4RLJMyaFrltQA1iE1NI5O7W/pVTSRMAxfrHHbYE/VemUM6/jKnj4K6Mgk+
	hM+1pjulYKqMBKAYTU4Rzr/Q8jAuvsFP9EdkgAk3amLjUcT/I2RO5gmj0CUvzw==
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
Subject: [PATCH net 11/14] batman-adv: dat: handle forward allocation error
Date: Fri, 15 May 2026 11:55:36 +0200
Message-ID: <20260515095540.325586-12-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260515095540.325586-1-sw@simonwunderlich.de>
References: <20260515095540.325586-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: H6PHFD4Y6TRQ3A2OCL42ZJRKBMV523M2
X-Message-ID-Hash: H6PHFD4Y6TRQ3A2OCL42ZJRKBMV523M2
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/H6PHFD4Y6TRQ3A2OCL42ZJRKBMV523M2/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 8EADF54CFDB
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

batadv_dat_forward_data() calls pskb_copy_for_clone() to duplicate an skb
for each DHT candidate, but does not check the return value before passing
it to batadv_send_skb_prepare_unicast_4addr(). That function dereferences
the skb unconditionally, so a failed allocation triggers a NULL pointer
dereference.

Skip forwarding to the current DHT candidate on allocation failure.

Cc: stable@kernel.org
Fixes: 785ea1144182 ("batman-adv: Distributed ARP Table - create DHT helper functions")
Reported-by: Yuan Tan <yuantan098@gmail.com>
Reported-by: Yifan Wu <yifanwucs@gmail.com>
Reported-by: Juefei Pu <tomapufckgml@gmail.com>
Reported-by: Xin Liu <bird@lzu.edu.cn>
Reviewed-by: Yuan Tan <yuantan098@gmail.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/distributed-arp-table.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index 3efc4cf50b469..0a8bd95e2f99e 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -696,6 +696,9 @@ static bool batadv_dat_forward_data(struct batadv_priv *bat_priv,
 			goto free_orig;
 
 		tmp_skb = pskb_copy_for_clone(skb, GFP_ATOMIC);
+		if (!tmp_skb)
+			goto free_neigh;
+
 		if (!batadv_send_skb_prepare_unicast_4addr(bat_priv, tmp_skb,
 							   cand[i].orig_node,
 							   packet_subtype)) {
-- 
2.47.3

