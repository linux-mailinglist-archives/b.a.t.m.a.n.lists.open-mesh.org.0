Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 967A739FAEB
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Jun 2021 17:36:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B6C7883F1D;
	Tue,  8 Jun 2021 17:36:09 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 038F281708
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 17:35:30 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970dd3e020a52263b5aabfb3.dip0.t-ipconnect.de [IPv6:2003:c5:970d:d3e0:20a5:2263:b5aa:bfb3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 0498B17405C;
	Tue,  8 Jun 2021 17:29:53 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 0/1] pull request for net: batman-adv 2021-06-08
Date: Tue,  8 Jun 2021 17:29:46 +0200
Message-Id: <20210608152947.30833-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623166530; a=rsa-sha256;
	cv=none;
	b=gPUFqTcLp/r5JkvyhD8NIjDWlZGAx7DdTvE7JoG9PK8X0CcnA7Z8orIZgIjqNo8J8XF+dO
	trVrkQhzqXI4XItAvFKS+AzKT+ehJQfpn5SjwrwA8S3cGB8JXfeqTxobE08AqVYY4Yua9r
	xOQGMftzPxyZAvaalynOi61gsyIB+YM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623166530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=hHQYlclDw7MTvncAYAGAkHtoRIbbIICcDRtSa3Uzmw4=;
	b=wRa+9jrQxTncHSEYMzG2N+4dp7+9MYUyM3FQLmZhjongg19lDAWKppLiQv3qVib3DQH5cy
	+Sb7S+B2Y8ocJBaTzVWaYvHhbYkBwW9zWIEjuIjnkJPMx0Fwj8PPfcQ2k92r0FuRwK0RTm
	tQTTmyp+xGm324s3l3+F/ZZMlcWs5sw=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: UGSLVQXSLOXDJ5INTAMLTAVGNDASYGSA
X-Message-ID-Hash: UGSLVQXSLOXDJ5INTAMLTAVGNDASYGSA
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UGSLVQXSLOXDJ5INTAMLTAVGNDASYGSA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David, hi Jakub,

here is a bugfix for batman-adv which we would like to have integrated in=
to net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit b741596468b010af2846b75f5e75a842ce344a=
6e:

  Merge tag 'riscv-for-linus-5.13-mw1' of git://git.kernel.org/pub/scm/li=
nux/kernel/git/riscv/linux (2021-05-08 11:52:37 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-202=
10608

for you to fetch changes up to 9f460ae31c4435fd022c443a6029352217a16ac1:

  batman-adv: Avoid WARN_ON timing related checks (2021-05-18 21:10:01 +0=
200)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - Avoid WARN_ON timing related checks, by Sven Eckelmann

----------------------------------------------------------------
Sven Eckelmann (1):
      batman-adv: Avoid WARN_ON timing related checks

 net/batman-adv/bat_iv_ogm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)
