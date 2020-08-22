Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CE624EBB8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 07:53:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4AD81815F8;
	Sun, 23 Aug 2020 07:53:10 +0200 (CEST)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DF59680E1D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 02:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=AQKkkVjR6UlOMmTuk0bmVSARYGJQD8WUkNffq9263Ig=; b=09huZ4QuQms/HGGmKr8GiUaoMU
	eEWcvgiEbMYVD9vpcLxuy98HW1sJptUl6/lpX80smJBREON2ti7Fze5nc79fTLbm8X9QGyCUUOWf/
	olUQnoTFcT33Cne8c8r7L9+m4yj4IDKn+CN4uGjCu9cBwDh5TmlJCNfgKoD3OjaHY3FLhPY4imfmR
	QTuxdooQ4bgnZ65Ix5KtYcUfkIRafjaazbd0EYWcfX1D76F/n/RZjy3agoAONSHBrh8pwpfHAMapJ
	TmZssahddBVSFwjslp5N0tdS46a7EQoduoeiVNuvk03UDVNQ3eEItWF4UWWbeNEBIC1zh2ykLzjvd
	6J+hBPJA==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9ci3-0006Nf-Qz; Sat, 22 Aug 2020 23:14:04 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Subject: [PATCH 7/8] net: batman-adv: soft-interface.c: delete duplicated words
Date: Sat, 22 Aug 2020 16:13:34 -0700
Message-Id: <20200822231335.31304-8-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200822231335.31304-1-rdunlap@infradead.org>
References: <20200822231335.31304-1-rdunlap@infradead.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598141621;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=AQKkkVjR6UlOMmTuk0bmVSARYGJQD8WUkNffq9263Ig=;
	b=bGaP5e2VWOSzq43sltpZ0CnNKs0ayZBU79X0SMGW7jA66NjSk8u+uh0jPqQzYK7CIy5ax3
	V6Nwa+jaxgubxQvpb+Q8Khw1ZJ8R3O+t/Q/Me3R/B+PZ6QiEoIu93r7tp+vEKdTM7K2q7c
	mu4G3VxdFFOwJU68IuXtPZ4XvFOQIew=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598141621; a=rsa-sha256;
	cv=none;
	b=abucusaa53Y3gfuJJL960lggh+Dr9S22SA7jpp1vTxt9QfTJUKn1sLOb8mrKVw32DLDVlY
	W9dMu+NS3vqVx8rwX8lif6CC3cclgLsFOdJAWk2u6NiY7jyrTOdPCbhBfiqcwcl+9kSz8R
	A/sjIfNKR5J8BaoLZjD6JX/tdJQoY70=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=09huZ4Qu;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: UVIEV4ZXDG3ITG5W7BBCMZ5YAW4OPNRU
X-Message-ID-Hash: UVIEV4ZXDG3ITG5W7BBCMZ5YAW4OPNRU
X-Mailman-Approved-At: Sun, 23 Aug 2020 05:52:26 +0200
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UVIEV4ZXDG3ITG5W7BBCMZ5YAW4OPNRU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Drop the repeated word "the" in two places.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
---
 net/batman-adv/soft-interface.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20200731.orig/net/batman-adv/soft-interface.c
+++ linux-next-20200731/net/batman-adv/soft-interface.c
@@ -649,7 +649,7 @@ static void batadv_softif_destroy_vlan(s
 /**
  * batadv_interface_add_vid() - ndo_add_vid API implementation
  * @dev: the netdev of the mesh interface
- * @proto: protocol of the the vlan id
+ * @proto: protocol of the vlan id
  * @vid: identifier of the new vlan
  *
  * Set up all the internal structures for handling the new vlan on top o=
f the
@@ -707,7 +707,7 @@ static int batadv_interface_add_vid(stru
 /**
  * batadv_interface_kill_vid() - ndo_kill_vid API implementation
  * @dev: the netdev of the mesh interface
- * @proto: protocol of the the vlan id
+ * @proto: protocol of the vlan id
  * @vid: identifier of the deleted vlan
  *
  * Destroy all the internal structures used to handle the vlan identifie=
d by vid
