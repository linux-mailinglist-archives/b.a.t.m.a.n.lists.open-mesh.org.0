Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 291A83A5940
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 13 Jun 2021 17:11:04 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C3B1380371;
	Sun, 13 Jun 2021 17:11:02 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2B26B8038C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 13 Jun 2021 17:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1623596517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5IJfxEIrJ5c17tZlq61mqqXrPMrfAEv+x6Ga4GhO7/8=;
	b=qjj1rvAsEqyEHH93CsJSSzl5TGKHz9kUrl20470BxfGPWlhcER4cTiI0fvgN/VU7zCf54Y
	FMoCD2omBbq8dKmFwVhO+x04WcV6xG5pomT+P+bctohzh8lec1ZNV6YQTUPORsdsBh3ljL
	h/hycP/CBd8wk5upTqG6IYZEq+Uwtu0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/2] alfred: Move IRC channel to hackint.org
Date: Sun, 13 Jun 2021 17:01:44 +0200
Message-Id: <20210613150144.525655-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210613150144.525655-1-sven@narfation.org>
References: <20210613150144.525655-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623597059; a=rsa-sha256;
	cv=none;
	b=rCkVap9JfKnIxeJqW4n3Tz9X+ZK/pQ4QA9F88Nb5ZAbye6GnQAXG6DHEuIsUcLWjjsiuTg
	uZqcoTYdIAjzvhSWYxVdiITpVfIhHVEIi2znmWBy5lmOg6/MBq9nMLH+Rg9G8uKWJYATGt
	ibeH1uxrZ1J0mPY37T91HJgn/Yz9EHk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=qjj1rvAs;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623597059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=5IJfxEIrJ5c17tZlq61mqqXrPMrfAEv+x6Ga4GhO7/8=;
	b=oKF1HeYxYiq9bCh7P7/pTIV1NhFeUNy4f5d0xEsxBlXcz5ZVvHD/9e9MxZJH/GQog0QBeJ
	5CoYOANLmtTq+9yQ1rlDeOtWKTMTOXXFNXYeht7Re4cfs50bJa6+hyd/vZP049tZrOtB/Q
	4kIgnhMvJMncHmB/EnQAlK+AcgU7QVE=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 6MZQAJY2PZHCYZ7VVJSMIHSBLZPYWPKS
X-Message-ID-Hash: 6MZQAJY2PZHCYZ7VVJSMIHSBLZPYWPKS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6MZQAJY2PZHCYZ7VVJSMIHSBLZPYWPKS/>
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
 README.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README.rst b/README.rst
index 2bc2119..33200e4 100644
--- a/README.rst
+++ b/README.rst
@@ -321,7 +321,7 @@ As alfred was developed to help on batman-adv, we sha=
re communication channels.
 Please send us comments, experiences, questions, anything :)
=20
 IRC:
-  #batman on irc.freenode.org
+  #batadv on ircs://irc.hackint.org/
 Mailing-list:
   b.a.t.m.a.n@open-mesh.org (optional subscription at
   https://lists.open-mesh.org/mailman3/postorius/lists/b.a.t.m.a.n.lists=
.open-mesh.org/)
--=20
2.30.2
