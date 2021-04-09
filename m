Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 65390359FFA
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 Apr 2021 15:38:58 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 37E9382F8B;
	Fri,  9 Apr 2021 15:38:57 +0200 (CEST)
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3334F8040E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 Apr 2021 15:38:52 +0200 (CEST)
Received: by mail-yb1-xb31.google.com with SMTP id x189so6633942ybg.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 09 Apr 2021 06:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=dVo8SjPPcBv1O65V2tzmfmjIT69t5F1fAToNRQf9hos=;
        b=oD9j60esIBDkNmI53uXP+IzLMJlQ2duMP+Y8bNxxyLgI6kB10tfftHw7JkV6qF9QLP
         53SHTynTg1x5D/zxisusdLUEN6ghvDEYOqF/rRos4kkMBwA21JwTN84LyL6dl3MgGDP8
         C3WkmuRTFv56st+4kL6axlXX7iJLb8DCOVQJRsHIe5P6mT9fj2HKBdzCdue3eKQphW66
         gPbJsGS3czugrUyb5tUBFPBRtmEFIJWn9tnyA/C3XVbnLj0SPr5y50NjBT2lcdEzByR+
         hJ4JUZzgT6PukuMNm4pj5T2CYySQjzrxJ+vhz2p47GATQOzlRhfhr/lQD/5GppKDNdp8
         umUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=dVo8SjPPcBv1O65V2tzmfmjIT69t5F1fAToNRQf9hos=;
        b=K3K4UCvS1AoUMIRszvJnLy725U7tO5himpwZoiU3hRxRWcWQ1kquRi0y0i9UJBmBZv
         LhWyyrVvL9nHPJaH1+71f/DPdaICv50LtAwX/S/tJXqeCkUbzN377WBPBynFOF/UB+vg
         fGZrgf7HOwOvYuR4IXrw3kQovXmFV/84gQef4iIlR3v/k2IYxXzwyHwDwWvM14j+xCUb
         T4HyENjqoDNjxzf9933EiwS8/k8ay5dO3VFFNbCwhV5fQ5kbo2K8jLg/FxQSWtmmV6oO
         EKvDVh2sgYbvj9qKFh5qVX6fZE6Ql1mFC839/FahQwqh81kXjaiND7JWyRVbiVMN9Yne
         owWA==
X-Gm-Message-State: AOAM530F11Sa32N7Z0yb8ZK3M2T1NSMJiBuKw4UBOE6EEp836IRSF5qG
	wkrhIGmsjxLc4FNvGjMWYfp2LDY0hJm/LPdNiWIpDpuW
X-Google-Smtp-Source: ABdhPJw+93lOSYzP/JVwsnGFO+9+QtnH6PIgVYVDrnro3y5l5GLvNv/rnR5OANBhAlcWGu6WEauBjl+H+Uy6I+//SCA=
X-Received: by 2002:a25:2e51:: with SMTP id b17mr12392946ybn.130.1617975530942;
 Fri, 09 Apr 2021 06:38:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAEX-Y1Z8vHvj_TD-EL-Y9AiSeKV9WHb=BxJMwJx0h5z0xfk5OA@mail.gmail.com>
 <20210406195122.GG2742@otheros> <CAEX-Y1YfhoLgcwMJAg11H7f785kum6LUrYq=YrKg0C-9vXZ-ZQ@mail.gmail.com>
 <20210409112432.GJ2742@otheros>
In-Reply-To: <20210409112432.GJ2742@otheros>
From: Andi Depressivum <andidepressivum@gmail.com>
Date: Fri, 9 Apr 2021 15:38:15 +0200
Message-ID: <CAEX-Y1ZnouWOpjrT4n8q4BVaRWSP30GLMbT_78Kn3_KoFELp9g@mail.gmail.com>
Subject: Re: How to mesh over ethernet VLAN?
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=oD9j60es;
	spf=pass (diktynna.open-mesh.org: domain of andidepressivum@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=andidepressivum@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617975534; a=rsa-sha256;
	cv=none;
	b=MEoJktJ78rl42nsc8mDodT3Z2X+xPJvIjg/KTa9oUecO2muU/SZrdmwcv7V2BXJMCjwOz1
	sz6fGkcXeAWCCP688af1pdYus0DfhglBy7yb/h06n8bcaB4I5P2+Nz98NcioVCxV/4nbhV
	CE8zhqt7cOejlJbLRVJNM1PDa6lGNpw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617975534;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=dVo8SjPPcBv1O65V2tzmfmjIT69t5F1fAToNRQf9hos=;
	b=sOidc+HLJcnqVyz/w45EsM0hdAAwInL2RE/AkwKWnRhzQolN0zDfC4UtAkZgKtB9AUceXy
	hVna6H6G2HdtafgbZBfI98fg+oKwcEnH9k1f5bzXr/ex1NizHQgNz894bdPj2KVKQrTRT6
	I71RAVn7P3T5z2rzO74rRyRgxK4OKBc=
Message-ID-Hash: GU4TC4MYCFGQ4B4CUIHFGZYJPKUV5CD5
X-Message-ID-Hash: GU4TC4MYCFGQ4B4CUIHFGZYJPKUV5CD5
X-MailFrom: andidepressivum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GU4TC4MYCFGQ4B4CUIHFGZYJPKUV5CD5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

> The MTU of eth0.2 or bat0?

It doesn't matter, I cannot set the MTU of eth0.2, eth0 or eth1 to
something higher than 1500

> One of the performance penalties might occur when batman-adv needs
> to use fragmentation. batman-adv is going to add its own header
> on top of the 1500 byte frames received on bat0.

That's why I'm trying to increase the MTU

> 1536 on eth0.2 looks good though. Then 1500 bytes should fit
> without fragmentation on bat0. You can check with "batctl
> td" or Wireshark if you see batman-adv fragments on eth0.2.

That's only the config. IP LINK still showing 1500.

> If 1536 is somehow not applied to eth0.2, might be a driver issue
> then. You can check wether you can manually alter an interface MTU
> with "ip link dev eth0.2 set mtu 1536", for instance.

Actual OpenWRT trunk on TP-Link C7 / C2600 devices. Can decrease to
anything lower than 1500 but cannot raise above 1500.

Thanks,
Andi
