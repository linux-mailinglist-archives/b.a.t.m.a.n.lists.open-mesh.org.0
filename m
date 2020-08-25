Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4DA250E1D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 25 Aug 2020 03:17:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A02B6803FF;
	Tue, 25 Aug 2020 03:17:53 +0200 (CEST)
Received: from shards.monkeyblade.net (shards.monkeyblade.net [IPv6:2620:137:e000::1:9])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 129C9802D4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 25 Aug 2020 03:17:49 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id C1C18129553D6;
	Mon, 24 Aug 2020 18:00:35 -0700 (PDT)
Date: Mon, 24 Aug 2020 18:17:21 -0700 (PDT)
Message-Id: <20200824.181721.1474055236164070521.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/3] pull request for net: batman-adv 2020-08-24
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200824162111.29220-1-sw@simonwunderlich.de>
References: <20200824162111.29220-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 24 Aug 2020 18:00:35 -0700 (PDT)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598318269;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+1WWiA8UYitKfS/YRKbdaueYAr5MFZ8p/iW39hudoi8=;
	b=14gac2qZyiHAEt9p3hlwMAxwCXbZJR2OAkhE3Z4dj8P4O4lbvZoyU8WN3A/nLYQxHBrJrQ
	1yW73OdQLSHlngZ2wcHE4Y29PkTHM/hG/fbDOx9uphNFhOlIBBKanwYGtL8PphhVPCjWpZ
	mOWvqvNOa08zC2ilTvf8y2kQ3sDgCTI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598318269; a=rsa-sha256;
	cv=none;
	b=vKDHfuVNTsGvMXI7F/EFtFnlY++xbZnDv906PVN1ZOgrPwQ/fxKHJN1E+7Ywp+1ttjxU8g
	/apZq1/8ug8k3TcnCxWT+5e1fWsJYR0GsT4zThijwvHYgOWAzve34YHS1smQbBkiexu32W
	svX5nUiS61Jl+bDtBpP9LMCLkNOHFKw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net
Message-ID-Hash: KEYBIXECVUH7WGIVHVW7IT2LTJLBA5XV
X-Message-ID-Hash: KEYBIXECVUH7WGIVHVW7IT2LTJLBA5XV
X-MailFrom: davem@davemloft.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KEYBIXECVUH7WGIVHVW7IT2LTJLBA5XV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Simon Wunderlich <sw@simonwunderlich.de>
Date: Mon, 24 Aug 2020 18:21:08 +0200

> here are some bugfixes which we would like to have integrated into net.
> 
> Please pull or let me know of any problem!

Pulled, thanks.
