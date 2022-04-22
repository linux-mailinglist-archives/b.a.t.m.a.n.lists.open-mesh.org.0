Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D4050B3B2
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 Apr 2022 11:14:48 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B199682E2F;
	Fri, 22 Apr 2022 11:14:47 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 14400809D1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Apr 2022 11:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1650618883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=MAhruJBY5eRwsYl6CkOakhNkDGW2FgRH0TfkmSESq1U=;
	b=2P9uk0cVI2o9gwuFvlOLx8l+2v3cDTU/rS0cpbzuIIr6uU80XMnHLfXty0F8A7R/s6riWu
	ib27GajQDGy1fdDI4utLyCcNF1ljoJ0bmvxHMZp1HTW3cf7g0Wu12H0BO7kIUh4Yzw9Uoz
	vVgdq+RLvpVxbUHMXmoO9TEZ/IMHaMc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batctl: ping: Skip sleep after last packet
Date: Fri, 22 Apr 2022 11:14:08 +0200
Message-Id: <20220422091408.383897-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650618884; a=rsa-sha256;
	cv=none;
	b=DQiCYqiNYd2VJwScEkHTE3RRwI8dXPTn/Zo9OfSdBD3t2mIu7wjZpbMJRQ058nyEehWReV
	dh1Wlcf4SkoeNpeS46QvgRowpVw9Wa2yopOBR87i4OqPCxYoxCrcZ9gus8n3pCwlaYul01
	GdMOCm22IWZnKVTQzFTckV9tkQ/dq0E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=2P9uk0cV;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650618884;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=MAhruJBY5eRwsYl6CkOakhNkDGW2FgRH0TfkmSESq1U=;
	b=jzVACxfh5SbG13GPq/ckm0Tq3+2WgIzZO0fUFU3phFJos07RvcVArpZEgEnjN94gOffydB
	goiIAtrC3KsoMF0rGhXOg1HpW9PT4wflVicW5iwYXelyhnJLyqZzRqWlMoPzmgd7UvWUAP
	yDkgrr6WCyDlPaEwY7ixFBXVUXGaWBQ=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: BI6WV5APTSC6OG6U5DRTC2D4XMQUCJOL
X-Message-ID-Hash: BI6WV5APTSC6OG6U5DRTC2D4XMQUCJOL
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roman Le bg <roman@romanlebg.fr>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BI6WV5APTSC6OG6U5DRTC2D4XMQUCJOL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The -i option for ping is documented as interval between ping requests. B=
ut
the sleep was also applied after all the requested pings already sent out=
.
As result, the user had to wait additional time until the statistics for
the (limited) ping test was printed.

Just skip the last sleep in case there will be no next ping packet to avo=
id
this problem.

Reported-by: Roman Le bg <roman@romanlebg.fr>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 ping.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/ping.c b/ping.c
index 7565dcd..3681e7e 100644
--- a/ping.c
+++ b/ping.c
@@ -282,6 +282,10 @@ static int ping(struct state *state, int argc, char =
**argv)
 		}
=20
 sleep:
+		/* skip last sleep in case no more packets will be sent out */
+		if (loop_count =3D=3D 0)
+			continue;
+
 		if (loop_interval > 0)
 			sleep(loop_interval);
 		else if ((tv.tv_sec !=3D 0) || (tv.tv_usec !=3D 0))
--=20
2.30.2
