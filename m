Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D9D168A0A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 21 Feb 2020 23:41:47 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AA66780376;
	Fri, 21 Feb 2020 23:41:42 +0100 (CET)
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 55C3E80031
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 21 Feb 2020 23:41:40 +0100 (CET)
Received: by mail-qv1-xf36.google.com with SMTP id o18so1714476qvf.1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 21 Feb 2020 14:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ywmr+U3bCnUuWfe2A9UFwSQ523LHyS3DFgsNohLwPlE=;
 b=DUMl1q3PxrLQ2nWixVnKen8WVdQx1j4qLq3gw1Rn4zQK3QWvYGcCYHPHxXYyBuUmfO
 4paGjM2fJ3PWph99dUDoKk9nCFB09V0lc0+f5YFU1BPr+RLEQt2sboAwubPmF31CHY94
 HyK9q5mWZf9ysTVjlragrmFU3q6YIWJqLm2jQ9EHGa7dFcsw2QHoLV0XacvvJBD4vTni
 +fz74E9uxoiYBytQhuklLYchNiPYY/QkfRicA1tw3bZWcIPM7ZZbODUsZ994s3PLul5Z
 KrwD0ULDVjusNKyN7HwWCE3qykQppbkt2IYbZzb3xb8NgQ+Soz9b81lwIt8BzqmBlHU8
 R0gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ywmr+U3bCnUuWfe2A9UFwSQ523LHyS3DFgsNohLwPlE=;
 b=AzxfMIHCuUiPY+vhygXqNSM/lSxjHUm86CAEo7fxbVSOOuPTYuP6ArDyQElaq5/JJI
 SkRtRVPZZby3b91tN0U5Jz1F1bg8YhG6MopmucjgIO3oK0TG56vIYdzV5/OrL5IpxxiL
 ZQJlsY3/6opc8fRVQo97w4vVYw8PwLzbTAjndDruq/bddtpeIwccZYQ/EgDfAmTxSHrA
 hhyuDIHxsEqCcTGt9lmKZko2eDFXWHH0sDw9qLzZ96NTaAFt/hw+to0JrqdJjGkLsBBU
 9MxNBaEQNgqJbR/NxyyI9K1nWdFII/A7WIDyDSlVaYjaV+Cbs9fF9TFNdc2h3HDzTjRU
 CzKw==
X-Gm-Message-State: APjAAAVWKDVDII+CEa0p1LSa5xgOU+FDnRIhqScwbU8hD74rG/LvHpmq
 xy/ajNomhDOmA2MFp1LRJgMSiaiL9Bw+UcEET/20jJL1
X-Google-Smtp-Source: APXvYqx0xV6k2VcJ1T5oBMJDSXWrmb739R2dOnggDQ59g5JeGFS2iIAC9GI//YmMl/frWNe1hpWK2JUHFG8cC1Mqg00=
X-Received: by 2002:a0c:f7c3:: with SMTP id f3mr32753677qvo.52.1582324899054; 
 Fri, 21 Feb 2020 14:41:39 -0800 (PST)
MIME-Version: 1.0
References: <CAFF9uhp7M94yAPhWnpUkBwLzQa8rgxMGdBYU2CNQ203QtJZs9g@mail.gmail.com>
 <1873965.jgP86xNRV2@sven-edge>
In-Reply-To: <1873965.jgP86xNRV2@sven-edge>
From: Emilie Meyer <emiliemeyer1016@gmail.com>
Date: Fri, 21 Feb 2020 14:41:28 -0800
Message-ID: <CAFF9uhqaC0HOhiYxVaHAvU++enbO2STjupsoCiNauaeRTynu8g@mail.gmail.com>
Subject: Re: Issue with bridging LAN and mesh network
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582324900;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=ywmr+U3bCnUuWfe2A9UFwSQ523LHyS3DFgsNohLwPlE=;
 b=yYwNTBz7OR6oOErtgeDpm080RD5EWfZ2TfYk2hg32CDK3Wmm+pY0uV1FzRGCPLrfA7BD2g
 HhNzW9IDWrIj3BMO3A60Q4zo4/3oRs7Z2JL00eqQxE2bSxhrOWJZKj5BqwYAFJgyk+VJuN
 BgNr03o+lWBqHYEbft/UW6UaJv7N9WU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582324900; a=rsa-sha256; cv=none;
 b=k3c/cXb8OVIB1vn7+/D6PstHl4JQhcU8NQ8EZQ6wtTq5ZQNBNYnmuLKC8ksqCdVjYRsF/1
 fQTrhRTAuTDwR7l5ymbU4K6xBBqiKqQaO+imounmDnTC+vykWMMSzFFqSemI+ZIiTdu7f6
 1JaoHcamA8f2MKHxMEnyWlScslMhTOk=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=DUMl1q3P;
 spf=pass (diktynna.open-mesh.org: domain of emiliemeyer1016@gmail.com
 designates 2607:f8b0:4864:20::f36 as permitted sender)
 smtp.mailfrom=emiliemeyer1016@gmail.com
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi Sven and thanks for your kindness helping me out.

I have spent some time trying a few of your suggestions. In my case
using the brctl commands was the easiest and most successful.
However, what I've learned so far is that using brctl and other CLI
commands according to

https://www.open-mesh.org/projects/batman-adv/wiki/Quick-start-guide

is not a persistent solution. Each time the router is restarted, all
previous configurations are lost.
I guess one way to solve this is by using UCI configurations, but I am
not certain how to translate all the steps above to UCI.

I sincerely hope for your kind advice and guidance.

Kind regards

Emilie

On Sun, Feb 16, 2020 at 10:39 AM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Sunday, 16 February 2020 19:20:41 CET Emilie Meyer wrote:
> [...]
> > root@OpenWrt:~# ip link set eth0 master mesh-bridge
> > ip: either "dev" is duplicate, or "master" is garbage
> [...]
> > OpenWrt 18.06.4, r7808-ef686b7292
> [...]
>
> The problem here is that the networking/libiproute/iplink.c from busybox in
> OpenWrt 18.04.x has the code for the "master" interface configuration
> disabled. You have various options:
>
> * switch to the current release OpenWrt 19.07
> * switch from busybox's iplink applet to the package ip-full
> * use netifd to configure the interfaces [1]
> * use brctl to configure the bridge slave interfaces
>
>      brctl addif mesh-bridge eth0
>
> Kind regards,
>         Sven
>
> [1] https://www.open-mesh.org/projects/batman-adv/wiki/Batman-adv-openwrt-config#Batman-adv-201300-till-20190-2



-- 
Regards

Emilie
