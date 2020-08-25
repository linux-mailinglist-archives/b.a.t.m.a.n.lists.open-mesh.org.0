Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E412250E1F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 25 Aug 2020 03:18:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3E4638048A;
	Tue, 25 Aug 2020 03:18:56 +0200 (CEST)
Received: from shards.monkeyblade.net (shards.monkeyblade.net [IPv6:2620:137:e000::1:9])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D50D180291
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 25 Aug 2020 03:18:52 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id AA4C61295779E;
	Mon, 24 Aug 2020 18:01:57 -0700 (PDT)
Date: Mon, 24 Aug 2020 18:18:43 -0700 (PDT)
Message-Id: <20200824.181843.938451977411019472.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/5] pull request for net-next: batman-adv 2020-08-24
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200824162741.880-1-sw@simonwunderlich.de>
References: <20200824162741.880-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 24 Aug 2020 18:01:57 -0700 (PDT)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598318333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hl2woA/b+61ebOyb75EZMrUYRLTO0Dr1paot0mplkz8=;
	b=VtuGSyV2Z0RWSZUZIq1ITANQbrmOHV2N+keL4XVUWko5XUv92+HdWto0Lb+JUlLHMnxJWX
	U729vVB54dAM8A+WI0MgdOO42e65uZbHosWp4SF6xMdBcThZdQctsOjrxjaivOpAEV3ynF
	PJi37JpP8TUjDmp/xt73LTkdQvtZ58E=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598318333; a=rsa-sha256;
	cv=none;
	b=AezjYOGuoUX1Od1BS7iiQIZjckLbtIx4ZDflUu2WB1vkjMH/761eTofmOJJs/vH+WAp89M
	GvwgsTBvuEkR82hxPMO/4neIib3U/GrVxALcbJDRes7Krjb3Abe+la7aeQ9zQ9sN3KGpCK
	v+E30reeTxmlxEvs2t5J6jhl1dY4nik=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net
Message-ID-Hash: TRBULEJM4REIGBYV5WKJCZGZVB3VL5LU
X-Message-ID-Hash: TRBULEJM4REIGBYV5WKJCZGZVB3VL5LU
X-MailFrom: davem@davemloft.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TRBULEJM4REIGBYV5WKJCZGZVB3VL5LU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Simon Wunderlich <sw@simonwunderlich.de>
Date: Mon, 24 Aug 2020 18:27:36 +0200

> here is a small cleanup pull request of batman-adv to go into net-next.
> 
> Please pull or let me know of any problem!

Also pulled, thank you.
