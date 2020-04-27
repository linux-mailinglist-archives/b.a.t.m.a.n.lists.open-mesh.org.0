Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 198561BA775
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:11:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2B86481067;
	Mon, 27 Apr 2020 17:10:59 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588000252;
 b=Tfu3PaavY0Q8UTDurVKmFies4BKXP/dodxAAPuku+Ta7+lgEAmlv3TBIlFUcAc1BwNqfA
 2mnUlvy72tjDsfnQwUDAo0vOghI+r5SkzqxBkd2Qhb3ZJz9sMasOCQIFH/HTqXFVJGKv9OS
 b5cO4OgDOGHbC19mdF3OXBwuElj0qCE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588000252; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=XFQJM52hcgv7CgC7BOMGBCAtM3MoMC537/Rlgcbt3oI=;
 b=x0Sizs5bq3wq1eWL/k++ZXVSCpmM+MKDCJPvunwLk/ZF7tBkUBr+2RJP3LpCIzlhQgqtE
 UeaeSSBPmneqAEJIz5MBo1fafBA/Ah2aG6+mVyqa4zBQXTsdcGaCjW1tmhC1FhWRloD89aZ
 83l/4ogsd8aMZfSJdtlY1cCETvT7D+I=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6E86680B97
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:10:49 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 69F1B6205D;
	Mon, 27 Apr 2020 17:00:43 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 2/4] batman-adv: Fix refcnt leak in batadv_show_throughput_override
Date: Mon, 27 Apr 2020 17:00:37 +0200
Message-Id: <20200427150039.28730-3-sw@simonwunderlich.de>
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
	bh=foc0++gtkv0VNDpizzJPQrCPvEXpFCpIKZaxdMXtsks=;
	b=pD/V4U2pG/PVyJYPXipVusOn3/k2hglWq4ffFFJbCRoJPZlOHqLKSUdl8K0KPQCkIgzHgS
	u+1hVuLn8B4xNKHZyMMm/DQveILEVpzE6mpkr3Ju537dO3XnUubGkTCFOwJoTXo0LAj93e
	w4XdD4BzKbo00i1b2ywwvW1Ej3ze664=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588000249; a=rsa-sha256;
	cv=none;
	b=K7lwMuhYYWqHrvMTq3f5AKslwBSQzAcN2AgJTev7zFX3+p9Dkyum2V1KB8Q8xEfWwiSaDN
	iJx9SPm6PqqWwrPA2lXbx+ZISMQZAw+LvtbnEes76VF9q5iEV30xp4PALLn70IRntAa9EJ
	aIOMiF8Jp00OqPTZ1LsK4AteJtv0wZU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: EX2OLIWADGD5RO5CLER7OTFIPMUGWP5H
X-Message-ID-Hash: EX2OLIWADGD5RO5CLER7OTFIPMUGWP5H
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EX2OLIWADGD5RO5CLER7OTFIPMUGWP5H/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Xiyu Yang <xiyuyang19@fudan.edu.cn>

batadv_show_throughput_override() invokes batadv_hardif_get_by_netdev(),
which gets a batadv_hard_iface object from net_dev with increased refcnt
and its reference is assigned to a local pointer 'hard_iface'.

When batadv_show_throughput_override() returns, "hard_iface" becomes
invalid, so the refcount should be decreased to keep refcount balanced.

The issue happens in the normal path of
batadv_show_throughput_override(), which forgets to decrease the refcnt
increased by batadv_hardif_get_by_netdev() before the function returns,
causing a refcnt leak.

Fix this issue by calling batadv_hardif_put() before the
batadv_show_throughput_override() returns in the normal path.

Fixes: 0b5ecc6811bd ("batman-adv: add throughput override attribute to ha=
rd_ifaces")
Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/sysfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/batman-adv/sysfs.c b/net/batman-adv/sysfs.c
index c45962d8527b..c0b00268aac4 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -1190,6 +1190,7 @@ static ssize_t batadv_show_throughput_override(stru=
ct kobject *kobj,
=20
 	tp_override =3D atomic_read(&hard_iface->bat_v.throughput_override);
=20
+	batadv_hardif_put(hard_iface);
 	return sprintf(buff, "%u.%u MBit\n", tp_override / 10,
 		       tp_override % 10);
 }
--=20
2.20.1
