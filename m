Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2493E339B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  7 Aug 2021 07:26:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E4B9581AD3;
	Sat,  7 Aug 2021 07:26:33 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 16083802F7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  7 Aug 2021 07:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1628313589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=h1QUnGLdONHQuSJVq1E6cjdO0O+nvnUV/x2v5Na9lpQ=;
	b=xOmHqIjGAZfrFDUN/7KRU2Ie+o7SF0gASf9ju208PXzcyeVdjb1ikuSmEP9liHQ9CgI469
	D7nH6SxSh2+zt4LvpCpMsQ2PZWj8UCZRXKERgrdT3xnopm5Q87myfvxkUsiwoEuuVjX9DC
	r2OtniyatAj11mJkOMyeOYaXaaV73VM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/2] batman-adv: compat: add the case if dev is NULL
Date: Sat,  7 Aug 2021 07:19:41 +0200
Message-Id: <20210807051942.38538-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1628313988;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=h1QUnGLdONHQuSJVq1E6cjdO0O+nvnUV/x2v5Na9lpQ=;
	b=rk8YgVB+bqW8szmgPCWLSYom/hxyFaqlQEw168DDyYwYHIhv7TtZJ+38TM9CDFg1QWiw71
	rzt9xv0744xB1aZmhK5lwE+UYx2BiCTUjra9GDsO8LlFzxDAQ4LpyRZ168FPA+HoRvZ8mr
	H4TciHjAK8IAcdQR11m1+yMmjpQLahA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1628313988; a=rsa-sha256;
	cv=none;
	b=1Iywuu3EUUdfdUvdn7vSo45Yq3V+a8mX7otHnzjzmrJNRmwYaENPpCq5jIEBqmX+zvM3Y7
	WxUOpUkGCyQcWrfbQt+e+kC7mJLmV5KE0ObJT7dZvz7l0lGWPJn5FYbny4901764M8Ztnw
	z2KiNDKh8seowHXaAOhM4vrFPfi5qfA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=xOmHqIjG;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: BFAEA6ZQEFCWE3UYBAXSWQDCIQL5I2OV
X-Message-ID-Hash: BFAEA6ZQEFCWE3UYBAXSWQDCIQL5I2OV
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BFAEA6ZQEFCWE3UYBAXSWQDCIQL5I2OV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Yajun Deng <yajun.deng@linux.dev>

Add the case if dev is NULL in dev_{put, hold}, so the caller doesn't
need to care whether dev is NULL or not.

Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
Signed-off-by: David S. Miller <davem@davemloft.net>
[sven@narfation.org: Convert to compat code]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/linux/netdevice.h | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/compat-include/linux/netdevice.h b/compat-include/linux/netd=
evice.h
index 8f01b48f..9a62afcc 100644
--- a/compat-include/linux/netdevice.h
+++ b/compat-include/linux/netdevice.h
@@ -67,4 +67,27 @@ static inline int batadv_netif_rx_any_context(struct s=
k_buff *skb)
=20
 #endif /* LINUX_VERSION_IS_LESS(5, 10, 0) */
=20
+
+#if LINUX_VERSION_IS_LESS(5, 15, 0)
+
+static inline void batadv_dev_put(struct net_device *dev)
+{
+	if (!dev)
+		return;
+
+	dev_put(dev);
+}
+#define dev_put batadv_dev_put
+
+static inline void batadv_dev_hold(struct net_device *dev)
+{
+	if (!dev)
+		return;
+
+	dev_hold(dev);
+}
+#define dev_hold batadv_dev_hold
+
+#endif /* LINUX_VERSION_IS_LESS(5, 15, 0) */
+
 #endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_NETDEVICE_H_ */
--=20
2.30.2
