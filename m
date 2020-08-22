Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C034F24EBAF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 07:52:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 833968129F;
	Sun, 23 Aug 2020 07:52:27 +0200 (CEST)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 12D09803FB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 02:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=eSP15c+BrHm987EqEjGAno3ZUqcOU4FHWI9USPH8hxw=; b=QRll0Kt2a9074fTxLVvEsdr3iZ
	0ZVHCvcNqNp2y1fnr+mLLd5tAbpkT3F18E6FbpJId2gqvuAeW9Qlba+OtFD0ZMA50geFF+ABCq4Ps
	9/lsQqDOIMPatrHC1qFMwGR5V16rtPkvG1V4Q0BMqQDP9X9U1uIrOqyO9YQgrEi6VcGEWJzpCXvdI
	Xx98KBJtm9ipqh8AXaY+vOeGnZXBr9mYiKBf1akkpNBt76tsEuJzLPxQfvNUBfAPrdwbHe+4luF9Z
	YInBStUa84p8xN04kZPVLuRWN3PC8SBYixOVJ0ubCYxACNmzUisoS0mHUj1algdtiu+JseZ70xaBG
	kCGEc0QQ==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9ci0-0006Nf-Gh; Sat, 22 Aug 2020 23:14:01 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Subject: [PATCH 6/8] net: batman-adv: send.c: fix duplicated word
Date: Sat, 22 Aug 2020 16:13:33 -0700
Message-Id: <20200822231335.31304-7-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200822231335.31304-1-rdunlap@infradead.org>
References: <20200822231335.31304-1-rdunlap@infradead.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598141387;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=eSP15c+BrHm987EqEjGAno3ZUqcOU4FHWI9USPH8hxw=;
	b=rpcswvIPmxdbwRtkB04QjrJxoQGdF/VaqwTBvd0nEN30LEX6YR2DAmDY589Uy9ATPrPnln
	MsBWhUdZtUCpQ5rnv5oSViwa0XctXWpXf6aTw2lHhb0xbuy6VCLgP/LsTjDMyGevcbhjow
	3DySaOVnLOrJd6MB1NPE88AxXTsBrWQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598141387; a=rsa-sha256;
	cv=none;
	b=JRE1/xDOTory44PeY4N/0NztrkFQbiDo7XJhi+1J/lbzVfwY1kJ4Lxai5HZANoYJJh/3rz
	ZwjH2sEruyng3yLgbOj4ppPVMo5rKAI6jcv6W29ZvIdOonXKKQwQ2jfkxL++K/juTKwqNV
	4WEONgg/9+hUzmJI2iCKJTAXrQU9rpM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=QRll0Kt2;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: INKSN3YBCJVYOIMCJ357VS2SO2J6Q76G
X-Message-ID-Hash: INKSN3YBCJVYOIMCJ357VS2SO2J6Q76G
X-Mailman-Approved-At: Sun, 23 Aug 2020 05:52:26 +0200
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/INKSN3YBCJVYOIMCJ357VS2SO2J6Q76G/>
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
 net/batman-adv/send.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200731.orig/net/batman-adv/send.c
+++ linux-next-20200731/net/batman-adv/send.c
@@ -461,7 +461,7 @@ int batadv_send_skb_via_gw(struct batadv
 /**
  * batadv_forw_packet_free() - free a forwarding packet
  * @forw_packet: The packet to free
- * @dropped: whether the packet is freed because is is dropped
+ * @dropped: whether the packet is freed because it is dropped
  *
  * This frees a forwarding packet and releases any resources it might
  * have claimed.
