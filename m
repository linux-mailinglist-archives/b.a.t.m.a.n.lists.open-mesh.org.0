Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0628F1E69F7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2020 21:03:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B211480743;
	Thu, 28 May 2020 21:03:27 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 57C7280223
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2020 21:03:24 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
	id E0D254067B; Thu, 28 May 2020 15:03:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1590692603; bh=CsxyR//FGsg8hR8ByIKDvHepbXhG5SEHKylPT5X62SI=;
	h=Reply-To:Subject:To:References:From:Cc:Date:In-Reply-To:From;
	b=ZzQqCaOa6OB06Qm87/LE4Deg9cEow/II3Ppb2nP+c3Anqr5a3ZlYyHAflRsVwZh4d
	 mn10VZ/Ua+neGqYJ0dmZ9F4OUyLlZiMdMZ1PahyAidgLpBEd0ftc479FH9hLGPXGTu
	 /sr1iIleSzPgC10ZlZG/0DXiemXBRgxKz0ALwyGXQlXz1jCzS56ACatO/r0/EfPv4H
	 xq80AK4SSTjd+q21Yotlx4udaJsM2HpycbDJYwWhyOAa5G9GC1Ujo6asrRVWbf2oiC
	 tyyLimVkwGgXjdrbLJnHB/GcioWkQ47KhCBxun+4pFaItctAsNZOltnaNEWZPX9Zb9
	 1BIfZmShvPfUA==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Received: from [192.168.2.68] (unknown [38.21.219.2])
	by ory.petesbox.net (Postfix) with ESMTPSA id 46DF34024C;
	Thu, 28 May 2020 15:03:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1590692601; bh=CsxyR//FGsg8hR8ByIKDvHepbXhG5SEHKylPT5X62SI=;
	h=Reply-To:Subject:To:References:From:Cc:Date:In-Reply-To:From;
	b=PxplU5fVNc9LTYBA5gudqj8w30ZZ7oINJuweDdV0nBVRoyl3oY9sr9s9faMC1GNG8
	 +IFsmDcqHXqCfQ8COtIPcc125pLzAxGRyKjE9PisW3T5v/3bDi5Npv5zm7HVdk1z5U
	 rHbzTOLqsgfMHdtEQsoxAclGBTE+FcXGZA5f0r/EeJdlljS7oKXxdCGfJPhdn5t02S
	 6nP1QvWHu+J+/tM12A/tve0srKQ/Zw8SyvLCU7WiNwkVdhX2kETvMUZYvJvuz3ihtF
	 vF+vdsaoMsQZZM+UvzVIQ6mGFVatROYx5TV6u7Smjs4Tzey5m69VUG5a5GjuROTQdr
	 5NrRGg/Th9p8A==
Subject: Re: Network stops passing traffic randomly
To: b.a.t.m.a.n@lists.open-mesh.org
References: <20200525083512.832.13419@diktynna.open-mesh.org>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
Date: Thu, 28 May 2020 15:03:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200525083512.832.13419@diktynna.open-mesh.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590692604;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=CsxyR//FGsg8hR8ByIKDvHepbXhG5SEHKylPT5X62SI=;
	b=de6WI+GcGgPA1vM+Xc6s7Aw3xXJeCDJeXZpsMMVeEm9FZUE8LfKGKs5lh/nNgXfIzl5n4O
	1zHNztojLF8XUcExVX7fkX991Flc3xAONDoBKPjxzen2yzd91rBNpOj6zGfUdWMCi3OLgN
	/3ZjoJdPTJH1H2A/Fcm3f1j2kLyu+5s=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590692604; a=rsa-sha256;
	cv=none;
	b=iZfjFKQyzx7HaOlzKocoYuDHzvZK1N6kCFxDm/MyyK/4f1hp0X4SDrPxP0CqFxV3CUUOt1
	X5uS0tXhISAbEuhFefN/BmLYulPQt8xHjQVruE//eZ27A/gIIfltY8fnaYQbBcCTqG+DaQ
	mJMqAfuGBHb/Kt/OwnyHIZ51gtPjJmc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=petesbox.net header.s=ory header.b=ZzQqCaOa;
	dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory header.b=PxplU5fV;
	spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: KF5PYKG2PBGXCHANZS2VDCPXT4W2EZAU
X-Message-ID-Hash: KF5PYKG2PBGXCHANZS2VDCPXT4W2EZAU
X-MailFrom: srn@coolheads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: smartwires@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: srn@coolheads.com, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KF5PYKG2PBGXCHANZS2VDCPXT4W2EZAU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I have exactly the same problem with the same symptoms.=C2=A0 I'm running=
 a=20
fresh build of OpenWRT trunk.=C2=A0 The problem is not new. On some days =
it=20
happens several times.=C2=A0 On other days it doesn't happen at all.

I'm curious to know what your hardware(s) and driver(s) are,=20
Smartwires.=C2=A0 Mine is TPLink Archer [AC]7 v[245].=C2=A0 I'm running t=
he QCA=20
988x driver on the 5GHz radio.=C2=A0 My solution is the same as yours: re=
boot=20
the gateway.=C2=A0 It's a terrible solution, having only one advantage, w=
hich=20
is that it (sort of) works.

I have seen Sven's remark about unicast packets.=C2=A0 I'm not sanguine a=
bout=20
getting Qualcomm to fix a driver for an older product. The Candela=20
Technologies driver refuses to function on the DFS channels (100, 116,=20
132), which in my large, populous US residential environment work far,=20
far better than channels 36 or 149.

All ideas welcome.

On 5/25/20 4:35 AM, smartwires@gmail.com wrote:
> I have been battling a weird problem recently, I have this problem occu=
rring on two (2) separate networks, one with 2 nodes and the other with 3=
 nodes. What happens is the network is fine and all of a sudden the clien=
ts can not reach the Internet, This what I have observed. on both Openwrt=
 19.07, 18.07. A reboot of the gateway corrects the problem.
> 1. Gateway is up and running and able the reach the internet.
> 2. batctl o show the neighbor/s
> 3. batctl ping [MAC] fails
>
> root@Main-GW:~# batctl o
> [B.A.T.M.A.N. adv openwrt-2018.1-5, MainIF/MAC: mesh0/e8:5b:b7:00:10:73=
 (bat0/22:55:4d:3e:5f:8f BATMAN_IV)]
>     Originator        last-seen (#/255) Nexthop           [outgoingIF]
>   * e8:5b:b7:00:10:6b    0.880s   (255) e8:5b:b7:00:10:6b [     mesh0]
> root@Main-GW:~# batctl ping e8:5b:b7:00:10:6b
> PING e8:5b:b7:00:10:6b (e8:5b:b7:00:10:6b) 20(48) bytes of data
> Reply from host e8:5b:b7:00:10:6b timed out
> Reply from host e8:5b:b7:00:10:6b timed out
> Reply from host e8:5b:b7:00:10:6b timed out
> Reply from host e8:5b:b7:00:10:6b timed out
