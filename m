Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 032084C5FF5
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 28 Feb 2022 00:53:30 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3BFF7842FD;
	Mon, 28 Feb 2022 00:53:27 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 973DC842FD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 28 Feb 2022 00:53:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646006004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kw7GMUrARsKZBnQwrOjfkpxLMUfqWOVA0PPyp4upERw=;
	b=EnFiXToCJ1YRW+xT+zs7sJFvrTjP/mvlemonAK7yicepSQFsOJ6J3CoET5PJNwOCuWAwOw
	GVbxmH9IbScn3WzOKphkaTJoBZnA0Z9O4lYyhjGVKsMDeADtykcdnHoNqnIKRe5JCx7+Qh
	7JJS1AKz56FXh4DBmsstKJV9QN4xzuY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [RFC PATCH 4/4] batman-adv: Demote batadv-on-batadv skip error message
Date: Mon, 28 Feb 2022 00:52:57 +0100
Message-Id: <20220227235257.1324636-4-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220227235257.1324636-1-sven@narfation.org>
References: <20220227235257.1324636-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=EnFiXToC;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646006004; a=rsa-sha256;
	cv=none;
	b=HpnQbQ5HP6PSAs60539DLB1zJmC9Jq36WsqOH9ES39p9uIIPS2FkVp6+m+guqtY4Ma7Ht8
	BZRaEhKI1lIiOBgg50xhNsr1IYYEJVgoKhSg1NRtddfxrUv2YihfebiP3RZNVV4tCqlAZn
	EegxEN9YM3mLbu4t4JaDfnhRv4agZy0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646006004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Kw7GMUrARsKZBnQwrOjfkpxLMUfqWOVA0PPyp4upERw=;
	b=Zg8T5Mq32tXNQzQ3rCu4jugKD/xcI17o8wGKcBLULs99HmDX1FpuNiddKplMcCpP5RzUr6
	9A+oMvEnWbl6Oz49aLxy4lqREFAULEdXX4yrxPrdregE6emZzaof3MJn6la2O+p585Pi6g
	37RYNO5mjOV8xt/cbUR9eSKFKvEFsCQ=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: COW6YVZMVRPRZFOTCZQIVMP73SGYECPO
X-Message-ID-Hash: COW6YVZMVRPRZFOTCZQIVMP73SGYECPO
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: =?UTF-8?q?Leonardo=20M=C3=B6rlein?= <freifunk@irrelefant.net>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/COW6YVZMVRPRZFOTCZQIVMP73SGYECPO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The error message "Cannot find parent device" was shown for users of
macvtap (on batadv devices) whenever the macvtap was moved to a different
netns. This happens because macvtap doesn't provide

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
index cdb6e542..83fb51b6 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -168,9 +168,9 @@ static bool batadv_is_on_batman_iface(const struct ne=
t_device *net_dev)
=20
 	/* recurse over the parent device */
 	parent_dev =3D __dev_get_by_index((struct net *)parent_net, iflink);
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
