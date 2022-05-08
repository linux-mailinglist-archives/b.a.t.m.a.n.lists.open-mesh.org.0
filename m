Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7035451EDBC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  8 May 2022 15:21:19 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3F69D80CD3;
	Sun,  8 May 2022 15:21:18 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 59D4680BBC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  8 May 2022 15:21:15 +0200 (CEST)
Received: from kero.packetmixer.de (p200300Fa271A310000945dF34724c077.dip0.t-ipconnect.de [IPv6:2003:fa:271a:3100:94:5df3:4724:c077])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id E95D6FA1FB;
	Sun,  8 May 2022 15:21:14 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 0/1] pull request for net: batman-adv 2022-05-08
Date: Sun,  8 May 2022 15:21:09 +0200
Message-Id: <20220508132110.20451-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652016075; a=rsa-sha256;
	cv=none;
	b=SPyseEW6xn71cClmzCwP/iUHcw7P/TjxjZqehldTdWPG8Xb/V33+BXy8N8RPYyB53B4wmO
	l7k6tJvfyopnOQIy5Ic4JTUEtlus7K+qqRbY9D3XR3Lj4wFRpSH6K46KMZjEYD2o2Fb+fg
	LFnygbNi5BvYfojWF9uokSV+rcqtzt4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652016075;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=sOcc4kbuZlhAkvTbzrLPzYP4K/ao6rAwNKpwtUsNmOs=;
	b=QGBHWAd2fEqEbVCrIVeNDgDZDMcobJK2PyAQ6jto6SMHxu67VZHAsJHBElc3usH3wBN1xA
	9cq9jm4pvubtzownOGUAh07FECidZ+uXkjERtJh0aGhd/+IysQALGCNzCLyA0vIBCRzKhI
	TiN0FNONf369vsqwV5P4x6vtTwgj35A=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5MJW6LMXUKRFWRSGJI663MLQ2UZ4MMVG
X-Message-ID-Hash: 5MJW6LMXUKRFWRSGJI663MLQ2UZ4MMVG
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5MJW6LMXUKRFWRSGJI663MLQ2UZ4MMVG/>
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

The following changes since commit 3123109284176b1532874591f7c81f3837bbdc=
17:

  Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-202=
20508

for you to fetch changes up to a063f2fba3fa633a599253b62561051ac185fa99:

  batman-adv: Don't skb_split skbuffs with frag_list (2022-04-17 23:41:44=
 +0200)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - Don't skb_split skbuffs with frag_list, by Sven Eckelmann

----------------------------------------------------------------
Sven Eckelmann (1):
      batman-adv: Don't skb_split skbuffs with frag_list

 net/batman-adv/fragmentation.c | 11 +++++++++++
 1 file changed, 11 insertions(+)
