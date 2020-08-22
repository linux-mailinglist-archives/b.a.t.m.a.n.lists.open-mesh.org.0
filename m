Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C7B24EBB5
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 07:52:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0EB5681DA9;
	Sun, 23 Aug 2020 07:52:57 +0200 (CEST)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id AF0AF810B6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 02:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=3/DNrqH2Afh1WBMVn2/i1ias5Uuqqyo4ZZJHTzcsYYg=; b=Pjja+9+kD+ix+oLWdd8TYVqvKI
	usM0Q7ftgl7ZvbG7nbDy0I1zGtw0AuWGCpRJqdBczYBxSTufFx8vY2yAl8Og9I2KpiJmn41GHJApG
	8cIg57qHhK+k5wpBeTnOuQNW6QYvDviJAhbuHi1HpCZKhSmL8O62f0o/Wy6S2N2t07JN7OwlE8wO7
	EfhSD4P/dVTOPT6BKBNgoWyd2lrm+8w5iXM+IwtKuvVQFq59s/bwzYieRz0sFgRqksoJpgjWE+OE9
	zwIifoqHMTmOOaqX/jU6PMyRrYxnLF/dgpCPILq7zcwgFQmlPUOYo7HvOJqtu8emuCDSTCq5knZqo
	s8+zYraw==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9chg-0006Nf-U4; Sat, 22 Aug 2020 23:13:41 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Subject: [PATCH 0/8] net: batman-adv: delete duplicated words + other fixes
Date: Sat, 22 Aug 2020 16:13:27 -0700
Message-Id: <20200822231335.31304-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598141604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=3/DNrqH2Afh1WBMVn2/i1ias5Uuqqyo4ZZJHTzcsYYg=;
	b=JwQrLo1nqchp2S1Un3RHljJjkF7ev0GxAqqnLPlY15LTWrdnlTqUSLGbiO4becLg113Gku
	gEzSAwFeQZDRt4pwak1LLWLjidWqd4Ra189uwk/ZT7JnF4s1q7w9ZCyuxvI1Qj+FpN3Jj8
	jeVjiZlhCk2q5EMSe3bpRFMLzdnn3WA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598141604; a=rsa-sha256;
	cv=none;
	b=SfQf26tWRDJO9VfZSYFEO3S8r6M7z3oJHQlAjzlL7REi6R7ZndX+nWqTyp2wi2UTSbOgbt
	f1TIxO6N+WjKYeTPKzT4b8QtfP8bJO8N+nDIwZDbdGrQbYVfZCkrC4hAbrXMRQeOtdNB8X
	Ih4z7nvays8xbMJamQQsU1pqBaf00zM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=Pjja+9+k;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: LV2NWVZ3ONIPSUFODSCCH7XEQZSVFMGU
X-Message-ID-Hash: LV2NWVZ3ONIPSUFODSCCH7XEQZSVFMGU
X-Mailman-Approved-At: Sun, 23 Aug 2020 05:52:26 +0200
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LV2NWVZ3ONIPSUFODSCCH7XEQZSVFMGU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Drop repeated words in net/batman-adv/.


Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>


 net/batman-adv/bridge_loop_avoidance.c |    2 +-
 net/batman-adv/fragmentation.c         |    2 +-
 net/batman-adv/hard-interface.c        |    2 +-
 net/batman-adv/multicast.c             |    2 +-
 net/batman-adv/network-coding.c        |    2 +-
 net/batman-adv/send.c                  |    2 +-
 net/batman-adv/soft-interface.c        |    4 ++--
 net/batman-adv/types.h                 |    4 ++--
 8 files changed, 10 insertions(+), 10 deletions(-)
