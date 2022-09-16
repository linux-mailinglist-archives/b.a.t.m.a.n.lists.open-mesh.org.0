Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id EECA05BB0E8
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 16 Sep 2022 18:09:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D3A2B815BA;
	Fri, 16 Sep 2022 18:09:40 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8846180090
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 16 Sep 2022 18:09:36 +0200 (CEST)
Received: from kero.packetmixer.de (p200300C5973C57d0711f6270F7f2cd25.dip0.t-ipconnect.de [IPv6:2003:c5:973c:57d0:711f:6270:f7f2:cd25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 25D58FA29F;
	Fri, 16 Sep 2022 18:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1663344576; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TALuOfVa+seOrky7V+Hq5lLBNa/KjchPIIZ4gveoG5E=;
	b=NRz+hPFndTET5A6ib6EYtblSXBWFumWxOH7AThpBafgeP9jmvK9tdtATj4R+7mMNWkbH61
	pDJVJZaSZ0z16BQD6c1P9JR00TuZQYuoKVSZJaxiNN8PjPyZw0iRtpOnxKB9M25gsjfMiS
	12sqs5ZACphdPFGRQ0U6HMS8DkWNuRldlxaY4M3Tj0KUVujxiJVUss+RxCZXq1gfX7wb9y
	fRUrkbflrhoVa5KoG3sIjY8t7WoPHfuw6gWrHJ1U4F09BbdjhRymqNik1+aQGp/eD2oAlj
	I9sxgMysJi7UdBuiG4CDOKXcCzhbEIC2VlBhEZBhvhOJwakHNPvmegWsE5OfhA==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 1/1] batman-adv: Fix hang up with small MTU hard-interface
Date: Fri, 16 Sep 2022 18:09:31 +0200
Message-Id: <20220916160931.1412407-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220916160931.1412407-1-sw@simonwunderlich.de>
References: <20220916160931.1412407-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=simonwunderlich.de; s=09092022; t=1663344576;
	h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TALuOfVa+seOrky7V+Hq5lLBNa/KjchPIIZ4gveoG5E=;
	b=ASBtFTffQ/8tYkPcG/Pv5OwNlPn+4RtJzIWeWyhB7yjmGPOJZkQZlvL9k8//MGPAz5IAXu
	uhYlbCusMCBhHRR2ZrDJ7J2s3GppkpXNJDi4QQoSFBBWUUKNdfnRkJPH9Qs7262tdOTBZM
	rZV7ClSwgVO0rvzmK779n/WaVh2n5i7Pa3WsDXzxIuojDAqhnWOVOV5F9eepSGwT0MOoN7
	e6gN822ECF5z7S73jsEGspT/Gg8y0OIEonwUdcRGnKM2pPrXDeo6wzxFMZ1Vwfq0GFYyBs
	l2cyTr8Kzt6zZgRRQnpPnC3bfMPSHxcZOJLi6RXQqUSBP2hJeKN/3i1TQUZE2g==
ARC-Seal: i=1; s=09092022; d=simonwunderlich.de; t=1663344576; a=rsa-sha256;
	cv=none;
	b=Yy/ByGTAEg6o/NCCxwWRErBwTLzGRL3+VfgAWIBbYb7nP1W0hZyHlQq5Xkpbm4B/x3H8CAi2q3B9MciSeRh/J1qOoLU1YXShN82gflENE8qGou+dTzJVzzQoS+oYW7AdJOCNLkFiYK1CyUAdil8IViEs0Eh49HHpiFym+FYWmocQeBAifaJyRAinEDy+tWCWsRtiiiLSfiMB841I8ugDpzkLhg0mtIHudsGlwR2lDl0xY4w6hE86txy4qXymhn54LRVzZrgD6Re2NqQ46H/uwybgwghJ769/Rz19u6wDJEJKUMJaY6QDn9lrDC8hk13c3R/XIEbUdtXFShcqDKK8nQ==
ARC-Authentication-Results: i=1;
	simonwunderlich.de;
	auth=pass smtp.auth=sw@simonwunderlich.de smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663344576;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=TALuOfVa+seOrky7V+Hq5lLBNa/KjchPIIZ4gveoG5E=;
	b=vndZD3UsiLhDkSstBiLoPXN8eJz664IJoz2jXcCExh72/tu5ujmy6xpDYh3tz8Pjpo1WHH
	CHkpJmBN2P/iJ3fODHTn5FS81Zk2sCLN7ROmtNFXMuiU8M/yEfdO2e/oHRV8RkYt3yot+D
	VF0dH1qdAVNKOVGZHtqPh1gQp6h3J4c=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=NRz+hPFn;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("simonwunderlich.de:s=09092022:i=1");
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1663344576; a=rsa-sha256;
	cv=pass;
	b=B+AFYkw3TedCXsY5rkm2jYmlf8Ild+Xq5EHUDBydQjBBKFqqY/9WXLebnTiTDZBWuRLk/Z
	HpPNsqBADq6OSZ5R01eDDJuGfJB2YRfrNH6MwihjQoD47uHNn7SWCNXPLSbubzHnbx7YJU
	o1iltaT5jtgBOIvEkj38mr3NnMrCPzA=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2FZL3RTTMX27DH2262HT3PGMFK4TRKI3
X-Message-ID-Hash: 2FZL3RTTMX27DH2262HT3PGMFK4TRKI3
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Shigeru Yoshida <syoshida@redhat.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2FZL3RTTMX27DH2262HT3PGMFK4TRKI3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Shigeru Yoshida <syoshida@redhat.com>

The system hangs up when batman-adv soft-interface is created on
hard-interface with small MTU.  For example, the following commands
create batman-adv soft-interface on dummy interface with zero MTU:

  # ip link add name dummy0 type dummy
  # ip link set mtu 0 dev dummy0
  # ip link set up dev dummy0
  # ip link add name bat0 type batadv
  # ip link set dev dummy0 master bat0

These commands cause the system hang up with the following messages:

  [   90.578925][ T6689] batman_adv: bat0: Adding interface: dummy0
  [   90.580884][ T6689] batman_adv: bat0: The MTU of interface dummy0 is=
 too small (0) to handle the transport of batman-adv packets. Packets goi=
ng over this interface will be fragmented on layer2 which could impact th=
e performance. Setting the MTU to 1560 would solve the problem.
  [   90.586264][ T6689] batman_adv: bat0: Interface activated: dummy0
  [   90.590061][ T6689] batman_adv: bat0: Forced to purge local tt entri=
es to fit new maximum fragment MTU (-320)
  [   90.595517][ T6689] batman_adv: bat0: Forced to purge local tt entri=
es to fit new maximum fragment MTU (-320)
  [   90.598499][ T6689] batman_adv: bat0: Forced to purge local tt entri=
es to fit new maximum fragment MTU (-320)

This patch fixes this issue by returning error when enabling
hard-interface with small MTU size.

Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
Signed-off-by: Shigeru Yoshida <syoshida@redhat.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index b8f8da7ee3de..41c1ad33d009 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -10,6 +10,7 @@
 #include <linux/atomic.h>
 #include <linux/byteorder/generic.h>
 #include <linux/container_of.h>
+#include <linux/errno.h>
 #include <linux/gfp.h>
 #include <linux/if.h>
 #include <linux/if_arp.h>
@@ -700,6 +701,9 @@ int batadv_hardif_enable_interface(struct batadv_hard=
_iface *hard_iface,
 	int max_header_len =3D batadv_max_header_len();
 	int ret;
=20
+	if (hard_iface->net_dev->mtu < ETH_MIN_MTU + max_header_len)
+		return -EINVAL;
+
 	if (hard_iface->if_status !=3D BATADV_IF_NOT_IN_USE)
 		goto out;
=20
--=20
2.30.2
