Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 841D345A2E8
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:41:32 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 721B283DC9;
	Tue, 23 Nov 2021 13:41:31 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A8F76800DB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:41:28 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5BB6F60F50;
	Tue, 23 Nov 2021 12:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671286;
	bh=FRikde0I9a4WzIpqUt2iCu9byjSggwOwavedsafE5BY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iyquXK1I9LX5sIlQpMQ6wI4Cx2eifVgsSChGeoRAzyib/epBAQVlW1LdwucdvIclO
	 uw3JU8SiHLLYS/kky6J95Lpmab2uFUQHxEdCG1mEg4rLCGwQ0Mv5bCRcsWoDAuEkBW
	 tSM+opOqQhYJt4uPXcHBdlfy98cLCetENWC7kuEk=
Date: Tue, 23 Nov 2021 13:41:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 4.4 00/11] batman-adv: Fixes for stable/linux-4.4.y
Message-ID: <YZzhdAFXzHaNt5eQ@kroah.com>
References: <20211120123939.260723-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211120123939.260723-1-sven@narfation.org>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671288; a=rsa-sha256;
	cv=none;
	b=XCbXun5Y9RmajUgRvKUBOoHfJ/dsm5zvybsQBCPveHgtu8OFjw4tkw3OVArTe9wUaKTMXG
	+OkCLBE2zCox751mZMGzovXyzxlhwhlodAEwofA739mgTm87Io41AoGatPzmkLy2QOtvds
	w225NikXaRlIVj+pm/xkY9srdJX2F78=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671288;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=3PYsDhEP0E9i4NGz2dUlR+RdMAlDKllRooSayF1V5n8=;
	b=pLD6rD9seL4xxRpxWh+39kyzeaJ3DqSXZSp2ja+RPZFDPF1ybL6KR0EQ7LF4j73DaWPfym
	DcpmRgdStBPLE1dWCKPo2T8DC1U/UseaVm/4FZZyGoGfZyZUmIbLWawlCu9VWmW7+H6wkl
	XJCQijVg7JEh4H31yvw51XO0lkVUYyo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=iyquXK1I;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Message-ID-Hash: 7O4J56JRWOAD7JD5U6BM3WXOHZ5NRWHL
X-Message-ID-Hash: 7O4J56JRWOAD7JD5U6BM3WXOHZ5NRWHL
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7O4J56JRWOAD7JD5U6BM3WXOHZ5NRWHL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sat, Nov 20, 2021 at 01:39:28PM +0100, Sven Eckelmann wrote:
> Hi,
> 
> I went through  all changes in batman-adv since v4.4 with a Fixes: line
> and checked whether they were backported to the LTS kernels. The ones which
> weren't ported and applied to this branch are now part of this patch series.
> 
> There are also following three patches included:
> 
> * batman-adv: Consider fragmentation for needed_headroom
> * batman-adv: Reserve needed_*room for fragments
> * batman-adv: Don't always reallocate the fragmentation skb head
> 
> which could in some circumstances cause packet loss but which were created
> to fix high CPU load/low throughput problems. But I've added them here
> anyway because the corresponding VXLAN patches were also added to stable.
> And some stable kernels also got these fixes a while back.

All patches and series now queued up, thanks!

greg k-h
