Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 577FB828F5A
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Jan 2024 22:59:39 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2E0DD83EA4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Jan 2024 22:59:39 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1704837579;
 b=sYw6XUa3RFJk0H5VRD46Cp3SJA81G0O+Au4awnAtgqLPKd7uMGwVN9Q1JALJJW0wmFFwR
 xy0AWvLkgcrfgwEXDiyl6IsYxg3Eqv5sPd4566AMkKbmrKXTp8qHvQMPwAkKYASKr+vtk1P
 9Udo1PmGNV1ltWp6YVejZ+81Gi+Cu9A=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1704837579; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=hkr+J7jo6JjmBfD5s3vq0pEW4afEHT6aDUhk62eajM8=;
 b=CMxuFQRYQN/VIKs1Xp0X/IJwQhQglsmJkEtyl0Pgv8P4GPUhTxq3mCo8eXOHpMKkrZuSg
 pnPDK4dGW35pl3tcBvTIrAJHkhXMmbmYCGIfr+rp2a7DLfOqJpXy2P03h45R+BzAd9Pm1pY
 hQvf6tVO5mY1IX3yFx7e6B7OIesR14U=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 74B7A80C67
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  9 Jan 2024 22:59:06 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1704837546; a=rsa-sha256;
	cv=none;
	b=WOkUTcwabi98gCLPiUxGbEDe2LaJTs5YlNssgPyuA45VGIKPjVn8nyugQbV1iCmVr2fVNV
	UAbLHW9dHjSfvoHs9QFNbCqFTs3QMqu5RUG7dQ58g65T0rUPSOJYCCNZRMLdHLDl0fOiaE
	6MntcyRwGdHa0Mp2ycPXTAVd+8wAvis=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 116.203.183.178 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1704837546;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=hkr+J7jo6JjmBfD5s3vq0pEW4afEHT6aDUhk62eajM8=;
	b=0tneH2i84ujCfS2VAShHuT97H9OH+SURVD9U8AEdf0uy11CjGW0TEFFxGsmTPVyUkDYEYt
	1G8Iqrp0HE4woDSjgbkTUo+XHCbYWa07rvXhYEGPJoxetytK4jRpFoEbssR2xaWOJ6PLYx
	AFBdk+kQMuneoq4cQSGvZojuqG12VdA=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id BADFA40847;
	Tue,  9 Jan 2024 22:59:05 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH] batman-adv: mcast: fix mcast packet type counter on timeouted
 nodes
Date: Tue,  9 Jan 2024 22:58:59 +0100
Message-ID: <20240109215900.5767-1-linus.luessing@c0d3.blue>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: 7GH3J32Z7XDOX2526YM22LOK6VVMHIOF
X-Message-ID-Hash: 7GH3J32Z7XDOX2526YM22LOK6VVMHIOF
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7GH3J32Z7XDOX2526YM22LOK6VVMHIOF/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

When a node which does not have the new batman-adv multicast packet type
capability vanishes then the according, global counter erroneously would
not be reduced in response on other nodes. Which in turn leads to the mesh
never switching back to sending with the new multicast packet type.

Fix this by reducing the according counter when such a node times out.

Fixes: be9b0169c840 ("batman-adv: mcast: implement multicast packet generation")
Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/multicast.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 2981a2ed40cb..c8620905c2dc 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -2206,6 +2206,8 @@ void batadv_mcast_purge_orig(struct batadv_orig_node *orig)
 				      BATADV_MCAST_WANT_NO_RTR4);
 	batadv_mcast_want_rtr6_update(bat_priv, orig,
 				      BATADV_MCAST_WANT_NO_RTR6);
+	batadv_mcast_have_mc_ptype_update(bat_priv, orig,
+					  BATADV_MCAST_HAVE_MC_PTYPE_CAPA);
 
 	spin_unlock_bh(&orig->mcast_handler_lock);
 }
-- 
2.43.0

