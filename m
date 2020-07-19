Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B5922575B
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 20 Jul 2020 08:11:25 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A5166806FB;
	Mon, 20 Jul 2020 08:11:24 +0200 (CEST)
Received: from casper.infradead.org (casper.infradead.org [IPv6:2001:8b0:10b:1236::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 56178803B1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 19 Jul 2020 20:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=PAx/+9RU+aVAmEL3qldgG4FzyQkJ920RlAj2ob/fuxM=; b=sQC86ok7JRwckcLcDsUe1AIDVz
	wMX5LDzPuVNH5f/HVaQdwuEwRzw/y1SOgd5xTDC88o4Ny6p6vn2wVwdt4ptD1vUw7VhxFn2kkJdy6
	Nx5Ss4u4TC9j5GP5i3Eu/UDhdq8esrZLqzy3CQgfRYclsFYUp+qvNt3Ok39556LKlrlreQX+aDXPs
	Oz8i3nhvllRgNdb9x6Tv1DyL26qcsOgMJjSgeu91pY5WxSe/zgDfw40Fqti1I4hrLUgAjttRsL3Cf
	r2oDX1pKvkvZieVAsxEBJvx1C7HsHWWbR5KI5/ekY24uXeP0LFifMQmYImHyfnRPcGoo9tiofXFFj
	bBEHrxIg==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jxDjS-0006AC-G9; Sun, 19 Jul 2020 18:08:16 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] net: batman-adv: types.h: delete duplicated words
Date: Sun, 19 Jul 2020 11:08:11 -0700
Message-Id: <20200719180811.11964-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1595183115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=PAx/+9RU+aVAmEL3qldgG4FzyQkJ920RlAj2ob/fuxM=;
	b=lIEJDWU2yN9A455od+wSm9wEW2qFNlKF5Ocl+ccw6HcGwmlS8n3sA3UKon6A8TYQv5BShW
	91XoqiqXujwh0gu9iewQTKrhwtQNiP218mmohsiCXF9Vqx3TWZxl9RF0IMJuxNXaYm+cLj
	T7U2MFOEhomoKdLG8rXCADWALfF8V9I=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1595183115; a=rsa-sha256;
	cv=none;
	b=EC0YIYYMgg4ESk56VaCT6rb6Qj599kBw7j7y4MARFAaGkaQkUd0mThUrXZmMNkmA5ewukd
	IN5T0wW6wA+shFX5PPX7qhman3NWovoV7fXVRlu85m9bHJiAmu6F0ALubXqkZD0w0wNnVM
	yt+H6VTxmu+dnd7loe5KZiRUOqSqcxE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b=sQC86ok7;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1236::1) smtp.mailfrom=rdunlap@infradead.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: EABTQIUJUGAIT6IYHZ3RXABUSZPIORER
X-Message-ID-Hash: EABTQIUJUGAIT6IYHZ3RXABUSZPIORER
X-Mailman-Approved-At: Mon, 20 Jul 2020 06:11:22 +0200
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EABTQIUJUGAIT6IYHZ3RXABUSZPIORER/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Delete the doubled word "time" in a comment.
Delete the doubled word "address" in a comment.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
---
 net/batman-adv/types.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20200717.orig/net/batman-adv/types.h
+++ linux-next-20200717/net/batman-adv/types.h
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
