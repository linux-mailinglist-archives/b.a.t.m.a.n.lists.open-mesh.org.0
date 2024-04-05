Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D939899858
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  5 Apr 2024 10:46:04 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 14F7D819AE
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  5 Apr 2024 10:46:04 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1712306764;
 b=wqCZ8SsljdKwSoR1I8yOOi2YnLQDbcIc4fSrzlHHXIw0Hm+kq9HHCSD0SGBPPbOjFuEtF
 JIhRrtjagA5fq+sRC7bXK9ZJC1SXjQd3Ht/839jcQG3b2I5Q+hnccdHW+sCBThd/vbOwzpA
 x5ZOGU7q+NIyZrbemTWo7nfCBw5Kfe8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1712306764; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=lrtDrSOq/HyGUEpyh1MmJSM6Apie2di6/9aFuSijd2c=;
 b=NbXj+e3jee3/NCfRlTGxEzBStJ/or37roePNdwEpfZLYArWBzWkIHmM7akXluYvFr/MpA
 IlqpvU/k3ZHd4F4DmpTNo6m/42ruvzPRSNXDK2sosU8phQNbKf6H8jY13r6B63vHZaQtB9K
 a8c4KL6EQawMBpJpp3d31mPpLWFjCT8=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 40BDA80BF1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  5 Apr 2024 10:45:55 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1712306755;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lrtDrSOq/HyGUEpyh1MmJSM6Apie2di6/9aFuSijd2c=;
	b=vlJzi+3jGikN5EXXMZSdBW/Oe+Yh2Perykcpxyv83VZ4/SofKIvuVRvk8hbjBInZBfujwO
	DxcLLSkSVosnlLA78yebXf1o6KJTGRIqYOhAKbp3aEXNCdfO7Rrr/893L+47twGGcLsX+w
	EVryyPYXj5wvcuF5PWyEfuSZRfawqew=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1712306755; a=rsa-sha256;
	cv=none;
	b=tBYA9t05zNO+mDZw9Jhd0J19vEEhr80kLR44BqfYuXxkq4HwVI+tGwYGKdJ76KwnxnW7JP
	WG5kTpfaV5LS2I76flpmxlFtu9ET4pGuaFGe80keHYXZu/XyoZ9mwaUkPmFeXw5S9f1HKn
	QD6LSNZxA00fXnf6sq7/7h04n4bs0FE=
Received: from kero.packetmixer.de (p5de1fdf8.dip0.t-ipconnect.de
 [93.225.253.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id E1622FA100;
	Fri,  5 Apr 2024 10:45:54 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 0/3] pull request for net-next: batman-adv 2024-04-05
Date: Fri,  5 Apr 2024 10:45:46 +0200
Message-Id: <20240405084549.20003-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: EC4HWKKH3ROFUBCLELSZA7KJDAAUPXDO
X-Message-ID-Hash: EC4HWKKH3ROFUBCLELSZA7KJDAAUPXDO
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EC4HWKKH3ROFUBCLELSZA7KJDAAUPXDO/>
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

The following changes since commit 4cece764965020c22cff7665b18a012006359095:

  Linux 6.9-rc1 (2024-03-24 14:10:05 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-next-pullrequest-20240405

for you to fetch changes up to 40dc8ab605894acae1473e434944924a22cfaaa0:

  batman-adv: bypass empty buckets in batadv_purge_orig_ref() (2024-03-31 10:13:36 +0200)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - prefer kfree_rcu() over call_rcu() with free-only callbacks,
   by Dmitry Antipov

 - bypass empty buckets in batadv_purge_orig_ref(), by Eric Dumazet

----------------------------------------------------------------
Dmitry Antipov (1):
      batman-adv: prefer kfree_rcu() over call_rcu() with free-only callbacks

Eric Dumazet (1):
      batman-adv: bypass empty buckets in batadv_purge_orig_ref()

Simon Wunderlich (1):
      batman-adv: Start new development cycle

 net/batman-adv/main.h              |  2 +-
 net/batman-adv/originator.c        |  2 ++
 net/batman-adv/translation-table.c | 47 +++-----------------------------------
 3 files changed, 6 insertions(+), 45 deletions(-)
