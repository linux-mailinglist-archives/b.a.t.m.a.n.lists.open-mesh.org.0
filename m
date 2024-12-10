Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EC29EB236
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 10 Dec 2024 14:50:59 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 33AC583F96
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 10 Dec 2024 14:50:57 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1733838657;
 b=CgpBvMN6kaINVjCv9aMQ6kNorYjGQzthwJgcJbbHrFPYS/JZgF/pSMybfdbLXI3xwxOqw
 w8zy2Q03nl9550xRREuL+BSudD4OqzHYqCnSulTPFaqeUxXGS9YuYjHgjrOs9YWxtsrOlE/
 2pkQGsWf1ZjVR6Q9wSYxBhitqVaxics=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1733838657; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=80Y+a9HUEobdreTagI9evwn7SWIt2qmqp89Zk4GWIH8=;
 b=HjM3zUWn5sPhKPhLpAOeCVR0WYDH4W5Qa1mfS4Idyb6E7BYsIr6KeVlCjnbISqDJfbrOH
 /QN8DaxKp2YAVkPigxKA6RrQlwSMmad7Eio9D+MvbHYTM7Di+h8icQWKw0RO3X5EYAXVRNx
 N1eiCv+lfcdOmZ3/U2SvzNKqFOSPVwM=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 99DE6815E9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 10 Dec 2024 14:50:28 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1733838628;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=80Y+a9HUEobdreTagI9evwn7SWIt2qmqp89Zk4GWIH8=;
	b=myDghgD38BReu3DJHDyhJUnIMNerL5DrMh9mLHXSJ3HH3veEPRezwCOa5uhF4D4JpmdhFw
	aZrvitb5FtfPFy3ShPXToy+pvHjOsXtaOZNN81y2/iiv15WtEOKESf16ufqbmIEHmM+pQ/
	Zguc85VSff2274ePFT6xsiP9qKRIxpQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1733838628; a=rsa-sha256;
	cv=none;
	b=fZw/BtRzRFu14iDlysczsGMTR3NOCTcyCJXFmP2Fjd6WnH3E+ILdbZYKBGpkMh2Q9DnIzQ
	K9GIasL1+OxOHOkDTBj2qqUR7ZcqUHJS3Q003GJabngdES711niSSYHEZi1xs2eMFf89yE
	lcABJExA1xqYgpE8e6TvGnpoj4kcOq8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
Received: from kero.packetmixer.de
 (p200300C5971b44D83038C7ecB8E2Ed5c.dip0.t-ipconnect.de
 [IPv6:2003:c5:971b:44d8:3038:c7ec:b8e2:ed5c])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 13250FA132;
	Tue, 10 Dec 2024 14:50:28 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 0/3] pull request for net: batman-adv 2024-12-10
Date: Tue, 10 Dec 2024 14:50:21 +0100
Message-Id: <20241210135024.39068-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: ZBPAVRIUT66J767XK5H3BOJBVNJPRN3X
X-Message-ID-Hash: ZBPAVRIUT66J767XK5H3BOJBVNJPRN3X
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZBPAVRIUT66J767XK5H3BOJBVNJPRN3X/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David, hi Jakub,

here are some bugfixes for batman-adv which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 40384c840ea1944d7c5a392e8975ed088ecf0b37:

  Linux 6.13-rc1 (2024-12-01 14:28:56 -0800)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-20241210

for you to fetch changes up to fff8f17c1a6fc802ca23bbd3a276abfde8cc58e6:

  batman-adv: Do not let TT changes list grows indefinitely (2024-12-05 22:38:26 +0100)

----------------------------------------------------------------
Here are some batman-adv bugfixes:

 - fix TT unitialized data and size limit issues, by Remi Pommarel
  (3 patches)

----------------------------------------------------------------
Remi Pommarel (3):
      batman-adv: Do not send uninitialized TT changes
      batman-adv: Remove uninitialized data in full table TT response
      batman-adv: Do not let TT changes list grows indefinitely

 net/batman-adv/translation-table.c | 58 ++++++++++++++++++++++++++------------
 1 file changed, 40 insertions(+), 18 deletions(-)
