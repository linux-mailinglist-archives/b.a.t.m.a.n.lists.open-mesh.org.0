Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5A84CADF2
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 19:53:28 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CCD0B8272B;
	Wed,  2 Mar 2022 19:53:27 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 60D598059E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 19:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646247204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=yf3PWGhCBTjiNWy0V0xfYfZ8HY8HDbPQDADyog4Yuz8=;
	b=G1CdZzZ95CBJx1HZg4dUrh/K+Xj1NtoNsaIbIUXjF1ad7vAsldx8HJNLaFHFWSLs8pQb8c
	TjyYtM8F344ENzmHUnP90L/dXPXpgwa9zQsZL1gjeXasbl6XMNcld9Q8cyXlXotag6+9i+
	GukeVSujTmg7Tx/srUslg3Wa/lliB28=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Demote batadv-on-batadv skip error message
Date: Wed,  2 Mar 2022 19:53:14 +0100
Message-Id: <20220302185314.415571-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=G1CdZzZ9;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646247205; a=rsa-sha256;
	cv=none;
	b=0Urce+LnZxby1LWEYmh0r5vT6VJgTn8OCnOvpq/CIT/y3heFb1Gbz4UmRbxatEv+GhKOAl
	cwTVuI1DvL7MsgmcWuPxmHg4/VFOVPMWtPuH5pxbY59LYuU+m1sLqJGX8wkGe2ygsReM5J
	eQ3Uv1uhJ7LGkrPzPtcprF2rkesysJc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646247205;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=yf3PWGhCBTjiNWy0V0xfYfZ8HY8HDbPQDADyog4Yuz8=;
	b=M6GnmI+Tiq9AStG4ShBgmfZw5a6KjhtprgzR7fJkh+Zp9pIrpAPciNPxWCjLIJM/+rDH2b
	KhH0amXPUBbPVeqA6EEtqSN4DWQ724zPb6TUbT14YEt8Xt+tuiJdFglDFeQNjyU97c6HxI
	HjxHw7OhlmBjCsLDYrzt9f1EUqxitSM=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: KBHBS25Z4EXLIGO54L2LLWWPAV5DDC6F
X-Message-ID-Hash: KBHBS25Z4EXLIGO54L2LLWWPAV5DDC6F
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: =?UTF-8?q?Leonardo=20M=C3=B6rlein?= <freifunk@irrelefant.net>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KBHBS25Z4EXLIGO54L2LLWWPAV5DDC6F/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The error message "Cannot find parent device" was shown for users of
macvtap (on batadv devices) whenever the macvtap was moved to a different
netns. This happens because macvtap doesn't provide an implementation for
rtnl_link_ops->get_link_net.

The situation for which this message is printed is actually not an error
but just a warning that the optional sanity check was skipped. So demote
the message from error to warning and adjust the text to better explain
what happened.

Reported-by: Leonardo M=C3=B6rlein <freifunk@irrelefant.net>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 59d19097..b25afc7f 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -165,9 +165,9 @@ static bool batadv_is_on_batman_iface(const struct ne=
t_device *net_dev)
 	/* recurse over the parent device */
 	parent_dev =3D __dev_get_by_index((struct net *)parent_net,
 					dev_get_iflink(net_dev));
-	/* if we got a NULL parent_dev there is something broken.. */
 	if (!parent_dev) {
-		pr_err("Cannot find parent device\n");
+		pr_warn("Cannot find parent device. Skipping batadv-on-batadv check fo=
r %s\n",
+			net_dev->name);
 		return false;
 	}
=20
--=20
2.30.2
