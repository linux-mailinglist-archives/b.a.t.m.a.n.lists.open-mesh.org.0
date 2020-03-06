Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B8917BC7B
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  6 Mar 2020 13:15:24 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EEE48809C6;
	Fri,  6 Mar 2020 13:15:18 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 38BC5802C9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  6 Mar 2020 13:15:17 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C597077300B0A48B46F0435C76.dip0.t-ipconnect.de
 [IPv6:2003:c5:9707:7300:b0a4:8b46:f043:5c76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id DEDC762058;
 Fri,  6 Mar 2020 13:06:19 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 0/1] pull request for net: batman-adv 2020-03-06
Date: Fri,  6 Mar 2020 13:06:17 +0100
Message-Id: <20200306120618.25714-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1583496917;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=LEIZuezIxWcoLb7BKo+0C/KCR0ugESXlDLGehjvRCv8=;
 b=ZMy/m37GpWBzliETlY0ko/zR55yvTiYhrUG5uKVR7LlNuYObGDEIP9OZitAAces7PrBr8Q
 HGxdcn3iArsS1qK6Qj2Q41Y3abeI4RaEkOE5sPgQjyr6gBg+E1gmOlOCiNco8IiRkqslON
 cLm+R2gpwqh9nYSHeRr3p+nhWm76Q50=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1583496917; a=rsa-sha256; cv=none;
 b=Nk8PG3vIs2uZ1mcoKrO+tZPccqtJCar1irloSrL6Btw+lSXGTek52CA0mTu+sl5a+v/PX2
 VI31R4D7Ki44QuH2xzsJxli8Dbfvm1rC040dWrqcItdjvhjLhcNIqHcfr4csscC/R+9xgg
 YIMHNgtE87JWJ0joCMNVQjTSNbSzN6U=
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

here is a bugfix which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-for-davem-20200306

for you to fetch changes up to 8e8ce08198de193e3d21d42e96945216e3d9ac7f:

  batman-adv: Don't schedule OGM for disabled interface (2020-02-18 09:07:55 +0100)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - Don't schedule OGM for disabled interface, by Sven Eckelmann

----------------------------------------------------------------
Sven Eckelmann (1):
      batman-adv: Don't schedule OGM for disabled interface

 net/batman-adv/bat_iv_ogm.c | 4 ++++
 1 file changed, 4 insertions(+)
