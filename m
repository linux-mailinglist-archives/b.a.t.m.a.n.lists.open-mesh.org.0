Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C68D355D3A
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  6 Apr 2021 22:49:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D0EB180737;
	Tue,  6 Apr 2021 22:49:49 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CE28C800C9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  6 Apr 2021 22:49:47 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3688D3E95C;
	Tue,  6 Apr 2021 22:49:47 +0200 (CEST)
Date: Tue, 6 Apr 2021 22:49:44 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: bridge@lists.linux-foundation.org
Subject: IPv4/IPv6 separation in bridge code for multicast routers
Message-ID: <20210406204944.GH2742@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617742187; a=rsa-sha256;
	cv=none;
	b=DULw6aIL9Qg/i/+jDV9tNTqtLBV/qyLsn4xwqvGp3ffHInFe84qmm7EAD6FMUF34o+lvDW
	aJvlgm8x4zPhaxzYzrjLS53CkYwsI63SZruafk+eiMxUb+ivq1/ac9OpiTFeHf2tPcSajz
	c0rRZBl7OeHTnmo4dr3W9xGTvI3JCeY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617742187;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=vWe3cQwcK4lEFSHMVlWQ90Dtt9CAAEJdymyS+Ym3k8E=;
	b=g5V5WY/Z7KVFyzhr+6k+gs6f8G68KSLRGqV9CoOUoL+zu5S4RDUslvhaEiB5rKvBKpuLDH
	X9Wme7DcYGQpJVwWxMwW+rRPd/wiDThQuukZgRprGbI6OvfUx0PumDsubdWuVLuUUsx1G4
	5r2ImSDR3iCHARjJ5XsOIrvCk4mgssA=
Message-ID-Hash: N4EMW4KCLO43FMPVEBEA3BKLGAN7EXXG
X-Message-ID-Hash: N4EMW4KCLO43FMPVEBEA3BKLGAN7EXXG
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N4EMW4KCLO43FMPVEBEA3BKLGAN7EXXG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

I wanted to add the remaining pieces for batman-adv to support
IPv4 multicast groups in bridged setups, next to the IPv6 support
already in place. For which we'd need MRD support. So once more
I'd tap into the bridge for this information from batman-adv.

Then I realized again that the bridge keeps track of the
IGMP/MLD querier per protocol family but not for the multicast
router ports. For the latter we only have one list right now. For
batman-adv we have the multicast router flags and logic already
separate though.

I started separating the router list for IPv4 and IPv6 in the
bridge, but it seems there are already external users for the
protocol family unaware router list right now: netlink and switchdev.
Now I'm wondering:

A) For netlink:

Would it be fine to just add a MDBA_ROUTER_PATTR_FAMILY with
either the value PF_INET or PF_INET6? The downside would be that
a userspace application which does not know this new attribute
yet would potentially see or list a duplicate.

Another option would be to add two separate attributes:
MDBA_ROUTER_PATTR_{INET,INET6}. Which looks a bit more clumsy and
and inflexible to me. But would have a better compatiblity when
userspace requests a router ports dump. For events there'd still
be the same issue of duplicates though, as IPv4 and IPv6 routers
might appear or disappear asynchronously.

B) For switchdev:

I'm not that familiar with switchdev. Should it generally be
possible to separate the protocol family here? Or would it be
better to add a few more lines to the bridge code to
only call switchdev_port_attr_set() when transitioning between
v4-rtr, v6-rtr: (off, off) <=> (on, on) | (on, off) | (off, on)?
At least for a start, maybe?

C)

Or am I missing something in the MRD RFC (RFC4286) which implies
that a Multicast router Advertisement should be interpreted
across protocol families?


Any ideas what might be the best way to tackle this?

Regards, Linus
