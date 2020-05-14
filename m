Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BACE1D3B24
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2020 21:05:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4EA3280E06;
	Thu, 14 May 2020 21:05:17 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589483115;
 b=h1CwFC8qIlcqqtixexXstEsDOH7WDdM0m+8A4N5BzcsF8vnk5whInQJhFtLZrrDCNppIh
 zrO7gmBXzWAK2cKtVQrIKKFAJqi99Y8G8YLDQH5sKQBsJrJb+PSWqqE4MzsuVEDTjzd2/Es
 SI2ohznnlysz9e8FWFm4k01qykll89Y=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589483115; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=TFX551eIturOyn4kvjdyO1vTW4V952Q9Mz2pjbrjIZI=;
 b=dKme/w0d0b5pFpxyvM34aw00mpb6l+3f+qNnA7rwAsF056ZKgLAxewwKTx7APmvb9HnMO
 GdiDsTbPqhvNFdooMsHlHbbJmm/qwliX7IAuhGrtBNJ2tyxRv/JWsWqeyBkCvqiEv2jsyU4
 gSK/1C4CdpUzZ2WeC5RqLwm2iJD0KnM=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail header.d=kernel.org;
  arc=fail;
  dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail header.d=kernel.org; arc=fail; dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6F6F480562
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 21:05:13 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5ABBB207F9;
	Thu, 14 May 2020 18:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1589482558;
	bh=IdxDJ4cILLHt9n5npaAJu5uSTm4NIboZYU9S0usFxPI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rDJNivmpaI9nH0Eqh1NA92+M3cpyXgLRsZAJ2++p7N7MWTAWMmL2ya50f9tghtIAQ
	 NhWMN19HiQTPUFCEL1/BoPscyu/a6OyRIyKYtCgzhEhXIK7Bt3CgLvn+8MtVzvZDqz
	 BsK9R7Kc5mhFNgQEikWv2knXEdFS0NWD5lbIpUaA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 06/27] batman-adv: Fix refcnt leak in batadv_store_throughput_override
Date: Thu, 14 May 2020 14:55:29 -0400
Message-Id: <20200514185550.21462-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514185550.21462-1-sashal@kernel.org>
References: <20200514185550.21462-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589483113;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=avMEo7WX6n2WAQFvPoL08nqEsfPpjwfdG+zIQcr7EoA=;
	b=faS9UtP4YfuMRyOuvEOP7XxazI16x6OZKQQguzbSJ81BdVz+3ARANzjoZHS0Atexg52hC8
	Yz/Uyf27IcQSLGVpWawWSG0r/h0nLePLUkB+AzNR6Y0L7MKTyfpoY185eoaE9hqDRRNWeJ
	EDSoot2w+Cbmm83esqsiDQUwxCd+6So=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589483113; a=rsa-sha256;
	cv=none;
	b=rZgA3RxrUSIPtwHrlHph3GtRBZUlngOqffHKgRUPe0dwcYjnOl/A5C7+xqF9dil2TImiSw
	MB5STKXLPc0v24q+pCNsrctHzuwr6CgfDFJz+0CSlAUcske5yYDYL/QlBWTVypAWKRHhNa
	QYuDd81pGxja9ccJHLq1NJFt29Qedwc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=rDJNivmp;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SLP2KC462VFQVIP4PE4XYDNOYZY23LI7
X-Message-ID-Hash: SLP2KC462VFQVIP4PE4XYDNOYZY23LI7
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>, Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SLP2KC462VFQVIP4PE4XYDNOYZY23LI7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Xiyu Yang <xiyuyang19@fudan.edu.cn>

[ Upstream commit 6107c5da0fca8b50b4d3215e94d619d38cc4a18c ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/sysfs.c b/net/batman-adv/sysfs.c
index d3fb5396f9473..121e9e7d28cc5 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -1087,7 +1087,7 @@ static ssize_t batadv_store_throughput_override(str=
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
