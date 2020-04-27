Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0F01BA737
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:06:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 70F1280DE1;
	Mon, 27 Apr 2020 17:06:12 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1587999971;
 b=ioprAPmwCyKq55QOXkRWWHYhDiV60KQ9gkQ/Xea9awSh+7JvgoYh4EFDNiTtftd3wnn/C
 yfFe6S0AT1Ktf8j7AW4ihOe658++xR6yHUgSVDMKDiFGJ4JflxFgKOckaN1bki4sfLSDHWK
 XwTIRkQlY7dM7IO5wf59Q+mzQs2cWBA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1587999971; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rUocYOtYHWW9os7xlY4nbXG5CTFiG31dLW0buThQxU4=;
 b=I7bu91+0AerYrt9CFX1bpz1po1j/W5beHg1a4aKDg2+oEUAUGyr9DPvuxPI8d7/fGdIBO
 8c9YsAEOsl4e7zxen56qDa1pHZq+gWwqq3VbfdCHxeX7xPc2rOzAUmsfUSyXui2GznOM+jB
 aMm0GBCGmzJnQtAahKL81lil0DiDUNU=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A0BD380137
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:06:09 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 63D2862058;
	Mon, 27 Apr 2020 17:06:09 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/5] pull request for net-next: batman-adv 2020-04-27
Date: Mon, 27 Apr 2020 17:06:02 +0200
Message-Id: <20200427150607.31401-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587999969;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Qnk8aOXFai7GACRhaTHj+nD5CSLk3RR/ZiOu1I8sYs4=;
	b=im81hcWe2/39FzJ3EMzM/odphZNmcu4zU8Sxf3ap3tYDSsX7SuzRGcPJ2BAJwvy49EcAQJ
	AF3jtjlqyUos0bj7lRQGUDfaQDfOcvmhrqHt/lMnznd9rBnU5Fxxm16mlHrkyZninNGhYW
	alIUwPUifXvpuWUKPSIWG2uyf5UsYI4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587999969; a=rsa-sha256;
	cv=none;
	b=HeTR/F8xU1oOrqmDFnOnwu6wO6D9hzAZRHFJCj5aw6pP3n+55YRvcnBTXXzmhTUaS8yKli
	Ym7fcgfAvzOo8nhThCTgNkiCm5DmPKABKjeEOzAo5HaohsywmhPZTR3TR+Z9zSLOx+qBLe
	WgZT2pKfr515o78t/xZP0RV9Nqut0cI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Y5Z3FK75OH3VGQIG2IT4OAKSXSLUWSWO
X-Message-ID-Hash: Y5Z3FK75OH3VGQIG2IT4OAKSXSLUWSWO
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y5Z3FK75OH3VGQIG2IT4OAKSXSLUWSWO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David,

here is a small cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f31=
36:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-for-davem-2020=
0427

for you to fetch changes up to e73f94d1b6f05f6f22434c63de255a9dec6fd23d:

  batman-adv: remove unused inline function batadv_arp_change_timeout (20=
20-04-24 15:22:41 +0200)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - fix spelling error, by Sven Eckelmann

 - drop unneeded types.h include, by Sven Eckelmann

 - change random number generation to prandom_u32_max(),
   by Sven Eckelmann

 - remove unused function batadv_arp_change_timeout(), by Yue Haibing

----------------------------------------------------------------
Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (3):
      batman-adv: Fix spelling error in term buffer
      batman-adv: trace: Drop unneeded types.h include
      batman-adv: Utilize prandom_u32_max for random [0, max) values

YueHaibing (1):
      batman-adv: remove unused inline function batadv_arp_change_timeout

 net/batman-adv/bat_iv_ogm.c            | 4 ++--
 net/batman-adv/bat_v_elp.c             | 2 +-
 net/batman-adv/bat_v_ogm.c             | 4 ++--
 net/batman-adv/distributed-arp-table.h | 5 -----
 net/batman-adv/main.h                  | 2 +-
 net/batman-adv/trace.h                 | 1 -
 net/batman-adv/types.h                 | 2 +-
 7 files changed, 7 insertions(+), 13 deletions(-)
