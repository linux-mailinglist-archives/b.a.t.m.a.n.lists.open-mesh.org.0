Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2EDBC273
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 24 Sep 2019 09:20:45 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id A4D62802A5;
	Tue, 24 Sep 2019 09:20:38 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by open-mesh.org (Postfix) with ESMTPS id C54688003A
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 24 Sep 2019 09:03:09 +0200 (CEST)
Received: from localhost (unknown [193.47.165.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D8F720673;
 Tue, 24 Sep 2019 07:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569308588;
 bh=AlEW8CxXuFn8P/oDpAqEk3frXBsRLiuf+egkL9mACt8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NgPhsXprAhfXfXBMPmhNi6zDCC8P+Lv1t1OJaBYYq/OuXI2l+wTr48atArBd4iujI
 pEiGSyKx2TzTQHYLZDzoFRzF7eIxparEi1i+IHrr5h2FzyssV4vjBmgrl3X4i81jMA
 Gpzm0UZN6E6YR5znnHJXZueTNcgVSqzF9xZTqB1c=
Date: Tue, 24 Sep 2019 10:03:05 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH trivial 2/2] drivers: net: Fix Kconfig indentation
Message-ID: <20190924070305.GP14368@unreal>
References: <20190923155243.6997-1-krzk@kernel.org>
 <20190923155243.6997-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190923155243.6997-2-krzk@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Approved-At: Tue, 24 Sep 2019 09:20:35 +0200
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
 Florian Fainelli <f.fainelli@gmail.com>, linux-rdma@vger.kernel.org,
 Jozsef Kadlecsik <kadlec@netfilter.org>, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Pablo Neira Ayuso <pablo@netfilter.org>, linux-can@vger.kernel.org,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Jiri Kosina <trivial@kernel.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Mon, Sep 23, 2019 at 05:52:43PM +0200, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
>     $ sed -e 's/^        /\t/' -i */Kconfig
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

<--->

>  .../net/ethernet/mellanox/mlx5/core/Kconfig   |  36 +++---

Thanks,
Reviewed-by: Leon Romanovsky <leonro@mellanox.com>
