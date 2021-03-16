Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEA033DAF3
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 16 Mar 2021 18:29:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6080B83DAD;
	Tue, 16 Mar 2021 18:29:19 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 256BB8051D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 16 Mar 2021 18:29:17 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6F0763EB77;
	Tue, 16 Mar 2021 18:29:16 +0100 (CET)
Date: Tue, 16 Mar 2021 18:29:12 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: batman-adv for kbit level speeds, external neighbor info
Message-ID: <20210316172912.GB2292@otheros>
References: <20210316131750.1198.63671@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210316131750.1198.63671@diktynna.open-mesh.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1615915757; a=rsa-sha256;
	cv=none;
	b=cv1+yKWwxU1/UV4Q4z1eo0JDnoSiIozcPfKfX5xN5f7byfQaD0eVO9KDaLv23ypv1AekFT
	A1ZivoKMTCSY2fJWOMA7NROafafU3USZVHmOJycJMAI04gE4xUxxoX1G8AsSXJUfmrQeL7
	/ab47FKeSgfFt14JqXOr+XM7AoVUQpQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1615915757;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fL4izpUj/psGsdfI9cbCBtOHwMI2xlb7sxWktk1wXBI=;
	b=xvCqTjCI1uOkKEuXb79HoeP30Y+GOyvW5/+RJ04EH3VtwNkQrLghGHuVkt48tcWq4mSP+b
	R3L5CrJbG861wi0mvVyuPXBExYWn3Sft6rlxyzUwbPmmyjSzMYBGc6RNTLywNEkonxcdjB
	OK7vT+TkEsi2NDz6mIlSUPiqrxSPCyE=
Message-ID-Hash: FWVLYUYXQ2F4GPNWDOGESRPYXQMC677J
X-Message-ID-Hash: FWVLYUYXQ2F4GPNWDOGESRPYXQMC677J
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: oytunyapar@hotmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FWVLYUYXQ2F4GPNWDOGESRPYXQMC677J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, Mar 16, 2021 at 01:17:50PM -0000, oytunyapar@hotmail.com wrote:
> Hi everybody,
> 
>     I have some questions about batman-adv.
>     Do you suggest, batman-adv, for speeds like 2.4kbit/s (very slow networks)? I tried to use batctl throughput_override, for such a setup. It seems at least 100kbit/s speed is valid for this utility.
>     Is there any way, feeding neighbor information to batman-adv externally (etc. using DLEP protocol, as an external link monitor)?
>     Thank you in advance.

If you use throughput override on all devices, you could also
just shift the value equally on all devices. For instance just set
24 Mbit/s instead for a 2.4 kbit/s link.

BATMAN V algorithm itself at the moment does not care about the
actual accuracy of the unit. As long as the values are not too
small or too large. And as long as it's the same baseline on all
devices.

Regards, Linus
