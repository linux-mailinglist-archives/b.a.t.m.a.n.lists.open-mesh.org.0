Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA6A18A5D0
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 18 Mar 2020 22:04:16 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A7CCF80BE2;
	Wed, 18 Mar 2020 22:04:11 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 52F51803BC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 18 Mar 2020 21:59:15 +0100 (CET)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85C8520777;
 Wed, 18 Mar 2020 20:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584564808;
 bh=F0FLa2iKgD3VIOUQXUfJd6u9S0Ph0eysk4JIX+3072E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0uP77P7+2vNnJS3CN7ojZJenxyX8npZI4WgZSfnIhxDBAi+U26hoR13tBqYmwMlZb
 mr0eXWBRAlKtVqm5ew8WHplYfk9yyCOHWY2McbmzoUMbgavtEb7k6qmWNd1i8Pi6WA
 d8jeXYatF5Dm+FOJLTSx5Eni8jzQG7HeCGS5UcZk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 05/84] batman-adv: Don't schedule OGM for disabled
 interface
Date: Wed, 18 Mar 2020 16:52:02 -0400
Message-Id: <20200318205321.16066-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318205321.16066-1-sashal@kernel.org>
References: <20200318205321.16066-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1584565155;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=gGVj5ArG85CJ8fUCDPHeJDGxuq8rhqZ94AmHMDskasc=;
 b=W8zKofDlyCPc3VPeOGoCYGlctfHGeOeo7Z4cQz3BEXPSOToWJ+ohEENHNiuLq5NHkja87e
 23HbwPOeZSCzJH6jaBM+WuA7JpppxF/kgopwdIFsW4xQcnXVJQw+9V7N39zT0E+2qS6LbM
 VFKT9r3CSNqBbXqTp4mtxNR6S00PXAs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1584565155; a=rsa-sha256; cv=none;
 b=sussizEG5kE73HqDRFwUDNjx4Z2RmnnVu0YsesQVIEjX7bBvgGmbWl2OUTzr+I5HJITfsk
 pEETA+sRR2Iv+1PttIrAh+h5XCjZ0YgtR3FQaj/4dY30iYDEKWC2LtsxrsoIEUnwLG7L8D
 1gyGF2fjuKzTiuH2vSRnKfyFYuVa7nY=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=kernel.org header.s=default header.b=0uP77P7+;
 spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
X-Mailman-Approved-At: Wed, 18 Mar 2020 22:04:02 +0100
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
Cc: Sasha Levin <sashal@kernel.org>, Hillf Danton <hdanton@sina.com>,
 netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
 syzbot+a98f2016f40b9cd3818a@syzkaller.appspotmail.com,
 syzbot+ac36b6a33c28a491e929@syzkaller.appspotmail.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

[ Upstream commit 8e8ce08198de193e3d21d42e96945216e3d9ac7f ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/bat_iv_ogm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 5b0b20e6da956..d88a4de022372 100644
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

