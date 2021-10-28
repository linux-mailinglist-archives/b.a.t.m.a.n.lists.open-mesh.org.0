Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1F243DC21
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Oct 2021 09:34:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 736EE82396;
	Thu, 28 Oct 2021 09:34:54 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8EFBD81463
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Oct 2021 09:34:51 +0200 (CEST)
Subject: Re: [PATCH net-next] batman-adv: Fix the wrong definition
To: Yajun Deng <yajun.deng@linux.dev>, mareklindner@neomailbox.ch,
 sw@simonwunderlich.de, sven@narfation.org
References: <20211028072306.1351-1-yajun.deng@linux.dev>
From: Antonio Quartulli <a@unstable.cc>
Message-ID: <da6fa493-0911-ca3f-16c0-380bc35d8317@unstable.cc>
Date: Thu, 28 Oct 2021 09:35:28 +0200
MIME-Version: 1.0
In-Reply-To: <20211028072306.1351-1-yajun.deng@linux.dev>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635406491;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ixPTcNYadCe/XdvbCxx/dJFTNAMqFN5J4BSec3GzA+Y=;
	b=feTQBOaqjrc0KHn+wSEF9JUvPx8mO8HoEH/2wIInqSWCEkvd54rb8DVJUC/fFycvxDNhmk
	g0AtU9WrK/IXTlgiFuNCibuwOlPFHhcbDrZhIsyLe3CFoV7j1/dGnUGaIdoEo+/3gqfcju
	XwUFjhPhhg/PfiTgNmG5RW9nFgEX6Yc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of a@unstable.cc designates 5.148.176.60 as permitted sender) smtp.mailfrom=a@unstable.cc;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635406491; a=rsa-sha256;
	cv=none;
	b=aH/Tw2Tn0Nc3zYseevfUN/kGdnOnC5djS4gWFXJoNZm2CLBPBPBXjOiZF0SEwDUi2cUhBo
	w+e9F4J5GsDqaAEVsLxcIIul3e1MFjMa5ZFFw/7/cugZj5IHxVIxikc7y6hcmwWjhiproM
	r20csRdfVYWzetpS65tnlt0ssqUSX78=
Message-ID-Hash: IBASLLHWNZSITPHVNMTXTW4D7XKUFXC3
X-Message-ID-Hash: IBASLLHWNZSITPHVNMTXTW4D7XKUFXC3
X-MailFrom: a@unstable.cc
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IBASLLHWNZSITPHVNMTXTW4D7XKUFXC3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

On 28/10/2021 09:23, Yajun Deng wrote:
> There are three variables that are required at most,
> no need to define four variables.
> 
> Fixes: 0fa4c30d710d ("batman-adv: Make sysfs support optional")
> Signed-off-by: Yajun Deng <yajun.deng@linux.dev>

NAK.

kobject_uevent_env() does not know how many items are stored in the
array and thus requires it to be NULL terminated.

Please check the following for reference:

https://elixir.bootlin.com/linux/v5.15-rc6/source/lib/kobject_uevent.c#L548

OTOH I guess we could still use '{}' for the initialization.

Regards,

-- 
Antonio Quartulli
