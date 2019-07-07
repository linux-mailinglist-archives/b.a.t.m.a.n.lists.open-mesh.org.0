Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB516176A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  7 Jul 2019 22:19:35 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id DF18F803CC;
	Sun,  7 Jul 2019 22:19:32 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 6DA1D8050D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  7 Jul 2019 22:19:27 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by dvalin.narfation.org (Postfix) with ESMTPSA id CAA7B1FDDF;
 Sun,  7 Jul 2019 20:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1562530766;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=XxKaVVIW5zByT04RGtm3DqxVJrTF78BKxwGgN23dFjI=;
 b=BgJMrg6TswQQK/0EEHTkbVrIK7JkbKLfh898GHh+3Dshe9k+0eoRKpiLA3qAvScP33kcct
 w74WAfdJQaVxUZzQlqShHPQfQxYdlwdni8e3GThHuUoK6voIrVeNBjHsBv5MehJfBDXM8K
 VLg1LdarRoxrd59FluOu5RYTZiU8Yow=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint] batman-adv: Fix netlink dumping of all mcast_flags
 buckets
Date: Sun,  7 Jul 2019 22:19:22 +0200
Message-Id: <20190707201922.13997-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1562530766;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=XxKaVVIW5zByT04RGtm3DqxVJrTF78BKxwGgN23dFjI=;
 b=B/UPqUHr+QKDvcFvOCtIPrs/mFV3sFqHbhu4iwsJGadoyL8/oLjciPpRozlmZNEykaizRC
 NeyRLUVyvABVJu9FTf/84BPlBytdy7/llex8eMzMcEoFALKP1/Ob1yxPa4TBaK418iljr8
 ip5F9ChiR7H54epS1RJDQHaxRr/2tFY=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1562530766; a=rsa-sha256; cv=none;
 b=gvHwV33bIzGcmm2n795Ghv/bH+aYlr/8BAXSkXFWumLPoxykHvEgF0v94P5A/wLHPBRj2V
 CWtEX1U/XwnEP7FCSAydfg588WyLzkJ/A+akluPGumSQnSbJ2m7vvUzCb1VRV4TE2Jlonm
 zd1VIwIkeY72luI03c1b6k/Vcj6G9ws=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

The bucket variable is only updated outside the loop over the mcast_flags
buckets. It will only be updated during a dumping run when the dumping has
to be interrupted and a new message has to be started.

This could result in repeated or missing entries when the multicast flags
are dumped to userspace.

Fixes: 06c82b7b15b1 ("batman-adv: Add inconsistent multicast netlink dump detection")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/multicast.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 67d7f830..a3488cfb 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -2303,7 +2303,7 @@ __batadv_mcast_flags_dump(struct sk_buff *msg, u32 portid,
 
 	while (bucket_tmp < hash->size) {
 		if (batadv_mcast_flags_dump_bucket(msg, portid, cb, hash,
-						   *bucket, &idx_tmp))
+						   bucket_tmp, &idx_tmp))
 			break;
 
 		bucket_tmp++;
-- 
2.20.1

