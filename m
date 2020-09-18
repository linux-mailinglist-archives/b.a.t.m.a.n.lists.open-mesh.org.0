Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ED52708A8
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 18 Sep 2020 23:58:46 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BAB25807BA;
	Fri, 18 Sep 2020 23:58:45 +0200 (CEST)
Received: from shards.monkeyblade.net (shards.monkeyblade.net [IPv6:2620:137:e000::1:9])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 34E0B800E2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 18 Sep 2020 23:58:35 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id AD9C315A0DD63;
	Fri, 18 Sep 2020 14:41:36 -0700 (PDT)
Date: Fri, 18 Sep 2020 14:58:23 -0700 (PDT)
Message-Id: <20200918.145823.1087461614829417801.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/6] pull request for net: batman-adv 2020-09-18
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200918131956.21598-1-sw@simonwunderlich.de>
References: <20200918131956.21598-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [2620:137:e000::1:9]); Fri, 18 Sep 2020 14:41:36 -0700 (PDT)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600466322;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MZIKNjnibI480mMMDvI0lc2fJJ5OwZLABdrFtUfCysY=;
	b=nVvUC+b3NpYxdROcf4lCFpyhGz7zJaYsY93KS1A2+ApkC93I4g4o8ZDcW0YR7eGaBC3djn
	qDvYZ8ivnJMg2LXN6i/kGBVdIvGEJpixTouhk6KNh87Iy7oFlj0VjaQ92vgbwhIV7lC5Yz
	ubFKSHxz0b2D5KLhAPnd7dBtS9kBpPQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600466322; a=rsa-sha256;
	cv=none;
	b=HiyBUMxJ2w8UoMbeN/QLb1Heo4p4yVzxPcOQasJFljK3zg74zZuhX6HgtFm6de4jWnB+TZ
	+aKqmsd/1Nf9MUkEL8zEXl8H1wLPSzWbxgJ6HOR2zu25qgrQTn704NKTTOlWr1bgzaVdWN
	FLUWEdeiCSBziFxk2ina3pp9K+zfOkM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net
Message-ID-Hash: G7XYDTPRE5H677RIAZAJVI4CKO2AJR4M
X-Message-ID-Hash: G7XYDTPRE5H677RIAZAJVI4CKO2AJR4M
X-MailFrom: davem@davemloft.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/G7XYDTPRE5H677RIAZAJVI4CKO2AJR4M/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Simon Wunderlich <sw@simonwunderlich.de>
Date: Fri, 18 Sep 2020 15:19:50 +0200

> here are some late bugfixes which we would like to have integrated into net.
> 
> Please pull or let me know of any problem!

Pulled, thanks Simon.
