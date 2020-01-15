Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id AA36813CF60
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Jan 2020 22:45:28 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1022080762;
	Wed, 15 Jan 2020 22:45:21 +0100 (CET)
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by open-mesh.org (Postfix) with ESMTPS id 75845801CC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Jan 2020 22:45:09 +0100 (CET)
Received: from localhost (unknown [62.21.130.100])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 22C9E15A0E661;
 Wed, 15 Jan 2020 13:45:03 -0800 (PST)
Date: Wed, 15 Jan 2020 13:45:02 -0800 (PST)
Message-Id: <20200115.134502.1655641866201079006.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/1] pull request for net: batman-adv 2020-01-14
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200114141646.23598-1-sw@simonwunderlich.de>
References: <20200114141646.23598-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 15 Jan 2020 13:45:04 -0800 (PST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579124714;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zZGjJAs1N0lzFjTC6q0n+W3epH2NHXW3ugIrHCkAlOo=;
 b=TzfRQo4fEQEvxwe8ef4OT3K8y7WI7gK68pDm+far5pAmP398/hIea0176otGL7CG4agq83
 4E2iv0gswVy1FrBGBo7Jy0qBF5kZxevgYIbXNBYYsBebpEUN0tvJDZIWibWdFLhmjZIaPR
 isR/u8WHLYs4QlZQduZnZy5JebjhuRs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579124714; a=rsa-sha256; cv=none;
 b=Ze+RyARF0vje+CQWgcqgBHqSnZGBET8T0VbLJ+J/JPkWfz5lQqA3p0XQdh986AX+v0ROBH
 PXgJQeANejRlIrLqd8zD+qzAZPIVXhw8T+VkPq/6a19Bj+3JK34b9tGMj+eDoJcTWU/eso
 I/ljWVIiMPxy5XTwTpf7kd6KHmtbFzk=
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
Date: Tue, 14 Jan 2020 15:16:45 +0100

> here is a bugfix which we would like to have integrated into net.
> 
> Please pull or let me know of any problem!

Pulled, thanks Simon.
