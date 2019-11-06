Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FF8F0C0E
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  6 Nov 2019 03:33:55 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 3B0F180C15;
	Wed,  6 Nov 2019 03:33:47 +0100 (CET)
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by open-mesh.org (Postfix) with ESMTPS id B93A18015B
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  6 Nov 2019 03:33:33 +0100 (CET)
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 875371510CDE3;
 Tue,  5 Nov 2019 18:33:31 -0800 (PST)
Date: Tue, 05 Nov 2019 18:33:31 -0800 (PST)
Message-Id: <20191105.183331.116918116313477943.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/5] pull request for net-next: batman-adv 2019-11-05
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191105093531.11398-1-sw@simonwunderlich.de>
References: <20191105093531.11398-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 05 Nov 2019 18:33:31 -0800 (PST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573007615;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9iJEWJrEtaR6BgZ+pHBdhqkQM6wI+nJs8H6lBui7PyA=;
 b=SbDIWC5TpfXKsKbPv5zLDIpwCu7nnmRIMoTC60r+OgR31j6XaIvCvRybWzntBD0LnDE82J
 Q2ns69psiZE07Hc7dIlBYfOLPgxHBfX/y9LTbeVjiLXm5V/+AmtWxCk/Cn3zdk2VFaPJXj
 xERfrBMGfyRUmKzOw0FwEpjNQncqyaU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573007615; a=rsa-sha256; cv=none;
 b=4Q6o8OhMMglKsYt+WxDSHP8whx8jCzusTa0pxubYG+ozW3EPuUOzdf626vGmhjdQQsiLVy
 exsUz8s5Li4znyhCh392+l5t+OrBRoKJTxPHI6Ut6csN4oPhEX+a7WfabUCpeA9aEzfjo3
 woUV2VkyOezSt8bEFeIqS+Gx2SK83t4=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=none (open-mesh.org: domain of davem@davemloft.net has no SPF policy when
 checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net
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
Date: Tue,  5 Nov 2019 10:35:26 +0100

> here is a little cleanup pull request of batman-adv to go into net-next.
> 
> Please pull or let me know of any problem!

Pulled, thanks.
