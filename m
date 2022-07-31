Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF3C586081
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 Jul 2022 21:04:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1C624827A3;
	Sun, 31 Jul 2022 21:04:39 +0200 (CEST)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id ECB9080371
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 31 Jul 2022 21:04:34 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 78FD6B80DCD;
	Sun, 31 Jul 2022 19:04:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B02EC43470;
	Sun, 31 Jul 2022 19:04:33 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.96)
	(envelope-from <rostedt@goodmis.org>)
	id 1oIEEq-007G2j-0s;
	Sun, 31 Jul 2022 15:04:32 -0400
Message-ID: <20220731190432.106094347@goodmis.org>
User-Agent: quilt/0.66
Date: Sun, 31 Jul 2022 15:03:31 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Subject: [for-next][PATCH 02/21] batman-adv: tracing: Use the new __vstring() helper
References: <20220731190329.641602282@goodmis.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1659294275; a=rsa-sha256;
	cv=none;
	b=wUZEAoWUmTUyZF5m2Go2WUx7lx+HdW+nZDcvJFOTRPGvtqYZGMMWZv2WtamMaSG/k5Ewn4
	o9sgvhiiwpZIuLIM71F+Fi759qWdwszLT+y2YG0+II02rieWo+wGV+5f4bkFtxc+GLQqFN
	slTj2Swe3OQmo1GNkAPc7+ZnNEiHWwk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of "SRS0=Kc5+=YE=goodmis.org=rostedt@kernel.org" designates 145.40.68.75 as permitted sender) smtp.mailfrom="SRS0=Kc5+=YE=goodmis.org=rostedt@kernel.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1659294275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 references:references; bh=fQedjkdo/tmqt+/wKlY8rqeM2BXff+zvyTpGI/xOvF8=;
	b=ns7hb0Nj+JN46+SI6XZtYqDZTF2xvQmdADI9nmGboaFSVuAdqYAQgvyJRQEWoiCiBF5cHS
	HU0x/kWojdIaJTxBjFMMhxNhKwZZod8h4YcHkIzKLDyDeSguY+zJQIO0HfpWi0XVPhf4Ii
	4m4NE8eBXJRfYavQZtbT8KBWveiKei4=
Message-ID-Hash: NDH6CL44HWOOCVHQDYV7IS4EMPIEG7ZV
X-Message-ID-Hash: NDH6CL44HWOOCVHQDYV7IS4EMPIEG7ZV
X-MailFrom: SRS0=Kc5+=YE=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Ingo Molnar <mingo@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NDH6CL44HWOOCVHQDYV7IS4EMPIEG7ZV/>
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

Link: https://lkml.kernel.org/r/20220724191650.236b1355@rorschach.local.home

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
---
 net/batman-adv/trace.h | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/net/batman-adv/trace.h b/net/batman-adv/trace.h
index d673ebdd0426..31c8f922651d 100644
--- a/net/batman-adv/trace.h
+++ b/net/batman-adv/trace.h
@@ -28,8 +28,6 @@
 
 #endif /* CONFIG_BATMAN_ADV_TRACING */
 
-#define BATADV_MAX_MSG_LEN	256
-
 TRACE_EVENT(batadv_dbg,
 
 	    TP_PROTO(struct batadv_priv *bat_priv,
@@ -40,16 +38,13 @@ TRACE_EVENT(batadv_dbg,
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
