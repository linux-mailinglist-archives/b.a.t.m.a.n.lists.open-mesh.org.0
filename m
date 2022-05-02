Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C52C516EF7
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  2 May 2022 13:40:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5543880698;
	Mon,  2 May 2022 13:40:09 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 922ED80146
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  2 May 2022 13:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1651491605;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=A0UoLnvovhAzrpAILVBqCXtZPxORz+ByQqgniRmXjBo=;
	b=i0FZ3gC4Jqbuy0fVOSG1HVzVw/N35M2VDQwifTsjiD3JhLE/Z3ZhHnD2ms9VNB1+VOYtxy
	u1rH6eF1xzfvZNpIA5nUnOlP9EAt8vGwGgKVukOa4jFjIMAGqZZ46nSL3dntfKdT94S/bo
	q+lHQRa1DmFIa3nMowmMAJhpRd84YzM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] alfred: Drop argument requirement from --server-status
Date: Mon,  2 May 2022 13:40:00 +0200
Message-Id: <20220502114000.25980-1-sven@narfation.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1651491605; a=rsa-sha256;
	cv=none;
	b=LzMoH78KRHtMLP/tsZ8jeaxf1/ejOSjsYA/t8Wwo0gHWXp2PTSAh/EgzOtzO2r8wg4HUFj
	QDw8x4xTPpMB9T6deli0dlNL+AWtgS9m1pwq7y9+5+KZSVmmrfD4h5hUaVuy5tFOIt/97H
	JZg0591gvl0p7VbmAPddE4pbaVfFW6g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=i0FZ3gC4;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1651491605;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=A0UoLnvovhAzrpAILVBqCXtZPxORz+ByQqgniRmXjBo=;
	b=M64sEPOaku7kGjrVMTHm9OtGncJIf1L+f/wjrWqpme8OsfTzoqWKEhbRxVabT5hG2g8YHD
	3xJYlBVYSQRzS2Bh8N3zDtoFECR2OqA+nTZ7MlUosgIB4Yz/VwyRpyjt8HYMPR/FGydYwu
	DZ/lxzlYozZfJfncnQnjZUnBl0fpHpA=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: R2PEKTQK2G5QFOKEKR6PPSGO5WAJSGSR
X-Message-ID-Hash: R2PEKTQK2G5QFOKEKR6PPSGO5WAJSGSR
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/R2PEKTQK2G5QFOKEKR6PPSGO5WAJSGSR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The short form -S doesn't require a parameter but the --server-status
requires one (which no one reads). If none is supplied, following is
printed:

   ./alfred: option '--server-status' requires an argument

and the execution stops. Just drop this requirement because it is not use=
d
and no where documented.

Fixes: 5a7d28b1866d ("alfred: introduce 'server status' IPC call")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/main.c b/main.c
index 68d6efd..30e18a5 100644
--- a/main.c
+++ b/main.c
@@ -163,7 +163,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 		{"modeswitch",		required_argument,	NULL,	'M'},
 		{"change-interface",	required_argument,	NULL,	'I'},
 		{"change-bat-iface",	required_argument,	NULL,	'B'},
-		{"server-status",	required_argument,	NULL,	'S'},
+		{"server-status",	no_argument,		NULL,	'S'},
 		{"unix-path",		required_argument,	NULL,	'u'},
 		{"update-command",	required_argument,	NULL,	'c'},
 		{"version",		no_argument,		NULL,	'v'},
--=20
2.34.1
