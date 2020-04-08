Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE401A283D
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  8 Apr 2020 20:10:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B686B80854;
	Wed,  8 Apr 2020 20:10:09 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 7865580131
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  8 Apr 2020 20:10:07 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
 id 0EFA9403D8; Wed,  8 Apr 2020 14:10:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1586369407; bh=lU+8b+sPJvPUvvKZzUSqlX1tgVMO9uZod1k0wBIOeGA=;
 h=To:From:Subject:Date:From;
 b=QngGskwswnir3eJoDckJg8rTlp8E/OOHmeU1hBX2erc0trnE2+7S5OZhMJiQHum0v
 QHNkGZy5A7dQDZm6UOfIExn80id2hnPLH2I4pCmXysa4DQDNwHg5wRr+PNJof47m8g
 Jf2JtGtTujFMkNPP5TketZLbhsMZNY8FUZNud0bF6F8XHDPqxhBu+8RqZfJU44cOBL
 VKUDlFyV8ClVjTvR3zJZvSWfdzTo2k5m+QmW7QjjM/sQQTF09OLRPzrH9huqHa8jeg
 94Jf8RamDxl1Ke8Ziz3pHUcDMLUyrxhe2e0NL9moSC2hjYL4HAUBFXuBvcro/l1Wa3
 4EDj/lXQlTOvg==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.2
Received: from [192.168.2.88] (unknown [38.21.219.50])
 by ory.petesbox.net (Postfix) with ESMTPSA id 8724040246
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  8 Apr 2020 14:10:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1586369404; bh=lU+8b+sPJvPUvvKZzUSqlX1tgVMO9uZod1k0wBIOeGA=;
 h=To:From:Subject:Date:From;
 b=W5e5od1AcmOMBU2HkIPwSd67uScvP19v3l1ytaJM2pYG6gCAP+6TCZM0JRxdYr7H4
 E7gEivouHN4wR8680F3KhbfakgSDgM+3Xdp0PvForeR8la8NYIi8VdqJqq7QQgve9D
 JVvEyF1sYivKzcJ21H7bQuW8bJ9n1KQ9twQiyBa+AIM3WvyOnlQcsqqaw4WtFIVdTV
 eGATejgaGfQXxF7pA9wqdxbSWKethxLp0MeR6Z2mDx34IwoBMVtExioxjthJH0hP0E
 AVtc7cuzTUDek+4iS8CPJefik4l2lJJZiMo4dcJ5/oo0dbsvMteLNicEig5eHauAfx
 h8V3jbrL/vsvQ==
To: b.a.t.m.a.n@lists.open-mesh.org
From: Steve Newcomb <srn@coolheads.com>
Subject: working openwrt ibss configuration?
Message-ID: <3d4b35cb-4a4a-13a3-90dc-bbdb26456145@coolheads.com>
Date: Wed, 8 Apr 2020 14:10:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1586369407;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=lU+8b+sPJvPUvvKZzUSqlX1tgVMO9uZod1k0wBIOeGA=;
 b=eFv519qysH+degAxFuXCj+JoRkF14qalrMEnPerTpK64FWZ1Hiuvjo09pmw5aiu+sO/m4P
 9jNY6/J2APn5JA8D97WOz3xZDaAEMhhi6rQMRkBwfaSBmdATeYs94uR6Y0faOEuyvcqe3H
 ZgtfdMbXiF0fclAfHtloH6wZuJOadkw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586369407; a=rsa-sha256; cv=none;
 b=dIybq1y2mY2MVmbaRjaCiYElIGYoCNLyT/cFNxu8Odo9OAWUan5/5MC35AZJ6YZEGohd9A
 nxRhwj4VSH5sadrhSaOJkl5YuEHZVyYSG/aKTtupi/fPJ4hK8EiAN8IjtBMbhAZaHnyN8v
 I3mTUKDUKxZvOy/RgpVwAxdS2KITMyE=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=petesbox.net header.s=ory header.b=QngGskws;
 dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory
 header.b=W5e5od1A; 
 spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates
 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Ben Greear suggested to me that I ask for help in figuring out how to 
configure an adhoc/ibss based mesh.  I haven't been able to find an 
example that's relevant.

(Well, I've been able to find an example on YouTube that dates from 
before 
https://github.com/openwrt-routing/packages/commit/54af5a209e0a0a75b5eb712c0ca8056e66de02c0 
in which Sven revolutionized option proto batadv.  It's not very helpful 
now, I think.)

My problem is that I have a bunch of wave-1 radios that, running under 
ath10k-ct (Ben Greear's firmware), can support mesh networking only in 
ibss mode (says Ben Greear).  I can use the non-CT firmware's 802.11s 
implementation, but it's unreliable. I'm looking for a way around my 
still-growing number of self-diagnosis-and-reboot hacks that are 
necessary with nodes running the non-CT firmware.

I'm hoping that someone on this list is running batman-adv with 
ibss/adhoc mode with a recent version of OpenWRT and will provide me 
their appropriately-redacted working OpenWrt config files 
(/etc/config/{network|wireless} as an example of something that is known 
to work.

Steve Newcomb
