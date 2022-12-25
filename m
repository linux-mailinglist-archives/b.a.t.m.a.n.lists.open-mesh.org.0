Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E5D655D4A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 25 Dec 2022 14:19:29 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 75B3384563;
	Sun, 25 Dec 2022 14:19:28 +0100 (CET)
Received: from gw.red-soft.ru (red-soft.ru [188.246.186.2])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B2A888074A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 25 Dec 2022 10:47:45 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1671961665;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Dmwx1gqE/TcwsWm8ZPUToCfUpfBhvKB02u2yrTIcO1A=;
	b=IjA//Xhtnw7fDZqCegD0esWvOLCPHARTSb8UAOkt4oMpo22JJo4G/+UcCgsQeZgLLNyu8s
	btstZs8N9ZxerZNiopnDlPrbJdZFKOreJwiJbUWUSyP+lZ/dlKvFzGvc/p8bTx14h9eP+o
	bzeAmFDiddKqIBOMOo5/CyDcNvl/NB4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of artem.chernyshev@red-soft.ru designates 188.246.186.2 as permitted sender) smtp.mailfrom=artem.chernyshev@red-soft.ru
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1671961665; a=rsa-sha256;
	cv=none;
	b=AnQfp9j2s0B7WhryWoDy1KX3VmHtsoeQtmXX4oRsXZtaavZH89Voq2MT/eB0vTubeatOyu
	s4Ta7ciQ1toup3+/+bXtmB5YzvrQS+auMej4ODwf2mqJ9w3ozLXjShpueklQjIxkMpz888
	l13A1te/HqLYUotxBquBupEXdYCnPf0=
Received: from localhost.localdomain (unknown [10.81.81.211])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by gw.red-soft.ru (Postfix) with ESMTPSA id 0FCA53E0DB1;
	Sun, 25 Dec 2022 12:47:44 +0300 (MSK)
Date: Sun, 25 Dec 2022 12:47:42 +0300
From: Artem Chernyshev <artem.chernyshev@red-soft.ru>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] batman-adv: Check return value
Message-ID: <Y6gcPlvR18j17zlm@localhost.localdomain>
References: <20221224233311.48678-1-artem.chernyshev@red-soft.ru>
 <2038034.tdWV9SEqCh@sven-l14>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2038034.tdWV9SEqCh@sven-l14>
X-KLMS-Rule-ID: 1
X-KLMS-Message-Action: clean
X-KLMS-AntiSpam-Lua-Profiles: 174384 [Dec 24 2022]
X-KLMS-AntiSpam-Version: 5.9.59.0
X-KLMS-AntiSpam-Envelope-From: artem.chernyshev@red-soft.ru
X-KLMS-AntiSpam-Rate: 0
X-KLMS-AntiSpam-Status: not_detected
X-KLMS-AntiSpam-Method: none
X-KLMS-AntiSpam-Auth: dkim=none
X-KLMS-AntiSpam-Info: LuaCore: 502 502 69dee8ef46717dd3cb3eeb129cb7cc8dab9e30f6, {Tracking_uf_ne_domains}, {Tracking_from_domain_doesnt_match_to}, lists.open-mesh.org:7.1.1;127.0.0.199:7.1.2;patchwork.open-mesh.org:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;red-soft.ru:7.1.1
X-MS-Exchange-Organization-SCL: -1
X-KLMS-AntiSpam-Interceptor-Info: scan successful
X-KLMS-AntiPhishing: Clean, bases: 2022/12/25 09:24:00
X-KLMS-AntiVirus: Kaspersky Security for Linux Mail Server, version 8.0.3.30, bases: 2022/12/25 06:19:00 #20705928
X-KLMS-AntiVirus-Status: Clean, skipped
X-MailFrom: artem.chernyshev@red-soft.ru
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: W4MXMEGIMZDBCEACX5Y4WD4F5VZTM35H
X-Message-ID-Hash: W4MXMEGIMZDBCEACX5Y4WD4F5VZTM35H
X-Mailman-Approved-At: Sun, 25 Dec 2022 13:19:27 +0100
CC: Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org, Markus Pargmann <mpa@pengutronix.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W4MXMEGIMZDBCEACX5Y4WD4F5VZTM35H/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,
On Sun, Dec 25, 2022 at 07:37:28AM +0100, Sven Eckelmann wrote:
> Subject is missing something like ..." after calling rtnl_link_register()" or
> ..."s during module initialization".
> 
> On Sunday, 25 December 2022 00:33:11 CET Artem Chernyshev wrote:
> [...]
> > diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
> > index e8a449915566..04cd9682bd29 100644kwin
> > @@ -113,7 +113,11 @@ static int __init batadv_init(void)
> >  		goto err_create_wq;
> >  
> >  	register_netdevice_notifier(&batadv_hard_if_notifier);
> > -	rtnl_link_register(&batadv_link_ops);
> > +	ret = rtnl_link_register(&batadv_link_ops);
> > +	if (ret) {
> > +		pr_err("Can't register link_ops\n");
> > +		goto err_create_wq;
> > +	}
> >  	batadv_netlink_register();
> >  
> >  	pr_info("B.A.T.M.A.N. advanced %s (compatibility version %i) loaded\n",
> > 
> 
> This looks wrong to me. You missed to destroy the batadv_hard_if_notifier in 
> this case.
> 
> And if you want to start adding the checks, you should also have added it for 
> batadv_v_init, batadv_iv_init, batadv_nc_init, batadv_tp_meter_init and 
> register_netdevice_notifier. You can use the unfinished patch from Markus 
> Pargmann as starting point.
> 
> Kind regards,
> 	Sven
> 
> [1] https://patchwork.open-mesh.org/project/b.a.t.m.a.n./patch/1419594103-10928-6-git-send-email-mpa@pengutronix.de/
>     https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/thread/QDX46YARWUC4R7OBFHR5OJKWQIXDQWRR/#QDX46YARWUC4R7OBFHR5OJKWQIXDQWRR

Thanks for review, I'll try to fix the errors in v2

Best,
Artem
