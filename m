Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1CB2C28B7
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 24 Nov 2020 14:53:21 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AED0480E2F;
	Tue, 24 Nov 2020 14:53:16 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7CBA6803D5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 24 Nov 2020 14:53:13 +0100 (CET)
Received: from kero.packetmixer.de (p200300c59720c9e082fbfcd64a8e5ba3.dip0.t-ipconnect.de [IPv6:2003:c5:9720:c9e0:82fb:fcd6:4a8e:5ba3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id C0E8117405E;
	Tue, 24 Nov 2020 14:44:18 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 0/1] pull request for net: batman-adv 2020-11-24
Date: Tue, 24 Nov 2020 14:44:16 +0100
Message-Id: <20201124134417.17269-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606225993;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2ewPTIroGZW0HdNpIjGUK91kyDVR1/jqxbJP+WbbjBQ=;
	b=yuoMueEyHQAjfvGCkj84NCi9V6iPn6z0glici/pF9fqKjOMFwCbhcAXAaehfZlIqX1vIFs
	VwAw0HUde9g9XzdDfhNOBZhqW5YG7ejHiLvyVFm/Ev1KGkWKi7SHtHpSRg7DUklymXM/bv
	b21EIYe2QpXqjen5adA1GR73Ppikj8Y=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606225993; a=rsa-sha256;
	cv=none;
	b=oJb3cEeFsAR/r/cevF9DKVk5q+VRhl1SMfjPG2uT1TZISTaxQW7RKospJlPyhqw5IoZ/Nz
	8Nr/H8ZI/oOQeKsx6Ge3WVqtmfRFMENB5QkcXrR8XWOB/LU4KwnGt0QcK0SZf1SBoKdweN
	OID4iwylHs8Hbc1KpTRTdrrWyNoPG/A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: G6SZ2Y2JVKM4KTCWVXHPCMUR7TBBX75Q
X-Message-ID-Hash: G6SZ2Y2JVKM4KTCWVXHPCMUR7TBBX75Q
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/G6SZ2Y2JVKM4KTCWVXHPCMUR7TBBX75Q/>
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

The following changes since commit f8394f232b1eab649ce2df5c5f15b0e528c920=
91:

  Linux 5.10-rc3 (2020-11-08 16:10:16 -0800)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-202=
01124

for you to fetch changes up to 14a2e551faea53d45bc11629a9dac88f88950ca7:

  batman-adv: set .owner to THIS_MODULE (2020-11-15 11:43:56 +0100)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - set module owner to THIS_MODULE, by Taehee Yoo

----------------------------------------------------------------
Taehee Yoo (1):
      batman-adv: set .owner to THIS_MODULE

 net/batman-adv/log.c | 1 +
 1 file changed, 1 insertion(+)
