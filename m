Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 979FA5BB0E7
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 16 Sep 2022 18:09:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5AE9C81507;
	Fri, 16 Sep 2022 18:09:39 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1D5A980090
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 16 Sep 2022 18:09:36 +0200 (CEST)
Received: from kero.packetmixer.de (p200300C5973C57d0711f6270f7F2cD25.dip0.t-ipconnect.de [IPv6:2003:c5:973c:57d0:711f:6270:f7f2:cd25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id B1AE0FA29E;
	Fri, 16 Sep 2022 18:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1663344575; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:references; bh=/JlKBLlvtqbz3uK4w9fmhVHjkatHR5ELc2la42chLkg=;
	b=kzZgvGrCwJnz16Ns4RmHA5WIzxdWHO9LdIaxOkQ75URRJ9cJI8xS7iphylkvzXcT7cnKMv
	6GutZFdbBl4739YH6U1gZPCPP9/pF61l6X5puIFMAuA38cifnafQSbHngIn4fsoHHN7/ID
	hDxY6Jig1T7UdpOt4XelOIF/yEB9V9PEzGERBsylLPPQNZQper8GoXFbDDhHlqCFFHqagS
	xiapi0Z7YdZCpTozbKw4eWkBmo3jhA8Z5fW5wY41OKWbWpF1LfQiey/Lmey8yZSJzfm9+b
	mpMA1uJ2i3Fi5pHI5DR+MmLIdZpEeBvZpS8/e+nuZQ9Oy6JQJAcoVSjzAvUiZg==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 0/1] pull request for net: batman-adv 2022-09-16
Date: Fri, 16 Sep 2022 18:09:30 +0200
Message-Id: <20220916160931.1412407-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=simonwunderlich.de; s=09092022; t=1663344575;
	h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:references; bh=/JlKBLlvtqbz3uK4w9fmhVHjkatHR5ELc2la42chLkg=;
	b=dtSAsixbXtlzpk3Fz1sQa+GVyIEsB9DUyt9MFGtCjcaCbAI+/uZUHBkWW/092z36dAzhYB
	BnFFk9zA+z3iHSwTeoZ+0KUGI7YX7U/Xd+gh6JNzLQ0Gmap9cmWooGekDqN4Y1kzYjGGFD
	w7uDpVyuFw22WNriqT0oLphSpzTG9ayXw9gKLOOEpUDo9LcNYOFQ3KTX3jc6PmaHkiAOD+
	PpEFlfS1ebJ6T+FLhoIX6ZdII8DSKYDbQ/VRKQY23oFzXtd4osOaN3SU62rs9mY4YUf6Mt
	VSx42wERtjuUwgHLOEs7VGFe5FSA+lSx3lhgy9+KESwF4ymtnZAWlERUoEqlZA==
ARC-Seal: i=1; s=09092022; d=simonwunderlich.de; t=1663344575; a=rsa-sha256;
	cv=none;
	b=uxV3B8BWgbKjM/IbHWzG0FfnwLmmOjEuutbJyRrpGjs7OAqMJQN6C1kixfdgFiAuMf0K0EDRbJv7kMQumInGdbohIz3pQupw3ZyTurD5Kbub+iy9TRbWt3ZJYrUML5A9SbUbepB0Htedj7fvMFTCZl/+wuIB50j+Q9CRVoAXbSG6LBVtgFzgLCUNgwK5sjsvuwsaTEbX6mZfW71spl5edT8vPMDk6lxiMUi8+H3h3o6/ErNaUL5ENszpKMSVmGCXYwWYb5h2MIxgWjbBuYFOcgAsqZqbIpIkshLmXMdbBV5VJm5qmK25t0t9qSx4o/tA7SIGz6dJWwpVPVe5Tf0cGQ==
ARC-Authentication-Results: i=1;
	simonwunderlich.de;
	auth=pass smtp.auth=sw@simonwunderlich.de smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663344576;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=/JlKBLlvtqbz3uK4w9fmhVHjkatHR5ELc2la42chLkg=;
	b=VTIQCNig7tsWN4Z8v67+Bx3jEpzp/+rSt7hIBmvF4kDRPsJJeXFnEKUa4uP1Wjdo9FC9+a
	BDNGiXkEkP4uxlXU6YIuGJ6vWiNS2YDmjCngYtiP4f2cXxfTwyzq+g1VF7/nRzXBF3XdyX
	W7wdLr/uwVfMcL6AUBNp+JNNGbZ6LtE=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=kzZgvGrC;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=reject ("seal check failed: fail, {[1] = sig:simonwunderlich.de:reject}");
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1663344576; a=rsa-sha256;
	cv=fail;
	b=RKyZ3ZQpQelAvDeINh12v4c94H47XVXP2apleFkM+WzrSHhvXSUUf5wqvSZZwMY6qsEZ7W
	o6r4CCUkLnn3NGI7K2Pp8FBKacUd8CmCx/SCouxWaXxDcOfFqSukB3IP9I2FbU8zhMdYB2
	5IDcGno/7SeX/xLR1H8W6FfoHFd2Bcc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LBBU43HEBOGPZFGWTFPVYM4LGPJBDWEO
X-Message-ID-Hash: LBBU43HEBOGPZFGWTFPVYM4LGPJBDWEO
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LBBU43HEBOGPZFGWTFPVYM4LGPJBDWEO/>
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

The following changes since commit 568035b01cfb107af8d2e4bd2fb9aea22cf5b8=
68:

  Linux 6.0-rc1 (2022-08-14 15:50:18 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-202=
20916

for you to fetch changes up to b1cb8a71f1eaec4eb77051590f7f561f25b15e32:

  batman-adv: Fix hang up with small MTU hard-interface (2022-08-20 14:17=
:45 +0200)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - Fix hang up with small MTU hard-interface, by Shigeru Yoshida

----------------------------------------------------------------
Shigeru Yoshida (1):
      batman-adv: Fix hang up with small MTU hard-interface

 net/batman-adv/hard-interface.c | 4 ++++
 1 file changed, 4 insertions(+)
