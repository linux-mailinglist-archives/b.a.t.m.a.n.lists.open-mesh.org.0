Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 618592B33F8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 15 Nov 2020 11:43:12 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3086A80590;
	Sun, 15 Nov 2020 11:43:11 +0100 (CET)
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 687358023F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 15 Nov 2020 11:30:12 +0100 (CET)
Received: by mail-pl1-x641.google.com with SMTP id 35so2512674ple.12
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 15 Nov 2020 02:30:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=f99YlmJ7V8b5QfAJFnko13WoyUnuZI5dQ9Q4mdc9rPE=;
        b=EB6YaPolo+9wlVswNo0NjqdqHBqPRdLsrG52IjnDPod4KsuWhW/v3t7cPk5DOr+Vxd
         UNwVRKo7znwUSai913hMXuoR4XnDI+bpl8r0SKVKhgl9IQraRWOtsdqWY35cH9JmDWd/
         FdaiDCYv5RDuvig15ZgGG/YlUP2YqUrMVeGNWDYyeL+IDUwWSwBxGVTSQHfa2jFg8n4x
         Vq1UCNwZQUqexEYXVM8UpXjGuHO7XMo3wT0BrRdBABh6lfLJP4VaZPyzQAP1Qt9wVkLT
         15519ZGGJMqeU3c0EBdshZ0oLe6EdaNUNts+2LJ2V6grcD4gQgHh0YWM5DRQRoZBiPhd
         aelA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=f99YlmJ7V8b5QfAJFnko13WoyUnuZI5dQ9Q4mdc9rPE=;
        b=pb14MN+JDSA4pwPMCbYX4Ma1uZqlkJ2FiPcFLx3NRxidcYyUvOeoo0r1HoG8DxQng5
         bM1mp1XWr0isYkyNAozx6k5o2j4B1vRmVNZDi91ioQ2My3+9nDb9JyNPNXI6dxu2ztgB
         q+tPeGi96HcV5MRJNLDqE0rDitjAqJ6Yf4oZdIgkTunOxs1Fjo8lWqN004ERUV3MYIFT
         SK0S/yshZHtlo5Pfsst9sliRxtwzAeFxpS3bebr9h288xxpeOcbHYWTv99YXsp+RKOI5
         E6wiAewLjqp2m42SxIvuR1WqJRPafqsLlgnSPQ1lL3WIgCUkdqIIWEwhCdiqBOiXkuSx
         UyEg==
X-Gm-Message-State: AOAM5325CbKN257bZCK52DkRcB+Lq0timNkrReEgyaDHPAfGRKsJXD1w
	QqSJ18RhWOt+x4Cfuj80uGU=
X-Google-Smtp-Source: ABdhPJx/7OwfA+CrCXi0xslwYws9tTOHaIqcWrpoIHvIiKM5GiiJ2Jjc1/Bobb3d3W51/dP2r1mrxw==
X-Received: by 2002:a17:902:8d93:b029:d8:d8ee:e275 with SMTP id v19-20020a1709028d93b02900d8d8eee275mr8003044plo.71.1605436210639;
        Sun, 15 Nov 2020 02:30:10 -0800 (PST)
Received: from localhost.localdomain ([49.173.165.44])
        by smtp.gmail.com with ESMTPSA id mt2sm15893571pjb.7.2020.11.15.02.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2020 02:30:09 -0800 (PST)
From: Taehee Yoo <ap420073@gmail.com>
To: mareklindner@neomailbox.ch,
	sw@simonwunderlich.de,
	a@unstable.cc,
	sven@narfation.org,
	b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v3 net] batman-adv: set .owner to THIS_MODULE
Date: Sun, 15 Nov 2020 10:30:04 +0000
Message-Id: <20201115103004.30618-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=EB6YaPol;
	spf=pass (diktynna.open-mesh.org: domain of ap420073@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ap420073@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1605436212; a=rsa-sha256;
	cv=none;
	b=KhJakb5rRqMce2nTpuymStdIkoJnIkD3Rl9tw/juTNSU48OaO0GSw3GcsmJkqla1O9u2HQ
	wmPksHIlu4xFDhOAdpeG/UZJi7KpJqyjZ3yqe4Mov74p+RYowNiZ73Tog4DEGBeaSMEpT2
	7qp4u8IaTIXN4jh6gFcmt0QIMoo+aYo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605436212;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:dkim-signature; bh=f99YlmJ7V8b5QfAJFnko13WoyUnuZI5dQ9Q4mdc9rPE=;
	b=DF7RH9cFRd6xg4ILBF9uc9nlrcWNQK8YdafTAsKEAQ6QvMwXjG1JAUvjgCs5xRpK0aw1i8
	Yo4PfaJCqpSw8Ad9dFndb+fUwW4GG65zyNmeVe2MOFwVoWrL4xZ4fS9+pKl4W9Mtd7W2kC
	D8882FatOyUZgRntXtw0boKUfLTLg4A=
X-MailFrom: ap420073@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: TVYHL6NWFGZTWYABDBGDRROILPVV45AM
X-Message-ID-Hash: TVYHL6NWFGZTWYABDBGDRROILPVV45AM
X-Mailman-Approved-At: Sun, 15 Nov 2020 10:43:10 +0100
CC: ap420073@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TVYHL6NWFGZTWYABDBGDRROILPVV45AM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 9e466250ede3 ("batman-adv: Prefix bat_debugfs local static functions with batadv_")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---

v3:
 - Separate from one big series

v2:
 - Change headline
 - Squash patches into per-driver/subsystem

 net/batman-adv/log.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/batman-adv/log.c b/net/batman-adv/log.c
index a67b2b091447..c0ca5fbe5b08 100644
--- a/net/batman-adv/log.c
+++ b/net/batman-adv/log.c
@@ -180,6 +180,7 @@ static const struct file_operations batadv_log_fops = {
 	.read           = batadv_log_read,
 	.poll           = batadv_log_poll,
 	.llseek         = no_llseek,
+	.owner          = THIS_MODULE,
 };
 
 /**
-- 
2.17.1
