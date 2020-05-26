Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B931E323F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 27 May 2020 00:20:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9FF8D81C39;
	Wed, 27 May 2020 00:20:25 +0200 (CEST)
Received: from shards.monkeyblade.net (shards.monkeyblade.net [IPv6:2620:137:e000::1:9])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4864580BEF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 27 May 2020 00:20:23 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 1E5A6120ED4B8;
	Tue, 26 May 2020 15:19:57 -0700 (PDT)
Date: Tue, 26 May 2020 15:19:56 -0700 (PDT)
Message-Id: <20200526.151956.337627935559352027.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/3] pull request for net-next: batman-adv 2020-05-26
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200526100007.10501-1-sw@simonwunderlich.de>
References: <20200526100007.10501-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Tue, 26 May 2020 15:19:57 -0700 (PDT)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590531623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eSK/csbm/iuE9DsSkXe9lNWE7BZAvpAlAJiELYUA2wI=;
	b=tsmsolNAuomU2OzEjGnFUNVpSqNBsiWtXKAGjN7cqSoaxWMPxXWXMEXSt3ce282G/3mwZs
	G2guITGzirZ1QXIFxCTpV7G49qTlKbtFHzUJVNh1UqwYc0nQy5sHfVJBGjmyUPd7scWt+V
	Q9tiArirc5TXQm5aMmXPmDKYAPKBY1Y=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590531623; a=rsa-sha256;
	cv=none;
	b=GdC2UgTKw7hZzfKj51GkTOfnCgAbBzVIYJqa00A5my+uSje5HFz3+t0q0OqPZLESRx24Su
	2hkIJi3eeGyOGxUqK4RbvJ9hEJvwOFGpvZy1kH7MKkd9tGZ5wiwVDLV/BR7GxYpE+5xLPH
	qBuNiNouQ16ygOfMlP312+l9McJ3jew=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net
Message-ID-Hash: 2U4AVBDNR5YOEZKP2DD3JGI55DVNCC7Q
X-Message-ID-Hash: 2U4AVBDNR5YOEZKP2DD3JGI55DVNCC7Q
X-MailFrom: davem@davemloft.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2U4AVBDNR5YOEZKP2DD3JGI55DVNCC7Q/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Simon Wunderlich <sw@simonwunderlich.de>
Date: Tue, 26 May 2020 12:00:04 +0200

> here is a small cleanup pull request of batman-adv to go into net-next.
> 
> Please pull or let me know of any problem!

Pulled, thanks Simon.
