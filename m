Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F43BC190
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 24 Sep 2019 08:00:47 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id AD0CE802A1;
	Tue, 24 Sep 2019 08:00:38 +0200 (CEST)
Received: from smtp.codeaurora.org (smtp.codeaurora.org [198.145.29.96])
 by open-mesh.org (Postfix) with ESMTPS id 06E518001B
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 24 Sep 2019 07:15:48 +0200 (CEST)
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5EFEE6083C; Tue, 24 Sep 2019 05:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569302147;
 bh=azdN6vc/PGfI2bjrfNHt+vK3hA51rRmp/zu9UwVEnFE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=OLBplSJ8QK2fuDQ89srMfDYzbHh19cEyYIPeEsii4HRtIELHAPm2/Bj4HjIWZXbrz
 /ghU6UC7s7RGXH9PaTA2M7cO0Y+Tl1Tpz4nk04oTdOYa9q6gh8IfvMgAhybAQw24qA
 +MsumvlYAN0nGHMUT7XPSltgWncFxCom6omq3DHw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6A1EF602F0;
 Tue, 24 Sep 2019 05:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569302146;
 bh=azdN6vc/PGfI2bjrfNHt+vK3hA51rRmp/zu9UwVEnFE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=V0LrSJ65dpf3rFn2VjpBmfRFfW6ofjXym1S9bUV43cIfh1B+Izf9IeMywVs7MWDvQ
 Q4eVfHhYpjXfey9K+PrTenhrts+tzG6/7DcQlcBpDeIdqCt24Fw+fYZPsGUAXoDwsn
 B9wbiz9mXwVc2iXDjEl8E1xHTX6aJcLeBzwEzFvY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6A1EF602F0
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH trivial 2/2] drivers: net: Fix Kconfig indentation
References: <20190923155243.6997-1-krzk@kernel.org>
 <20190923155243.6997-2-krzk@kernel.org>
Date: Tue, 24 Sep 2019 08:15:39 +0300
In-Reply-To: <20190923155243.6997-2-krzk@kernel.org> (Krzysztof Kozlowski's
 message of "Mon, 23 Sep 2019 17:52:43 +0200")
Message-ID: <87sgomi8as.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Tue, 24 Sep 2019 08:00:35 +0200
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

Krzysztof Kozlowski <krzk@kernel.org> writes:

> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
>     $ sed -e 's/^        /\t/' -i */Kconfig
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

[...]

>  drivers/net/wireless/ath/Kconfig              |   2 +-
>  drivers/net/wireless/ath/ar5523/Kconfig       |   4 +-
>  drivers/net/wireless/ath/ath6kl/Kconfig       |   2 +-
>  drivers/net/wireless/ath/ath9k/Kconfig        |   2 +-
>  drivers/net/wireless/ath/carl9170/Kconfig     |   6 +-
>  drivers/net/wireless/atmel/Kconfig            |  32 ++---
>  drivers/net/wireless/intel/ipw2x00/Kconfig    | 116 +++++++++---------
>  drivers/net/wireless/intel/iwlegacy/Kconfig   |   6 +-
>  drivers/net/wireless/intel/iwlwifi/Kconfig    |   6 +-
>  drivers/net/wireless/ralink/rt2x00/Kconfig    |  24 ++--

I hope this goes through net or net-next, less chances of conflits then.

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
