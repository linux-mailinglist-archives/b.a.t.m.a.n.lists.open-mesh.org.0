Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CA94424EBB2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 07:52:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 95DAB81C40;
	Sun, 23 Aug 2020 07:52:39 +0200 (CEST)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BF1748009D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 02:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=S+FPpVijMG08FT12uXFjTaQyoZqQXqUSzSZgfsXA7u8=; b=LJgTBaMvmoNXi8acOHxw7tC91L
	ykgr3Vgr5ngzxZ2Qim7bc31cFcJmbD0CLpom8NbTwN+EpUg392XK5ws2BJVoZ6Qcr5aEtIdXE0Xap
	ITgpT8xZMuHl2iJvcpx+kGSI8u/eYgfPcgbQezozDFFcSoLW5JHdI2vgIjb0J1QDYvl0yv+M2XA8F
	9IahxImuLsDS0kKh/VpufWcozrt6ul+ePmsznpZ9cAKUHdu2tC5Txo1CdzYkN0jSzLFmXDELJuxdf
	GbVCgIt9v/p446I1Oce5F1VInb/pT9jkWHoW409pYYgSjRm5G9n28B5Iv71mAg/FuOrbEghKuPt+N
	SHJsXVMg==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9ci7-0006Nf-72; Sat, 22 Aug 2020 23:14:07 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Subject: [PATCH 8/8] net: batman-adv: types.h: delete duplicated words
Date: Sat, 22 Aug 2020 16:13:35 -0700
Message-Id: <20200822231335.31304-9-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200822231335.31304-1-rdunlap@infradead.org>
References: <20200822231335.31304-1-rdunlap@infradead.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598141576;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=S+FPpVijMG08FT12uXFjTaQyoZqQXqUSzSZgfsXA7u8=;
	b=zKs/OpAoQpomVxtJuy1Gv5UimJOK935j9znQ1Dl4pigya9on2MPSFcF98yT5n3yVvOZG3u
	WFGjzAiWPW1aRDf0/8kOffBnt/n4C5IRMTb/Bb5fbQ3U3UyqeKdFybQSD1tcdLOsy7v1FN
	3HdN7o+AMyHcPOkiUQ0LxsbxxMjFmic=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598141576; a=rsa-sha256;
	cv=none;
	b=zqmAad/9+SS9nkQoMYmX5NotyKOBRrl6QZpSyP8BGHr9zgfYg+/VPPeZCbGwWt0EReLD1Z
	p7+iHe1lxSDpwpJVfemW7AIRThRnMCeLvrI/mp2lPPSQQ+iHi05VBUDoKDg6xRyiRQ0PQN
	Mp2BTjR8AXgP9/9iRbStpGpNCyjRK34=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=LJgTBaMv;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 63D7PJEWZMFKLJQHVTZXDLEKGGCEWUDF
X-Message-ID-Hash: 63D7PJEWZMFKLJQHVTZXDLEKGGCEWUDF
X-Mailman-Approved-At: Sun, 23 Aug 2020 05:52:26 +0200
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/63D7PJEWZMFKLJQHVTZXDLEKGGCEWUDF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Drop the repeated words "time" and "address".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
---
 net/batman-adv/types.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20200731.orig/net/batman-adv/types.h
+++ linux-next-20200731/net/batman-adv/types.h
@@ -1492,7 +1492,7 @@ struct batadv_tp_vars {
 	/** @unacked_lock: protect unacked_list */
 	spinlock_t unacked_lock;
=20
-	/** @last_recv_time: time time (jiffies) a msg was received */
+	/** @last_recv_time: time (jiffies) a msg was received */
 	unsigned long last_recv_time;
=20
 	/** @refcount: number of context where the object is used */
@@ -1996,7 +1996,7 @@ struct batadv_tt_change_node {
  */
 struct batadv_tt_req_node {
 	/**
-	 * @addr: mac address address of the originator this request was sent t=
o
+	 * @addr: mac address of the originator this request was sent to
 	 */
 	u8 addr[ETH_ALEN];
=20
