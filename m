Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eTHRHDF5ImofYAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:22:25 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8FE645E85
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:22:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=AVdrMZoK;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DDFCF83D9C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:22:24 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780644144;
 b=MCXtr6id+037J80m4HmcIX/hY6GPxnsacKH2Q3ZxH76oK88SI8n4y4iX/qyNZ/W74TxBa
 gaJyrs/fjg3zzB3/6dqjV7qqgwZKoHRXR5JBPgQUCFDNFm7as7mOWvxrCmeYYunh5c3++ii
 j1PhbGQ956JlHPeHFKk8mJmA187ygBI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780644144; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=RsEJ65hYXPcCWEyEzR+SRyfNmgEFmJ3/S+o4eeaUnSA=;
 b=Q6UjRnIRHXclhHqYknKTcgTsRXcvv9DjERqo8GRCD/dHgH4PaHZkRVD7Asb9/sSsSdMiz
 mu1hzcv9UH7BBxD2/0boIYkfvvpNFPwkq2mi0CxB0vohEJ2B6ulCZVXu2ZTLKkkCGApG3Yp
 aobEEUFlXG9lJ+CrhB1Xv3HQoyW0htA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 414BB81060
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 05 Jun 2026 09:20:16 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780644016;
	b=32YeAUdRoOxmgLOWXztLgjyUAuo/mWmBj5O3dZ82ixtcUFQJJAt9YHH8ZUV4mdzykmSM3B
	5plNC8dTuXWrp1HAniESUhlPDQWQ8LrxSnfABfvXVoyoAe232XkR6MmAhCSSLffM63x9A5
	/u4xEy076JmdAn+OFdSIcGC1MFRzufc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=AVdrMZoK;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780644016;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=RsEJ65hYXPcCWEyEzR+SRyfNmgEFmJ3/S+o4eeaUnSA=;
	b=Km9Gcank0UykwE2zvcZs/LTnFx5dXcRH5qAubwhxu89uRdoM2aM5PNYhRQu0KpO15Jkag5
	d2CX0lGK8VZbHnXR3HNdxb+F6GB6PyZ+vrJ/pd9swRTV8Vpy9Z5curkXH7oJPx7k1LYz/n
	OcHZ4MPYm9hrmBmaN2DxoqTPv3VGu7E=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780644015;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RsEJ65hYXPcCWEyEzR+SRyfNmgEFmJ3/S+o4eeaUnSA=;
	b=AVdrMZoK84TZnMtoxSL8nFPkwZS8Cka89dVvERMvAhfdwSRzEJvLB9a3ZJ9RmVszn9/lRi
	p6be7JHwAoebauFj7M8qpttbPrVjcZU5TjmrA8Wuqor0toEtuUsLw7XwwcxKsom0xWbrh/
	VaCaBgC3m+EdtZ2eKKnjb29T1k6PTndAhtbkkWhiWA03TLmbpgBtoOcq12eTl8eO6Urqzc
	NiylzQlkqcSbBsyy/sWwWhg0cn8+mKfUCgCupTVJmG61MYZ2PdvSfsNZsqJ04ZkN+m1j5K
	/uhGfRQLMuEtl5nOgmMWsMbKoyEjou5DuflzIuL+f8aVIpxoNl7JcK+qXCS03g==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 06/11] batman-adv: correct batadv_wifi_* kernel-doc
Date: Fri,  5 Jun 2026 09:20:00 +0200
Message-ID: <20260605072005.490368-7-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260605072005.490368-1-sw@simonwunderlich.de>
References: <20260605072005.490368-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 4DN74WKE37NQROH4JZUHNT7RBGKUZN56
X-Message-ID-Hash: 4DN74WKE37NQROH4JZUHNT7RBGKUZN56
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4DN74WKE37NQROH4JZUHNT7RBGKUZN56/>
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
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:email,simonwunderlich.de:mid,simonwunderlich.de:dkim,simonwunderlich.de:from_mime,simonwunderlich.de:email];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D8FE645E85

From: Sven Eckelmann <sven@narfation.org>

The original kernel documentation for the batadv_wifi_* functions contained
copy+paste errors. Correct them to make it easier understandable.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 6 +++---
 net/batman-adv/hard-interface.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index e2c85bd8dbb53..60cee2c2f2f41 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -971,9 +971,9 @@ static int batadv_hard_if_event_meshif(unsigned long event,
 /**
  * batadv_wifi_net_device_insert() - save information about wifi net_device
  * @net_dev: net_device to add to batadv_wifi_net_devices
- * @wifi_flags: net_device which generated an event
+ * @wifi_flags: extracted batadv_hard_iface_wifi_flags of a net_device
  *
- * Return: 0 on result, negative value on error
+ * Return: 0 on success, negative value on error
  */
 static int
 batadv_wifi_net_device_insert(struct net_device *net_dev, u32 wifi_flags)
@@ -1006,7 +1006,7 @@ batadv_wifi_net_device_insert(struct net_device *net_dev, u32 wifi_flags)
 
 /**
  * batadv_wifi_net_device_remove() - remove information about wifi net_device
- * @device_state: wifi net_device state to remove from batadv_wifi_net_device_state
+ * @device_state: wifi net_device state to remove from batadv_wifi_net_devices
  */
 static void
 batadv_wifi_net_device_remove(struct batadv_wifi_net_device_state *device_state)
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interface.h
index 822e7e378c4d1..af31696c39780 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -126,7 +126,7 @@ batadv_primary_if_get_selected(struct batadv_priv *bat_priv)
 /**
  * batadv_is_cfg80211() - check if the given hardif is a cfg80211
  *  wifi interface
- * @wifi_flags: extracted batadv_hard_iface_wifi_flagss of an net_device
+ * @wifi_flags: extracted batadv_hard_iface_wifi_flags of a net_device
  *
  * Return: true if the net device is a cfg80211 wireless device, false
  *  otherwise.
@@ -143,7 +143,7 @@ static inline bool batadv_is_cfg80211(u32 wifi_flags)
 
 /**
  * batadv_is_wifi() - check if flags belong to wifi interface
- * @wifi_flags: extracted batadv_hard_iface_wifi_flagss of an net_device
+ * @wifi_flags: extracted batadv_hard_iface_wifi_flags of a net_device
  *
  * Return: true if the net device is a 802.11 wireless device, false otherwise.
  */
-- 
2.47.3

