Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3F720FD44
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2020 22:00:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1CB0C80418;
	Tue, 30 Jun 2020 22:00:05 +0200 (CEST)
Received: from shards.monkeyblade.net (shards.monkeyblade.net [IPv6:2620:137:e000::1:9])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id AA85B80347
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2020 21:59:57 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 7A14E1275AC51;
	Tue, 30 Jun 2020 12:59:41 -0700 (PDT)
Date: Tue, 30 Jun 2020 12:59:40 -0700 (PDT)
Message-Id: <20200630.125940.2156489314044742068.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/4] pull request for net-next: batman-adv 2020-06-26
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200630082731.2397-1-sw@simonwunderlich.de>
References: <20200630082731.2397-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Tue, 30 Jun 2020 12:59:41 -0700 (PDT)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593547203;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JtTSLsjMxPNJ2vXooKc4atNbOIp2G0JUk9fDxARHlz0=;
	b=XVH45kyWevFN1zRTPn55u1A5HCRooZWbhe04q2rlxIkDwUCdU+4ZxlndOzK6N2vFcyACwU
	JIALrYbBjlq6bJeDXyFK80KfR2Z1RY1rsTJGxAqtVS5SnBZ7SYddKpFC/QOLfYMRWRvJCe
	CZRuS8hYpwm5wND91F8NQw72OyIj0J4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593547203; a=rsa-sha256;
	cv=none;
	b=pb5pImFoAkTf0ogH6HVJjSSybhafkxOnJWXAUHSo+Z9J90BBi5e2KozoUrCPXNiLGEDWl1
	SsMhPRjswWNF7ruVBSMN5jMA2CYo/BFdVcvRR4xSsGOx+teNmsa/ahtRETAYaR2CYj4024
	5WAoW5albt/k2WfLypP4g89V91jqWvA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net
Message-ID-Hash: QZ2U457TJBUIBRG4ZZP2PQ5ZZNNBRYNQ
X-Message-ID-Hash: QZ2U457TJBUIBRG4ZZP2PQ5ZZNNBRYNQ
X-MailFrom: davem@davemloft.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QZ2U457TJBUIBRG4ZZP2PQ5ZZNNBRYNQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Simon Wunderlich <sw@simonwunderlich.de>
Date: Tue, 30 Jun 2020 10:27:27 +0200

> here is a little feature/cleanup pull request of batman-adv to go into net-next.
> 
> Please pull or let me know of any problem!

Pulled, thanks Simon.
