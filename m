Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B30F4575306
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 Jul 2022 18:43:38 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8FF7980847;
	Thu, 14 Jul 2022 18:43:37 +0200 (CEST)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BE98780785
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 Jul 2022 18:43:33 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4391562078;
	Thu, 14 Jul 2022 16:43:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 197EFC341C6;
	Thu, 14 Jul 2022 16:43:32 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.95)
	(envelope-from <rostedt@goodmis.org>)
	id 1oC1w3-004lUG-7P;
	Thu, 14 Jul 2022 12:43:31 -0400
Message-ID: <20220714164331.060725040@goodmis.org>
User-Agent: quilt/0.66
Date: Thu, 14 Jul 2022 12:43:13 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Subject: [for-next][PATCH 17/23] batman-adv: tracing: Use the new __vstring() helper
References: <20220714164256.403842845@goodmis.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of "SRS0=9/gF=XT=goodmis.org=rostedt@kernel.org" designates 139.178.84.217 as permitted sender) smtp.mailfrom="SRS0=9/gF=XT=goodmis.org=rostedt@kernel.org"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1657817014; a=rsa-sha256;
	cv=none;
	b=g8lVnsFuMJJVQ8zB2gljVL3vOSKCpFQHaPWfzy1OBL2CjDkRa7uYkFxjhLlDE2iXXIo0po
	f0biubjJen6PcMKKMiW2G/AhByjIZ1uyRwWJMvX1Do0Q0dZX73Z6XRB3WZe3rBajAmlzUu
	8qnD16K22TNfnKT5aIzC/A2RVVDEfP4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1657817014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 references:references; bh=1aBoa7qvl537oDri9YQN5SmTrO6jZ/RqOgEPWTbpSjw=;
	b=geivEAzNTjXBoPAzJE6WM1//R3qfMrM6ktUEmQaND8vG/8h53nBwcmjBK8M6LfqCDvA4P4
	5loUtb1LFOucPh9VD3PV8dLfuk7Y7CJppT1/zYv89rBvbnfVqtvABXpg24bNFsKeocgd8d
	OTAWlBcM0/3uwqbDSe1RGm/pfuMy0lE=
Message-ID-Hash: G4DSCE72JTKSPWV2QIVRZCRVQLCMTCJH
X-Message-ID-Hash: G4DSCE72JTKSPWV2QIVRZCRVQLCMTCJH
X-MailFrom: SRS0=9/gF=XT=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Ingo Molnar <mingo@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/G4DSCE72JTKSPWV2QIVRZCRVQLCMTCJH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: "Steven Rostedt (Google)" <rostedt@goodmis.org>

Instead of open coding a __dynamic_array() with a fixed length (which
defeats the purpose of the dynamic array in the first place). Use the new
__vstring() helper that will use a va_list and only write enough of the
string into the ring buffer that is needed.

Link: https://lkml.kernel.org/r/20220705224751.080390002@goodmis.org

Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: netdev@vger.kernel.org
Signed-off-by: Steven Rostedt (Google) <rostedt@goodmis.org>
---
 net/batman-adv/trace.h | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/trace.h b/net/batman-adv/trace.h
index d673ebdd0426..67d2a8a0196c 100644
--- a/net/batman-adv/trace.h
+++ b/net/batman-adv/trace.h
@@ -40,16 +40,13 @@ TRACE_EVENT(batadv_dbg,
 	    TP_STRUCT__entry(
 		    __string(device, bat_priv->soft_iface->name)
 		    __string(driver, KBUILD_MODNAME)
-		    __dynamic_array(char, msg, BATADV_MAX_MSG_LEN)
+		    __vstring(msg, vaf->fmt, vaf->va)
 	    ),
 
 	    TP_fast_assign(
 		    __assign_str(device, bat_priv->soft_iface->name);
 		    __assign_str(driver, KBUILD_MODNAME);
-		    WARN_ON_ONCE(vsnprintf(__get_dynamic_array(msg),
-					   BATADV_MAX_MSG_LEN,
-					   vaf->fmt,
-					   *vaf->va) >= BATADV_MAX_MSG_LEN);
+		    __assign_vstr(msg, vaf->fmt, vaf->va);
 	    ),
 
 	    TP_printk(
-- 
2.35.1
