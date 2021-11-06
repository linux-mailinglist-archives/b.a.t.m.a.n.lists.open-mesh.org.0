Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 152154471FB
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  7 Nov 2021 08:13:05 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CC7BF8257F;
	Sun,  7 Nov 2021 08:13:03 +0100 (CET)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B50FA80698
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  7 Nov 2021 00:59:46 +0100 (CET)
Received: by mail-ed1-x532.google.com with SMTP id b15so27506321edd.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 06 Nov 2021 16:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=1Chng5cwwV897uIyvfFPk+L1KD46JY5rBLSVsegV7ac=;
        b=TWwc6+Z6NOnjF/ki3qmZAAUaL08sSMly41Sks38R5mTyEC2W5qdkFLyTymj8uZu53B
         G+rWd/OokdnHa9prckOAPu/aBcZLmalf1lJM31Elgk9m9neqS21xyNxkIGBISryNfWUr
         fEPu+crAy/voDDHepk9r/diyXN/TayJHSLl/mkexDqdy1LOCZ6LkZ3jJM0I9Y6AbohLd
         Yil5yJLJJHkWFYksIGEF4on+bO1/95heILcWgUjWnwkymqJw28SPXhYZ1EO/Crxfxwhd
         w2LnvvQjDme8lLh5aF20v+1gBPR/Ga48gexrsiP1lH3XXepX+UfAJY2lNo+tNVmR2/ZD
         6XuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=1Chng5cwwV897uIyvfFPk+L1KD46JY5rBLSVsegV7ac=;
        b=RBv82ChIRwELXjAoHgWYgi+7xlgJiIGYRtuOK5SCjYdMDxetao4Cet45lAO+WkBT4+
         B2wDRGhqfa+L1Z5voYwHhDa5cvpkYbBb4lTRnPmQz9MTnqiubNds/MaqZK3UR2+m0/cc
         srvCPaXs83wi1PXRRPq0A+CsPdBsV/KxmvQ5ej40I1ydPbI7+YO/TdTjcbVvjm6zfbMQ
         j6HRA0XM0vKh1h3H13QAATZV1lUGXGiSTAR73D2Rx7r7imUoB/LlhGypyfSHIpJ0y72C
         TKkG32AgrbnaJpwDORrrNnhrsh3PwlUk3TyJ9p9VbfLsPak3ysGRPEXNKjqJEu2IVRuO
         S1Rw==
X-Gm-Message-State: AOAM531vOvOJZW5oBPYm/wOA6GYsBCQO0k5/J9rnsBWviYNYDNnpNFJE
	z+3+4fSl/mSFyCfPDEsBpJCDUr1bqjlFRFm6eRLzD7cQmys=
X-Google-Smtp-Source: ABdhPJyI7r7IaB6Qf2FpDmnZE4W47Kyz8SRVnNz1Gb+aDxRDbXNMxgsmqFVxLBCITibcJn6zJzPTTWeizrhtQp8QtEs=
X-Received: by 2002:a50:e606:: with SMTP id y6mr64324426edm.270.1636243186196;
 Sat, 06 Nov 2021 16:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <CA+HNRgC0FKMtSiDOZR3E_T_77C0QXv+r9kqncKNO5-ARwj4ZYA@mail.gmail.com>
 <YYbu4iyiAp5HlUXZ@sellars>
In-Reply-To: <YYbu4iyiAp5HlUXZ@sellars>
From: Dweb Fan <dwebfan@gmail.com>
Date: Sat, 6 Nov 2021 16:59:34 -0700
Message-ID: <CA+HNRgD=ugdumi73q-rq43796B4_rgDReDX41Ng8ec-3Ux=d6A@mail.gmail.com>
Subject: Re: Unable to get DHCP after join wlan0 WIFI mesh network
To: =?UTF-8?Q?Linus_L=C3=BCssing?= <linus.luessing@c0d3.blue>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=TWwc6+Z6;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of dwebfan@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=dwebfan@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1636243186; a=rsa-sha256;
	cv=none;
	b=FfB78JFZXNdQn1fK6NE7na3dF5sEDDtvEuHuBVN7h1MMC1TewlVxdQ94AXEdNvI0Phod4J
	BC4Z6sTTn41vLEkVak/kDnAOGdW8kDkWcmKLYGvNJR+zMahP+GJQDMHorF7+4lBuz+Ko/S
	O7cjsMIOwmoygD8Zh3MKwNV1jEpJRK4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1636243186;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=1Chng5cwwV897uIyvfFPk+L1KD46JY5rBLSVsegV7ac=;
	b=eEIlxK+33JzP75BKl39snUX3xfSyb9W4d5x+E1SoWxsWGtl0RILBFVB5XiOP0XuaLb18wy
	vVp3l6qmzHzUsBZ8BjAA/x/lW9x6Ww1isLEC5JxrVMSHXj55PEgnjw0rbeyGZP1bRPooyY
	ufS/VjFPL1gqt/9cnuUJNXc2/w8sTAs=
X-MailFrom: dwebfan@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: OH4C2JH55OYUUBRRQECHE3JNPU6ESMEG
X-Message-ID-Hash: OH4C2JH55OYUUBRRQECHE3JNPU6ESMEG
X-Mailman-Approved-At: Sun, 07 Nov 2021 07:13:02 +0100
CC: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OH4C2JH55OYUUBRRQECHE3JNPU6ESMEG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Linus,

Thanks for the detailed explanation. This really answers my question,
although one small confusion is why these 2 directories:
/sys/kernel/debug/batman_adv/ and /sys/class/net/wlan0/batman_adv, are
not present. I even upgraded to the latest 5.14 kernel on Raspberry
Pi, unable to find.

Seems like 3 options can help eliminate wlan1 and use wlan0 for both
protocol communication and real data communication:
1. Develop a client agent at wifi client side to encapsulate regular
IP packets into batman protocol packets, but the agent need be ported
into different OS, MAC, Windows, even IOS, Android.
2. Develop a server agent to intercept batman packets, and convert to
regular ip packets.
3. Enhance batman kernel module to detect packet type, and support the
use case natively. :-)

I'd like to do more research on it, and like to hear your suggestions
on which option is better.

Best Regards
Dwebf

On Sat, Nov 6, 2021 at 2:08 PM Linus L=C3=BCssing <linus.luessing@c0d3.blue=
> wrote:
>
> Hi,
>
> Glad to see that more and more people are experimenting with WiFi
> mesh networks.
>
> On Fri, Nov 05, 2021 at 04:22:11PM -0700, Dweb Fan wrote:
> > Dear all,
> >
> > Thanks for making such a great project!
> >
> > I'm following the guide from
> > https://github.com/binnes/WiFiMeshRaspberryPi, and setting up wifi
> > mesh network on top of raspberry pi 3B+. Below steps are good now:
> >  - batctl ping works (peer can ping each other through both IP and MAC =
address)
> >  - mac os wifi client can discover the ad-host network, and join the ne=
twork
>
> This guide seems to set up two WiFi interfaces. wlan0 in ad-hoc
> mode and wlan1 in AP mode. wlan0 is a secondary interface of bat0
> and wlan1+bat0 are bridged:
>
>     ---br0---
>    /         \
>  bat0      wlan1(ap)
>   |
> wlan0(adhoc)
>
> On wlan0 is supposed to be only used to interconnect batman-adv
> nodes. The batman-adv protocol is primarily spoken there.
>
> Client traffic from your mac os wifi client is probably not able
> to speak the batman-adv protocol and is therefore supposed to go
> "over" bat0 instead of "under" bat0. So your mac os client should
> connect to the wlan1 AP interface.
>
> The traffic is then bridged from wlan1 to bat0 and batman-adv will
> then encapsulate the client traffic. And then forward the
> *encapsulated* traffic on wlan0 automatically to the correct
> neighbor node.
>
> Hope this helps.
>
> Regards, Linus
