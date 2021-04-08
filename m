Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 85764358280
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  8 Apr 2021 13:54:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 463448264F;
	Thu,  8 Apr 2021 13:54:06 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6B03980632
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Apr 2021 13:54:03 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5971bd8e0263584131c53e2d7.dip0.t-ipconnect.de [IPv6:2003:c5:971b:d8e0:2635:8413:1c53:e2d7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id D712B17401F;
	Thu,  8 Apr 2021 13:54:02 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 0/3] pull request for net-next: batman-adv 2021-04-08
Date: Thu,  8 Apr 2021 13:53:58 +0200
Message-Id: <20210408115401.16988-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617882843; a=rsa-sha256;
	cv=none;
	b=FjuQyzkfzR3XI0c1tAFz/EKqg7an5rFpRCIL5SyVSrOd9b93rmO9seXshDzd7IuGUGvU80
	pvD18ILrgAQS6ZNz3Im1p+NKZIkOBpJecxd7mfH77cbXsAFfKebq3O6/YBB15lpqDk0jeN
	dTQ6DkU2LuapQBmLPguAOF0XY5RlyhM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617882843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=eRhcFo3zDG3u0fF2ss4Y/WxCSis+5RAujPzkSrQcYNY=;
	b=oFS/tPTbjUJXVT4JcwFecpxZGqW2XNdREYCiPHYbmziu77q0KFYMmOQT/1ThawLAvZH1RD
	pkeZZcpQOJSeEBYkrEKgWsqW8DdiSopqhZIAhfVNZk9CfovoWVTiobl78BdzmV76YjqUqN
	lz7xmU0d5jRns1YrID/Q39U+5I2kXTI=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JYFWU6RK4NSAXINAWSAL5CYIF776AJA4
X-Message-ID-Hash: JYFWU6RK4NSAXINAWSAL5CYIF776AJA4
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JYFWU6RK4NSAXINAWSAL5CYIF776AJA4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Jakub, hi David,

here is a little cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit b1de0f01b0115575982cf24c88b35106449e9a=
a7:

  batman-adv: Use netif_rx_any_context(). (2021-02-13 18:08:40 +0100)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-pullrequest-20=
210408

for you to fetch changes up to 35796c1d343871fa75a6e6b0f4584182cbeae6ac:

  batman-adv: Fix misspelled "wont" (2021-03-30 21:19:50 +0200)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - for kerneldoc in batadv_priv, by Linus Luessing

 - drop unused header preempt.h, by Sven Eckelmann

 - Fix misspelled "wont", by Sven Eckelmann

----------------------------------------------------------------
Linus L=C3=BCssing (1):
      batman-adv: Fix order of kernel doc in batadv_priv

Sven Eckelmann (2):
      batman-adv: Drop unused header preempt.h
      batman-adv: Fix misspelled "wont"

 net/batman-adv/bat_iv_ogm.c            |  2 +-
 net/batman-adv/bridge_loop_avoidance.c |  1 -
 net/batman-adv/types.h                 | 10 +++++-----
 3 files changed, 6 insertions(+), 7 deletions(-)
