Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4232C6AB5
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 27 Nov 2020 18:39:01 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E0537814F4;
	Fri, 27 Nov 2020 18:38:59 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4495C80303
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 27 Nov 2020 18:38:58 +0100 (CET)
Received: from kero.packetmixer.de (p200300c59712a4e04204e2f79fd8c031.dip0.t-ipconnect.de [IPv6:2003:c5:9712:a4e0:4204:e2f7:9fd8:c031])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id E54DC17405F;
	Fri, 27 Nov 2020 18:38:57 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 0/3] pull request for net: batman-adv 2020-11-27
Date: Fri, 27 Nov 2020 18:38:46 +0100
Message-Id: <20201127173849.19208-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606498738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lhB/UnLI/oXVP/MaevuhHFWPcOGpzOwveXgcL2SHm/s=;
	b=J1BERGMQkSP6QYE0NJYxSAz4CAoMsv2XC69bdvZcyduV+e0WztSuRdb1V0yP83yrTicfq2
	i+x/Rsl0P/rKPrk06NH5tIuEupZwMVj1iehOLQ5q5ozbfwfafCj6JnlRQim9lKTcAZslw+
	CNZhFfoEibwFqrp1NjVeP7N+WzDyIQo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606498738; a=rsa-sha256;
	cv=none;
	b=OeBajm4A2iomJhjj7KapbDjdCP7P2OeFUZaKFMpg870axrMxT60urRjtpwSPXeJsrrTGOx
	rxJe2yNVXJkGOXntJKzQD8xL6hGpHhXz7r3hgYdnqoYcOp+7DWyV9eSJT2IVWqlLYb1jyu
	zBT0LausLD7bp2rdLJKoLShrtt0lOCE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: FD5PNKE7HEFVBSC42PDSTU2SPMITKBIF
X-Message-ID-Hash: FD5PNKE7HEFVBSC42PDSTU2SPMITKBIF
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FD5PNKE7HEFVBSC42PDSTU2SPMITKBIF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David, hi Jakub,

here are some more bugfixes for batman-adv which we would like to have in=
tegrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 14a2e551faea53d45bc11629a9dac88f88950c=
a7:

  batman-adv: set .owner to THIS_MODULE (2020-11-15 11:43:56 +0100)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-202=
01127

for you to fetch changes up to 992b03b88e36254e26e9a4977ab948683e21bd9f:

  batman-adv: Don't always reallocate the fragmentation skb head (2020-11=
-27 08:02:55 +0100)

----------------------------------------------------------------
Here are some batman-adv bugfixes:

 - Fix head/tailroom issues for fragments, by Sven Eckelmann (3 patches)

----------------------------------------------------------------
Sven Eckelmann (3):
      batman-adv: Consider fragmentation for needed_headroom
      batman-adv: Reserve needed_*room for fragments
      batman-adv: Don't always reallocate the fragmentation skb head

 net/batman-adv/fragmentation.c  | 26 ++++++++++++++++----------
 net/batman-adv/hard-interface.c |  3 +++
 2 files changed, 19 insertions(+), 10 deletions(-)
