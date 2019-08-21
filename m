Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C6A985E6
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 21 Aug 2019 22:50:25 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 56E498060C;
	Wed, 21 Aug 2019 22:50:21 +0200 (CEST)
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by open-mesh.org (Postfix) with ESMTPS id BA85280C04
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 21 Aug 2019 22:50:15 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4E31914D63A64;
 Wed, 21 Aug 2019 13:50:12 -0700 (PDT)
Date: Wed, 21 Aug 2019 13:50:11 -0700 (PDT)
Message-Id: <20190821.135011.1257032842236120286.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/1] pull request for net: batman-adv 2019-08-21
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190821133015.12778-1-sw@simonwunderlich.de>
References: <20190821133015.12778-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 21 Aug 2019 13:50:12 -0700 (PDT)
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
Date: Wed, 21 Aug 2019 15:30:14 +0200

> here is a pull request with Erics bugfix from last week which we would
> like to have integrated into net. We didn't get anything else, so it's
> a short one this time. :)
> 
> Please pull or let me know of any problem!

Pulled, thanks Simon.
