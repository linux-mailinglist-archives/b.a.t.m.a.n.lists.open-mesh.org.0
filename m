Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yIRgM4qtH2pwogAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:28:58 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A20634255
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:28:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=l0Vq+yQL;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5EA7C81B2B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:28:58 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780460938;
 b=mTz7pSLKTQIuaitwItvBu0XiyfXyJLJ/R5ZvBx09D2SQ1gD8O9/l08DnrqVLxKyH6jnBJ
 A0lToSD7ZkCyXxll7llS+m3FK8Y2DOazj4FoPWFoACyfcNulAxNOQuelizMoAJ06MibuNBI
 KxXCh4TVHlaetAOPtncVGkIksakAh+M=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780460938; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=aLAZGWSGHWOPPmpapwc9n1rnYWxM8djJvnz7r/kmO0Q=;
 b=Uf0atWeTVjwIkw2dig5WoFBSh+Eij5IB9Hfe41+oSPIGZ+2UiQn1yeq+81p08wiV9M4sL
 kdSvZ5vM2tYoK78wICSf4GvTq1aQ9IKYEBzRG2DSsewKf1fieFFWOH94OxDNq7lBsmIWcty
 oBupdUaWrfuvw9YNBDoZ5qg1MVeoNZg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 040F5845B0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 06:21:45 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780460505;
	b=rXASdApbQVXWVv2aZxcxsCzH3YADieXGYj5F9nCyQzsYTt6xvGCuIpTDy/QHAOReL9B7sP
	H3s6rSCHbITe/HCzmKYj8dOzp3YTdH7+AlTVVVnGwGqQa2I0HtmcHDQHoASAVql1CyVUPv
	EV0Vsqiy7O2H6JxNTCfQz3oU1IAsX8U=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=l0Vq+yQL;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780460505;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=aLAZGWSGHWOPPmpapwc9n1rnYWxM8djJvnz7r/kmO0Q=;
	b=YopbHJD88tI1em2pgIPq/eGDEJd3322LRx5tVc48kN8MhsphQzrVOuPyf1L2rf4I0w2v8S
	a/mErZegsf09ifvXqK8Kw/evVykwzzYQYVgn1aGD5+W/C1ZCkOGqjdRlLrAvCUk34AkSM2
	8bgmeIQx7jGIfZmTSO0nMw6aHwkpGzo=
Received: by dvalin.narfation.org (Postfix) id BA0861FEA4;
	Wed, 03 Jun 2026 04:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780460504;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aLAZGWSGHWOPPmpapwc9n1rnYWxM8djJvnz7r/kmO0Q=;
	b=l0Vq+yQLD1ao5ILgzDfCsxhdjRygAvmNtmumTnBuFIbOS2x5oejxAdFFEr7vOQRiZC2njJ
	3OamwrdwttKFqZ1XOI605AxqA5w9VDNgP2HN2NRz1rFRybpmGxK29Be2ZHLAituLUeA0/t
	l2DWTpyeae8R8Yghcw2sHqHStsZ58nA=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 03 Jun 2026 06:21:38 +0200
Subject: [PATCH batadv 1/3] batman-adv: correct batadv_wifi_* kernel-doc
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-wifi-cache-cleanup-v1-1-d5ed08075c96@narfation.org>
References: <20260603-wifi-cache-cleanup-v1-0-d5ed08075c96@narfation.org>
In-Reply-To: <20260603-wifi-cache-cleanup-v1-0-d5ed08075c96@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2544; i=sven@narfation.org;
 h=from:subject:message-id; bh=hyeE92+NF0eEObKCoFVRsTnYPXaEhaw7MjKd6ce7IHc=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnyqy/3LzL8tKIgOrvdRenLbpXlNy/emPFRZOtOHQemz
 Cv3fBhXdJSyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAmojyZkeElz7tVepmhX3es
 nhQWuT/93YdZMUxVPDrfNVac79sziXU9w1/hB013v1edifOUXq3x5bp+p61s4cV/h5fvW/6RSd1
 u5wRGAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: MXCBWXSGPW7C3QMIW4LUNCZ6P6ZOKHH3
X-Message-ID-Hash: MXCBWXSGPW7C3QMIW4LUNCZ6P6ZOKHH3
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MXCBWXSGPW7C3QMIW4LUNCZ6P6ZOKHH3/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81A20634255

The original kernel documentation for the batadv_wifi_* functions contained
copy+paste errors. Correct them to make it easier understandable.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 6 +++---
 net/batman-adv/hard-interface.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index bb3c31b5..213d4609 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -960,9 +960,9 @@ static int batadv_hard_if_event_meshif(unsigned long event,
 /**
  * batadv_wifi_net_device_insert() - save information about wifi net_device
  * @net_dev: net_device to add to batadv_wifi_net_devices
- * @wifi_flags: net_device which generated an event
+ * extracted batadv_hard_iface_wifi_flags of a net_device
  *
- * Return: 0 on result, negative value on error
+ * Return: 0 on success, negative value on error
  */
 static int
 batadv_wifi_net_device_insert(struct net_device *net_dev, u32 wifi_flags)
@@ -996,7 +996,7 @@ batadv_wifi_net_device_insert(struct net_device *net_dev, u32 wifi_flags)
 
 /**
  * batadv_wifi_net_device_remove() - remove information about wifi net_device
- * @device_state: wifi net_device state to remove from batadv_wifi_net_device_state
+ * @device_state: wifi net_device state to remove from batadv_wifi_net_devices
  */
 static void
 batadv_wifi_net_device_remove(struct batadv_wifi_net_device_state *device_state)
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interface.h
index 089e65c8..41ef2944 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -125,7 +125,7 @@ batadv_primary_if_get_selected(struct batadv_priv *bat_priv)
 /**
  * batadv_is_cfg80211() - check if the given hardif is a cfg80211
  *  wifi interface
- * @wifi_flags: extracted batadv_hard_iface_wifi_flagss of an net_device
+ * @wifi_flags: extracted batadv_hard_iface_wifi_flags of a net_device
  *
  * Return: true if the net device is a cfg80211 wireless device, false
  *  otherwise.
@@ -142,7 +142,7 @@ static inline bool batadv_is_cfg80211(u32 wifi_flags)
 
 /**
  * batadv_is_wifi() - check if flags belong to wifi interface
- * @wifi_flags: extracted batadv_hard_iface_wifi_flagss of an net_device
+ * @wifi_flags: extracted batadv_hard_iface_wifi_flags of a net_device
  *
  * Return: true if the net device is a 802.11 wireless device, false otherwise.
  */

-- 
2.47.3

