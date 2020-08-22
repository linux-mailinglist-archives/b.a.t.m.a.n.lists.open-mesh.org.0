Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4783B24EBB4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 07:52:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 94DFB81DC9;
	Sun, 23 Aug 2020 07:52:51 +0200 (CEST)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E9BFA810B6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 02:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6iPn1VUo19LSSYj6bSZnvl+VseqjiVxzX1FEi/rV9hI=; b=SMwGI9VWkqMet8j6aOzjUg2G6z
	Cv4vJ9nO2zf2CRsXmbCa6xGFeCyJ/RYpLbhkNPR8p0ShDd2uZ6zRWQTQ2jQyDhGyhjo7o8W77zoyi
	A+KQz0OCaoySjvSx+aUv/0G5VCtLizpE9Yo7dKDi6itfoBif/Er9JdF5okvR0VqXedoHsn2Gep5Pb
	I8bvLpiAPoYnHDbct4I4jcmZ1UfCQhLCw+EeJjWbYKcvCdwwYEUaDqtcKoGUlhuDs6cS+KcfYVRjj
	GA8P+4w+htzZ2Xbf3Ey9u1RaSmBdZYjQztEX9nRhpQ5tIjrZQqSNXduz5rpW0RkQg23tpZNTpNPdz
	NasgSdfQ==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9chn-0006Nf-GC; Sat, 22 Aug 2020 23:13:48 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Subject: [PATCH 2/8] net: batman-adv: fragmentation.c: delete duplicated word
Date: Sat, 22 Aug 2020 16:13:29 -0700
Message-Id: <20200822231335.31304-3-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200822231335.31304-1-rdunlap@infradead.org>
References: <20200822231335.31304-1-rdunlap@infradead.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598141597;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=6iPn1VUo19LSSYj6bSZnvl+VseqjiVxzX1FEi/rV9hI=;
	b=FCptD9v/uK0MHC7i5bC7u7q3U42FZ6jTwYrMpqnWLSWtlzHfX73NAp7UDxPvi8zEUP4jkf
	JmfXHi3ROgrM+mXtAdNh/qAzyo/Iyj6ao+VUrtOMSAU0Bpr7e5gA3erAFVT3Je++29BKQd
	ya3VoRHtlHxuzQ4bJqWb8KqWOK449W4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598141598; a=rsa-sha256;
	cv=none;
	b=0f1XsnOwZ1LDNZNuhCN/H6RjiaOwFvlb1ANUSPM0guPhEemeU3EDvZqb9M7Tt0FNPyNzYI
	SUjmLWHpqgLwiNDScJtXJ/08GmdWkqFJHGe0SQRsPhGl8GKwKwjyq8IFgNAMtlMrTaPZ7l
	AqCnlH0H4M/D0MPlcQ0bJ05S12gvpqw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=SMwGI9VW;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: LPNZ2EP3WN55ESUGVKDSECWJ7QJ7X7HT
X-Message-ID-Hash: LPNZ2EP3WN55ESUGVKDSECWJ7QJ7X7HT
X-Mailman-Approved-At: Sun, 23 Aug 2020 05:52:26 +0200
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LPNZ2EP3WN55ESUGVKDSECWJ7QJ7X7HT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Drop the repeated word "not".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
---
 net/batman-adv/fragmentation.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200731.orig/net/batman-adv/fragmentation.c
+++ linux-next-20200731/net/batman-adv/fragmentation.c
@@ -306,7 +306,7 @@ free:
  * set *skb to merged packet; 2) Packet is buffered: Return true and set=
 *skb
  * to NULL; 3) Error: Return false and free skb.
  *
- * Return: true when the packet is merged or buffered, false when skb is=
 not not
+ * Return: true when the packet is merged or buffered, false when skb is=
 not
  * used.
  */
 bool batadv_frag_skb_buffer(struct sk_buff **skb,
