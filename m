Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 043E913CFAA
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Jan 2020 23:04:49 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CCE8D8085F;
	Wed, 15 Jan 2020 23:04:43 +0100 (CET)
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by open-mesh.org (Postfix) with ESMTPS id 17EFE800C3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Jan 2020 23:04:38 +0100 (CET)
Received: from localhost (unknown [62.21.130.100])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id ED47615A0EB99;
 Wed, 15 Jan 2020 14:04:33 -0800 (PST)
Date: Wed, 15 Jan 2020 14:04:32 -0800 (PST)
Message-Id: <20200115.140432.1776246565261037371.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/7] pull request for net-next: batman-adv 2020-01-14
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200114142351.26622-1-sw@simonwunderlich.de>
References: <20200114142351.26622-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 15 Jan 2020 14:04:34 -0800 (PST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579125879;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p0x0EO9+x92JU6N3iHHd+rhOMpG8gqHiWblaU6qbimU=;
 b=VK1StjKbIEJ92O0pEdGlQK5pKpsoSuezTkyZK6iQdlOt82yhsZeNbn/LtYmWx8FegnQPzN
 nySSgfMIdS8PotV3Ly3hdR6E6lt1x5uFGb75Vxo9xI/ULBnIn1p34kcEKrKXdZy8YISdLa
 50HHknxM9aCERF6/4TZhgLMmCguSoG4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579125879; a=rsa-sha256; cv=none;
 b=pqJbJCT4cR6twtizhd6Ks3F7T8Y0jiVv2AriympfzBlE35lNboS2O5rgvZcsJHG9UON6I6
 jcjalT77IV5iuP4CmhMVG6CDRf3g6ccFBNKMh5QN7yY97V44tIb8RVgiz247Z3BjmGELJF
 8JOjVzOkBw2wN0EIZmdqGyWPR2u09iQ=
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
Date: Tue, 14 Jan 2020 15:23:44 +0100

> here is a small feature/cleanup pull request of batman-adv to go into net-next.
> 
> Please pull or let me know of any problem!

Also pulled, thanks Simon.
