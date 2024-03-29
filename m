Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BF48918B5
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 Mar 2024 13:27:25 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9CAE681A4F
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 Mar 2024 13:27:25 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1711715245;
 b=3191jilM7SgS3C7557ubZ3E4RFd1ZI4Rm0XzA0SPmTnOR2c80uYbfS1hmgieK+/zZDyaT
 v9PgGbZ4/j5m5fCqX2K1atR44CYQMO0JFJ8SeDHBoHeXQ6uUx5iyqFzdSXgkhCQsZE455/N
 8D58N2BbkBTLH0xQpdVswlzejI06jdk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1711715245; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=s4yJ8gk0Tn/fau0AMNdev4V9KwGxS1PgFngIyyrDoUg=;
 b=ozKgenMyJD7kba7o/w7zTBqt6Cr+HFOp4OocN2ZEyP885bVNH5QVHFXbcRAbJVCmoYxhS
 yMvnuHgwXC9i7+KqdYNkJJC63itoS8LPSeuPcGcU1Xlv/YdLv/V4mGxsfcOOqja8NY5fRAZ
 MiI3WdCSRbIwoEzTQKDh17RfYogx8eA=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kernel.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9848A80983
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 29 Mar 2024 13:27:01 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1711715221;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=s4yJ8gk0Tn/fau0AMNdev4V9KwGxS1PgFngIyyrDoUg=;
	b=viOOX0TPOrifipgMgc4ZymLhvywPPVB6a3moFtZFotm6HHh+1mSn2be2RgYg4RwYG9iY5T
	Z27BIKNkbcWrn0bAh7s+gB5QX2mvLG90wMY4VZod92jVR+UPLLBSShgGEiorSeNlCXOQsx
	V1vnSwok7ohv3SY51487pv7kmjUGK5U=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1711715221; a=rsa-sha256;
	cv=none;
	b=v/EeeL2Z9korI0LmjUJZ3aQYEbLRJVRsBSzs32jgCvzkLRoOhP6M8P35nZVnwZQaKdsoZV
	KSzboQFlBbUGxEI+RZqQVFD1bihRKNu14685MXQoyTbkNTmy7UxznWnXFNalpFCKn62Ne3
	ZfKXVjPIoO9Gseh7oAMv0syWithXI8U=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=MZEURV6i;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 55E06CE2F7B;
	Fri, 29 Mar 2024 12:26:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2639EC43399;
	Fri, 29 Mar 2024 12:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711715218;
	bh=SEsbnjgbOnrUNykRPC13YRzmbgzyK5QZUYeQcKRJKlk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MZEURV6iWnCNJ7yJV8iareyCNKLgwdeAz8lFIL/2wrW+uBCbXAldkgpnKJUOz9GXN
	 dKjoNKQPogabjc+Icw5+6sI9s0Z96tYppcHwdn7K40IK6mkZZaDl7nbUasjvutHDym
	 PBQbAPmYNU0Fp1vkw3M1kEQICd/GcsJP/BNYmoK5Qfgh4nlyzYqciVdWE2nW1fcyGX
	 rdv4Wtvu1rco+vswYnqqRCkQ2gGPaFAJXraWbadkIRtUBwsmgqXjmL5pNmL8IwwQqc
	 iPT00MBi6xsvDgKaqEX8HvCxx3oFCunny4EPn3WIEhS/lhBktnxfgTHo+/DwF/mkn5
	 wZnSBndSvuvpw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Markus Elfring <elfring@users.sourceforge.net>,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Sasha Levin <sashal@kernel.org>,
	mareklindner@neomailbox.ch,
	a@unstable.cc,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	b.a.t.m.a.n@lists.open-mesh.org,
	netdev@vger.kernel.org
Subject: [PATCH AUTOSEL 6.8 04/68] batman-adv: Return directly after a failed
 batadv_dat_select_candidates() in batadv_dat_forward_data()
Date: Fri, 29 Mar 2024 08:25:00 -0400
Message-ID: <20240329122652.3082296-4-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329122652.3082296-1-sashal@kernel.org>
References: <20240329122652.3082296-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.8.2
Content-Transfer-Encoding: 8bit
Message-ID-Hash: QASU5NHIES4SPO6DBEVVYBJAO7TQTI46
X-Message-ID-Hash: QASU5NHIES4SPO6DBEVVYBJAO7TQTI46
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QASU5NHIES4SPO6DBEVVYBJAO7TQTI46/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Markus Elfring <elfring@users.sourceforge.net>

[ Upstream commit ffc15626c861f811f9778914be004fcf43810a91 ]

The kfree() function was called in one case by
the batadv_dat_forward_data() function during error handling
even if the passed variable contained a null pointer.
This issue was detected by using the Coccinelle software.

* Thus return directly after a batadv_dat_select_candidates() call failed
  at the beginning.

* Delete the label “out” which became unnecessary with this refactoring.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
Acked-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/distributed-arp-table.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index 28a939d560906..4c7e855343245 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -684,7 +684,7 @@ static bool batadv_dat_forward_data(struct batadv_priv *bat_priv,
 
 	cand = batadv_dat_select_candidates(bat_priv, ip, vid);
 	if (!cand)
-		goto out;
+		return ret;
 
 	batadv_dbg(BATADV_DBG_DAT, bat_priv, "DHT_SEND for %pI4\n", &ip);
 
@@ -728,7 +728,6 @@ static bool batadv_dat_forward_data(struct batadv_priv *bat_priv,
 		batadv_orig_node_put(cand[i].orig_node);
 	}
 
-out:
 	kfree(cand);
 	return ret;
 }
-- 
2.43.0

