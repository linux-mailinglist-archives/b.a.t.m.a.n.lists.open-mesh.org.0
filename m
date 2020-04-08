Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F811A2B67
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  8 Apr 2020 23:49:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CA0DF8096B;
	Wed,  8 Apr 2020 23:49:10 +0200 (CEST)
Received: from smtprelay08.ispgateway.de (smtprelay08.ispgateway.de
 [134.119.228.106])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 43AF380042
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  8 Apr 2020 23:49:08 +0200 (CEST)
Received: from [185.66.195.72] (helo=localhost.localdomain)
 by smtprelay08.ispgateway.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 (envelope-from <me@irrelefant.net>)
 id 1jMIZH-00059X-Ix; Wed, 08 Apr 2020 23:49:07 +0200
From: =?UTF-8?q?Leonardo=20M=C3=B6rlein?= <me@irrelefant.net>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batctl: Exit code is now EXIT_FAILURE when throughputmeter
 fails
Date: Wed,  8 Apr 2020 23:49:03 +0200
Message-Id: <20200408214903.23134-1-me@irrelefant.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Df-Sender: bWVAaXJyZWxlZmFudC5uZXQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1586382548;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=lQ17c3xCXFLr7M5NaoKCKhaHR7TlZlBXdYDlLOv/oLA=;
 b=4Fc9c1uXo7EC4y/KkXYQoJAo1RORQBKajWxWB3w/rEGZDzxa/Kyn+55WLafnSWGoyz2r2R
 WEQW2VXaSNCK8O144cafxztOBzIjlv133yD6WjdoweAg1GvsMbU9+inyc4TRC8H8Nt6hkp
 K0luGQuRUaDOIv2ES1pRuAaGWzfbRlM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586382548; a=rsa-sha256; cv=none;
 b=fmYM2K3sAVvJmrqtRkCHICnvJ+fMnizL+pf5AjXa5CG7NJkJEf85aamdSf4YZrIyzoV3ll
 ItO6X2C8jHlqsfdQ482xscfEr3HSQB/jDncv4eWSmc2wQ649xEbGwE9dbKH1QC+S5oeYwq
 h39BpSasiYWpvDK7H0b83Pve86tOZaM=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=none (diktynna.open-mesh.org: domain of me@irrelefant.net has no SPF
 policy when checking 134.119.228.106) smtp.mailfrom=me@irrelefant.net
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
Cc: =?UTF-8?q?Leonardo=20M=C3=B6rlein?= <me@irrelefant.net>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Before this commit, this command completed indicating success:

[lemoer@orange batctl]$ (sudo batctl tp 77:77:77:77:77:77 && echo true) || echo false
Destination unreachable
true

After this commit, this command expectedly indicates failure:

[lemoer@orange batctl]$ (sudo ./batctl tp 77:77:77:77:77:77 && echo true) || echo false
Destination unreachable
false

Signed-off-by: Leonardo Mörlein <me@irrelefant.net>
---
 throughputmeter.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/throughputmeter.c b/throughputmeter.c
index 27f1346..0ec5c31 100644
--- a/throughputmeter.c
+++ b/throughputmeter.c
@@ -465,6 +465,7 @@ static int throughputmeter(struct state *state, int argc, char **argv)
 		goto out;
 	}
 
+	ret = EXIT_FAILURE;
 	switch (result.return_value) {
 	case BATADV_TP_REASON_DST_UNREACHABLE:
 		fprintf(stderr, "Destination unreachable\n");
-- 
2.24.1

