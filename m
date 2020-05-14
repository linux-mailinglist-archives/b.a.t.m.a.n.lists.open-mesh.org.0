Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7851D3AE3
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2020 21:00:16 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 81D7F80C4C;
	Thu, 14 May 2020 21:00:15 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589482814;
 b=spVN+gaGw1itcLdtJUHtsXAYwDjzu0SuYpg1VQl9qClqGGhiektGCpD5a+1xutvkOuoLx
 lzVlrilMcP03OG3W8RnuOhI16Z+HMMYZHXJI0vs2UQlKoyT056Q7I+XxZ1uBx8EK6/LEZIS
 /FyCbglbROZmqVXvlExrFhmB7R5hIhU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589482814; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=FDko3cnm3KY7sbM99mWKnNAJRaJ5PWGc8BlgHRbcVnY=;
 b=HSje1VAlx3TXn/8fY+NFptfib3dI3Ana2ADOgaP4odAwIVx1eC6ThMomG/YFzDBUMcx3h
 BAuFH9bgrkWxF+QL1lVWOiPLUL6L+3roG4gDK1wBlAzXxVWWNPeU8Okm2Pb1dvDZiIUo5JK
 b93IhBhbvTMn/zudpQ5nBrXkq8rc9t4=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail header.d=kernel.org;
  arc=fail;
  dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail header.d=kernel.org; arc=fail; dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5B44580046
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 21:00:13 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A0A9207DF;
	Thu, 14 May 2020 18:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1589482506;
	bh=3eUkQF/DEyxKmXqfZNKApdC2wT8+Z+Tejs2ARbaEbM0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=1Nu5+3KD31J/cTr0gLIIrCYLf+pd5ITUovT8A6vJmzlCnz1DCe44XZWcGYTfUwng0
	 OSvgqkbhqW3gi0ssyUfQnhPFzsPSKEdTlByhNi9DxYd6QJSZdsEn2Snc7zkfP4jjc8
	 UwKisFNw1MzTwjNzIAL0vlrOcVRlVRIbLAQzm6/4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 07/39] batman-adv: Fix refcnt leak in batadv_v_ogm_process
Date: Thu, 14 May 2020 14:54:24 -0400
Message-Id: <20200514185456.21060-7-sashal@kernel.org>
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
	bh=6+nuRak1bz6nVP3vyczwu9t+RUnxe0BjHQDnZ1IhxuA=;
	b=Nc0uLd0rrXKWtZlBvhAhvYs6kBrx4Rwu7kU/gpjpYifx4QjXtydq6QYbptGdzBC5la5jyN
	VpOPBqHgWiIEshA+YV8iF6T72ODGxYN1kGpBhHRlOLOitapjiLyjT63ctMnBu3XMAo1Enz
	zXBae5OmRVpKO5qafRVRMYMsMOu62fs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589482813; a=rsa-sha256;
	cv=none;
	b=xjrZbXhLVriu1FZSI02VwuxaSCP/oc99yrRM3e2I6Cqu/2HiwX2JrnIvHubkucUQm9CsN0
	D9yb0ab+HA3lvW+x6S+LQyADNm53/37uaBa5ovxExBLb4hR23ETuDrg/dyNtSYbhm+x75E
	gntWaB5DvOyKsz8M/6QRCLk6YT6N1f8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=1Nu5+3KD;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 4CSBAGMUVQOUD3NYNLN3YVCRCCYYAYO5
X-Message-ID-Hash: 4CSBAGMUVQOUD3NYNLN3YVCRCCYYAYO5
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>, Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4CSBAGMUVQOUD3NYNLN3YVCRCCYYAYO5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Xiyu Yang <xiyuyang19@fudan.edu.cn>

[ Upstream commit 6f91a3f7af4186099dd10fa530dd7e0d9c29747d ]

batadv_v_ogm_process() invokes batadv_hardif_neigh_get(), which returns
a reference of the neighbor object to "hardif_neigh" with increased
refcount.

When batadv_v_ogm_process() returns, "hardif_neigh" becomes invalid, so
the refcount should be decreased to keep refcount balanced.

The reference counting issue happens in one exception handling paths of
batadv_v_ogm_process(). When batadv_v_ogm_orig_get() fails to get the
orig node and returns NULL, the refcnt increased by
batadv_hardif_neigh_get() is not decreased, causing a refcnt leak.

Fix this issue by jumping to "out" label when batadv_v_ogm_orig_get()
fails to get the orig node.

Fixes: 9323158ef9f4 ("batman-adv: OGMv2 - implement originators logic")
Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/bat_v_ogm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index cec31769bb3fc..f0abbbdafe07f 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -734,7 +734,7 @@ static void batadv_v_ogm_process(const struct sk_buff=
 *skb, int ogm_offset,
=20
 	orig_node =3D batadv_v_ogm_orig_get(bat_priv, ogm_packet->orig);
 	if (!orig_node)
-		return;
+		goto out;
=20
 	neigh_node =3D batadv_neigh_node_get_or_create(orig_node, if_incoming,
 						     ethhdr->h_source);
--=20
2.20.1
