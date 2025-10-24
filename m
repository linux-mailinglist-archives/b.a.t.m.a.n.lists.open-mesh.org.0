Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 567BBC0543C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Oct 2025 11:12:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 45A6184C77
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Oct 2025 11:12:27 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1761297147;
 b=obGsx5OKTdItKmfLDLmRVnK7CemJOoTZjtlhHoZ2BUFbXnp3kGfrJfeOd6FHpFC9KLYtH
 tyt9X/NfWzZAZ77SBu0zqOo3Fu79nseVfMmVa0dCfLnv9dxe6FKBrLWv18JdSHxg599xyVu
 0jGFazO3KoWE8IXumzW9k668PmHw+50=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1761297147; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=+a6yI6FIPx0kbyxe73d1ZYTCdZQUygCFR8KEG83dqd4=;
 b=JZy/ZWqj3zFTNBb83OwCN13fapc06U1YwFA6FDanHv7xod919+6UUljRxsspIaNlHXbVn
 i41hiFDSHYPhk7uRaEHIg77fGSGHoEIxzMis7barg7XvXmqGrq5CyQSzG3AXE7mbJtZWNFP
 cQKT3pNvIiRXfTXldcb9/Fh2SaBNgfs=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=fail;
 arc=pass;
 dmarc=fail header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2C79784464
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 Oct 2025 11:12:11 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1761297141;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+a6yI6FIPx0kbyxe73d1ZYTCdZQUygCFR8KEG83dqd4=;
	b=3w/0uRNQQxDkW0w3upcxaXGd2mX8gjsXD7Y3A5ijF0cGGMf7EKC8B90XeVkoIrWupV5zn0
	zOiOGtsYjxti3HvVqi6+tweVHI2wTobeosbbjjI376laL2V6b9dfM1Rg6ELA9WRQXOuMBf
	A37cNnOuekGhg3DzMoaECSCFNzhkIVg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1761297141; a=rsa-sha256;
	cv=none;
	b=AFo77oMRpdoLphMnDzLwjtKrLNCu6vQE6ofHh5IOXIntOdoe1/u88Aci/6qffLeSHWkAgi
	69IvY2YRyx9unDWXwouFE0OkyBsoXQpsuLoUkfovkK3ZpP7hXBCshByIo541KEMqg1U24u
	UW5UUHB/59buBedQYf+/Wj8EYMnq6OI=
Received: from kero.packetmixer.de
 (p200300c5970781D8b076411bb4C554a3.dip0.t-ipconnect.de
 [IPv6:2003:c5:9707:81d8:b076:411b:b4c5:54a3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 6BB12FA130;
	Fri, 24 Oct 2025 11:12:10 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 0/1] pull request: batman-adv 2025-10-24
Date: Fri, 24 Oct 2025 11:11:49 +0200
Message-ID: <20251024091150.231141-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: TMDQ4GLYK6A362B7QFXG42NZ6U5ZTHSN
X-Message-ID-Hash: TMDQ4GLYK6A362B7QFXG42NZ6U5ZTHSN
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TMDQ4GLYK6A362B7QFXG42NZ6U5ZTHSN/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David, hi Jakub,

here is a bugfix for batman-adv which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit d69eb204c255c35abd9e8cb621484e8074c75eaa:

  Merge tag 'net-6.17-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net (2025-09-04 09:59:15 -0700)

are available in the Git repository at:

  https://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-20251024

for you to fetch changes up to f12b69d8f22824a07f17c1399c99757072de73e0:

  batman-adv: Release references to inactive interfaces (2025-09-27 19:59:49 +0200)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - release references to inactive interfaces, by Sven Eckelmann

----------------------------------------------------------------
Sven Eckelmann (1):
      batman-adv: Release references to inactive interfaces

 net/batman-adv/originator.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)
