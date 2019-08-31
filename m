Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 47422A4614
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 31 Aug 2019 22:16:10 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 41BAE81624;
	Sat, 31 Aug 2019 22:16:01 +0200 (CEST)
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by open-mesh.org (Postfix) with ESMTPS id 070618064F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Aug 2019 22:15:56 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 667DB14B87778;
 Sat, 31 Aug 2019 13:15:53 -0700 (PDT)
Date: Sat, 31 Aug 2019 13:15:52 -0700 (PDT)
Message-Id: <20190831.131552.2238215337254700030.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/1] pull request for net-next: batman-adv 2019-08-30
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190830072736.18535-1-sw@simonwunderlich.de>
References: <20190830072736.18535-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 31 Aug 2019 13:15:53 -0700 (PDT)
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
Date: Fri, 30 Aug 2019 09:27:35 +0200

> here is a small maintenance pull request of batman-adv to go into net-next.
> 
> Please pull or let me know of any problem!

Pulled, but generally speaking MAINTAINERS updates are always legitimate
for 'net'.
