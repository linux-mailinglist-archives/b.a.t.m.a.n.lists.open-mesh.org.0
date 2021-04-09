Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A159C359D38
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 Apr 2021 13:24:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6FA90815FF;
	Fri,  9 Apr 2021 13:24:38 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8C44580038
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 Apr 2021 13:24:35 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E99313E95C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 Apr 2021 13:24:34 +0200 (CEST)
Date: Fri, 9 Apr 2021 13:24:32 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: How to mesh over ethernet VLAN?
Message-ID: <20210409112432.GJ2742@otheros>
References: <CAEX-Y1Z8vHvj_TD-EL-Y9AiSeKV9WHb=BxJMwJx0h5z0xfk5OA@mail.gmail.com>
 <20210406195122.GG2742@otheros>
 <CAEX-Y1YfhoLgcwMJAg11H7f785kum6LUrYq=YrKg0C-9vXZ-ZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAEX-Y1YfhoLgcwMJAg11H7f785kum6LUrYq=YrKg0C-9vXZ-ZQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617967475; a=rsa-sha256;
	cv=none;
	b=4SGGSJ/mFwOHCZMwAXZk0UVFZuFBETCigN60Z1eNX17rYeIWwUrc4Z01V5362VLEuS8pT3
	EJTYmQ/i0fUZgVqdQie21pJVaSU86EQ2BXRJD198baebePbiyYdhgQdPeDAWVI/+LB/euD
	eLVLRDQa71bt1Mp8xEw21WvKgKM7H2Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617967475;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MKwqi67guyouubHWii5ayPIou0AoKXsUKugaOUI6B7c=;
	b=deInyVQ1fSzY6uHdBJ2ZVO0kIiGcsqDqcw7lfdMawi/0+DvQg3zAbWJt/eh6jMHW/4FxD9
	GS3X53FKNYaLqRKVzCq9aupRu6e3hcySTWjdRreKAQ9E5s6qkS+DEz7KZpvccU/uD+bKyD
	vgCEtKD33mvvnJiiSUOSGzDm98DRSXY=
Message-ID-Hash: FXU2I75EKOD5X6AOQ6SNJZV6XEZJGIZR
X-Message-ID-Hash: FXU2I75EKOD5X6AOQ6SNJZV6XEZJGIZR
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FXU2I75EKOD5X6AOQ6SNJZV6XEZJGIZR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, Apr 06, 2021 at 11:33:26PM +0200, Andi Depressivum wrote:
> That was my very first configuration approach but it's rather slow
> (about 200mbit/s over a gigabit link) compared to native VLANs. I've
> tried to set the MTU size to 1536 for the mesh interface but for some
> reason the MTU of the interface stays at 1500?!

The MTU of eth0.2 or bat0?

One of the performance penalties might occur when batman-adv needs
to use fragmentation. batman-adv is going to add its own header
on top of the 1500 byte frames received on bat0.

1536 on eth0.2 looks good though. Then 1500 bytes should fit
without fragmentation on bat0. You can check with "batctl
td" or Wireshark if you see batman-adv fragments on eth0.2.

If 1536 is somehow not applied to eth0.2, might be a driver issue
then. You can check wether you can manually alter an interface MTU
with "ip link dev eth0.2 set mtu 1536", for instance.

Regards, Linus
