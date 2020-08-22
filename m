Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CA40324EBB1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 07:52:37 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1D8F381501;
	Sun, 23 Aug 2020 07:52:34 +0200 (CEST)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CD8D980E04
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 02:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=v0B/+HI6ggac/A7ReSzJ51fZmoHn2VaJGqjN9k4WXks=; b=z20ZptkkIquGhsNSoJIetLFhpc
	6TVl658IxST5bhwlHPgFKqalvYMpwQDlG6jTQdYA7fPDGmo3aCp6k6cm5ozgimExkxEq+3vIdvGGV
	EfFiVqzEJidvz4WqPDmUnZdw0I90t1whRGHN7atoVTmSe6XzIU7aC6j9AOtdmjthyhRy3wfxYhPtS
	LEVstbZzDBijr1iQxXTSbpnZursozFayZdukEQZFp639WRsyf57r8cfO0329JHVzjk3C0bmRA01Dc
	P5K88G5tbwoNXtTji3pfXrTtkVEZbYFlqaFGy170fTDzwynupHwmM8ir6DQio0ChoMOGeE6E4B8SG
	dz1Gljqw==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9chq-0006Nf-OV; Sat, 22 Aug 2020 23:13:51 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Subject: [PATCH 3/8] net: batman-adv: hard-interface.c: delete duplicated word + fix punctuation
Date: Sat, 22 Aug 2020 16:13:30 -0700
Message-Id: <20200822231335.31304-4-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200822231335.31304-1-rdunlap@infradead.org>
References: <20200822231335.31304-1-rdunlap@infradead.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598141547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=v0B/+HI6ggac/A7ReSzJ51fZmoHn2VaJGqjN9k4WXks=;
	b=ckuEBm83mcP7vOMByMgoKjijV9FFR1Y0wlsbiuzC7TixSQv7VgVCq7cVXlAz67CWRLW01v
	+oG21wcMYS+7jtLR0Z4B6Hojl7B8a3es4G+fpKUFDf4nnSlJTxF47nymKFdlHeF8CHvStl
	J8WOIOe+yHwewZuspUyiO0v8mmt/C7E=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598141547; a=rsa-sha256;
	cv=none;
	b=QjWuzFDc9BZ75zfz8Jbf6a56JbB5xyxG5UeGCdSVyNYrg0+TXlCUfib/bJ87vJi/mfuykK
	wDdpYu3R6YFkHqVEzxoK+4/YFPEHPTQBxc+Jhga0Reuq3Knwh96CSNH4CFna9/mdP3tLtt
	mdpZIfgWG8bfl2QQyDiXSaGbmAVO5wo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=z20Zptkk;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 5JSVGCGGD63KFMBD5CKHAFSNRXUVUG6U
X-Message-ID-Hash: 5JSVGCGGD63KFMBD5CKHAFSNRXUVUG6U
X-Mailman-Approved-At: Sun, 23 Aug 2020 05:52:26 +0200
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5JSVGCGGD63KFMBD5CKHAFSNRXUVUG6U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Drop the repeated word "table".
End a sentence with a period.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
---
 net/batman-adv/hard-interface.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200731.orig/net/batman-adv/hard-interface.c
+++ linux-next-20200731/net/batman-adv/hard-interface.c
@@ -599,7 +599,7 @@ out:
 	/* report to the other components the maximum amount of bytes that
 	 * batman-adv can send over the wire (without considering the payload
 	 * overhead). For example, this value is used by TT to compute the
-	 * maximum local table table size
+	 * maximum local table size.
 	 */
 	atomic_set(&bat_priv->packet_size_max, min_mtu);
=20
