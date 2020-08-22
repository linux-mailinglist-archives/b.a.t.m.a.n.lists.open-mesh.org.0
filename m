Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 300B624EBB3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 07:52:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2776881B88;
	Sun, 23 Aug 2020 07:52:45 +0200 (CEST)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 54B57810B6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 02:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=jN0keby5tgRTIpkJS5lSU+8rJVPstHTKjDGQectMSts=; b=QXmgoTrIZzmFgk6XzTEDSUzImZ
	MBxMZaBP/HJP5xUj/CrDZyf5RgTWRWFHQ3eUgN5Byur8aZYJ6WkcfiDA1pR1uN6jFPgoeaBllsjfa
	m5xJfck83p3f5dm3yo7xb/qDAwW9tvVCQ6XAhvxFRer3Y0pAkSzHs+XJ+fcgVw7mcVaVG0K8t7LRH
	I6kE1upj550VgrJj+0SPORrH3z2uHoJXlqM0jqfmbwo2LPDuJJHNAwogig5uJ4mzDZEesTQm6AEYP
	FS99uO0P74LYhs6lXGXF1draHsEQWVXF4YRO7mnonYPvkg3cR+G3idJ2kSv+nBv9hSdNzFn4IsiKH
	2L1Y4vLA==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9chx-0006Nf-8q; Sat, 22 Aug 2020 23:13:57 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Subject: [PATCH 5/8] net: batman-adv: network-coding.c: fix duplicated word
Date: Sat, 22 Aug 2020 16:13:32 -0700
Message-Id: <20200822231335.31304-6-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200822231335.31304-1-rdunlap@infradead.org>
References: <20200822231335.31304-1-rdunlap@infradead.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598141581;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jN0keby5tgRTIpkJS5lSU+8rJVPstHTKjDGQectMSts=;
	b=H7OP9LMDt9gkEgTM3pi+pejCGCUE78y74Kvj2ERC4NgHHUNPub17FTBAuM8WLTCca16mC2
	JN9xvrDo+5iUOTW+i1veu5B680rAzrBJeJaEI4Ej5azdWChUrEkZmmMn44tsZ4rIeXDpsf
	uZA/l6KmQ4tvOOABxt9ua1mlA6AuAyM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598141581; a=rsa-sha256;
	cv=none;
	b=v9DyGj/sLs9XkSQGtVQoaJ7dl5AVHr42kal/3eZIvPG64HfLyh5AMHRGzZEX8awCceEb/U
	fKw2ZsXwio6w3IhY5vobo24gZokwHcV3W/IN5MS5rrxCIQyDzqTkdXjKAmeuazVZRaEKHq
	Gh9vYYuRC0OJ24wocB6XUnxRtoJNWFg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=QXmgoTrI;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: GYPEGC6WCI2ALVYQJALZCYWBJ4K5S4I6
X-Message-ID-Hash: GYPEGC6WCI2ALVYQJALZCYWBJ4K5S4I6
X-Mailman-Approved-At: Sun, 23 Aug 2020 05:52:26 +0200
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GYPEGC6WCI2ALVYQJALZCYWBJ4K5S4I6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Change "is is" to "it is".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
---
 net/batman-adv/network-coding.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200731.orig/net/batman-adv/network-coding.c
+++ linux-next-20200731/net/batman-adv/network-coding.c
@@ -250,7 +250,7 @@ static void batadv_nc_path_put(struct ba
 /**
  * batadv_nc_packet_free() - frees nc packet
  * @nc_packet: the nc packet to free
- * @dropped: whether the packet is freed because is is dropped
+ * @dropped: whether the packet is freed because it is dropped
  */
 static void batadv_nc_packet_free(struct batadv_nc_packet *nc_packet,
 				  bool dropped)
