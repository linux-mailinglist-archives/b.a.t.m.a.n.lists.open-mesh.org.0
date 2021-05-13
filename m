Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D74637F963
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:08:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 18FC4814E7;
	Thu, 13 May 2021 16:08:56 +0200 (CEST)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4FA09814E7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:08:53 +0200 (CEST)
Received: by mail-ed1-x52c.google.com with SMTP id df21so3894638edb.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kwbYuvNj6n/qWGnAbzLtp0c60PCixsNe0mcYa6/xWkI=;
        b=MbNOnZW5+WyY+LsyrVjwfBlnjrXHhWbHx4oa3u+/SsSMc7qVIF/Dzz0j7su33CQ+8Q
         GHbi63YtHKyoRNbW+rzT8xkkUX9QhrCyCIApQwaFiVKow+sIPeANm0kmsDzSh1mNk44A
         TcoYLiBLFrcwxpyBKtF4ajLowf+ZFoYpk9yJ3Mp1Q3+2O/7MdKrREd3kIkz+5UaZrssn
         xsw6vkHZvEyOBtn85J3RbSlLCKwQ4bknxXwbJkKkyCSBlU/P4nJ1TmsnSTcUq6TAxcJS
         7oXAgV5z4BTYJK6Rc912Ut6otHjCLiZ/e91mSAKu8CmsJm6hDSeTU16H1/KvX4dODa08
         ivVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kwbYuvNj6n/qWGnAbzLtp0c60PCixsNe0mcYa6/xWkI=;
        b=tJEJ8JzjBRzVfpA5HBdnMI2mUT7hrezbP2DgSuNHsAAKmq+jsBzgS4F7AabN7py04P
         3b59Bx7Z/lvxm9C6XDN3Cr1NAgDLZMo/oI/e1X+LR7HQYbSE7zK7uI/rbZlMunx5WGmW
         W4mz9LFa8EZm+AKInKxH4HSQb2OpOjdDcb6CGr/tk4xaWHQmiwglU0yRKISVD2/VpnY5
         W0weKllNwxtTyzy5StkPveunDjIkociASvh3+FjWqgPSOOJR9TSpBwmw2Dy6TpoUyfZZ
         iz1DTRNLV4tGFETvNoyl6f0Rhfh+CR25OjZrQfOvr1+NvJo+DtuPy9zwx8lWkhmIEiEB
         WALQ==
X-Gm-Message-State: AOAM531hZgfbq7OlAiyFzUzb1zYcFJpnkxtka3/tFZQ1CIKrMmenRtN5
	rJyeMvuHDIXNiej5r3o8/69f1PWCS6FPu6ZoZNA=
X-Google-Smtp-Source: ABdhPJz+Sv3AwUz85Cv/ximCYZoE6T7n0NWpKTw2gLKx8PYregmjB5iVFXATc+9JvYy+J/5Y5l6IjA==
X-Received: by 2002:a17:906:1cc3:: with SMTP id i3mr1033044ejh.87.1620914570398;
        Thu, 13 May 2021 07:02:50 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id by20sm1825055ejc.74.2021.05.13.07.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:02:49 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 1/2] batctl: netlink: Make netlink_query_common non-static
Date: Thu, 13 May 2021 16:02:33 +0200
Message-Id: <20210513140234.1624460-2-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513140234.1624460-1-asarmanow@gmail.com>
References: <20210513140234.1624460-1-asarmanow@gmail.com>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620914933; a=rsa-sha256;
	cv=none;
	b=X89B3G3Tg2cSPhj1JjXohyHqkUH72kCDggUKRpE0tUyY5n8SmW2pRwrai3MkUnk7SrmiYP
	eYXPSOHISxOHiylAk6TkJJcj/d4I5A6kbne6emdh6lm2jdy9XsgIuSfyAx2lIPmbubAuag
	7Mz99JYyv2aGsvptDpEO4h/RoWDfV0U=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=MbNOnZW5;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620914933;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=kwbYuvNj6n/qWGnAbzLtp0c60PCixsNe0mcYa6/xWkI=;
	b=iZCcTszHSh0PTuq9cGVoJPaYJc061e9ZL7qJ4YgU3VDLefkmxgvBf4GSnQ/8Q8hJHN9hWR
	cWvee5L3ofUdhSll6z1ZSs6TGJ4qMTwHvCjuC7s9LDyF6mmgx9pxS47u7OBSFQHZ+XFsDZ
	bNy1l8V+UrOb3+DuTc2XjzZeonVuVOY=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: YO7DMY23W4T2JECWX4J3T6FFKAQBPOT3
X-Message-ID-Hash: YO7DMY23W4T2JECWX4J3T6FFKAQBPOT3
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YO7DMY23W4T2JECWX4J3T6FFKAQBPOT3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

With a view to the introduction of a JSON debug support the
netlink_query_common can be used for simple query of batman-adv
atttirubtes without any filters.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 netlink.c | 12 ++++--------
 netlink.h |  8 ++++++++
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/netlink.c b/netlink.c
index eb5888b..2c45645 100644
--- a/netlink.c
+++ b/netlink.c
@@ -29,10 +29,6 @@
 #include "functions.h"
 #include "main.h"
=20
-struct nlquery_opts {
-	int err;
-};
-
 struct nla_policy batadv_netlink_policy[NUM_BATADV_ATTR] =3D {
 	[BATADV_ATTR_VERSION] =3D {
 		.type =3D NLA_STRING,
@@ -623,10 +619,10 @@ static int nlquery_stop_cb(struct nl_msg *msg, void=
 *arg)
 	return NL_STOP;
 }
=20
-static int netlink_query_common(struct state *state,
-				unsigned int mesh_ifindex, uint8_t nl_cmd,
-				nl_recvmsg_msg_cb_t callback, int flags,
-				struct nlquery_opts *query_opts)
+int netlink_query_common(struct state *state,
+			 unsigned int mesh_ifindex, uint8_t nl_cmd,
+			 nl_recvmsg_msg_cb_t callback, int flags,
+			 struct nlquery_opts *query_opts)
 {
 	struct nl_msg *msg;
 	struct nl_cb *cb;
diff --git a/netlink.h b/netlink.h
index 2cc5862..c93f500 100644
--- a/netlink.h
+++ b/netlink.h
@@ -25,6 +25,10 @@ struct print_opts {
 	uint8_t nl_cmd;
 };
=20
+struct nlquery_opts {
+	int err;
+};
+
 struct ether_addr;
=20
 int netlink_create(struct state *state);
@@ -54,6 +58,10 @@ int netlink_print_error(struct sockaddr_nl *nla, struc=
t nlmsgerr *nlerr,
 			void *arg);
 void netlink_print_remaining_header(struct print_opts *opts);
=20
+int netlink_query_common(struct state *state, unsigned int mesh_ifindex,
+			 uint8_t nl_cmd, nl_recvmsg_msg_cb_t callback, int flags,
+			 struct nlquery_opts *query_opts);
+
 extern char algo_name_buf[256];
 extern int last_err;
 extern int64_t mcast_flags;
--=20
2.25.1
