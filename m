Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EACCC46FBE9
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Dec 2021 08:39:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8071682613;
	Fri, 10 Dec 2021 08:39:17 +0100 (CET)
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 17A6A80838
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Dec 2021 03:19:22 +0100 (CET)
Received: by mail-pj1-x102c.google.com with SMTP id fv9-20020a17090b0e8900b001a6a5ab1392so6384452pjb.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 09 Dec 2021 18:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FEw6cDwNumFEoIzG4G7yZNSpjLJlrE6wbUTHVe7gV4Y=;
        b=RIYz7QcaHop7MkJ2jvAtyObrBy5vOjsdjPD3USKsTAUvzZ4HgL71XT1HRO87uUGyHA
         rmhPBADv1RV8ZeL/2FvmwvTYA+tgDaHcbvvDYOCh8nzdLjEWe1g1kkEVPzwMCSSA2vaf
         7Z7X5hfBA9qWNQQPfJsHVYsjpWRDiplcgj4ZTpEWnsFWvBrxk453ysMzZr3vgVMMIUhU
         pgyVBSj+uqpmNnL9YAcqPFeAfvHbffjojzffDXySgxVz0kbndSYSOu4z4mWGxAfk7+by
         NscW5XNT7rRzhjtsze7fFaUM1FasQwoSIn6JnWdAnCztT5EsJJVcYEagZLLeSJgirG/Y
         ilDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FEw6cDwNumFEoIzG4G7yZNSpjLJlrE6wbUTHVe7gV4Y=;
        b=Uxa5hZv88UHO59N+v58NbyQEnNCEmycIvyHvovdM0fGa4FV50h9eGiEmeTzPll/QE8
         ihBwurtyun/EXzaagoU9cNDV1mz1OZO6iKBBISuSG6jiKuifzYFCWSqHUqLDu+bC7hp7
         C3LKdA/rKZY5Bzmc+G/WSu3DcxESOM/VMRdpyR2gemb0paYoQaHIJtQwP3hgBdJy9+ku
         mr0p5jdxHAqpfg8Zt5azOvQSg9cqur8kEeFuRw+LovxobPn84Jn7exd68DwHWQ3yimFx
         +IVZsAApaF0A3ZrowYqtRtI/BxOUcOV1zNGJbEaPZs51f2DK+UU1KqCG8jY7gBJdH2WY
         FwQQ==
X-Gm-Message-State: AOAM530d7WGChTkqIQ3hKevziMF+NQdJSSF7nQdsZZrd4lVaXIDQNpzw
	+FtttSSNYN2K2MqQgmBddFs=
X-Google-Smtp-Source: ABdhPJxwXZGDC1CedqgjnXGo0dpQS+/GKeAED/ubdvP3xlNrZQAKrcL1xIwGqKQ4ilY+qk9w9/ligg==
X-Received: by 2002:a17:903:41cb:b0:142:62a:4d86 with SMTP id u11-20020a17090341cb00b00142062a4d86mr71711050ple.43.1639102761277;
        Thu, 09 Dec 2021 18:19:21 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
        by smtp.gmail.com with ESMTPSA id pi17sm11219742pjb.34.2021.12.09.18.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 18:19:21 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: mareklindner@neomailbox.ch
Subject: [PATCH] net/batman-adv:remove unneeded variable
Date: Fri, 10 Dec 2021 02:19:17 +0000
Message-Id: <20211210021917.423912-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1639102763;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=FEw6cDwNumFEoIzG4G7yZNSpjLJlrE6wbUTHVe7gV4Y=;
	b=Sncxvn2xQnE8KsleqgtrWUtrN7JgZNX76YmQi3hH7c3zZZVZazTMbS6D5cbJk+4WvWdF3l
	QLepTFxoePty3LnZL8N2ckB7lz3PuQtr3A9rw1cluOUJ/fZfryKdOdoo5plHNgBWGC+NSp
	XwXV1fjjvMkaTH2Al6TWmfRrKg8l5es=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=RIYz7Qca;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of cgel.zte@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=cgel.zte@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1639102763; a=rsa-sha256;
	cv=none;
	b=K354UblPi/TnRMPtMltAynx72xa3o4zi9FrpO+gG//MjQcRpP/uYKxwF2EGZMa0n6/7fRo
	MQDyiwAuP87+PXHJ90d5arBhDGatyxPhutMa6JVuFWdOqnHkcCkr8ecn3n3mcZM40Juoe6
	Vm9aO4y1QbmudtDHviiINyuP7f5lJlU=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: cgel.zte@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 6JKJCB2KPJK2VH7I777O5LFW3Y5WNRAF
X-Message-ID-Hash: 6JKJCB2KPJK2VH7I777O5LFW3Y5WNRAF
X-Mailman-Approved-At: Fri, 10 Dec 2021 07:39:14 +0100
CC: a@unstable.cc, davem@davemloft.net, kuba@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>, Zeal Robot <zealci@zte.com.cm>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6JKJCB2KPJK2VH7I777O5LFW3Y5WNRAF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Minghao Chi <chi.minghao@zte.com.cn>

Return status directly from function called.

Reported-by: Zeal Robot <zealci@zte.com.cm>
Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
---
 net/batman-adv/network-coding.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 0a7f1d36a6a8..0c300476d335 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -58,13 +58,9 @@ static int batadv_nc_recv_coded_packet(struct sk_buff =
*skb,
  */
 int __init batadv_nc_init(void)
 {
-	int ret;
-
 	/* Register our packet type */
-	ret =3D batadv_recv_handler_register(BATADV_CODED,
+	return batadv_recv_handler_register(BATADV_CODED,
 					   batadv_nc_recv_coded_packet);
-
-	return ret;
 }
=20
 /**
--=20
2.25.1
