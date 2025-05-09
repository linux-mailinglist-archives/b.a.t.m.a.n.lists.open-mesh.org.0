Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 85740AB0E4A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 May 2025 11:10:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6175484760
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 May 2025 11:10:49 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1746781849;
 b=MRufUV6/oPmYSWWCPWkEhQtzWrgE/nXPEoUnna24u+KrbNr+0XkaZq+GOxwKIufTcrkXS
 v1V2Ncl6Aj5QYE3FdQlBxUEFdaEFUaKK9KmOe+QGlvmAaTofQACvdAP2liSyE6RfA8QO3v3
 skY9YEL8hM0b6+wKlwYfqQwW8MZ3vAc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1746781849; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=z+/X6oxiHBDc4X3gZz2VaOofj8fVbAMoyiSgHTiZgZQ=;
 b=MXXTjCPzvm1YeN1UafNRKfuGXhAl2VBofugUEYGSndu1q14L+LJZmqjs6UWGUoSojBmh+
 khfWVaKdTyld31z+xDMhbbMnYr1QMhZtzA93A+ut5AdhJO/n8eWiYqXUzyxtV+YK0BOQw4u
 mXsiPcIMDtBmBZCJOM56AThgqHC7GY4=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 223A9844C4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 May 2025 11:10:43 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1746781843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=z+/X6oxiHBDc4X3gZz2VaOofj8fVbAMoyiSgHTiZgZQ=;
	b=Ud8+hoSyDHafUjeYtBSCTut2+0b/kTuFXwKEwVULBNcVde3d/jNWPrYJBvYeRADeNmL+ED
	NCGe38iOVHlB1QXsGZ6Iw2d4wZEVWlDFV1eVHCShPWBlpASR9VN5QnxEvnhScep6vbycRE
	pTvMjCJPg6eUBXVCWLiZERFNxI2jcjU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1746781843; a=rsa-sha256;
	cv=none;
	b=fofdLNJOLUMlR8gB3amSi05NxtDPQ3vrorKOlHNpVvWiQuP5RmoFaaaVHdBDKnmMBojzw6
	iZVqcj7qBlyREsrfrjRyHDVsrXHMXVvWpPpjRXv6TemP/E/lvArDl6M7anYiQr5qS6BICs
	uuceHrU3EwHdmmZ6mMC3Gir7FvH9Rdg=
Received: from kero.packetmixer.de
 (p200300c59736c7D829705d90aB67A755.dip0.t-ipconnect.de
 [IPv6:2003:c5:9736:c7d8:2970:5d90:ab67:a755])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 8272DFA131;
	Fri,  9 May 2025 11:10:42 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 0/5] pull request for net-next: batman-adv 2025-05-09
Date: Fri,  9 May 2025 11:10:36 +0200
Message-Id: <20250509091041.108416-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 25KTC3WEUI6DBTM6EUV6Q5TNI6E56L2G
X-Message-ID-Hash: 25KTC3WEUI6DBTM6EUV6Q5TNI6E56L2G
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/25KTC3WEUI6DBTM6EUV6Q5TNI6E56L2G/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Jakub, hi David,

here is a cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 61f96e684edd28ca40555ec49ea1555df31ba619:

  Merge tag 'net-6.15-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net (2025-04-04 09:15:35 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-pullrequest-20250509

for you to fetch changes up to 4e1ccc8e52e5eb3a072d7e4faecd80c6f326bfd2:

  batman-adv: Drop unused net_namespace.h include (2025-04-13 11:11:33 +0200)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - constify and move broadcast addr definition, Matthias Schiffer

 - remove start/stop queue function for mesh-iface, by Antonio Quartulli

 - switch to crc32 header for crc32c, by Sven Eckelmann

 - drop unused net_namespace.h include, by Sven Eckelmann

----------------------------------------------------------------
Antonio Quartulli (1):
      batman-adv: no need to start/stop queue on mesh-iface

Matthias Schiffer (1):
      batman-adv: constify and move broadcast addr definition

Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (2):
      batman-adv: Switch to crc32 header for crc32c
      batman-adv: Drop unused net_namespace.h include

 net/batman-adv/main.c              |  4 +---
 net/batman-adv/main.h              |  3 +--
 net/batman-adv/mesh-interface.c    | 15 ---------------
 net/batman-adv/send.c              |  4 +++-
 net/batman-adv/translation-table.c |  2 +-
 5 files changed, 6 insertions(+), 22 deletions(-)
