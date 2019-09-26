Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C49FBEC81
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Sep 2019 09:24:30 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C413380296;
	Thu, 26 Sep 2019 09:24:21 +0200 (CEST)
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by open-mesh.org (Postfix) with ESMTPS id E38138001B
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Sep 2019 08:56:10 +0200 (CEST)
Received: from localhost (unknown [65.39.69.237])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C396F1264DCC8;
 Wed, 25 Sep 2019 23:56:03 -0700 (PDT)
Date: Thu, 26 Sep 2019 08:56:02 +0200 (CEST)
Message-Id: <20190926.085602.2172736725970238315.davem@davemloft.net>
To: krzk@kernel.org
Subject: Re: [PATCH trivial 1/2] net: Fix Kconfig indentation
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190923155243.6997-1-krzk@kernel.org>
References: <20190923155243.6997-1-krzk@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 25 Sep 2019 23:56:08 -0700 (PDT)
X-Mailman-Approved-At: Thu, 26 Sep 2019 09:24:18 +0200
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
Cc: linux-wireless@vger.kernel.org, rds-devel@oss.oracle.com,
 m.grzeschik@pengutronix.de, linux-rdma@vger.kernel.org, kadlec@netfilter.org,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, kuznet@ms2.inr.ac.ru,
 pablo@netfilter.org, linux-can@vger.kernel.org, f.fainelli@gmail.com,
 mkl@pengutronix.de, trivial@kernel.org, yoshfuji@linux-ipv6.org,
 netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, fw@strlen.de,
 linux-kernel@vger.kernel.org, netfilter-devel@vger.kernel.org,
 wg@grandegger.com, hkallweit1@gmail.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 23 Sep 2019 17:52:42 +0200

> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
>     $ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Ok, I'll apply these to 'net'.
