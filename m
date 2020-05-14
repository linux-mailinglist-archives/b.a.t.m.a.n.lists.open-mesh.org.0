Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7541D3AE9
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2020 21:00:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 400CF80E30;
	Thu, 14 May 2020 21:00:22 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589482815;
 b=JLgzvAXYNVYMP6mz+q3jQE+TGo2eOvDg3S6Z0UdwDS1aIlibBM4ph3gXpWtIquJuo//li
 KW6edDnT6DSgPm1sRT+aMs3gkz/oQLXmzByt/JxtBn61TQ2FocZl9sddlZiCuN/amIIe1jS
 PEL0O7UEhb7doenGxAgX9LStKw1tD4w=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589482815; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7FCBBXFfWhMyYuR+kOI98J3PHwyQo2wmY0DsobqiLvw=;
 b=WOPZak7ImePPaAh/I9Bjj66eby86+yqXysL/102e6QBRBQ4aK7zHcIcwZ9uNm88Fe3LEo
 hM4nMI+rLRtJDZT4fMjqUGDP63+OsR7QnnsGcQWZA/TArwI4nCUCMsXMCC+PsvMUwkLQ4DV
 lh3OygtmFA/T5iKoSs6iZ74fRNtFmNI=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail header.d=kernel.org;
  arc=fail;
  dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail header.d=kernel.org; arc=fail; dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6304980C4C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 21:00:13 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AF1D4207D4;
	Thu, 14 May 2020 18:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1589482504;
	bh=mnsnQNLchygybflZZZL8c9OSGC7fBb4sSVWGNXqw1kc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=twrzYFTjIZFf15o1O5YIWGWIIQV4icvIqpluvttbNRrv9c6DPpxDIW9/gbSGkh8Mj
	 yr7sT/vR4SCN79VocwK8aRM2y0NrJIri+19eVA4TlJNO5P0bzuSW5bbusKg3DifVbx
	 hTGn5VJ+o6JMvNIhtRiJmNcXB4C+Ox+UEZH18NmQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 06/39] batman-adv: Fix refcnt leak in batadv_store_throughput_override
Date: Thu, 14 May 2020 14:54:23 -0400
Message-Id: <20200514185456.21060-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514185456.21060-1-sashal@kernel.org>
References: <20200514185456.21060-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589482813;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=q2C7mE849jVGp/8xNOJCbsikvAi/e1OsQqCqpSGmL5o=;
	b=Shhwzeaij0LLvF1afGxz/FH05YV0544PAn+qFL77v9IHv6pnHwhIwVWlzs554oyXhT4SFN
	QsG9+EaSFYNkdd+FQaWWfLFYMdvNgIXeAq0PxcYpHH1IiUSl5n+JKtVyZgL0qtsL2KRM+L
	BFOo6Z4xuhiFODNtuAXe7AzNxo4zQ44=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589482813; a=rsa-sha256;
	cv=none;
	b=Wdhr67+hWCTOQ4UyVlTHyKP6o8kslmPw+HOyOCKORqJhpn0quLUWyqdbO5ffSVnOpRo+UK
	679TdghGFqUoLutMj6RzEcqC4dIh8OVQt4AxahzRkHq5l4dO7MHzyLpvMhY013qIPup3Hq
	oHNvgwnxvnl0F+svz3RYdBXbbvFM4Co=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=twrzYFTj;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: N4B4VFJYPPIPYJHCWUU22JMQZKO4DMEX
X-Message-ID-Hash: N4B4VFJYPPIPYJHCWUU22JMQZKO4DMEX
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>, Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N4B4VFJYPPIPYJHCWUU22JMQZKO4DMEX/>
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
index e44a7f29d598e..ed789845d195c 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -1081,7 +1081,7 @@ static ssize_t batadv_store_throughput_override(str=
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
