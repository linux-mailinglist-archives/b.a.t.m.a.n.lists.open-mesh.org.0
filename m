Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id BE582280964
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Oct 2020 23:25:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7A16E8077B;
	Thu,  1 Oct 2020 23:25:53 +0200 (CEST)
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 161C880290
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  1 Oct 2020 23:25:47 +0200 (CEST)
Received: by mail-pj1-x1043.google.com with SMTP id jw11so63135pjb.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 01 Oct 2020 14:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cQBYhjCFO9RMoYSUCsYvbpJht7oVwjHoDy5V5qwzfMA=;
        b=r2qCyTxiCloY2P6yVgJyVcAMjYUm4z/B/Kp2t2ISskkg1ecTziJJ0JWE23i1KFAocv
         6+ONQCl9cCKQtFwSttWsgXkPRWtIjP4R+zhvVuKBUZk1WGJ43B7gW9tBz7xY3VODIS2e
         KU6Mj3hZzDbCXDPeks6YTgh5tm3T8N8ygyJ7fr2QzrE4+eSJJ13LQBVwyGnoRB3ssgf6
         LX8Oh4/lH1ggA5F0/Im53RrqZ7sqiAcwVfOsGdjTrQ/fnaoVALZZV2g/eqRIhAp0Yk4c
         dibvTB9b1hIjpHJdsX//GTpjJEuL7Ds5Wl+t/waCHF/KuT2GG0Iaw0wj6q65hUjIDp/P
         Hsaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cQBYhjCFO9RMoYSUCsYvbpJht7oVwjHoDy5V5qwzfMA=;
        b=BUz8jZXTTn2Prz/NWn2UgpcOihvdcXbsAdI6wqGXqvsS2o6XM0sdoy6T1CCTrVpeVz
         /Ejga/9TMkt0LEnNKXxv6DgjtwDaCQjvX6RXg2/5qk9UmmRYwKPXAL9gl1AFMEvx77pA
         /ZO2AX45KTrsZvElZspIsPmgT1RwkyQT2JOGA0+xizhZta8SDmnJTB3/LrmjEojh5K0i
         1cDXzwt3REHC9Tw1bwzUGr3U2akfgthfmKpCrSPHKoGPDXtsVmR/vZGd3dgX64fSEduU
         h2cQdTHNEOlm0W/q1L0xGege8EC74vUWSBKMpkDNCyOIIncrYMY4IWGcWrSlGolrtaHK
         /wLQ==
X-Gm-Message-State: AOAM53399aPVSDWCPS/u3/RQL9bWJtJEcz+NUTG/eoihHALt4u8mxNQ0
	QkwfXP1TmhFfMcs/+5hsClRTiw==
X-Google-Smtp-Source: ABdhPJz0cU3AoiiPJf8EI9/hexRoeRORSA/B4+N6i7S/vFAvf+LEpUqmkh38VpO4BoDN1pv3hHrhCQ==
X-Received: by 2002:a17:90a:c381:: with SMTP id h1mr1869610pjt.225.1601587546377;
        Thu, 01 Oct 2020 14:25:46 -0700 (PDT)
Received: from hermes.local (204-195-22-127.wavecable.com. [204.195.22.127])
        by smtp.gmail.com with ESMTPSA id z4sm7144647pfr.197.2020.10.01.14.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 14:25:45 -0700 (PDT)
Date: Thu, 1 Oct 2020 14:25:38 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Sabrina Dubroca <sd@queasysnail.net>
Subject: Re: [PATCH net 00/12] net: iflink and link-netnsid fixes
Message-ID: <20201001142538.03f28397@hermes.local>
In-Reply-To: <cover.1600770261.git.sd@queasysnail.net>
References: <cover.1600770261.git.sd@queasysnail.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601587550;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=cQBYhjCFO9RMoYSUCsYvbpJht7oVwjHoDy5V5qwzfMA=;
	b=kRw025GA9yah9C5xs+g+y3BG9bXQ3ScVPs87RTznlVUNDB1uf7nAu6V81w/VokYsdMwJXm
	eY7EN8IF09TGenY8bSxIkhmMolHIiIskSqHJCPl9wSfQbaU5yeXKircwpz7L/K7n+QdBGO
	fwwSx3R9B/aiFX5sPPlCjyPXIXo4OaE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601587550; a=rsa-sha256;
	cv=none;
	b=WksVdWyMrM19L6vWlw6KzLMn4NXmBWpv3LI4Z+e4jgnEWiuRTujiRXLX0cw0pJMyGhVDCa
	QkvQ6AymXaqUpoSJX5GSBr+uqhlPGmuUGwGr5JQKS/K8QAfKCmR7V1vvvSZZ6wiwnpJxpx
	0pVs+2qhqRJIHeA/ZpAaV8DWd7/4HX8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=networkplumber-org.20150623.gappssmtp.com header.s=20150623 header.b=r2qCyTxi;
	spf=pass (diktynna.open-mesh.org: domain of stephen@networkplumber.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=stephen@networkplumber.org
Message-ID-Hash: YH5DDLVEX5JAX4CRFPFD6C3WJ265JANI
X-Message-ID-Hash: YH5DDLVEX5JAX4CRFPFD6C3WJ265JANI
X-MailFrom: stephen@networkplumber.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: netdev@vger.kernel.org, Nicolas Dichtel <nicolas.dichtel@6wind.com>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YH5DDLVEX5JAX4CRFPFD6C3WJ265JANI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu,  1 Oct 2020 09:59:24 +0200
Sabrina Dubroca <sd@queasysnail.net> wrote:

> In a lot of places, we use this kind of comparison to detect if a
> device has a lower link:
> 
>   dev->ifindex != dev_get_iflink(dev)


Since this is a common operation, it would be good to add a new
helper function in netdevice.h

In your patch set, you are copying the same code snippet which
seems to indicate that it should be a helper.

Something like:

static inline bool netdev_has_link(const struct net_device *dev)
{
	const struct net_device_ops *ops = dev->netdev_ops;

	return ops && ops->ndo_get_iflink;
}
