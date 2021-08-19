Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FF73F1D13
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 19 Aug 2021 17:41:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C4B5982649;
	Thu, 19 Aug 2021 17:41:22 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EEEB182608
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 19 Aug 2021 17:41:14 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5971402c0773d8e0e2371531e.dip0.t-ipconnect.de [IPv6:2003:c5:9714:2c0:773d:8e0e:2371:531e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 5AF75174021;
	Thu, 19 Aug 2021 17:33:41 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 2/6] batman-adv: Move IRC channel to hackint.org
Date: Thu, 19 Aug 2021 17:33:30 +0200
Message-Id: <20210819153334.18850-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210819153334.18850-1-sw@simonwunderlich.de>
References: <20210819153334.18850-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629387675; a=rsa-sha256;
	cv=none;
	b=BjH08swpe5aE8Iq60yRZd39lfyg/1aLdfL1TXpwYptCJjeFVFqGTbrau1JpJnh3Fh8BJOF
	KO7TdZcV6sa4jtsGne0qSxMdF+gXokRCIxYYthR2orE8nMQ/cioE/DxTE/TY5FFL903Ovj
	vXJ8FAPRwk7lBq7I+2PYvmQr6FBX5/0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629387675;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=INFha11ijc8+kT1ppOeQ5QA8z4JcxURTYXgJQiWLpac=;
	b=gHHyvuU7vBK/D8EAzH/9KYvNejuUbCWUmCm/S7d+4aXcCPCPNMAzcjML6asbeCXl7c8/Ta
	BbeKaMlEZha/I74/u8f00eZK00OuMaezwIjyfaVCTpUABKY6cTzCkoiVKstjrfkRm1ZUgR
	uE7qilN6OMYIsJqxHtFQ4uRjAMqXkEM=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: EMDVIN5NJ4O4QAO4TXA6WAUUAVPZOFSM
X-Message-ID-Hash: EMDVIN5NJ4O4QAO4TXA6WAUUAVPZOFSM
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EMDVIN5NJ4O4QAO4TXA6WAUUAVPZOFSM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

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
index 41fcfdb24a81..b8971a2f5a7e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3197,7 +3197,7 @@ S:	Maintained
 W:	https://www.open-mesh.org/
 Q:	https://patchwork.open-mesh.org/project/batman/list/
 B:	https://www.open-mesh.org/projects/batman-adv/issues
-C:	irc://chat.freenode.net/batman
+C:	ircs://irc.hackint.org/batadv
 T:	git https://git.open-mesh.org/linux-merge.git
 F:	Documentation/networking/batman-adv.rst
 F:	include/uapi/linux/batadv_packet.h
--=20
2.20.1
