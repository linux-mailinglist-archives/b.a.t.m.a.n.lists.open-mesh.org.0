Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0720451EED4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  8 May 2022 18:10:19 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C67E282E7D;
	Sun,  8 May 2022 18:10:18 +0200 (CEST)
Received: from mail.monkeyblade.net (shards.monkeyblade.net [IPv6:2620:137:e000::1:9])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 83143809D1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  8 May 2022 18:10:15 +0200 (CEST)
Received: from localhost (cpc147930-brnt3-2-0-cust60.4-2.cable.virginm.net [86.15.196.61])
	by mail.monkeyblade.net (Postfix) with ESMTPSA id 13FA0822AD1B;
	Sun,  8 May 2022 09:10:11 -0700 (PDT)
Date: Sun, 08 May 2022 17:10:10 +0100 (BST)
Message-Id: <20220508.171010.1894981925216806803.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/2] pull request for net-next: batman-adv 2022-05-08
From: David Miller <davem@davemloft.net>
In-Reply-To: <20220508.170908.1257059906041259937.davem@davemloft.net>
References: <20220508132616.21232-1-sw@simonwunderlich.de>
	<20220508.170908.1257059906041259937.davem@davemloft.net>
X-Mailer: Mew version 6.8 on Emacs 27.2
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2 (mail.monkeyblade.net [0.0.0.0]); Sun, 08 May 2022 09:10:13 -0700 (PDT)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652026215; a=rsa-sha256;
	cv=none;
	b=ejE8Uxb7a8XGjb6sJ81wKrR4zRyevcmtKKh7cisaGVI5U/eRi3nFzaM1RG/sKVHykoFhCh
	RshWwRt2ira3eqtTcTrk+qkCZ6xtUWvhoK6cZ+gQobucgJKMJxdakvnCzPXfRW4OQQryja
	rWwCI+Z0EPjKAxZxBdE5WbnqHP9ykPk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652026215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S+SZoNklXnPE9huPQGOzMsOSBrAK98yaRyVaL6IaaQo=;
	b=AB1OKkqrX8jEzIJhrOsA4YMaNnhaxCp660flGYVLyaDAFs4u7nMH/Ygqs7qdncwjATCFP7
	7PGf/bVsYFfVNEiKXibKkVPnfkKKkvaBh6b2S+L3a0kiSgMgiseVQpSWCC+YKZ+PjrokIr
	qhZDmKn7KLuRlhmRvAhkDmBMLUp/+J0=
Message-ID-Hash: COV463UOAGN75G5PTGX4V47MABKDAHKA
X-Message-ID-Hash: COV463UOAGN75G5PTGX4V47MABKDAHKA
X-MailFrom: davem@davemloft.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: kuba@kernel.org, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/COV463UOAGN75G5PTGX4V47MABKDAHKA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: David Miller <davem@davemloft.net>
Date: Sun, 08 May 2022 17:09:08 +0100 (BST)

> 
> Patch #2 is a cleanup and therefore not appropriate for 'net'.

Sorry I'm mixing up the two pull requests you sent, all is fine.

Thanks.
