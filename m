Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 436844CAA35
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 17:30:57 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5011E827A3;
	Wed,  2 Mar 2022 17:30:55 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2EA3D8064F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 17:30:52 +0100 (CET)
Received: from kero.packetmixer.de (p200300C597470fC0D439FBe5c3508408.dip0.t-ipconnect.de [IPv6:2003:c5:9747:fc0:d439:fbe5:c350:8408])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id D7F6CFA1EB;
	Wed,  2 Mar 2022 17:30:51 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 0/3] pull request for net: batman-adv 2022-03-02
Date: Wed,  2 Mar 2022 17:30:46 +0100
Message-Id: <20220302163049.101957-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646238652; a=rsa-sha256;
	cv=none;
	b=1w3aoe/IFmXML0kUSNejYRbAtlCAAVVoKZKXi3kwLRqRfXMi4Q1/uEEk0knqgfQCaR/t9z
	npPrEOXq+l032nc/3cFS2tgo7Wbt69XGi1v6ZrOg/CXUemVnxG0nMxo+NOeJvLzSgzq7J1
	ObNsXzSFoxYNyTfWzllzzKX5kOtvFHQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646238652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=L5aFN6TkdOQG/bNW1G461vP1zNZfZJQlFw1QFjMY1rA=;
	b=f6vxvRug3Z+auFLw3BFCbBTtLGnPxkUeeUZYULJV6oQnwuTB+TJfSmodtvl43Uyphe2TMM
	222XCjfBqLha6qaZDDKeSiU55F4UaYBI9gRTtL0YqZsR90EjWMvAPakjNpiYcBlr8cv1aG
	t3owUtk9D5e9b9dQZbHXTcqM2pPkmA8=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: VN55AD5DPMQAT5NRYO4UGU5EEO4ETGJW
X-Message-ID-Hash: VN55AD5DPMQAT5NRYO4UGU5EEO4ETGJW
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VN55AD5DPMQAT5NRYO4UGU5EEO4ETGJW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David, hi Jakub,

here are some bugfixes for batman-adv which we would like to have integra=
ted into net.

Please pull or let me know of any problem!

There might be a small merge conflict between the net and net-next pull
requests which I both send today, specifically those two commits:

* (batadv/net) 690bb6fb64f5 ("batman-adv: Request iflink once in batadv-o=
n-batadv check")
* (batadv/net-next) 6ee3c393eeb7 ("batman-adv: Demote batadv-on-batadv sk=
ip error message")

They should be resolved like this:=20

--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -167,13 +167,7 @@
 		return false;
=20
 	/* recurse over the parent device */
-<<<<<<<
-	parent_dev =3D __dev_get_by_index((struct net *)parent_net,
-					dev_get_iflink(net_dev));
-=3D=3D=3D=3D=3D=3D=3D
 	parent_dev =3D __dev_get_by_index((struct net *)parent_net, iflink);
-	/* if we got a NULL parent_dev there is something broken.. */
->>>>>>>
 	if (!parent_dev) {
 		pr_warn("Cannot find parent device. Skipping batadv-on-batadv check fo=
r %s\n",
 			net_dev->name);

Thank you,
      Simon

The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac=
07:

  Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-202=
20302

for you to fetch changes up to 6c1f41afc1dbe59d9d3c8bb0d80b749c119aa334:

  batman-adv: Don't expect inter-netns unique iflink indices (2022-03-02 =
09:24:55 +0100)

----------------------------------------------------------------
Here are some batman-adv bugfixes:

 - Remove redundant iflink requests, by Sven Eckelmann (2 patches)

 - Don't expect inter-netns unique iflink indices, by Sven Eckelmann

----------------------------------------------------------------
Sven Eckelmann (3):
      batman-adv: Request iflink once in batadv-on-batadv check
      batman-adv: Request iflink once in batadv_get_real_netdevice
      batman-adv: Don't expect inter-netns unique iflink indices

 net/batman-adv/hard-interface.c | 29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)
