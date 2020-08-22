Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F4D24EBB7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 07:53:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C9E4E81DDB;
	Sun, 23 Aug 2020 07:53:04 +0200 (CEST)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D0F9380E1D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 02:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=clDOXbnck/TQTfZEav1cvaV06z3YPUix8kx6bmElCX4=; b=DkUvPcvlFUvJQ+YGZ5nNo2VhKL
	YnWwje2jF4Rhdn+p5MvQxLmBPp+7EmpEST1c2pDYHFYemhbjlyhEo6oh+vZOKPmj+EtNUgEk+oy7v
	pbjwlJmeNw8szvRsrX+GGvlDaxO+EVAoIgJKnscGUYJh2tZPwFiQqoj+lCEt2wAupOcVEn6gbTDKG
	qpFi5Li4dqe72wgvm4gjFMGkx3NfGZbvfudgJAy7Edcn8FsyTWahzNfUoLLmd59UNxTr0rBsCqLbS
	7v1XEb7C+qeS4j44MjgHsM3hEvigWoWL9z1hdWAnIqTVPKIy2ZbbJFSBlu0GS72DHXZkHX/YpshO3
	HjhaBV2w==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9chk-0006Nf-7S; Sat, 22 Aug 2020 23:13:44 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Subject: [PATCH 1/8] net: batman-adv: bridge_loop_avoidance.c: delete duplicated word
Date: Sat, 22 Aug 2020 16:13:28 -0700
Message-Id: <20200822231335.31304-2-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200822231335.31304-1-rdunlap@infradead.org>
References: <20200822231335.31304-1-rdunlap@infradead.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598141609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=clDOXbnck/TQTfZEav1cvaV06z3YPUix8kx6bmElCX4=;
	b=wMY0IU0sVOzmLptz3+RVc1jZqcMjG+T93yV9bl6WqAuy9fm1FI6QnjS/uJELCcX8xaa1Ka
	/RZ+631mpO/sm7y5Ot0+piRw4MnjRuI6SgsIavKm1qgzXDGe+ijhLV2iJYL5ARr0uHUT6F
	5qIWA3ufWaoW31GnsDccqwZOXOet0s0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598141609; a=rsa-sha256;
	cv=none;
	b=09SZm09HwkhjoNe9GWcNZN+Fyj8tCZQpIysa4hKEVr68PtgV/dmcELVpGkA7IfB61BCG6O
	K0Ti8I0SYjsetQ47eJK8OQ79j/SUjWXdXTmRkcYmyhi3u+0xh0GCj8XYeeey/v8VBu9QRi
	Q4KRIyN/+Zf1pS5IVUsElVmh9+qc8LY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=DkUvPcvl;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: B5ZN44UYYNDUEVU5V6HURXZDC6HX7PJJ
X-Message-ID-Hash: B5ZN44UYYNDUEVU5V6HURXZDC6HX7PJJ
X-Mailman-Approved-At: Sun, 23 Aug 2020 05:52:26 +0200
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/B5ZN44UYYNDUEVU5V6HURXZDC6HX7PJJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Drop the repeated word "function".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
---
 net/batman-adv/bridge_loop_avoidance.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200731.orig/net/batman-adv/bridge_loop_avoidance.c
+++ linux-next-20200731/net/batman-adv/bridge_loop_avoidance.c
@@ -1795,7 +1795,7 @@ batadv_bla_loopdetect_check(struct batad
=20
 	ret =3D queue_work(batadv_event_workqueue, &backbone_gw->report_work);
=20
-	/* backbone_gw is unreferenced in the report work function function
+	/* backbone_gw is unreferenced in the report work function
 	 * if queue_work() call was successful
 	 */
 	if (!ret)
