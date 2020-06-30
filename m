Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2EB20F095
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2020 10:35:22 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DDE3E804F6;
	Tue, 30 Jun 2020 10:35:17 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6FBDB80850
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2020 10:35:15 +0200 (CEST)
Received: from kero.packetmixer.de (p4fd575ab.dip0.t-ipconnect.de [79.213.117.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 68E366205E;
	Tue, 30 Jun 2020 10:27:52 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 2/4] batman-adv: Switch mailing list subscription page
Date: Tue, 30 Jun 2020 10:27:29 +0200
Message-Id: <20200630082731.2397-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200630082731.2397-1-sw@simonwunderlich.de>
References: <20200630082731.2397-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593506115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9vHj2AN9rNqRnkUQS0yY8oeZM5ajGVayQiOmTLigVx0=;
	b=b/jI8cHVttE+s713GbEFhh7DF5v/xZ4YVN1MrdUlCX7Q8gB46zMzlYp3ALZsL8QQyAsH33
	/zn7n/Wa/NlkxwLZEhhXaV/DhESupsmiadRpXB8jd+GoEm3346DBWq7IR5ff/7vGVzc+y5
	ZVectttHY+l2XWxjPhSHXs8MW6uCGVs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593506115; a=rsa-sha256;
	cv=none;
	b=AO0Sz+rqLIflBt66o4thtBShE1o23iyp+9VGR1c5Xw22OYHRpbRecB0gPfZx7UP9cxZXjm
	S3lXfOdablJnGRu+BHgpQy/0gcCNnAS+j+t6q7agEkCkD/TLartgpG5ms7ILoqfLkc7sof
	LgmsXPf7QgrtQG5MKgNU9Idc1Y29378=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XKZOI23SVMPXZCKI7U7CQTZOYWM65BGP
X-Message-ID-Hash: XKZOI23SVMPXZCKI7U7CQTZOYWM65BGP
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XKZOI23SVMPXZCKI7U7CQTZOYWM65BGP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The mailman installation on lists.open-mesh.org was switched from mailman=
2
to mailman3. The URL to the subscription webpage changed in this process.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 Documentation/networking/batman-adv.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/networking/batman-adv.rst b/Documentation/netw=
orking/batman-adv.rst
index 18020943ba25..02af49b08635 100644
--- a/Documentation/networking/batman-adv.rst
+++ b/Documentation/networking/batman-adv.rst
@@ -160,7 +160,7 @@ IRC:
   #batman on irc.freenode.org
 Mailing-list:
   b.a.t.m.a.n@open-mesh.org (optional subscription at
-  https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n)
+  https://lists.open-mesh.org/mailman3/postorius/lists/b.a.t.m.a.n.lists=
.open-mesh.org/)
=20
 You can also contact the Authors:
=20
--=20
2.20.1
