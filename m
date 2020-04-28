Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EAE1BB9D8
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 28 Apr 2020 11:28:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 38AEC80E2E;
	Tue, 28 Apr 2020 11:28:41 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588066120;
 b=gy2VG2qtXIhk43psxg5NBNp9HUvvcTGsPr/SPYJ+BCa3Q+keNWjkviTUuba/swC05NB1A
 Ihq9VX9pXUHSayiiSBst4/Bgkli9T7hMsb31o8hZum+Aiecj4mGpwT3SinWJsJkHkuhfVKG
 EZ19h8wXLt5cvoa95K13QDdmST1R57Y=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588066120; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=eccMcArbIpfgS6v/G/1TxX6Xq8W+8T6pM2IR5NI8cGs=;
 b=H65+Hu9qVkwTMOpwXxFxZ8EY6KJSooS7wxOaU6JeHwEBKVTIgra32Hlo03ATEPIPD5A+P
 ZL3XV2rsPDtPU8aRAep9Fh+5ZPeCHUk2ZtrXkAJzww8729nMV6DKKS7ZM1Brf5Uv6tJqj3o
 xy4LpSZEewkXzHhTo4QT0rUrRCUmDIc=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kayhan.name.tr;
  arc=pass;
  dmarc=fail header.from=kayhan.name
Authentication-Results: open-mesh.org; dkim=pass header.d=kayhan.name.tr; arc=pass; dmarc=fail header.from=kayhan.name
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com [IPv6:2607:f8b0:4864:20::932])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 57EC080DF5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Apr 2020 11:28:38 +0200 (CEST)
Received: by mail-ua1-x932.google.com with SMTP id b6so6863421uak.6
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Apr 2020 02:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kayhan.name.tr; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eccMcArbIpfgS6v/G/1TxX6Xq8W+8T6pM2IR5NI8cGs=;
        b=eceatpZ2I+qJksg3p5pHfbdMyEJa/eeMqe+/g0WRSdkZmLvFeDPUTwKIygfgDgqcWx
         LgPUrP5pyNgj+fCU9siKqPWkCcpLe6590y1X7wzKhmYzqTTMzMFl9ZVBIeZ5owiLJkES
         TBkBtEsIunq7EvJ3FCoj7D2yh61YmxHRMPVHjsCvxpAZbULNTHCpACbXvGSvaCOQZGlJ
         JJab3shjZj8DhRcw8mCbtR3Bz5nydub6crsyHxwwtYXH8pIlTPcUwzbbX40SyCinJ7KU
         tuHlP7/B5jCl9W59mMtIx79i7VhZOcGVi/5l2L7zopQExOgi47Pe+x9MTXBaT0gVHecy
         eOuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eccMcArbIpfgS6v/G/1TxX6Xq8W+8T6pM2IR5NI8cGs=;
        b=BTA6G8nyjIkXK4nX89n4UvawzcsIkrb6WXhscxMuPc2lBVTtRDvsyn8+HEEsOxcVI7
         t3ARw1pd1eDIJ5LT0+zVGkFuco8rg+qHbuWR8tVV3P6ylJ698NPw+6s0v6F1XEXy69eE
         UPdeX0o0fy40ojwZ0u1Ha+KHuKP0s96avWx0o4wCJQ1zWT95hBAlhTvthNcdbK2mEvnk
         A2R/6E9/gdHfMy4oejkQNRXI2WSvmpU6iC8IhgkdnUWW82yZvAt+tOHk8i3YwLxvCQer
         gKkpTpLd8ChynGj7LZlTgqdfYxdw+lpAPf11g8frU/NZiEbFUbGAaxXZUKmLLqOjlOHM
         Frew==
X-Gm-Message-State: AGi0PuZU6KTcwQkFGS+Hb/0eaaWk1NYZB+UYOU27KW4YVhkMuh1GGoHA
	eQnmeNYMHVo1d1LgQBdVOuhc40rVvZQDCTiu+9wls+ppTcc=
X-Google-Smtp-Source: APiQypLQ1xpizCygtNKoh3wIzY2dD0732GQ3nsvVQbJgiaMZgiiqoSSDivwYl530D5H1tUqOID6g1d31VgQbJDHmv2w=
X-Received: by 2002:a67:1447:: with SMTP id 68mr20598814vsu.163.1588066116768;
 Tue, 28 Apr 2020 02:28:36 -0700 (PDT)
MIME-Version: 1.0
References: <CANKYHpeiWj7w2KEnkEfjUHWKfbhEAj7kMVE5hL5xv6O_1ZVFwg@mail.gmail.com>
 <1684592.5WYlJ4OYfx@bentobox> <CANKYHpe_cG=dKv5z4tecjb24U_P2ipWoQPownNCxKySU_FozQw@mail.gmail.com>
 <5962426.I90Fg3i1QP@bentobox> <CANKYHpcZU09emNFy3yf4K0F5s8gzT6giosqfCDNj278f6Z3_mQ@mail.gmail.com>
In-Reply-To: <CANKYHpcZU09emNFy3yf4K0F5s8gzT6giosqfCDNj278f6Z3_mQ@mail.gmail.com>
From: Oguzhan Kayhan <oguzhan@kayhan.name.tr>
Date: Tue, 28 Apr 2020 12:28:25 +0300
Message-ID: <CANKYHpcYxPD1tF4EB2hFT891X=FwqiRbo3xCTofxSgdteqES6g@mail.gmail.com>
Subject: Re: configuration issue
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588066118;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=eccMcArbIpfgS6v/G/1TxX6Xq8W+8T6pM2IR5NI8cGs=;
	b=I6SViUZWeZJzpvZcP7HZo7svz7FJzumohcAigml4xcJzaorbSwzga/Tjp6dQ9pCe/yDZDi
	1npyGGsUXquOnfNOCnxGvy3LRmsZotvpj9mzFmxDIoRDXPIeFYqfJ20YV+/ZWVnWkEya+/
	Xas82qqZ44GYpXRHXagz+9M/FoNmWDw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588066118; a=rsa-sha256;
	cv=none;
	b=SpRKOU35sYFbleUNcVtD21GvMeAwQYLhiRbvIh6vFcmWsFxaDo/ykOQSaFRq+GTNaFNeJN
	AW16qMDl64zyugQpjy2BSEc+gRS0x/+krR5z7Y9siC+XrvqjNnFhRi9IvdJl4Rfh+ZOVyK
	NIs6CIB17lQa2t3U2dr7QYnOaNBaVQs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kayhan.name.tr header.s=google header.b=eceatpZ2;
	spf=pass (diktynna.open-mesh.org: domain of oguzhan@kayhan.name.tr designates 2607:f8b0:4864:20::932 as permitted sender) smtp.mailfrom=oguzhan@kayhan.name.tr
Message-ID-Hash: NL2CKYES2XRCO2PG3LADNWJGC2NDCKSH
X-Message-ID-Hash: NL2CKYES2XRCO2PG3LADNWJGC2NDCKSH
X-MailFrom: oguzhan@kayhan.name.tr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NL2CKYES2XRCO2PG3LADNWJGC2NDCKSH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello
Yes, changing to 80211s mode seems to work.

Now my config is as follows on both wifi nodes

wireless:
config wifi-iface 'wmesh'
        option device 'radio0'
        option ifname 'mesh0'
        option mode 'mesh'
        option mesh_id 'test'
        option mesh_fwding '0'
        option mesh_ttl '1'
        option mcast_rate '18000'
        option encryption 'none'

network:

config interface 'eth1'
        option ifname 'eth1'
        option proto 'static'
        option mtu '1500'
        option ipaddr '10.1.200.7'
        option netmask '255.255.255.0'
        option gateway '10.1.200.1'

config interface 'bat0_hardif_wlan'
            option mtu '1532'
            option proto 'batadv'
            option mesh 'bat0'

config interface 'bat0_hardif_eth0'
        option mtu '1532'
        option proto 'batadv'
        option mesh 'bat0'
        option ifname 'mesh0'

config interface 'lan'
            option type 'bridge'
            option ifname 'eth2 eth0 bat0'
            option proto 'static'




Now here comes the second part..
How can I make the encryption over mesh?

with ad-hoc there were wpa-2psk encryption on luci interface..
But with 80211s, there is no encryption available on luci, and also
wireless connection can not be establisehd if i manaully write any psk
etc on wifi settings.

Is there a walkthru for this specially for openwrt?

Regards


On Mon, Apr 27, 2020 at 9:18 PM Oguzhan Kayhan <oguzhan@kayhan.name.tr> wrote:
>
> That helps a lot Sven..
> I notified gateworks about it..
> And also I will try the examples you provided.
>
> Best Regards
>
>
>
> On Mon, Apr 27, 2020 at 8:19 PM Sven Eckelmann <sven@narfation.org> wrote:
>>
>> On Monday, 27 April 2020 18:35:29 CEST Oguzhan Kayhan wrote:
>> [...]
>> > *I 'm running Gateworks Newport as controller board. And updated from their
>> > repository Thats the version they had..Actually I tried updating the feeds
>> > to the latest version but, It threw error on compiling..So , didnt waste
>> > too much time and stick on the 2017.4 version.But if needed, I will try to
>> > update versions also.*
>>
>> Please write them and ask them to adjust their repositories to actually ship
>> OpenWrt 18.06 with the up-to-date feeds. We don't support 2017.4 anymore and
>> will not provide patch backports for 2017.4-0 from openwrt-routing. But we
>> have a lot of stable backport patches in 2018.1-11. And 2018.1-11 build likes
>> a charm when the main OpenWrt repository is actually an 18.06.
>>
>> And to me, it looks like Gateworks 18.0x is not even based on OpenWrt 18.06
>> but on something which was forked 7 months (1287 commits) before the release
>> of 18.06.0 - and we are currently at OpenWrt 18.06.8 on the old stable branch
>> and 19.07.2 on the current stable branch.
>>
>> You don't even have the "newest" (up to 28 month old) security fixes in
>> gateworks 18.0x - and there are quite at some security and stability patches
>> which you should get integrated.
>>
>> > > [...]
>> > > > config wifi-iface
>> > > >         option device 'radio0'
>> > > >         option ifname 'mesh0'
>> > > >         option network 'mesh'
>> > > >         option mode 'adhoc'
>> > > >         option ssid 'mesh'
>> > > >         option bssid '02:CA:FE:CA:CA:40'
>> > > >         option mcast_rate '18000'
>> > > [...]
>> > >
>> > > Please think about switching to meshpoint without forwarding.
>> >
>> >
>> > *I'd be glad if you give more detail what you mean.*
>>
>> The example configuration was given below. What more details do you need? You
>> already noticed yourself that it doesn't support IBSS/adhoc.
>>
>> >
>> > >
>> > >     config wifi-iface 'wmesh'
>> > >         option device 'radio0'
>> > >         option ifname 'mesh0'
>> > >         option network 'bat0_hardif_mesh0'
>> > >         option mode 'mesh'
>> > >         option mesh_id 'mesh'
>> > >         option mesh_fwding '0'
>> > >         option mesh_ttl '1'
>> > >         option 'mcast_rate' '18000'
>> > >
>> > > At least in my experience, the IBSS support in the device firmware is
>> > either
>> > > not there or starting to rot.
>> > >
>> >
>> >
>> >
>> > *That might be the problem.On 802.11ac card, iw phy gives supported
>> > interface modes as;managed, AP, AP/VLAN,monitor, Meshpoint      but 802.11n
>> > gives IBSS,managed, AP, AP/VLAN,monitor, Meshpoint, p2p-client, p2p-go
>> > modes..*
>> > *So.. does it shows 802.11ac doesnt support batman?
>>
>> Hu? batman-adv is not IBSS. It can run on all kind of interface types. But it
>> makes more sense to run it on meshpoint without forwarding (mesh_fwding 0) or
>> IBSS/adhoc.
>>
>> > or is there any other
>> > ways to try besides ad-hoc mode? Both cards are DoodleLabs*
>>
>> Use a meshpoint interface without forwarding. As shown in the example
>> configuration in my first mail.
>>
>>
>> [...]
>> > > A device just cannot be in a bridge and in batadv at the same time. Just
>> > not
>> > > possible because the bridge would steal all the ethernet packets before
>> > > batman-adv would receive them. So it is not even allowed to have two
>> > masters
>> > > (batadv interface and a bridge) for a single interface (wlan0, eth0, ...).
>> > >
>> >
>> > *So, what is the correct way to do that then..*
>> > *Any examples for this scenario?*
>>
>> Don't try to add the ethernet in both bridge and batman-adv as slave. Doesn't
>> work - so I cannot give you an example.
>>
>> If you want to still transport stuff over ethernet which is also used to
>> bridge to some other interface, try macvlan or vlan's on top of the ethernet
>> interface. The macvlan will create a new ethernet interface which just uses a
>> different mac address. A vlan interface on top of the ethernet will just but a
>> vlan header between the ethernet header and the next layer. So I am guessing
>> you want to first try macvlan (requires kmod-macvlan):
>>
>>     config interface 'bat0_hardif_wlan'
>>             option mtu '1532'
>>             option proto 'batadv'
>>             option mesh 'bat0'
>>
>>     config interface 'lan'
>>             option type 'bridge'
>>             option ifname 'eth2 eth0 bat0'
>>             option proto 'static'
>>
>>     config device 'veth0'
>>             option name 'veth0'
>>             option type 'macvlan'
>>             option ifname 'eth0'
>>
>>     config interface 'bat0_hardif_eth0'
>>             option mtu '1532'
>>             option proto 'batadv'
>>             option mesh 'bat0'
>>             option ifname 'veth0'
>>
>> Or if it is no problem to use VLANs (here 123):
>>
>>     config interface 'bat0_hardif_wlan'
>>             option mtu '1532'
>>             option proto 'batadv'
>>             option mesh 'bat0'
>>
>>     config interface 'lan'
>>             option type 'bridge'
>>             option ifname 'eth2 eth0 bat0'
>>             option proto 'static'
>>
>>     config interface 'bat0_hardif_eth0'
>>             option mtu '1532'
>>             option proto 'batadv'
>>             option mesh 'bat0'
>>             option ifname 'eth0.123'
>>
>> Kind regards,
>>         Sven
