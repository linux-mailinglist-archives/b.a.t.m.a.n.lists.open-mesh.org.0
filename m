Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8817851EED3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  8 May 2022 18:09:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5F67B82E56;
	Sun,  8 May 2022 18:09:20 +0200 (CEST)
Received: from mail.monkeyblade.net (shards.monkeyblade.net [IPv6:2620:137:e000::1:9])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 64097805A0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  8 May 2022 18:09:17 +0200 (CEST)
Received: from localhost (cpc147930-brnt3-2-0-cust60.4-2.cable.virginm.net [86.15.196.61])
	by mail.monkeyblade.net (Postfix) with ESMTPSA id E1858822AD1A;
	Sun,  8 May 2022 09:09:13 -0700 (PDT)
Date: Sun, 08 May 2022 17:09:08 +0100 (BST)
Message-Id: <20220508.170908.1257059906041259937.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/2] pull request for net-next: batman-adv 2022-05-08
From: David Miller <davem@davemloft.net>
In-Reply-To: <20220508132616.21232-1-sw@simonwunderlich.de>
References: <20220508132616.21232-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 27.2
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2 (mail.monkeyblade.net [0.0.0.0]); Sun, 08 May 2022 09:09:14 -0700 (PDT)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652026157; a=rsa-sha256;
	cv=none;
	b=SZ/jzzP5vRuhnoHZ416L4jfWu5UvrTnJe4ueQF8l104x5DjAXQNUe+eR9voPQFzOZz+epe
	MHRJf0p1ebaLVtgiLOgVQtudMpXEkzJyEiIcucuWjwO6yWxVQwR7uB/K+Po3SeP3FtCiI3
	9FYAHIVG4O0jhQ/XtzOyH2vNkqEPf+w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652026157;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lVBSQ6pHuLu+d77pbJD2zq7zSAFiqs3AgLNMGp4Q4RA=;
	b=XKoNBCbmeL2pSmn0vQLYw3iukz93Y9YFjDgT0Sdgbu8vnbm933mnf74gSCWdwrpvS8r3FO
	JvFHbnm/fd/NcVl2Amxvv543PrNP8mK7DLXIeZq+S/b6vPQ1HALD2FQ/Q3wd4CBzH8inRP
	eBFC4aRqajBDmQGwoesZ7icICkzUw9s=
Message-ID-Hash: HZHFM5QFCYZUFS3BII7KLPCQ7MXTFPKG
X-Message-ID-Hash: HZHFM5QFCYZUFS3BII7KLPCQ7MXTFPKG
X-MailFrom: davem@davemloft.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: kuba@kernel.org, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HZHFM5QFCYZUFS3BII7KLPCQ7MXTFPKG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


Patch #2 is a cleanup and therefore not appropriate for 'net'.

Thank you.
