Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5103A27A802
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 28 Sep 2020 09:00:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E930A802AA;
	Mon, 28 Sep 2020 09:00:04 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3B53D802AA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 28 Sep 2020 09:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1601276401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=emHyX2KR2SMThD2Ge0PKIBUJdWHBibxpxmkGQGcBeCw=;
	b=xla3oOHx/Gw5pHoL/hL5Ipbt7nYjoHKphICFABA46+3WbN8b4vefloZdJtji5qAWj3la0i
	rzQ7D/bCXL/3hw/rm8iv513cZ0jKV2kxIRQKzcjDqHotl/PzJAmUMQj9kDMH8YR8ptYL18
	6kfy5cpgsJob8R6QvX+8of6iXZOIgio=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH] net: bridge: mcast: rename br_ip's u member to dst
Date: Mon, 28 Sep 2020 08:59:58 +0200
Message-ID: <1665109.RXYjxSXZkc@ripper>
In-Reply-To: <20200927191234.22423-1-linus.luessing@c0d3.blue>
References: <20200927191234.22423-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6311710.drN0L23qOB"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601276402;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=emHyX2KR2SMThD2Ge0PKIBUJdWHBibxpxmkGQGcBeCw=;
	b=qKDW2rbLGESe7KN4EEnXLMDxNxfDdvnsONqEDq25sIQPEH607SvdEGGOs1uiNLoRnOxdBs
	mKhhbv8ObSgPfDZj+sMUgnm1valV0ial6utkGEQQBeh9q0vpWQDQ5ELb23Xue/fnUYl8zJ
	8uKy6Y9wdEMUdMAaMPmc5sF5BVR/lS0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601276402; a=rsa-sha256;
	cv=none;
	b=VcJCfKL4Jga2jrgRfXudtWtUbzMTOlwFPkTKlkeySkpziKW7tN+zShYk/F0ZbCTvQYfDT3
	hNupVM9HM+lshLmkv+kH6kP0g4Q6PIE+UIm6TsrCoUotXbvwsKuyGmQlJkC1zvQBEJqIEk
	VCHIMKo7yCUV2hFCx9if1Y2AtGqHF+I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=xla3oOHx;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: FULJIJL3IRBSZ2UOKLLFLQU7M6KMCXJA
X-Message-ID-Hash: FULJIJL3IRBSZ2UOKLLFLQU7M6KMCXJA
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Nikolay Aleksandrov <nikolay@nvidia.com>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FULJIJL3IRBSZ2UOKLLFLQU7M6KMCXJA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart6311710.drN0L23qOB
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

[...]
> +#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_IF_BRIDGE_H_
> +#define _NET_BATMAN_ADV_COMPAT_LINUX_IF_BRIDGE_H_
> +
> +#include <linux/version.h>
> +#include_next <linux/if_bridge.h>
> +
> +#if LINUX_VERSION_IS_LESS(5, 10, 0)
> +
> +struct batadv_br_ip {
> +	union {
> +		__be32  ip4;
> +#if IS_ENABLED(CONFIG_IPV6)
> +		struct in6_addr ip6;
> +#endif
> +	} dst;
> +	__be16          proto;
> +	__u16           vid;
> +};
> +
> +struct batadv_br_ip_list {
> +	struct list_head list;
> +	struct batadv_br_ip addr;
> +};

Better than my version but the BUILD_BUG_ON for all used fields are missing.

diff --git a/compat-include/linux/if_bridge.h b/compat-include/linux/if_bridge.h
index c4f9bc08..9a4cceca 100644
--- a/compat-include/linux/if_bridge.h
+++ b/compat-include/linux/if_bridge.h
@@ -10,6 +10,7 @@
 #ifndef _NET_BATMAN_ADV_COMPAT_LINUX_IF_BRIDGE_H_
 #define _NET_BATMAN_ADV_COMPAT_LINUX_IF_BRIDGE_H_
 
+#include <linux/bug.h>
 #include <linux/version.h>
 #include_next <linux/if_bridge.h>
 
@@ -31,6 +32,23 @@ struct batadv_br_ip_list {
 	struct batadv_br_ip addr;
 };
 
+/* "static" dropped to force compiler to evaluate it as part of multicast.c
+ * might need to be added again and then called in some kind of dummy
+ * compat.c in case this header is included in multiple files.
+ */
+inline void __batadv_ip_list_check(void)
+{
+	BUILD_BUG_ON(sizeof(struct batadv_br_ip_list) != sizeof(struct br_ip_list));
+	BUILD_BUG_ON(offsetof(struct batadv_br_ip_list, list) != offsetof(struct br_ip_list, list));
+	BUILD_BUG_ON(offsetof(struct batadv_br_ip_list, addr) != offsetof(struct br_ip_list, addr));
+
+	BUILD_BUG_ON(sizeof(struct batadv_br_ip) != sizeof(struct br_ip));
+	BUILD_BUG_ON(offsetof(struct batadv_br_ip, dst.ip4) != offsetof(struct br_ip, u.ip4));
+	BUILD_BUG_ON(offsetof(struct batadv_br_ip, dst.ip6) != offsetof(struct br_ip, u.ip6));
+	BUILD_BUG_ON(offsetof(struct batadv_br_ip, proto) != offsetof(struct br_ip, proto));
+	BUILD_BUG_ON(offsetof(struct batadv_br_ip, vid) != offsetof(struct br_ip, vid));
+}
+
 #define br_ip batadv_br_ip
 #define br_ip_list batadv_br_ip_list
 


--nextPart6311710.drN0L23qOB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9xie4ACgkQXYcKB8Em
e0Yv3Q//Sz4UmOJh/GkzCL59VxKAQ5zP6/5k120bJ9Sun81gTHMP16Wa8K1T8IRH
hj+6oeWGEha5OkwfDrRrqUfjmzeo6O25SiKGemRF/ueoabVQEzhsKRoDxLJaTmng
XiBR++kBgS8/Ir+IHf6P9LbK9+2lTiIFK2ZDn9vnARr+5EIQVVvkSQGMgftX5A3e
UdBhwnS2Hw3963cEZ5F1mMLSCvkDnyhFodtcvFzwxHQiaq9gERKvcAo+tEFIPpnp
UK2niCeR2zzU5irvbAmnVQJEB00Z4+wtYP/rnSSqad4eXCQf6itmhXVew4HpaUie
aTJ6nh78rzSnUco9qrVD8n0tOt7Zj3gjryKG8DRTEdDDcAtaM82YKteu1XvqzVcw
FU7sFFmSAM63rlV0heNRMS9a/LHZca+kjP3RLjSG+WKmMLD1xfwExfkrRbNbs1yY
122IdWR9KXh97YIr9hsMoKHlmFK0aGZuYap26/u5VeXRv6yGVW2jvtDST38C3RF1
RfLklgr7BB/B45IZsYxPDRtwH+dhYR23AHOXKScmSngIscAFqazw6Ol3y1qFJODy
eBDwBGvMTEmxZS00K80nyXPFUZVyaoiirTAnVFy6H74yT7XpSPvu5Kr5p2LstOdw
nn1uAQiJFQLO7OMfkC0O1C9pTI/CvWXi+wTOmg1DHJBY7YcCY2M=
=w8kn
-----END PGP SIGNATURE-----

--nextPart6311710.drN0L23qOB--


