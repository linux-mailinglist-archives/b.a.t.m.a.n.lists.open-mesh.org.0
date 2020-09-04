Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1D825E18C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  4 Sep 2020 20:44:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 809488070B;
	Fri,  4 Sep 2020 20:44:05 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B789980312
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Sep 2020 20:44:03 +0200 (CEST)
Date: Fri, 4 Sep 2020 20:44:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1599245043;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UbLcwMVeiIF2j6mQzyoioH5Qqfx6kNXiM/9E7arPpSA=;
	b=lGL6EgS54B5nE/Nr5NPEpPCF3xU7R9Q0ybO8CwxRbSP5hXsB+7G+DSxm8WeiBR9HGSvDRP
	b68OXPsDNePCYQMxv8zq2nTbM6pGPr0XybydJfv3j6KZZk5kAn1i5IK517ADmc7yQaj/XC
	1Ed5MavlYsjN5Sqfn+eAQixwVC2W6EeM/Mj4RI7FMTUr7dIKMmZ23zQhHGDGRE/cosUmw2
	QH2pPluK6K/vlAmVXuLJAlXoJPeTCjlQf+QVtKqYBYQthgfDDPrQu81Ur2Jig5kvM29J+3
	XuShpa437QIA1qziZ+xGC0sVQ9F8OflQC4cE8EftVRIinmm8puE21gEaFXMIgA==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Is it possible to send all batman-adv traffic through http proxy
 cache?
Message-ID: <20200904184403.GA2391@otheros>
References: <CA+RexfHNV+HY28OiuHKNy4Rn=MM4gxOU0xCiVG0z56dfnv_z6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CA+RexfHNV+HY28OiuHKNy4Rn=MM4gxOU0xCiVG0z56dfnv_z6g@mail.gmail.com>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599245043;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=UbLcwMVeiIF2j6mQzyoioH5Qqfx6kNXiM/9E7arPpSA=;
	b=b5+WT0EMG9cThIyD4AQtCPl35PPcQF7OwNPRZqB7B0q8BxcGuvHVaxclNnLVVGPaocld4m
	3oPssvRUIioJUOgQ0H6hbfo32XGEqr1GGuUUeHEWj/YpqYR1dHCr0ri15UtpP4kQE5ww/z
	U4tJm0jEoI/2JP3TSnCLdSFFAYvTyJM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599245043; a=rsa-sha256;
	cv=none;
	b=saodN2eI/ow7Xpn6pJhtfpjBU41X/YnA+ca6PTS6nNtlOGgAswDCE3VXH8ePPVrG08XyRg
	DT4rZPPXr+3/s6bsLiLao37V796Bzlw9oH+dUHCrXeHnhQzo4aiG3tcYa4XM3Yms7VA49w
	WQYq0Uh/fsZvH2kJvcrU+nMKPvU5g6k=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=lGL6EgS5;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Message-ID-Hash: SYUBP2DSJRXI4QRLARAZFTC4IPOCOXZV
X-Message-ID-Hash: SYUBP2DSJRXI4QRLARAZFTC4IPOCOXZV
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SYUBP2DSJRXI4QRLARAZFTC4IPOCOXZV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi, 

On Fri, Aug 28, 2020 at 06:00:59PM -0400, Chuck Ritola wrote:
> Is it possible to send all batman-adv ethernet traffic through an HTTP
> proxy cache such as Squid?

Not really, there are a bunch of headers too many for an HTTP
caching proxy to work with batman-adv.

I'm wondering, are HTTP caching proxies actually still useful these
days where all major sides have switched to HTTPS?

> Another consideration was ALFRED but it doesn't appear to be easily
> integratable with existing software.

Alfred is more useful for little bits of information, not really
for complete packet streams.


The "best" solution I could think of right now for limited uplink
bandwidths is hosting content within your mesh network instead.
Like setting up a Seafile or MediaGoblin, for instance.

Or using P2P technologies, like Bittorrent. Although you might
need to be careful with this particular one that it won't greedly
occupy the rest of the bandwidth your uplink has left, if content is
still mainly shared over the uplink and not within the mesh.

Regards, Linus
