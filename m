Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4433617EE8A
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 10 Mar 2020 03:25:45 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E7A6B807F1;
	Tue, 10 Mar 2020 03:25:43 +0100 (CET)
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 534BA80161
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 10 Mar 2020 03:25:40 +0100 (CET)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2925315A0BE45;
 Mon,  9 Mar 2020 19:25:37 -0700 (PDT)
Date: Mon, 09 Mar 2020 19:25:36 -0700 (PDT)
Message-Id: <20200309.192536.558429690765622744.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/1] pull request for net: batman-adv 2020-03-06
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200306120618.25714-1-sw@simonwunderlich.de>
References: <20200306120618.25714-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 09 Mar 2020 19:25:37 -0700 (PDT)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1583807141;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ApflQioO5V8ScCK3oplWBPgFmG3Xn+XERuwMKBwT7fQ=;
 b=oXwm5S0Zic35dxU1knyjSL0bbClFYx6LjiLEZo03ZCh5vLkbYQvaM+JrOdtFGvNMEaJEzI
 xz9/YIzjH+LeIScLPl6DZ91bl+xpxW/fP5+URcfe5l/rmvvJGb5Sux6RmyVvIJcOG8aiN7
 jtpN903oJJlfYqv6X6SiLD7gdmk0jfs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1583807141; a=rsa-sha256; cv=none;
 b=qoFlAOBtvTiA34pv/F1r5No8MbEix0TIsdd5CUCZ+HoRXeWV8YAYZ8sQkU8S4fwhrvS0Qd
 3CoEDOPEGDxPDFuDRceqNsD/xPrLPJPkKqrsWzw4GKJ3ZCHNgnR3er7vxlrw+446RWdfkN
 aHiFWknj40T3t5ETxrVaXswoH/Q+r4w=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF
 policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Simon Wunderlich <sw@simonwunderlich.de>
Date: Fri,  6 Mar 2020 13:06:17 +0100

> here is a bugfix which we would like to have integrated into net.
> 
> Please pull or let me know of any problem!

Pulled, thanks Simon.
