Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 53109E7D21
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 29 Oct 2019 00:40:00 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id D1A5A80582;
	Tue, 29 Oct 2019 00:39:53 +0100 (CET)
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by open-mesh.org (Postfix) with ESMTPS id 9F2BE80161
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Oct 2019 00:39:31 +0100 (CET)
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0B55714BF4677;
 Mon, 28 Oct 2019 16:39:28 -0700 (PDT)
Date: Mon, 28 Oct 2019 16:39:27 -0700 (PDT)
Message-Id: <20191028.163927.342985748289780496.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/2] pull request for net: batman-adv 2019-10-25
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191025092216.12791-1-sw@simonwunderlich.de>
References: <20191025092216.12791-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 28 Oct 2019 16:39:28 -0700 (PDT)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1572305974;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3F210Lat24QtLnJYn/Iv0912k6l8dM6LO4IpbicfPL4=;
 b=W0wUfT3JURR9SqMQZw7ntTQyyq/aE8Q/YK9cNNKwz1AUXzownhzuFVk+rC5T2TlydH67k2
 wD3Yzip1S4B5Qubifc+iVHIoPyzhDz0KS1yn4EyVKKijr3d+oUCCYBSM3Yi5wwqK8ehKEu
 igvzKoz4jMVGTyNY4LzpS0vsf6L6lxM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572305974; a=rsa-sha256; cv=none;
 b=wwBFTY9uPw4t4bT5bL9I621vO2iXc11X3IeEcXMyw5BfxW2mcMfoLDtnUpzrVWo+oqKXLn
 kp7lC26ZVuvbuvt4yA9cqDcr1odIbekn2oZg0hUw0+ugVKi4xC31zSsyfy/B4+OWaEi4QG
 DocTCGE2R0fFQ7amnO3NBuPelfJWAOY=
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
Date: Fri, 25 Oct 2019 11:22:14 +0200

> here are two bugfixes which we would like to have integrated into net.
> 
> Please pull or let me know of any problem!

Pulled, thanks Simon.
