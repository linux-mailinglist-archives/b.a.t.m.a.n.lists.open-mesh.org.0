Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DB01BA772
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:11:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A67B781069;
	Mon, 27 Apr 2020 17:10:58 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588000251;
 b=XG2xINcel3UMLKN43JaFVL5E3R1Yv3sp1MlXAzJofLbr9di6dPNIBhODx3egmXesKpAII
 jK7AMhrkctRSIHi2OR1b1CFnG+bnV32q6az5tKIPlUCW6eU9BXqNnn6bBd8stnn5WNfG0qO
 L5DBrs4VK7qA8Dirhd5M0lI6oLetloM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588000251; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pY2YTOliTxJwz0BspQl8Hvd0sYH+tUCZQosINcNm6fA=;
 b=rBcmYkp8j0TT9FFbakAdDAbMssTpyPLpe5Sk7s2XiH5zwhwke9lVsgmIaSHTE0vyou56H
 M8RP8OBWi5BJAS4jcbNATGhWVKu9LUGXmqwM8IsRFEoO5HAxnt0fXRQ+NCpc+3VbhkXlbt2
 Lyp8GxfdBCBcoydlgV5z27K7E4FzxNs=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 76CFF80E07
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:10:49 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 0035C6205F;
	Mon, 27 Apr 2020 17:00:43 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 3/4] batman-adv: Fix refcnt leak in batadv_store_throughput_override
Date: Mon, 27 Apr 2020 17:00:38 +0200
Message-Id: <20200427150039.28730-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427150039.28730-1-sw@simonwunderlich.de>
References: <20200427150039.28730-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588000249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q3FmlbpBygVUbD2L30VHAdN/IikSEe6A8p9E00XQKKE=;
	b=uAw0d6JOUt2EinRxmLuOR8zg0W9n8DFGVvd/iquZFiWkDRuG97IQpCppB1yvuxlmKm9WXw
	mNC23J/YfykwYAJGahh6j1dXFlqz+2ClmnA8Vwkv5eHr/1tcfY56y1QzEtVNYBqC4MNyf/
	FvWHYTXp6mAMdJxWBanqE12zpuw+ED8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588000249; a=rsa-sha256;
	cv=none;
	b=uIGOdUQlVB+A//iSunKx51cVekgM0Cks2MZ2bU/SvqaEvdyVumVgdjkATTcFdnCgNh7V8Q
	u4GKg7V0kbK61i6Ov30YF9IjQ1n91P3F+Ux9oGDUL5CQn3m6jRQItRWSnwBPgYsDkrGR0y
	HQ6xjDg1vqkV+CIMP6lqB5THT7bciDw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: PL3UF7EMRK7PRCKBN4WYFKW4ZNEU6M2G
X-Message-ID-Hash: PL3UF7EMRK7PRCKBN4WYFKW4ZNEU6M2G
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PL3UF7EMRK7PRCKBN4WYFKW4ZNEU6M2G/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Xiyu Yang <xiyuyang19@fudan.edu.cn>

batadv_show_throughput_override() invokes batadv_hardif_get_by_netdev(),
which gets a batadv_hard_iface object from net_dev with increased refcnt
and its reference is assigned to a local pointer 'hard_iface'.

When batadv_store_throughput_override() returns, "hard_iface" becomes
invalid, so the refcount should be decreased to keep refcount balanced.

The issue happens in one error path of
batadv_store_throughput_override(). When batadv_parse_throughput()
returns NULL, the refcnt increased by batadv_hardif_get_by_netdev() is
not decreased, causing a refcnt leak.

Fix this issue by jumping to "out" label when batadv_parse_throughput()
returns NULL.

Fixes: 0b5ecc6811bd ("batman-adv: add throughput override attribute to ha=
rd_ifaces")
Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/sysfs.c b/net/batman-adv/sysfs.c
index c0b00268aac4..0f962dcd239e 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -1150,7 +1150,7 @@ static ssize_t batadv_store_throughput_override(str=
uct kobject *kobj,
 	ret =3D batadv_parse_throughput(net_dev, buff, "throughput_override",
 				      &tp_override);
 	if (!ret)
-		return count;
+		goto out;
=20
 	old_tp_override =3D atomic_read(&hard_iface->bat_v.throughput_override)=
;
 	if (old_tp_override =3D=3D tp_override)
--=20
2.20.1
