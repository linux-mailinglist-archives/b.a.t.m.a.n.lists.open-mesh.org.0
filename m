Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 222CB1D3B45
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2020 21:05:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D4C9881215;
	Thu, 14 May 2020 21:05:30 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589483116;
 b=bfXRcWZmEAyJhxn6tlX7EbKjlDon44QIsckprGsLTQNTetoyexSAlD9Tc4dKtcaL9lQvL
 v8aSi7Ut1wdROw6wZ6QMmQydW+AKZCvpeR6lOZnyw5zSYRLLFHkihMTWRQiBr7XiV4Dgu7b
 Io6QeaRcTHewf46kXveg52/Fi8zszjg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589483116; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=y6qr0BODiSoMgniviLT7UpPwWwlZd7zBV4PyBEW5zUA=;
 b=1bAE9yxPmcQgORVi2S2isVgkCuYlpkt2Y3vPENy7KJckSr6oH5J3LcNY85TcyK7lt30GP
 m8zxmB7PMkvLIbt/UlF5j8HHkucEiu6Eil7GOuTbEG3h2kEHmgbLuLydiYTZMuovxmxXkHb
 3aZeGbDuZDBRGXXbn9/4Zh4YhKV40zM=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail header.d=kernel.org;
  arc=fail;
  dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail header.d=kernel.org; arc=fail; dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 75D3980A63
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 21:05:13 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EB78D2076A;
	Thu, 14 May 2020 18:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1589482556;
	bh=GiW5jJVTAQv8wgCT0GNmmSwq7wuYgS+rkA7XRNs5qCE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=h0kLCR/GOyVH4F++9DtbyjwpyATpdpMY/eP943uLI+/5KkRFczogYG2cMLolnzDZz
	 SzZ8OoOStYYmql/Cctm3cZXrMMHrTGKZiWKTgrMQDbWZ8D++YFc+68Yrq3Dh7BIKiS
	 UbqBiiVdB0V4fc5LyIhmDDHYj+DXFne/715Hodqk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 05/27] batman-adv: Fix refcnt leak in batadv_show_throughput_override
Date: Thu, 14 May 2020 14:55:28 -0400
Message-Id: <20200514185550.21462-5-sashal@kernel.org>
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
	bh=T0MnEfhBgHTtvhPOzxYcdkcqOUIKPmGawt8kHy69rIk=;
	b=sCGAh/0rXvCdR9G635iR9Abw5u7lD6eaTvWIwYgDPaqm6572XWM1ALIpahvOhrH3Bnabzn
	kqua5uMuvYtRLbzlb0XH+HodCZP3/JQVWf53fUZ7w5FFQPZgk/AfM47Tykr49KQPRExdlz
	neeRPaSBv5lJ/QHSgGxUVdtMx45t/d8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589483113; a=rsa-sha256;
	cv=none;
	b=SFcGPWRT4qfwjuQXYnmAqZ+SQGiXnvYcRyBSamJx93MsguxGkt+z2q8IqfLR7+kH21ALiM
	cmvW84IowDQoZU+Zx/+cRzE9ar0ipfdovzEMh1DTLjQ6EIUjS4xk6fRm6AwoQxzfLDMYAf
	06Dlg3N3IswhFB9635p+zkLYKCL1dRs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=h0kLCR/G;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XOKMURTGWCPY45AWAXGC5XQDTEY2BUXJ
X-Message-ID-Hash: XOKMURTGWCPY45AWAXGC5XQDTEY2BUXJ
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>, Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XOKMURTGWCPY45AWAXGC5XQDTEY2BUXJ/>
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
index 31d7e239a1fd6..d3fb5396f9473 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -1120,6 +1120,7 @@ static ssize_t batadv_show_throughput_override(stru=
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
