Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF073A5941
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 13 Jun 2021 17:11:09 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DD70583F11;
	Sun, 13 Jun 2021 17:11:03 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5B33F80960
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 13 Jun 2021 17:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1623596513;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=EnyMv3SUxLe29zeomMewjxzWxiZ+ncGV7jUMZUceEtU=;
	b=RC/QAU4KoXR2tgtxqllDTZzN1QSYIk0DxgsJqY55p1W20HCHEo9pcXa8HqnDQoa1CQPXcf
	dqZkvIBKY7Z/jG53OaxS1lbS5iXGIQMLaNCdZOPSzpdAcDX7OKj7xXXmtCBFNUihq4uuWW
	aMbacKLQzALCI6dTBYmbxHYWjX845Q4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/2] batman-adv: Move IRC channel to hackint.org
Date: Sun, 13 Jun 2021 17:01:43 +0200
Message-Id: <20210613150144.525655-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623597059; a=rsa-sha256;
	cv=none;
	b=yIPMs8+pi+HhP+uMAYtD8aBiGoPdxPfxC3m/ORXVVSJrN7GqFtMsYS9O3XCnIXCsQZ384Z
	PvQAlgaNBA3uJI83/BFWIgMcWy1drf4mek4qf0ZkNXPwqQV2OrNUxCDY0b0fYsYytUtCzk
	pWL1jS60URpEHF5YrPtPA34b9jkq6rc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="RC/QAU4K";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623597059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=EnyMv3SUxLe29zeomMewjxzWxiZ+ncGV7jUMZUceEtU=;
	b=cUA2UWXJadu3RHJcS/uf2F96M3CqzdMYJJMnojTPQdNY73uxnApljYHprnL/ZhHRy/TAcC
	IIChIUo9QtUmD2oefO6pLheBO7JLANjVQdMpiwoKzpu319gSnZNTcs4eeJgSa3FF7aGeHk
	gAiFC0M4w2/6Oas/YViTzDuWDT4q8bk=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: TGRTFW6OD2WGXUZL42ZDPXRCGNVJ2GML
X-Message-ID-Hash: TGRTFW6OD2WGXUZL42ZDPXRCGNVJ2GML
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TGRTFW6OD2WGXUZL42ZDPXRCGNVJ2GML/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Due to recent developments around the Freenode.org IRC network, the
opinions about the usage of this service shifted dramatically. The majori=
ty
of the still active users of the #batman channel prefers a move to the
hackint.org network.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 Documentation/networking/batman-adv.rst | 2 +-
 MAINTAINERS                             | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/networking/batman-adv.rst b/Documentation/netw=
orking/batman-adv.rst
index 74821d29a22f..b85563ea3682 100644
--- a/Documentation/networking/batman-adv.rst
+++ b/Documentation/networking/batman-adv.rst
@@ -157,7 +157,7 @@ Contact
 Please send us comments, experiences, questions, anything :)
=20
 IRC:
-  #batman on irc.freenode.org
+  #batadv on ircs://irc.hackint.org/
 Mailing-list:
   b.a.t.m.a.n@open-mesh.org (optional subscription at
   https://lists.open-mesh.org/mailman3/postorius/lists/b.a.t.m.a.n.lists=
.open-mesh.org/)
diff --git a/MAINTAINERS b/MAINTAINERS
index c6cdd550cd3a..b0cebd3a2e21 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3169,7 +3169,7 @@ S:	Maintained
 W:	https://www.open-mesh.org/
 Q:	https://patchwork.open-mesh.org/project/batman/list/
 B:	https://www.open-mesh.org/projects/batman-adv/issues
-C:	irc://chat.freenode.net/batman
+C:	ircs://irc.hackint.org/batadv
 T:	git https://git.open-mesh.org/linux-merge.git
 F:	Documentation/networking/batman-adv.rst
 F:	include/uapi/linux/batadv_packet.h
--=20
2.30.2
