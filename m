Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AC313AC4A
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Jan 2020 15:26:16 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 375FC80B87;
	Tue, 14 Jan 2020 15:25:40 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
 by open-mesh.org (Postfix) with ESMTPS id 5F798803D6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 Jan 2020 15:25:31 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F1B0095082C17D9AE8553.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:1b00:9508:2c17:d9ae:8553])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 69C506205C;
 Tue, 14 Jan 2020 15:16:48 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/1] pull request for net: batman-adv 2020-01-14
Date: Tue, 14 Jan 2020 15:16:45 +0100
Message-Id: <20200114141646.23598-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579011931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=w2TMHW0OBU4PalIb0yPcZRezCaJ/Cx6O4lamC8mBEj0=;
 b=kgGbXsnwr0VVdqxgMtOy2Qu603OkkJjbvLlU6yoKmPiBKP6mB3x2L1wXDssZMVDtrOw0TP
 cR7W1gCXJasbDbUjarZQcmYTa5oNxeM0ehRtGLHZuL1mh9UVvRwBk0Ytj06IdrcrLdOW4n
 jGftXLS6t8GL267Kj5NUlX/LqY0FU5I=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579011931; a=rsa-sha256; cv=none;
 b=dijB7vC9M0xZ/Ia5uFNXQEdv95tHtYf+mSRZ7UdJR9d5ZfDd0Y2PwGtlC7shERMZlBszM1
 VBvR2u7rD/tN3LJw1rVBSGe6OTFu/Y9IYOytqUbVx2PAAnJi1w15FXSCm4hQ5s1Qf1I0kZ
 hOoin0t7ayky/q3qjLHBpRhF28PU4Ao=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of sw@simonwunderlich.de designates
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

here is a bugfix which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 40e220b4218bb3d278e5e8cc04ccdfd1c7ff8307:

  batman-adv: Avoid free/alloc race when handling OGM buffer (2019-10-13 21:00:07 +0200)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-for-davem-20200114

for you to fetch changes up to 4cc4a1708903f404d2ca0dfde30e71e052c6cbc9:

  batman-adv: Fix DAT candidate selection on little endian systems (2019-11-28 12:48:59 +0100)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - Fix DAT candidate selection on little endian systems,
   by Sven Eckelmann

----------------------------------------------------------------
Sven Eckelmann (1):
      batman-adv: Fix DAT candidate selection on little endian systems

 net/batman-adv/distributed-arp-table.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)
