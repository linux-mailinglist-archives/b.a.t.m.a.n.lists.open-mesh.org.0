Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1591017BC7E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  6 Mar 2020 13:15:31 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AF9E580BA0;
	Fri,  6 Mar 2020 13:15:25 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 366B180200
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  6 Mar 2020 13:15:17 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C597077300B0A48B46F0435C76.dip0.t-ipconnect.de
 [IPv6:2003:c5:9707:7300:b0a4:8b46:f043:5c76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 3B7E762059;
 Fri,  6 Mar 2020 13:06:20 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/1] batman-adv: Don't schedule OGM for disabled interface
Date: Fri,  6 Mar 2020 13:06:18 +0100
Message-Id: <20200306120618.25714-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200306120618.25714-1-sw@simonwunderlich.de>
References: <20200306120618.25714-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1583496917;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+jmdcEK6rO6U2z9PYLGza1Cc1hJZu5cVjyV1/ZAr8+k=;
 b=Llk1/ydjoxBoNCLqLKwUdrqkCJ0krEIrjLuVGdJpO6G6BMSxLL9W7+SfrLCvqy89o3K7IR
 rMMcGkXekjDao2ktMV7o1gpqr8J6t8xdihoGfYB1GUm5ngjcr37uetktT97dxPEVjUNsE7
 A/kVtLGdgx1KXtlcNdx1D5hwAGS+Jn4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1583496917; a=rsa-sha256; cv=none;
 b=D8BbD3Nj+TViiV2V6sfPxTg5wmS90PDB2l6+HWFWCrWjID9jZccNKE2+MXS1BwhgNPNdCO
 5DBlW61tNjCKv9XflL3v+mpM8QGRAcmrMBCj34gtCQiOFavGLUiqYjH5awRiAz+95KE55t
 aYxSRnCHs62nlmgamHlDtkmFp/bPHpY=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Hillf Danton <hdanton@sina.com>, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org,
 syzbot+a98f2016f40b9cd3818a@syzkaller.appspotmail.com,
 syzbot+ac36b6a33c28a491e929@syzkaller.appspotmail.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

A transmission scheduling for an interface which is currently dropped by
batadv_iv_ogm_iface_disable could still be in progress. The B.A.T.M.A.N. V
is simply cancelling the workqueue item in an synchronous way but this is
not possible with B.A.T.M.A.N. IV because the OGM submissions are
intertwined.

Instead it has to stop submitting the OGM when it detect that the buffer
pointer is set to NULL.

Reported-by: syzbot+a98f2016f40b9cd3818a@syzkaller.appspotmail.com
Reported-by: syzbot+ac36b6a33c28a491e929@syzkaller.appspotmail.com
Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Cc: Hillf Danton <hdanton@sina.com>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_iv_ogm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index f0209505e41a..a7c8dd7ae513 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -789,6 +789,10 @@ static void batadv_iv_ogm_schedule_buff(struct batadv_hard_iface *hard_iface)
 
 	lockdep_assert_held(&hard_iface->bat_iv.ogm_buff_mutex);
 
+	/* interface already disabled by batadv_iv_ogm_iface_disable */
+	if (!*ogm_buff)
+		return;
+
 	/* the interface gets activated here to avoid race conditions between
 	 * the moment of activating the interface in
 	 * hardif_activate_interface() where the originator mac is set and
-- 
2.20.1

