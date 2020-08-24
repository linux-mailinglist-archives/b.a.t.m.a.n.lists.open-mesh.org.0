Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FAF250C3F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 25 Aug 2020 01:20:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CB95B803F8;
	Tue, 25 Aug 2020 01:20:52 +0200 (CEST)
Received: from shards.monkeyblade.net (shards.monkeyblade.net [IPv6:2620:137:e000::1:9])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3CB2C802C6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 25 Aug 2020 01:20:43 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id E2DD612924E98;
	Mon, 24 Aug 2020 16:03:48 -0700 (PDT)
Date: Mon, 24 Aug 2020 16:20:34 -0700 (PDT)
Message-Id: <20200824.162034.458860844831151771.davem@davemloft.net>
To: rdunlap@infradead.org
Subject: Re: [PATCH 0/8] net: batman-adv: delete duplicated words + other
 fixes
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200822231335.31304-1-rdunlap@infradead.org>
References: <20200822231335.31304-1-rdunlap@infradead.org>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 24 Aug 2020 16:03:49 -0700 (PDT)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598311248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XVZ3nS9kYl/2bpjGvnrPYIH1nPm0BK+Ula85WJb/6FA=;
	b=heO/JKfyl7PU1g1OjAgoyD9mtIGUjT35vqTDeSGobiPicHIy8F2QddXWTG6+2Q54IRgHX8
	yAvtIdKUOzQaLQNjVWiClrRjIQL9oLaRpwtoXKm/Ja+H4lMGZm8BzU36/savWA3NKbegHG
	X6OGe1PXjzxpo5oUTyIEJNOFKqX5smI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598311248; a=rsa-sha256;
	cv=none;
	b=sj7EP9qJ/+02sWu5EGKQBrXFPR33EXma00La4Xq3aTKag+0qNvjZ93nCpUc2ulwZVu8WBk
	WBm/jZCylTXMg64QM3nVS/SDRsK1rCgMSI1NbVQimjTTLEo7TvnRNtU0e5BucPziRfr0VV
	6BHl+Xn9NXYXu147Hgf097hE6LO76o8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net
Message-ID-Hash: CJTSML5FHN43ODWABBBW22JD3ED2YQKY
X-Message-ID-Hash: CJTSML5FHN43ODWABBBW22JD3ED2YQKY
X-MailFrom: davem@davemloft.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: netdev@vger.kernel.org, mareklindner@neomailbox.ch, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, kuba@kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CJTSML5FHN43ODWABBBW22JD3ED2YQKY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Randy Dunlap <rdunlap@infradead.org>
Date: Sat, 22 Aug 2020 16:13:27 -0700

> Drop repeated words in net/batman-adv/.

I'll let the batman-adv folks integrate this series.
