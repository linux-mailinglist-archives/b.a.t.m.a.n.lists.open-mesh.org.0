Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD541BA741
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:06:31 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6DA9781028;
	Mon, 27 Apr 2020 17:06:24 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1587999973;
 b=Cqk/kkStxp6jUv2cMrPdvpotIgqbkLnsNRvoO7yinZ+0VM42fk384KsYV0dpMhm5PYYNe
 dm5QPpUqf8CM6bD8QroWyNjQPYrOTOWq7c8CHcY6i+7kohsQSAgzUSGJ4QkN+gQR2I5n+5S
 QJ7Ed4afTAanJiJwS4UUw/98VgwaWfk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1587999973; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=BoPS+VvBEOmFNvGPUGe2VqfbYQwnNoXfIi/hKC7Iamw=;
 b=XRKiVZKMOsJ1Y5tMF94MmALFIZTEI/iRplnf56pO2PapVDZJM9RYntGoXW21o4p268qlY
 PDJWjKYzU9i/67OyBr7fcBe6fR9JeNCXV2zwaU/l0vsdUvHvHj85vsHmcEH+/QtG1RpAFrc
 Cii+WFbaOMYjB+iWuc3hzO+JGKexx3E=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E6EEC80C7D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:06:11 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id AE90062071;
	Mon, 27 Apr 2020 17:06:11 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 4/5] batman-adv: Utilize prandom_u32_max for random [0, max) values
Date: Mon, 27 Apr 2020 17:06:06 +0200
Message-Id: <20200427150607.31401-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427150607.31401-1-sw@simonwunderlich.de>
References: <20200427150607.31401-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587999971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mtSkTGMNQ+S4x50rYhfmm89/I8xz+SL6kzJFMaGRlsE=;
	b=2Qu+WJAqh6Mq70WXhXCFUSxLwUmt3Di1jbpXGUihlvWwd30XWP/9wi+vhHikdbz4BdOHfe
	4zJrMXw/9WMQ+CEx1oWuOve5T3fvvSFjmt+JlJwFzR6m4e+tkaLTGWXzj/anrLxw1lm+xI
	y5byq21bUDwOjOW/3RvSnF/HkP+JJZA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587999971; a=rsa-sha256;
	cv=none;
	b=H4WatxhIQbDpckaoVXr528z8nMdI205wH5VPOElX1jBNehZpKN4URppQPDN9QOHJMqFKYC
	Jc7ZPielLr9DU5iSquUkm3TcDFofJGDVnYnxrkTpQAKAquZCstsVSWuyqdIb1J8peSeHXD
	MSIygsyQDKmEwDMSRRm6IQR+JdsSNz0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SG3Z3CCOMZ4ZX2H4AHZIO4UTG55GZPSR
X-Message-ID-Hash: SG3Z3CCOMZ4ZX2H4AHZIO4UTG55GZPSR
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SG3Z3CCOMZ4ZX2H4AHZIO4UTG55GZPSR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The kernel provides a function to create random values from 0 - (max-1)
since commit f337db64af05 ("random32: add prandom_u32_max and convert ope=
n
coded users"). Simply use this function to replace code sections which us=
e
prandom_u32 and a handcrafted method to map it to the correct range.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_iv_ogm.c | 4 ++--
 net/batman-adv/bat_v_elp.c  | 2 +-
 net/batman-adv/bat_v_ogm.c  | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index a7c8dd7ae513..e87f19c82e8d 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -280,7 +280,7 @@ batadv_iv_ogm_emit_send_time(const struct batadv_priv=
 *bat_priv)
 	unsigned int msecs;
=20
 	msecs =3D atomic_read(&bat_priv->orig_interval) - BATADV_JITTER;
-	msecs +=3D prandom_u32() % (2 * BATADV_JITTER);
+	msecs +=3D prandom_u32_max(2 * BATADV_JITTER);
=20
 	return jiffies + msecs_to_jiffies(msecs);
 }
@@ -288,7 +288,7 @@ batadv_iv_ogm_emit_send_time(const struct batadv_priv=
 *bat_priv)
 /* when do we schedule a ogm packet to be sent */
 static unsigned long batadv_iv_ogm_fwd_send_time(void)
 {
-	return jiffies + msecs_to_jiffies(prandom_u32() % (BATADV_JITTER / 2));
+	return jiffies + msecs_to_jiffies(prandom_u32_max(BATADV_JITTER / 2));
 }
=20
 /* apply hop penalty for a normal link */
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 1e3172db7492..353e49c40e7f 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -49,7 +49,7 @@ static void batadv_v_elp_start_timer(struct batadv_hard=
_iface *hard_iface)
 	unsigned int msecs;
=20
 	msecs =3D atomic_read(&hard_iface->bat_v.elp_interval) - BATADV_JITTER;
-	msecs +=3D prandom_u32() % (2 * BATADV_JITTER);
+	msecs +=3D prandom_u32_max(2 * BATADV_JITTER);
=20
 	queue_delayed_work(batadv_event_workqueue, &hard_iface->bat_v.elp_wq,
 			   msecs_to_jiffies(msecs));
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 969466218999..0959d32be65c 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -88,7 +88,7 @@ static void batadv_v_ogm_start_queue_timer(struct batad=
v_hard_iface *hard_iface)
 	unsigned int msecs =3D BATADV_MAX_AGGREGATION_MS * 1000;
=20
 	/* msecs * [0.9, 1.1] */
-	msecs +=3D prandom_u32() % (msecs / 5) - (msecs / 10);
+	msecs +=3D prandom_u32_max(msecs / 5) - (msecs / 10);
 	queue_delayed_work(batadv_event_workqueue, &hard_iface->bat_v.aggr_wq,
 			   msecs_to_jiffies(msecs / 1000));
 }
@@ -107,7 +107,7 @@ static void batadv_v_ogm_start_timer(struct batadv_pr=
iv *bat_priv)
 		return;
=20
 	msecs =3D atomic_read(&bat_priv->orig_interval) - BATADV_JITTER;
-	msecs +=3D prandom_u32() % (2 * BATADV_JITTER);
+	msecs +=3D prandom_u32_max(2 * BATADV_JITTER);
 	queue_delayed_work(batadv_event_workqueue, &bat_priv->bat_v.ogm_wq,
 			   msecs_to_jiffies(msecs));
 }
--=20
2.20.1
