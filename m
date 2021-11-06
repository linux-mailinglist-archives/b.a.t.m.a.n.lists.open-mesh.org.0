Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9964470A2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Nov 2021 22:18:06 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0790982616;
	Sat,  6 Nov 2021 22:18:05 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 281EE82601
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  6 Nov 2021 22:18:01 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 47FD53EA9E;
	Sat,  6 Nov 2021 22:18:00 +0100 (CET)
Date: Sat, 6 Nov 2021 22:17:59 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Unable to get DHCP after join wlan0 WIFI mesh network
Message-ID: <YYbxB7TBPAaEQc49@sellars>
References: <CA+HNRgC0FKMtSiDOZR3E_T_77C0QXv+r9kqncKNO5-ARwj4ZYA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CA+HNRgC0FKMtSiDOZR3E_T_77C0QXv+r9kqncKNO5-ARwj4ZYA@mail.gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1636233481; a=rsa-sha256;
	cv=none;
	b=YnbFJPvboXgX74u/xTLihqilexH4hnlQ5s4LTfMIXZdWXGU65j19EPyWAFgF6w3lYDv6zc
	CMBZnsxSmdcuvj9ExAVG3qSPqgpQcEBf1rRMgif5lWnVwbyA/5FBkDYTeRmEdLw29G7uox
	C1UVNRrQXgd5M5HWgDMkyL3ltqdeimY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1636233481;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jci7zeRerpLtImhNUT6W9uWv0FnY4+cIG6BVjK2XAc0=;
	b=4QPDND8KpTvSkrN1Ay6Vv7j7GihJias9dlC8Zqw88EE1LA0b5OV7qLZLCyfz9S4PdfuVmM
	SbOydB8tucTKJbPMajG/o42R7lIQzOdBHC5LNmclyhZU5nvX5WI8VpNmOEOkjnoi94Mxdl
	YtsQqfAfYYDXPmLQJfqxBGlbfOFT6fo=
Message-ID-Hash: CX7WGSWNAIZRXJ2IEWA4W6KBXJEFMMJB
X-Message-ID-Hash: CX7WGSWNAIZRXJ2IEWA4W6KBXJEFMMJB
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CX7WGSWNAIZRXJ2IEWA4W6KBXJEFMMJB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri, Nov 05, 2021 at 04:22:11PM -0700, Dweb Fan wrote:
> 4. I follow the document
> https://www.kernel.org/doc/Documentation/networking/batman-adv.txt,
> but seems like unable to see batman related files/folders under
> /sys/class/net/wlan0. Here is output:
> $ ls /sys/class/net/wlan0

Hm, seems this link is outdated. Not sure who can update this or
when it is going to be updated. Here is a more recent version of
this file:

https://www.kernel.org/doc/html/latest/networking/batman-adv.html

sysfs and debugfs supported is deprecated for a while. Instead
batctl and "ip link" should be used.

Regards, Linus
