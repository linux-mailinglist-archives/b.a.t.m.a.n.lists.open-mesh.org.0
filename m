Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UpXSEF3ZH2o4rAAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:35:57 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA7D635447
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:35:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=aYdthSkC;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B9A20857C4
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:35:56 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780472156;
 b=YhCdBAH7skhTqbF5mbrhmYMFyl8mFaWvhWsi45JyPpQ1618mgYv0Cjgh2MSmk2OUkzlVc
 XpbY/0CXzkdjQwryQ0tG8R0B9+vOjEdXK4cT/wvQKxnYvBx0olTfQtqxNrvr88Mbt59xFgo
 SAzl3X9gczsto71KkG68OfDM+qKkea4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780472156; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=p2P6Y0aH38DpvKQoICwjpsy1mIH384HVW9QTFrseBuE=;
 b=piRv2T0MFD90aPHKjrlA3eXCoa/QP0N47dQUWA1nTRsIIUmeL+neoqtakmGSl4MPRnIhZ
 Usj7mTEeJHQRWCA/1hXC4xwm9/1VehON/e61CLOjg8M1kekwMpqaRYraNbBNGZY+19cCvr9
 AloywfB4qlR/CAgFFB9BNJZBUNS1Hc0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B358584692
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 09:25:38 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780471538;
	b=odcbXg8+qdKgbwQtmiBfdbmbTzLlUUYF6aCN3phsSu4niWA8/qXWWQsSy0Lnm+xZrLmXsa
	BOskeBg1eDj4tTmmy6Hyy20UrcNd/Dtd5F4TwYl5hPVSzruiZr2kPBAtpk3qDnqxa+IP4e
	5detfOsIaM9KUPOKlAWjKIOYTx4CbKE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=aYdthSkC;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780471538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=p2P6Y0aH38DpvKQoICwjpsy1mIH384HVW9QTFrseBuE=;
	b=l257eS2M83uLTO+NI07E0VUm9Zhbg3HCa3avYEkiNFto4leJayQHeuX85bP+bVIqy6jH5p
	TxBweCb62z7jnos22IA1OZ/mIDa4Ov9nnwSTa7FHhTwNZ4Hfqs3ZAoRej0/l41727bDmPk
	HdlGxPEMaGYXbpZsx+BxKTiQOCcxHGY=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780471538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=p2P6Y0aH38DpvKQoICwjpsy1mIH384HVW9QTFrseBuE=;
	b=aYdthSkCp8OU051eI2IthHUTCcqmhcBmIZJU0340OdG+cutQ4oVMDcXEiHlWZqfRejOneT
	Bqi+UkEd5hGr3cPSjDH/jabelUOYVSl6JbfKsXooJJ28esAh4ErUhqX0o/pUO4eXcl14T0
	pASwngCUyr3MP7selr8P6U9EHZSztuJuA8UlkFUYGOhbSd9eb+ScVqEhoyZ1zTZnkAPea7
	SPrYRK9LfJ7NCYI1io3WZC3s3Gn0jbBBMbImOSBRok4TqaUlHYBXYB7KbyALOrtgyNiyXc
	5xxkF+vqjxe2tgbuQWjgPUn3Gegz675EgxZ02Mf73pFjVcvTpYmXtKAeOfNgIA==
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
Subject: [PATCH net-next 13/15] batman-adv: prevent ELP transmission interval
 underflow
Date: Wed,  3 Jun 2026 09:25:24 +0200
Message-ID: <20260603072527.174487-14-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260603072527.174487-1-sw@simonwunderlich.de>
References: <20260603072527.174487-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: M6LAPYIUGM73RCUSLIAV2FNXTX7JQHVT
X-Message-ID-Hash: M6LAPYIUGM73RCUSLIAV2FNXTX7JQHVT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/M6LAPYIUGM73RCUSLIAV2FNXTX7JQHVT/>
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,simonwunderlich.de:mid,simonwunderlich.de:dkim,simonwunderlich.de:from_mime,simonwunderlich.de:email];
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
X-Rspamd-Queue-Id: DAA7D635447

From: Sven Eckelmann <sven@narfation.org>

batadv_v_elp_start_timer() enqeues a delayed work. The time when it starts
is randomly chosen between (elp_interval - BATADV_JITTER) and
(elp_interval + BATADV_JITTER). The configured elp_interval must therefore
be larger or equal to BATADV_JITTER to avoid that it causes an underflow of
the unsigned integer. If this would happen, then a "fast" ELP interval
would turn into a "day long" delay.

At the same time, it must not be larger than the maximum value the variable
can store.

Cc: stable@kernel.org
Fixes: a10800829040 ("batman-adv: Add elp_interval hardif genl configuration")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/netlink.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index e5463003a3bd6..1ba206e402733 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -919,9 +919,15 @@ static int batadv_netlink_set_hardif(struct sk_buff *skb,
 #ifdef CONFIG_BATMAN_ADV_BATMAN_V
 
 	if (info->attrs[BATADV_ATTR_ELP_INTERVAL]) {
+		u32 elp_interval;
+
 		attr = info->attrs[BATADV_ATTR_ELP_INTERVAL];
+		elp_interval = nla_get_u32(attr);
+
+		elp_interval = min_t(u32, elp_interval, INT_MAX);
+		elp_interval = max_t(u32, elp_interval, BATADV_JITTER);
 
-		WRITE_ONCE(hard_iface->bat_v.elp_interval, nla_get_u32(attr));
+		WRITE_ONCE(hard_iface->bat_v.elp_interval, elp_interval);
 	}
 
 	if (info->attrs[BATADV_ATTR_THROUGHPUT_OVERRIDE]) {
-- 
2.47.3

