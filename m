Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBCFC054E8
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Oct 2025 11:23:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1E1C4804E7
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Oct 2025 11:23:33 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1761297813;
 b=VbhNfW8EGDPvFVJ1enaqPtFCW7ldlE9nnUvuvPTnB1ewdtNnndUgFxd4xlUKac09691oc
 WBwiEKDLD0qADAh+MLGAasBjPmrxerZd9YhM2lAsNlsrmxtO2eS77FSVrQ6tC9SvPIAhD5C
 xbGcWJVVOuJvmi1hHgdi4cgi+ypW7P8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1761297813; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ogbos5aelgxgiBt/DSjMi93TDEZpsorpVK8AUe5sErA=;
 b=OaQJnE86U53vix+So2kRjXcGErrLEPcirCVwAbKmUUgYcE/ScrWgT69aAL17WZ68eNqpu
 YtmLpuZC3YvMy+swEq+A7v3SqmvaNEhrVJxPoLdtfU6DcYRbgxbdJZ2xmcdIjXqmziN/72N
 tpvyo3uqrOrrP7gnwzuet/CQjPkvslk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=fail;
 arc=pass;
 dmarc=fail header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 58DD780079
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 Oct 2025 11:23:28 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1761297808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ogbos5aelgxgiBt/DSjMi93TDEZpsorpVK8AUe5sErA=;
	b=il3vr9iU315AtEZYDYHIOA2Mgc9+Mksr4XpoGY0tWeN1q+XzFORUKfWYANWb3n/GEkDn4G
	u9npAPvBA1QQWWquGvB2QL/N5aXmaobIQ9izPHlv+3ppHo9cJoAyFCr515/MTnDllA+OjU
	lU3m68vbTR3Gq9AG4Kg2caOnlgNg7L4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1761297808; a=rsa-sha256;
	cv=none;
	b=L7lLd6vOsR6b6BPTkKDlzCpm1M7tApe2WKCMrIGJMvhD/Z2e0oc8PBkTiShRDx/rL+h50E
	f0heiMBeX7AmVK8rp4nwa4UR4yenxz/3IMpn/RmK0KwpT5BvKTYWshED0xdDfGaC0eMMYW
	7+RnU51N+lHCiNcN3cqO1rNPEWrSV4I=
Received: from kero.packetmixer.de
 (p200300C5970781D8b076411BB4c554a3.dip0.t-ipconnect.de
 [IPv6:2003:c5:9707:81d8:b076:411b:b4c5:54a3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id DD7F7FA130;
	Fri, 24 Oct 2025 11:23:27 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 0/2] pull request for net-next: batman-adv 2025-10-24
Date: Fri, 24 Oct 2025 11:23:13 +0200
Message-ID: <20251024092315.232636-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: FXVBGUSCSCL2KR7MQRWPIIZ4Q5Y2ELVO
X-Message-ID-Hash: FXVBGUSCSCL2KR7MQRWPIIZ4Q5Y2ELVO
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FXVBGUSCSCL2KR7MQRWPIIZ4Q5Y2ELVO/>
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

The following changes since commit 3a8660878839faadb4f1a6dd72c3179c1df56787:

  Linux 6.18-rc1 (2025-10-12 13:42:36 -0700)

are available in the Git repository at:

  https://git.open-mesh.org/linux-merge.git tags/batadv-next-pullrequest-20251024

for you to fetch changes up to ed5730f3f733659a4a023a5f1e767365fe341648:

  batman-adv: use skb_crc32c() instead of skb_seq_read() (2025-10-17 16:30:43 +0200)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - bump version strings, by Simon Wunderlich

 - use skb_crc32c() instead of skb_seq_read(), by Sven Eckelmann

----------------------------------------------------------------
Simon Wunderlich (1):
      batman-adv: Start new development cycle

Sven Eckelmann (1):
      batman-adv: use skb_crc32c() instead of skb_seq_read()

 net/batman-adv/Kconfig                 |  1 +
 net/batman-adv/bridge_loop_avoidance.c | 51 ++++++----------------------------
 net/batman-adv/main.h                  |  2 +-
 net/batman-adv/types.h                 |  2 +-
 4 files changed, 11 insertions(+), 45 deletions(-)
