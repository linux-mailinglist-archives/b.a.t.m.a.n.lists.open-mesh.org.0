Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A98F7161470
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 17 Feb 2020 15:22:43 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B422D806E4;
	Mon, 17 Feb 2020 15:22:42 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 0805280038
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 17 Feb 2020 15:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1581949006;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=+eRxoRzo2P4E90oCPC3ECGhv26TPF2uIjGFO36Nrb00=;
 b=xAEpeKKptINzXjx251JsKgvxIdtvrLxapbl02fnk0bM1tBbwiubaZz7AtZrXL+FkBDaFT0
 GRKCp3b9R1FejbpthjjXDHd0Jy7FO89t+2uf3w7cIg9b0G/IG8wLH76/KL7mkIu5cPN5hn
 tlJXaMgRaP+FpEeOL3T0m9Knf8K1zP8=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint] batman-adv: Don't schedule OGM for disabled interface
Date: Mon, 17 Feb 2020 15:16:41 +0100
Message-Id: <20200217141641.26999-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581949360;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=+eRxoRzo2P4E90oCPC3ECGhv26TPF2uIjGFO36Nrb00=;
 b=Kkk7prSNOAUoDJdJuH3D6POUiK7GI0kXQ7PZUHu3GSR49CNARMwLerYT5Sw512NvuSY710
 20QQWea7SIMBcPcSxFLOv4YYo5Y/kwk33xPpwSarKDluoA1R01Tlvema9hsNp3NhP2NJOW
 qhfdtQBsZypHZqEkNGcy0fgBlI0LXzg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581949360; a=rsa-sha256; cv=none;
 b=VFVPnryHCQ87OR2v3lwM1qoYj1oxIIlRb/moKmk1cTunGMwPMYbN3CRU7fEtdfrI8TKyfF
 V+/vpJgiYWy5KMe4uc7pRfo+yAXXl852XJ/r0PU+Nf+jw/ez4UeePLdV4Ld9DRI2sqaVII
 /7R4f0C5cKPZV4tlZ9Ll1Zhh6uNos/o=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=xAEpeKKp;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
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
Cc: syzbot+ac36b6a33c28a491e929@syzkaller.appspotmail.com,
 Hillf Danton <hdanton@sina.com>,
 syzbot+a98f2016f40b9cd3818a@syzkaller.appspotmail.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

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
---
Cc: Hillf Danton <hdanton@sina.com>

I had this one in the pipeline but didn't find the time to correctly test
it. You already send your one to syzkaller - do you want to rework your one
(to also catch the broken submission on the same interface) and submit it?
Or is this patch also ok for you? If it is, do you want to be mentioned in
some way or form in this patch?
---
 net/batman-adv/bat_iv_ogm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 5b0b20e6..bd514c36 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -789,6 +789,10 @@ static void batadv_iv_ogm_schedule_buff(struct batadv_hard_iface *hard_iface)
 
 	lockdep_assert_held(&hard_iface->bat_iv.ogm_buff_mutex);
 
+	/* interface already disabled in batadv_iv_ogm_iface_disable */
+	if (!*ogm_buff)
+		return;
+
 	/* the interface gets activated here to avoid race conditions between
 	 * the moment of activating the interface in
 	 * hardif_activate_interface() where the originator mac is set and
-- 
2.20.1

