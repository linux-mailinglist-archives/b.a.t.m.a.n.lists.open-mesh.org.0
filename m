Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 92092567A36
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  6 Jul 2022 00:48:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 63F20807E3;
	Wed,  6 Jul 2022 00:47:59 +0200 (CEST)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D54C3805C1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  6 Jul 2022 00:47:54 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7245761D60;
	Tue,  5 Jul 2022 22:47:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26B32C341ED;
	Tue,  5 Jul 2022 22:47:52 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.95)
	(envelope-from <rostedt@goodmis.org>)
	id 1o8rKh-001yNB-89;
	Tue, 05 Jul 2022 18:47:51 -0400
Message-ID: <20220705224751.080390002@goodmis.org>
User-Agent: quilt/0.66
Date: Tue, 05 Jul 2022 18:45:05 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 12/13] batman-adv: tracing: Use the new __vstring() helper
References: <20220705224453.120955146@goodmis.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1657061275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 references:references; bh=k95aTUrz465VsZ6MN1Y99r+npPtYxMB1UvqkXto9oi8=;
	b=nJf3LdIt9I55Nm32Y8SVqZKenJXUwdsudWiH2neIEDF3lSC9hj7Zmq27MptGFzVHBnzvnD
	BpOnGwkBUDHDgSe6fKKUBbcnc7T0IfopUUlV30xfGIOdxnb6DRfyVrVH9Kr1tpicESGNW2
	VKMIYWsbeFwv/AsxDjL57kXBUCi0cT4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of "SRS0=aaZh=XK=goodmis.org=rostedt@kernel.org" designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom="SRS0=aaZh=XK=goodmis.org=rostedt@kernel.org"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1657061275; a=rsa-sha256;
	cv=none;
	b=KxO627ayBmsazzo6HmuqsZnrRud2s893NHiszPvpLnWWSVIqIMVZa5WJhKmu5ZXNnkgWU6
	lXGZukXIgRlxzZs6jCYiZBqEPFgUOmfdV23+639/ytGlB8JsUUi/ylwOhF+8MLROT8g7Bi
	9mALUw80Hb4RvIFgemApIxOjLai2SuA=
Message-ID-Hash: NBKO7TTXJJVWMYO5LK3CSXEJOTDAHL2H
X-Message-ID-Hash: NBKO7TTXJJVWMYO5LK3CSXEJOTDAHL2H
X-MailFrom: SRS0=aaZh=XK=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Ingo Molnar <mingo@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NBKO7TTXJJVWMYO5LK3CSXEJOTDAHL2H/>
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

Cc: Marek Lindner <mareklindner@neomailbox.ch>
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
