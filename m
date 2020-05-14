Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3893A1D3AE7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2020 21:00:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BA6F280E11;
	Thu, 14 May 2020 21:00:21 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589482815;
 b=lrjT0VEYyffi7fRBTxK55gOUiDO3S8Jaer8NAqCKdvGY5y4dmOK4kbtv2/g5c3cNRLFYL
 IzN3hkZJr7URwvZk/kKywse8JR0rJftOYDFToIdEtWHtiS2aCvz3svQba91zxTZMggFZuzX
 ZXUIiiBZuGjFYoJ1XgJ1FUXvtXhWkGQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589482815; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=N+Ry0VaUhx9qYh5Hl0J/v69p4pcXan+CeKv+YZ4JOrs=;
 b=aGvvB5D9bU0YkFnmKLhvyzWqUYABpGXOhKZpqO9iQfjg/iE5bED8GD0AxHGGxmS6RP09U
 DaLegecpdt8cjgW1F6M8sP1q9uWDJ0BW3lzlLN7FTcNnrti7i4g2y1qievbDVXI08yOGbHZ
 LT2hD5Od51+D9SEtO7tl6ZkEzfprcN4=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail header.d=kernel.org;
  arc=fail;
  dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail header.d=kernel.org; arc=fail; dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5F2FA80B72
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 21:00:13 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 583F7207BB;
	Thu, 14 May 2020 18:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1589482503;
	bh=GQQPOavFfPBT98ZzLIuwoLrM8LO+zapNgBcksf3AJgo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UiAW1phA9k28+vM8ArZFJSxJBh2I/AMMRrsYagqdSAyVnpZPhWukZfdj+1tY6tbZ/
	 S9NyTmVahoVFyOC0HMnrY5VMGfjxUZxKFYfYmzW4196w1887nzqOjr/qNYjL6lArBF
	 0XZM3wFRVA64f93SPPqFWDv1RRzLqVirQ/ULtlT8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 05/39] batman-adv: Fix refcnt leak in batadv_show_throughput_override
Date: Thu, 14 May 2020 14:54:22 -0400
Message-Id: <20200514185456.21060-5-sashal@kernel.org>
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
	bh=NvTvHUbw3zxkliMzybSB0+35MvieE3d+rz+GjfB0+pk=;
	b=zMb1ifuRN3T7men3N+40SfU7JIv4U+86oSVUGPXZZV8JFYp5bCdfHVIe2iTw0YqAoBRLLu
	8bLKm9rC9WAIG9YcVs0ryJzdJqZV9vGzHXR8j1fXPBhRUMMIHh4BrRU47vCTFRvbj+uXK5
	ucChvqUNWEtukd5fsX0fQX/ZECrZGMU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589482813; a=rsa-sha256;
	cv=none;
	b=e9MfcsijKgTTWQJSsvuHa/C5ZWkFX5WCne0a4ZSuK4r4PQc5FpcnXCZKCvrC16rwVqpnLu
	8rZEptHhP0AQqJYq4xelj382uLdTluIq5UOpgt+UDfP5BwBPXoIatr6Q8p1F4DyJoj3knU
	NKs2uXYA6WpdP//JILPeTWApcovVRiw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=UiAW1phA;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: BJPEAMHDP2GSFI76CBXXR4BHHKWBVLNV
X-Message-ID-Hash: BJPEAMHDP2GSFI76CBXXR4BHHKWBVLNV
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>, Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BJPEAMHDP2GSFI76CBXXR4BHHKWBVLNV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Xiyu Yang <xiyuyang19@fudan.edu.cn>

[ Upstream commit f872de8185acf1b48b954ba5bd8f9bc0a0d14016 ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/sysfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/batman-adv/sysfs.c b/net/batman-adv/sysfs.c
index 2ef9b136fc394..e44a7f29d598e 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -1114,6 +1114,7 @@ static ssize_t batadv_show_throughput_override(stru=
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
