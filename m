Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6317F17BC70
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  6 Mar 2020 13:13:23 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E717C80642;
	Fri,  6 Mar 2020 13:13:21 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 25818801D6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  6 Mar 2020 13:13:19 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C597077300B0A48B46F0435C76.dip0.t-ipconnect.de
 [IPv6:2003:c5:9707:7300:b0a4:8b46:f043:5c76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id E154D6205D;
 Fri,  6 Mar 2020 13:13:18 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/3] pull request for net-next: batman-adv 2020-03-06
Date: Fri,  6 Mar 2020 13:13:14 +0100
Message-Id: <20200306121317.28931-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1583496799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=qFK1pzdGxwU30maHeIJUEA+XRuM5tvxZGK9OPfvO+NA=;
 b=cWms6uboDXa1zTgTzXARr+qrPy2J/NznbGPkjjxcnf00voeNDYbFnAlKIcScs1dpVkLEoz
 kBHTyYgRvdPoO/PIHJ6P+4LkUqs3TlQ6bC1tmDUrFMeLBKGKVbU0tdnnz4iT7SOC9D+bNm
 oyrcGNPmAjRpo4uFebPPYcNVzAIp+0s=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1583496799; a=rsa-sha256; cv=none;
 b=oTpPEvcFFmNfNVHMeh7Jj9r7cksMQtRLewn3CU+L3WJ9qRwACETwcUt5OuAaaRS4Dg/MPC
 t1sNANK2VA4+6RwoUl/SddjF5WSdKCBsSZyyx636sdSseiNCvU/HqhotNZRUStTdqccK6s
 4EO1nfaMe37mQrxjNo/O4Jx6qdoBffU=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi David,

here is a small cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-for-davem-20200306

for you to fetch changes up to 5f27eb055d5c5814785fb9cf0ae4a4c150a8f334:

  batman-adv: Replace zero-length array with flexible-array member (2020-02-17 22:43:42 +0100)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - Avoid RCU list-traversal in spinlock, by Sven Eckelmann

 - Replace zero-length array with flexible-array member,
   by Gustavo A. R. Silva

----------------------------------------------------------------
Gustavo A. R. Silva (1):
      batman-adv: Replace zero-length array with flexible-array member

Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (1):
      batman-adv: Avoid RCU list-traversal in spinlock

 net/batman-adv/distributed-arp-table.c | 2 +-
 net/batman-adv/main.h                  | 2 +-
 net/batman-adv/translation-table.c     | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)
