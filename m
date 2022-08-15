Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CFA593E92
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Aug 2022 22:49:16 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 912D382850;
	Mon, 15 Aug 2022 22:49:15 +0200 (CEST)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 21226802C6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Aug 2022 22:49:12 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9DB08B811A0;
	Mon, 15 Aug 2022 20:49:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0BF5C433D6;
	Mon, 15 Aug 2022 20:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1660596550;
	bh=ZVE2RNHPOttuDHZ2xX2gbbcEhpFNhv9Nt5X6GeRZKSY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cUkQtYIDzoOpYCzOKmbhgMMr5vl7QPNPhlItf34lzDhv3ryYDyHMbmMReGhlQxrlt
	 km1KxFYXliLYUSXFtaeoQdZBkvfhgLipR378qM8LbRtoF+QmmIoayMDuE0h3p97vPz
	 SDJtrzo9rjBMTHQcUKQn+1aJCbKC8ENgEPUVl0z8=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.19 1114/1157] batman-adv: tracing: Use the new __vstring() helper
Date: Mon, 15 Aug 2022 20:07:50 +0200
Message-Id: <20220815180524.874593378@linuxfoundation.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220815180439.416659447@linuxfoundation.org>
References: <20220815180439.416659447@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1660596552; a=rsa-sha256;
	cv=none;
	b=4CtHdRbB/6yhe8XEtQWiZvxuNbNaHLIu//4oevRq05TiYNI8iyyp6kWC3dJa4zaAP+54/v
	0owG5e7xHIPOKcXJmcf3tsnmArPZ4M6MBhyEsdchEWREs5o4jBvJMU+sPeOSM4BnMfbkYI
	bf4SiS3lSjC143bbEsx4FLnvwiR+W8A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=cUkQtYID;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1660596552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=oUpEtPLjd5lzB6PrtVjBb61iZmZBxSpE4KoB9sGMLSE=;
	b=kYRxT+BnHryodgb/XDOKeffCF7tBM8BFUwEcoCy+gfr2XDkdUfH7QEUYPbvR2toiSPML1Y
	CrHstgpFZb80kcYO2QAzrJM7ayEo2KUgqGdw3gv5PIfZ5vF8pHU9OjCHPx5Wxu8TE3vO8O
	0HaLAkJM7yIefYHoqBr4KYyvZW57dyo=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: P23XMSM6FK5AKP7WCOYCRZ6RRQGCTORW
X-Message-ID-Hash: P23XMSM6FK5AKP7WCOYCRZ6RRQGCTORW
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org, Marek Lindner <mareklindner@neomailbox.ch>, Ingo Molnar <mingo@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, "Steven Rostedt (Google)" <rostedt@goodmis.org>, Sasha Levin <sashal@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/P23XMSM6FK5AKP7WCOYCRZ6RRQGCTORW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Steven Rostedt (Google) <rostedt@goodmis.org>

[ Upstream commit 9abc291812d784bd4a26c01af4ebdbf9f2dbf0bb ]

Instead of open coding a __dynamic_array() with a fixed length (which
defeats the purpose of the dynamic array in the first place). Use the new
__vstring() helper that will use a va_list and only write enough of the
string into the ring buffer that is needed.

Link: https://lkml.kernel.org/r/20220724191650.236b1355@rorschach.local.h=
ome

Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: netdev@vger.kernel.org
Acked-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Steven Rostedt (Google) <rostedt@goodmis.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/trace.h | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/net/batman-adv/trace.h b/net/batman-adv/trace.h
index d673ebdd0426..31c8f922651d 100644
--- a/net/batman-adv/trace.h
+++ b/net/batman-adv/trace.h
@@ -28,8 +28,6 @@
=20
 #endif /* CONFIG_BATMAN_ADV_TRACING */
=20
-#define BATADV_MAX_MSG_LEN	256
-
 TRACE_EVENT(batadv_dbg,
=20
 	    TP_PROTO(struct batadv_priv *bat_priv,
@@ -40,16 +38,13 @@ TRACE_EVENT(batadv_dbg,
 	    TP_STRUCT__entry(
 		    __string(device, bat_priv->soft_iface->name)
 		    __string(driver, KBUILD_MODNAME)
-		    __dynamic_array(char, msg, BATADV_MAX_MSG_LEN)
+		    __vstring(msg, vaf->fmt, vaf->va)
 	    ),
=20
 	    TP_fast_assign(
 		    __assign_str(device, bat_priv->soft_iface->name);
 		    __assign_str(driver, KBUILD_MODNAME);
-		    WARN_ON_ONCE(vsnprintf(__get_dynamic_array(msg),
-					   BATADV_MAX_MSG_LEN,
-					   vaf->fmt,
-					   *vaf->va) >=3D BATADV_MAX_MSG_LEN);
+		    __assign_vstr(msg, vaf->fmt, vaf->va);
 	    ),
=20
 	    TP_printk(
--=20
2.35.1


