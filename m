Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB0E44709C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Nov 2021 22:08:59 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E47D8825E1;
	Sat,  6 Nov 2021 22:08:57 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4690D807B5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  6 Nov 2021 22:08:54 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 27F4B3EADC;
	Sat,  6 Nov 2021 22:08:53 +0100 (CET)
Date: Sat, 6 Nov 2021 22:08:50 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Unable to get DHCP after join wlan0 WIFI mesh network
Message-ID: <YYbu4iyiAp5HlUXZ@sellars>
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
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1636232934; a=rsa-sha256;
	cv=none;
	b=WwiZi2ZD+n1gXDfnhL8XuuleienBDIFwLEiMX2QdKHcYYshUasWF5iFAJIQjyuk+S4gYwB
	2+6GCgriXE1mRTwTcnpA5vCunBJTj+Dewrt1RN0DZriREZN1QU1sFW1XuCD59SOg8ZvOII
	fvjmy+r+0GE1p0E6Z5JvP3TR2sr7xWI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1636232934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WF1FEK5zWWy1YRP+J2EOWQLpbTkOk25qdA+KOdaEK9E=;
	b=3TY5RDsomW1lGFEpkfwo4F4esqEv5kuIDat2oBEaHVQbJ3SG5EoV7DUmrNXl1c2SM1X0UF
	TkIY/ZpVhKiy86PgsKtV84ivBAmuwCAddxPK5avdNtm2Om3Tbi4dzKiz1zQN2TUFw6p+AX
	WvmawTl1t7nXcDGiiHjIvCa3Rw4mOSk=
Message-ID-Hash: AHZD77XI4XO5ERYFY5UVVJNTFIB22HML
X-Message-ID-Hash: AHZD77XI4XO5ERYFY5UVVJNTFIB22HML
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AHZD77XI4XO5ERYFY5UVVJNTFIB22HML/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

Glad to see that more and more people are experimenting with WiFi
mesh networks.

On Fri, Nov 05, 2021 at 04:22:11PM -0700, Dweb Fan wrote:
> Dear all,
> 
> Thanks for making such a great project!
> 
> I'm following the guide from
> https://github.com/binnes/WiFiMeshRaspberryPi, and setting up wifi
> mesh network on top of raspberry pi 3B+. Below steps are good now:
>  - batctl ping works (peer can ping each other through both IP and MAC address)
>  - mac os wifi client can discover the ad-host network, and join the network

This guide seems to set up two WiFi interfaces. wlan0 in ad-hoc
mode and wlan1 in AP mode. wlan0 is a secondary interface of bat0
and wlan1+bat0 are bridged:

    ---br0---
   /         \
 bat0      wlan1(ap)
  |
wlan0(adhoc)

On wlan0 is supposed to be only used to interconnect batman-adv
nodes. The batman-adv protocol is primarily spoken there.

Client traffic from your mac os wifi client is probably not able
to speak the batman-adv protocol and is therefore supposed to go
"over" bat0 instead of "under" bat0. So your mac os client should
connect to the wlan1 AP interface.

The traffic is then bridged from wlan1 to bat0 and batman-adv will
then encapsulate the client traffic. And then forward the
*encapsulated* traffic on wlan0 automatically to the correct
neighbor node.

Hope this helps.

Regards, Linus
