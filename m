Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v4RRGKnIQ2o4hwoAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 15:46:17 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0204A6E502A
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 15:46:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=N0Qy26RZ;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D0F78841C4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 15:46:16 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782827176;
 b=eUSRE/kP79GNYi0NfnsZlb6R3c5CHC3o+kbcroubhOqB+mDtN9q2H4a5QsPEDvfAASTt1
 kL7InGk60CTT08qyAQQ65N6XQv5LSqREPUoM++wCvpustoHlTrsBgn/8b4wEIIc3CKCggjm
 joUS09a+IA3z87MKScEeGBiql53wv14=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782827176; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=RDZ3PHvn8kVTKOAlVFvdCUxJ/aGwbeZvfumNwXha63c=;
 b=tbL9Vqgt1r6ytzECBWIaB+wFAri53t1Qmn26LImRHVp+5uAeNabaMQ55LyPVSl9ms8Zwn
 Bv9uE2irbH4GcDtxqGxdrR9tX4GCKRpt36yj021T9mMHbsYEsSS8vi68UUgqcvnZSIuo7Mj
 DGiZnAeerl0l8dohfEjCvss2hmsOntI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C446E80C21
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2026 15:44:34 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782827074;
	b=mn/MhCrOfkLUJ4Ght3xISHBI+7BUu7Lr27kaP8kbxm5py/oiVvYjtXPHcibEJdTc2bzWyx
	yo0QmyM884j3e7GXE2xBsPL2mfoTcE7ReMRucLf09GwwuwlY3u+2kGJF+FHDPRbI02ZzCx
	0Z9GS34WA9jBjPK7cue+kIONHTOdTzY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782827074;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=RDZ3PHvn8kVTKOAlVFvdCUxJ/aGwbeZvfumNwXha63c=;
	b=agnnoUpAB1QspDfiVwwqSNUGTqQ4gVwQEQlwSrWh0eojyxZ5886hmDIfHMllhVJqXgdOxx
	V4j48is8p5L6az6ciwHyMa/ihMlEcWCvCrbdpRFszJ+Hf7MpTZUfjWdhb2eTTV5znezJGH
	Rxb7UVcO0uYQtBZ7NYBNx0coDGRUhYs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=N0Qy26RZ;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1782827073;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RDZ3PHvn8kVTKOAlVFvdCUxJ/aGwbeZvfumNwXha63c=;
	b=N0Qy26RZxx693ZUJkuy7Wm71ywlmlhnK2NXjhMCVgrcNRYLLup5LDJkJIPUT24H4LusegP
	SE1ntiSDgZdlVU1bTbjfaWqhL4xgJ2cz7Uclon6jUBzUm4vprVKqTpEEwWtXdg3kW/HRum
	ZuWoFZ1AZCshTGoiipIfzyyb4tToDHQjgPZSvNmGeNMxxvHZmqryG4spnGbfpak67hbwBy
	CXA3tvncZmuaPrlpMawcmxg/c5Klu9iI+ODV1uDnU0mMT7dPeJ3lA0wFC34FjnB9wOgf/M
	YsY6rvYjqh2pZaWe2luT+qOaAHj3mngn3cIRAwMneF5LG0HkrTmtoQtSkLdwjw==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	stable@vger.kernel.org,
	Sashiko <sashiko-bot@kernel.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 2/6] batman-adv: access unicast_ttvn skb->data only after
 skb realloc
Date: Tue, 30 Jun 2026 15:44:26 +0200
Message-ID: <20260630134430.85786-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260630134430.85786-1-sw@simonwunderlich.de>
References: <20260630134430.85786-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: KC4B7IFUR2WRIRMYVO2JXBCA4EU3R6GG
X-Message-ID-Hash: KC4B7IFUR2WRIRMYVO2JXBCA4EU3R6GG
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KC4B7IFUR2WRIRMYVO2JXBCA4EU3R6GG/>
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
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:stable@vger.kernel.org,m:sashiko-bot@kernel.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:from_mime,lists.open-mesh.org:from_smtp,narfation.org:email,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0204A6E502A

From: Sven Eckelmann <sven@narfation.org>

The pskb_may_pull() called by batadv_get_vid() could reallocate the buffer
behind the skb. Variables which were pointing to the old buffer need to be
reassigned to avoid an use-after-free.

This was done correctly for the ethernet header but missed for the
unicast_packet pointer.

Cc: stable@vger.kernel.org
Reported-by: Sashiko <sashiko-bot@kernel.org>
Fixes: c018ad3de61a ("batman-adv: add the VLAN ID attribute to the TT entry")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/routing.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index c05fcc9241add..2cc2307a41702 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -855,8 +855,8 @@ static bool batadv_check_unicast_ttvn(struct batadv_priv *bat_priv,
 	if (skb_cow(skb, sizeof(*unicast_packet)) < 0)
 		return false;
 
-	unicast_packet = (struct batadv_unicast_packet *)skb->data;
 	vid = batadv_get_vid(skb, hdr_len);
+	unicast_packet = (struct batadv_unicast_packet *)skb->data;
 	ethhdr = (struct ethhdr *)(skb->data + hdr_len);
 
 	/* do not reroute multicast frames in a unicast header */
-- 
2.47.3

