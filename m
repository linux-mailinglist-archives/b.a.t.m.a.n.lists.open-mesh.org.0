Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9794F48356D
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  3 Jan 2022 18:17:54 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7E57A83EF0;
	Mon,  3 Jan 2022 18:17:53 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2CFBE8250E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  3 Jan 2022 18:17:50 +0100 (CET)
Received: from kero.packetmixer.de (p200300c597476Fc09AF9daD664F33736.dip0.t-ipconnect.de [IPv6:2003:c5:9747:6fc0:9af9:dad6:64f3:3736])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id DB9C5FA1C0;
	Mon,  3 Jan 2022 18:17:49 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 0/3] pull request for net-next: batman-adv 2022-01-03
Date: Mon,  3 Jan 2022 18:17:19 +0100
Message-Id: <20220103171722.1126109-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641230270; a=rsa-sha256;
	cv=none;
	b=rsWAQrEK2JL+V+CQBb5aYTMdy/tGZKzpWncVwmQcntKbrFj821sI+/l6FOj8GHCyh/ZJh/
	ZMnBxq8pG1W1+XzFY83OKkCaNXx7FHki84Qujyc54NuU01Ru7aPoJjGykn5i/v+uqoXAsm
	BL5kewEIlnp6hRpU5aIu1ccmuY+3HjA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641230270;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=R9oxd5z3sPmLqU2ekN4WHkGGzBrdCqH6MNHDw1YZTPQ=;
	b=KHWs4RE4yF0KtBj1EvbSAhiHHYsuMflyM1SRA8hHkdB5uKirGTOBxVXEL9gwh2gbNVjgFI
	Q1kNiZaa93RLuD+lLC3DNIUDr5XdM4JvbXFjHa6XiLIQDKrP5+K5G7dOIwG4zMo9nN7Jxq
	pOlzVdEi27XlQ4N19BRkT8P3WOgMNvg=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: GERXQ4H2SMHQT3UPXZZKVAWTF7UB74IL
X-Message-ID-Hash: GERXQ4H2SMHQT3UPXZZKVAWTF7UB74IL
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GERXQ4H2SMHQT3UPXZZKVAWTF7UB74IL/>
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

The following changes since commit 66f4beaa6c1d28161f534471484b2daa2de1dc=
e0:

  Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/h=
erbert/crypto-2.6 (2021-11-12 12:35:46 -0800)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-pullrequest-20=
220103

for you to fetch changes up to cde3fac565a7df8805a4e0e28d84a0f90177099a:

  batman-adv: remove unneeded variable in batadv_nc_init (2021-12-10 08:5=
2:52 +0100)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - allow netlink usage in unprivileged containers, by Linus L=C3=BCssing

 - remove unneeded variable, by Minghao Chi

----------------------------------------------------------------
Linus L=C3=BCssing (1):
      batman-adv: allow netlink usage in unprivileged containers

Minghao Chi (1):
      batman-adv: remove unneeded variable in batadv_nc_init

Simon Wunderlich (1):
      batman-adv: Start new development cycle

 net/batman-adv/main.h           |  2 +-
 net/batman-adv/netlink.c        | 30 +++++++++++++++---------------
 net/batman-adv/network-coding.c |  8 ++------
 3 files changed, 18 insertions(+), 22 deletions(-)
