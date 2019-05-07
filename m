Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 3358815852
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 06:22:59 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 6A43E82064;
	Tue,  7 May 2019 06:22:56 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 4EE6C80516
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 06:22:54 +0200 (CEST)
Date: Tue, 7 May 2019 06:22:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557202974; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=BrK43XGj99UsGnaVWaUF3PFBAqM2VZyRN407ZeolbE4=;
 b=lx2CQIWu4l30xoF2e6ehVNLI4kRYNxDRubPng1ejTUxq8M9NXOfHtdEp0LH+SHkCxgEixM
 RRkkRVSo43yW1ekex97aiDClmsiz+ZU0HwgBzdBbt2UVIucWGFY4Ew50NR4ieRaPdK9yGA
 ScScLc3K/MC+pvQCVAb1PVbkCG8ubhK/HX/TS+ivhXOXTzIw9xrH1t0eTlAexi7ST24DZD
 AK32PVhAwLM9PygCPotxpjPG1nq7AbdfhjGRcS07sACn0SYZJRA6Ek1yT/b4a0t3M5C6Jh
 qk44POCnGhQWvVvctn72cYTOPssPbCUBiZsWIyhLAmJm74ZwDipCajrSFRYz1g==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [B.A.T.M.A.N.] [PATCH 0/6] batman-adv: Add routeable multicast
 optimizations
Message-ID: <20190507042253.GA1493@otheros>
References: <20190424011919.9821-1-linus.luessing@c0d3.blue>
 <12977711.pgt7cpdoR5@sven-edge>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <12977711.pgt7cpdoR5@sven-edge>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557202974; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=BrK43XGj99UsGnaVWaUF3PFBAqM2VZyRN407ZeolbE4=;
 b=o2Qip7WDJO9c8m4oPujt36/wFYqGt5JROlsmi8dsxUahgsuQNhqwWZgmQAn2CAEnnvP1aq
 BNpQNXHY/BG1cB0h9YireeZitcduaYZXe0bzhHi3zkPPl/MLwYhynAJW+nlorro6h4RWk7
 FMr8AGip1rmbha/87t2W8Dz+LJTAckbnbBkXl1yn/eXge8jQmOtTTLhOKv2x5LgE1SbhKq
 wWSfa0ZdeA+tIWKm/sdOZKouL8XgZ1CrzarxnmhApzU7QMHYMZprqpsehl3scpE1cDmep2
 fpSLGgrCL2Cqi9bd8uGbt3q7lNFmUWSz4F/11+BJwAc99FnyZwOyCp40v6sajw==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557202974; a=rsa-sha256; cv=none;
 b=Gg3BxlYDrp3vFhJImrSMy0nD//c08ZMhoAsYD49rMc5NbmKEZhqxT+zR1xWTz6tV4TwYVE
 KJqB0korO8ulpPLetoDeBheOlHW22i9/4XfNbdmBvuFZPfguIdAEReCSfgpze5oWL9YSXw
 zSe0X/85WwpOAmInNjmN879y0waAeKO3JddnCUoBEc7RZyW/jA1Rh8tylOBrgfwAnu7uWL
 A6lYUeW5A1Ywr1voWMBd8f04NLK7iVyNFAQ3ACExE0yQFufDq0HFXWP/cia7hGPmbnWLcn
 HN+V2pg6ch4OscdAlymayDR4zd/T9zhJWyiTKxCNUOUx9E8lrUKyFAEZbJWaMA==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Sun, May 05, 2019 at 07:37:48PM +0200, Sven Eckelmann wrote:
> ecsv/pu: headers
> ----------------
> 
>     diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
>     index ca4898d3..f106728b 100644
>     --- a/net/batman-adv/multicast.c
>     +++ b/net/batman-adv/multicast.c
>     @@ -23,7 +23,6 @@
>      #include <linux/inetdevice.h>
>      #include <linux/ip.h>
>      #include <linux/ipv6.h>
>     -#include <linux/jiffies.h>
>      #include <linux/kernel.h>
>      #include <linux/kref.h>
>      #include <linux/list.h>

I did not make any changes to this as I believe jiffies.h is still
needed for msecs_to_jiffies()?

The rest should be addressed in the new patchsets.
