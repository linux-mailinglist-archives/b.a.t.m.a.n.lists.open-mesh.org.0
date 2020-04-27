Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D8D1BA734
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:05:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EDF9A8051C;
	Mon, 27 Apr 2020 17:05:50 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1587999950;
 b=oL2crye3Bbr9QO6lhbxB3e2PopxPK3N/AhN32LFPbN5uH5Beew+2gGdgH3U0Pdh5hKmJF
 Woa5yplBDjuMB44Kws58CiJ8uBzqUv5GrUBv7ou4RiD9On5PMlkDRhq92nEVj7h1KIOS1n/
 8SzMUYMhttKjqJd7ga1/umhKBM1Tf/k=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1587999950; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ddWTc+8oFz+HuJswGih8LpU0Zm+rLeLXZhbKCmcv6gc=;
 b=WKwA2hd9B+waytl4byvIwq9j60+c949MbCKXZ6nMHPBgq8+wglJ6CzEZy6/LIsJhqMdHy
 XR76B28g2x9VIg62+6795y0IjdOtlum1N6U81DOSpXx+Y582Cqlu3KnixbQYOQ57vQ05l0j
 DzZOauysC+MvVOJvXB9X6zDcj0uJPpQ=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4BBCB80087
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:05:49 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 5B08B62058;
	Mon, 27 Apr 2020 17:00:42 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/4] pull request for net: batman-adv 2020-04-27
Date: Mon, 27 Apr 2020 17:00:35 +0200
Message-Id: <20200427150039.28730-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587999949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=NNZ2H26JCvZV0mq+20wfMamDC4eBz2aKKz3KjP/bZgo=;
	b=NBJ+oLuqAFY14uh9bZ3bbyP6Vh/OaonyCJo/WbwzkGcBlqIsOEbpJ7DuhQsV4BUmKFDVWD
	5ePDKTmNDzH46zkPBGwSE4Gfed3jkSI7hEt6mZtNIq+Vg/JayHj+tChCCnlFub6/rpPkMA
	olOPs9W0ylnoMxFtLmxABCTyUS09tqE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587999949; a=rsa-sha256;
	cv=none;
	b=b1PvFC9jtA5bd3lZFF/NLZSVx+PTZ4gixfz5t4t2UqDTCMK0CdBF0IzyVF3YSiOA0dWOvC
	pnxC9oKX+wFshT3mP7v6ORa6wXlVmY6sJOksYBZ6OWmdYtQserl2SvSlRg6A9++BJuOxcz
	sYBhzTm5JsZdhgfxYPaAI/kprA5jasY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: BZN2QOJQ4SCT7BVPO3O7YS2CHID3ULCY
X-Message-ID-Hash: BZN2QOJQ4SCT7BVPO3O7YS2CHID3ULCY
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BZN2QOJQ4SCT7BVPO3O7YS2CHID3ULCY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David,

here are some bugfixes which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f31=
36:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-for-davem-20200=
427

for you to fetch changes up to 6f91a3f7af4186099dd10fa530dd7e0d9c29747d:

  batman-adv: Fix refcnt leak in batadv_v_ogm_process (2020-04-21 10:08:0=
5 +0200)

----------------------------------------------------------------
Here are some batman-adv bugfixes:

 - fix random number generation in network coding, by George Spelvin

 - fix reference counter leaks, by Xiyu Yang (3 patches)

----------------------------------------------------------------
George Spelvin (1):
      batman-adv: fix batadv_nc_random_weight_tq

Xiyu Yang (3):
      batman-adv: Fix refcnt leak in batadv_show_throughput_override
      batman-adv: Fix refcnt leak in batadv_store_throughput_override
      batman-adv: Fix refcnt leak in batadv_v_ogm_process

 net/batman-adv/bat_v_ogm.c      | 2 +-
 net/batman-adv/network-coding.c | 9 +--------
 net/batman-adv/sysfs.c          | 3 ++-
 3 files changed, 4 insertions(+), 10 deletions(-)
