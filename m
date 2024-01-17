Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B13D82FFC4
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 17 Jan 2024 06:23:01 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6D5DA83EDC
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 17 Jan 2024 06:23:01 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1705468981;
 b=tsvz7f4JzWWSlWupTMQJSO4o/K4ARZAb5azf1PNfRfY3HwRf4P7wm9nRErhkP6ZHg6xBj
 l2h8GqV8+wEMmzqRETFIO63S618F0iITq2vLh0moE78J5NFZgyXle+EZsZhQuB0urCP65rB
 W+sFuBYLPIIHfiD0XfW2xmi0yQMp7K8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1705468981; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=bt6nCDQEYtubH19ySIEGkgYg6OFfwiamTbCvG0zzCu8=;
 b=mAgCbmk8psage1dIWNGTqdteyMj2IB5YqEtrrLwq0sl5aF5li2CCoH7vJEep26HPx56pO
 t7bv/IuTfEQbD2PiViGNX7lmzQH+l4ZAsdt5Wfq5p4JGfYa2ppi4kA5AUqLLreAqx5oNP+D
 +rXi7RSbs3JnkWVr8Yu2+DHrUPB+Uto=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B885280C67
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 17 Jan 2024 06:22:24 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1705468945; a=rsa-sha256;
	cv=none;
	b=t1d+kGoOZFAzQK+ork6qTeUYYzewK2BBlldAbe4bwsHHWwBO/tBIVHzI4I4AE0rtdaz30w
	s1ObAcO0Wrg0z1IeGkoU7C5COwFdTZRGR9dbuVM3nTqzDC+HMVAOvOMsu6qIoBVi9aiJtA
	+3l8Nj3SONg/cRAexADAOutzcYqXvDc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1705468945;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bt6nCDQEYtubH19ySIEGkgYg6OFfwiamTbCvG0zzCu8=;
	b=I5T9vh1AEKB+AJOSF8so0czIFz1ewPLMz60B2vBrcAkOGDohYDQGIJk329TL1pnZ4tnIdO
	qAJzg+0z1Zl51pJxWVMPJkkcGUO9SVwwJrvaTYir+O8g565yJ8OLJZlb3NPmWvEJmuiTrB
	aP9W5YhdRO6LjVZ+et4O81KfQPHvV0E=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id AB44441066;
	Wed, 17 Jan 2024 06:22:23 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>,
	syzbot+ebe64cc5950868e77358@syzkaller.appspotmail.com
Subject: [PATCH] batman-adv: mcast: fix memory leak on deleting a batman-adv
 interface
Date: Wed, 17 Jan 2024 06:22:20 +0100
Message-ID: <20240117052221.25912-1-linus.luessing@c0d3.blue>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: SFNMYO3YKLSGIMYF6Y57JBRMNDU4GMFJ
X-Message-ID-Hash: SFNMYO3YKLSGIMYF6Y57JBRMNDU4GMFJ
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SFNMYO3YKLSGIMYF6Y57JBRMNDU4GMFJ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The batman-adv multicast tracker TVLV handler is registered for the
new batman-adv multicast packet type upon creating a batman-adv interface,
but not unregistered again upon the interface's deletion, leading to a
memory leak.

Fix this memory leak by calling the according TVLV handler unregister
routine for the multicast tracker TVLV upon batman-adv interface
deletion.

Fixes: 8ed36122d709 ("batman-adv: mcast: implement multicast packet reception and forwarding")
Reported-by: syzbot+ebe64cc5950868e77358@syzkaller.appspotmail.com
Closes: https://lore.kernel.org/all/000000000000beadc4060f0cbc23@google.com/
Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/multicast.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index c8620905c2dc..38fab5e46ae2 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -2183,6 +2183,7 @@ void batadv_mcast_free(struct batadv_priv *bat_priv)
 	cancel_delayed_work_sync(&bat_priv->mcast.work);
 
 	batadv_tvlv_container_unregister(bat_priv, BATADV_TVLV_MCAST, 2);
+	batadv_tvlv_handler_unregister(bat_priv, BATADV_TVLV_MCAST_TRACKER, 1);
 	batadv_tvlv_handler_unregister(bat_priv, BATADV_TVLV_MCAST, 2);
 
 	/* safely calling outside of worker, as worker was canceled above */
-- 
2.43.0

