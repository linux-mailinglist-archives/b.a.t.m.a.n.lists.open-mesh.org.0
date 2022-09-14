Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E4D5B8EF9
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 14 Sep 2022 20:41:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8C0248163C;
	Wed, 14 Sep 2022 20:40:59 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 44921809E6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 14 Sep 2022 20:40:57 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/2] alfred: remove unnecessary backslash
Date: Wed, 14 Sep 2022 20:40:34 +0200
Message-Id: <20220914184035.1437928-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663180857;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=6nlcvJuxk0zQMuEsqphzIjZGC8AhDM6L8ir438DQtlk=;
	b=0XFFgVJQWOQ/viqBRLOLVHmrmfGXwSE1YLsvFswBQIB9GllbWYUVoLx3Em2NI25qvZfk+K
	t4YZs4I9Qf3d6/inM9Bh1DTxMNegQqaALnbTNj92i3KZeQ6C4fmtqeY2hVEPZXFy2DqrEb
	n5IgfDcBz0bfL/5RmKsCPzq/APX+IN0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1663180857; a=rsa-sha256;
	cv=none;
	b=kvyHjktFvbDLmuA+ZoYOfEAaIMox3ptSqVqvNIS3BRJHME525vf3Q6UpQXQFxETCWh/pNv
	FlnRyguTCPJxmcU8MsQjP4l5VEJDzwyStCqBwKdka2COzVzDYGmgz4uu0SuFwQCoLsph+g
	ABC/qrQXOyWgaN1pFqdds7I9tXNPWdM=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: WNI46MJUWR4Z3DJDS7UBGVAB2KY7P5NO
X-Message-ID-Hash: WNI46MJUWR4Z3DJDS7UBGVAB2KY7P5NO
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WNI46MJUWR4Z3DJDS7UBGVAB2KY7P5NO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 alfred.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/alfred.h b/alfred.h
index 97f0093..a4a3d37 100644
--- a/alfred.h
+++ b/alfred.h
@@ -210,7 +210,7 @@ int unix_sock_close(struct globals *globals);
 int unix_sock_req_data_finish(struct globals *globals,
 			      struct transaction_head *head);
 void unix_sock_events_close_all(struct globals *globals);
-void unix_sock_event_notify(struct globals *globals, uint8_t type,\
+void unix_sock_event_notify(struct globals *globals, uint8_t type,
 			    const uint8_t source[ETH_ALEN]);
 /* vis.c */
 int vis_update_data(struct globals *globals);
--=20
2.37.2
