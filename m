Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B713B33927E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Mar 2021 16:55:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 34D798121A;
	Fri, 12 Mar 2021 16:55:15 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C027180831
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 12 Mar 2021 16:55:11 +0100 (CET)
Received: from kero.packetmixer.de (p4fd57512.dip0.t-ipconnect.de [79.213.117.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 891DF174022;
	Fri, 12 Mar 2021 16:47:32 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 0/1] pull request for net-next: batman-adv 2021-03-12
Date: Fri, 12 Mar 2021 16:47:23 +0100
Message-Id: <20210312154724.14980-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1615564511; a=rsa-sha256;
	cv=none;
	b=u9Rb+ZYRi0By74n37CpsBAOPcJ77kW4/xfVgHFBsYpP2eeoHRHUNAtGwj+FNxPVeFT56z2
	J9U3epJP2MZdIaO5G/qi1A0qp5JxA2XgN2f8ok5ymg1pFDgqG+/tm2g5txaDJn84XXPoPk
	tOBlsveFde/bSVtXIYaJvv+x9gogU/Y=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1615564511;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=LadDoRFNrDZSleF1a8twkAeEjZR1NPy++KOvSf/ShM8=;
	b=pK2HCYGT0osdA4E//JINXQ7cPv3DE6dpRNCZUz8TE/2+7R3odVBeIxvIDYBpKG5vzDqPos
	hBWra+PA/nu6AtYNrtEUZNMxGLeTpYHA7G9YGhdPm78mDT3sho4IsA7qjo3nxjSVh2VCon
	EMMin57RzznhJr+2Jk1EF8pyY0uTAwY=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: N2U2WJCXGF4ALN5HTFSJ62L4NZG6E2WH
X-Message-ID-Hash: N2U2WJCXGF4ALN5HTFSJ62L4NZG6E2WH
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N2U2WJCXGF4ALN5HTFSJ62L4NZG6E2WH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Jakub, hi David,

this time we only have one patch in the pull request of batman-adv to
go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 25d81f9307ffc166427d93152498f45178f593=
6a:

  batman-adv: Fix names for kernel-doc blocks (2021-02-06 09:22:45 +0100)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-pullrequest-20=
210312

for you to fetch changes up to b1de0f01b0115575982cf24c88b35106449e9aa7:

  batman-adv: Use netif_rx_any_context(). (2021-02-13 18:08:40 +0100)

----------------------------------------------------------------
There is only a single patch this time:

 - Use netif_rx_any_context(), by Sebastian Andrzej Siewior

----------------------------------------------------------------
Sebastian Andrzej Siewior (1):
      batman-adv: Use netif_rx_any_context().

 net/batman-adv/bridge_loop_avoidance.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)
