Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D902F1BBB53
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 28 Apr 2020 12:37:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 95E6980170;
	Tue, 28 Apr 2020 12:37:09 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588070228;
 b=ZpGzhxR6b4sB8A0CWeQYMT5j2JJZNwQ8pxWeqFMLWW5lMDnryt/RdlznWlC7tXhx+z2hg
 E/3hW6lUcfGku8Atn06f3Hpt534fdAv3tN23vZQTSOjRKYwwizxXAD1m8r0wpSH157BhEYV
 zP/dJcxW79oYcKdAFm0SZrIXioLzquE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588070228; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=eBBvD51YWiXjCehydDFgfZbp1oWdVhcRxJpLzUOq3ZA=;
 b=bUlgX+XAkk23ZIlEWHF96zF2qIM6ahMNAJTR3NUau8TkiWaK4l4T60XYDWwqSAhu8S0se
 izsYbHCA9x3I5MWGjMFr2vez7OEBr83YhI4/kez73jjbh34SN4wGpHLcnx9rclghzZZvtoS
 LM/PaUBFwTtikA6MkDpZItjymvtwUK0=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kayhan.name.tr;
  arc=pass;
  dmarc=fail header.from=kayhan.name
Authentication-Results: open-mesh.org; dkim=pass header.d=kayhan.name.tr; arc=pass; dmarc=fail header.from=kayhan.name
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com [IPv6:2607:f8b0:4864:20::943])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7A13A80126
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Apr 2020 12:37:06 +0200 (CEST)
Received: by mail-ua1-x943.google.com with SMTP id a10so20803360uad.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Apr 2020 03:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kayhan.name.tr; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eBBvD51YWiXjCehydDFgfZbp1oWdVhcRxJpLzUOq3ZA=;
        b=L1ImLSOukeDzwj2X/ypkLmm/Ro/Ed0etaFiHcaA98Cxj8ydn2vOs5OBblPLMGwN/oW
         lJbneE361pEcLdcIwO1ikNLbTmCu+xLT8O0On4xeaTQS5bItpW85CvvmzzQkjleQp6Rj
         nmRAsIZiDewjyrnV3LVpLf+H+O5JvrvwKrr58/ehTKR0AqdAnDWFikr6sdvUw94bWTkE
         20Tpvj/ZB5EewmAV6KmDChZNSjCY9vMaSFr8HhQo+YnzM0KovUXi0GSc02sb8qIpF+C1
         gZKCX8awK5JzvY3q8e/Il4bHsHh9XdzYebyn8aA+vvEdl7w1MU1SPGd6h67sz7pZz6Y8
         2kyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eBBvD51YWiXjCehydDFgfZbp1oWdVhcRxJpLzUOq3ZA=;
        b=bt06O1nKviEi2zzoZkKJIVjIm1JHVD5wjqm19snwIjVIw7Y40xvEDpE6rAs+ig/c/w
         H4PAOMh1dKGblF243F0+s66uPUsSeyVGlP3IOP9hNZk1a8pdXqVyXMpKE+8MT5hmr49Y
         U5wW163ajgmO4otBw2MkfK0PTKkni2v7I8IGm9zNDznVQ0Z3zkkUjpDRT+r3xZv26UnO
         ATYeepnWmejqWcvuzaJHeHrFEYcUxp4bLAhDrXhI3C8t2HUwBSIZ6QeEoDPhatF+u6ST
         8k8yji+p6yGQEN9mgYRJcxTeuh7Gr3FOiIKkOVyNHqaSGU0GYaVMGn6YxuQoafyTLyhB
         suJw==
X-Gm-Message-State: AGi0PuY/Hz76PsXiCeR68E4zMNlHsJuAiLGi2Kzz33Ursre28p83IN9l
	JE4NdWqYb0cBPPpSE+abmYXF62roJb/66nJBhw7c1C9zYJI=
X-Google-Smtp-Source: APiQypJFC3gJEXd4UDTJNnB1V3uuU1uw5Bx252lBh8dYXyz15Tp4+To6mZqoijOX3xF40QR11z8teNZs5Heue6JdDIE=
X-Received: by 2002:a67:2904:: with SMTP id p4mr21451282vsp.101.1588070225057;
 Tue, 28 Apr 2020 03:37:05 -0700 (PDT)
MIME-Version: 1.0
References: <CANKYHpeiWj7w2KEnkEfjUHWKfbhEAj7kMVE5hL5xv6O_1ZVFwg@mail.gmail.com>
 <CANKYHpcZU09emNFy3yf4K0F5s8gzT6giosqfCDNj278f6Z3_mQ@mail.gmail.com>
 <CANKYHpcYxPD1tF4EB2hFT891X=FwqiRbo3xCTofxSgdteqES6g@mail.gmail.com> <9817716.HyuBmzvnZK@bentobox>
In-Reply-To: <9817716.HyuBmzvnZK@bentobox>
From: Oguzhan Kayhan <oguzhan@kayhan.name.tr>
Date: Tue, 28 Apr 2020 13:36:53 +0300
Message-ID: <CANKYHpf+GVA8zWuc-eZXh_6aW5FkpM3Oj3QbTKiTkfDZvUgGHA@mail.gmail.com>
Subject: Re: configuration issue
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588070226;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=eBBvD51YWiXjCehydDFgfZbp1oWdVhcRxJpLzUOq3ZA=;
	b=N6zB2QO7SF425BDghILq46Qr7FVD+wCJQQ1suNyShMB6TokR7X8PkvT0a1ltWvwCSu4osU
	HtbiXhKGUlYO0HcFsT3KlOAhBnAZMjFzlqYy0S+IuNhZBLYp0opHJu1SbDibiEF0d1RGiC
	q5xAOvB987Fy2wGebBpTgb+vDEtqiFM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588070226; a=rsa-sha256;
	cv=none;
	b=Z9L6X1UtyHKnT/gerQdniJZdO6yRnW4r6Oqo3AUlBUsFiuSLSf14KjVburSXl2xtjEy0n7
	q+5U+IKT73y8y0jKT6snm+Y/S8IZn/It7Cg0v6ULLadfb6Ep0u1qKWXVI810W+P+RZYZ5r
	hyGeplSPl6cOTF7l/99BVi2ltEoKI8M=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kayhan.name.tr header.s=google header.b=L1ImLSOu;
	spf=pass (diktynna.open-mesh.org: domain of oguzhan@kayhan.name.tr designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=oguzhan@kayhan.name.tr
Message-ID-Hash: 7M7CQWRIINV63WXVQSRA4RN44ZTCZNGB
X-Message-ID-Hash: 7M7CQWRIINV63WXVQSRA4RN44ZTCZNGB
X-MailFrom: oguzhan@kayhan.name.tr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7M7CQWRIINV63WXVQSRA4RN44ZTCZNGB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello Sven ,
I really appreciate your kind help.
Yes I am sadly aware of the version problem of Gateworks and I already
notified them about an update on repo

It failed when I add
 option encryption 'psk2'
 option key 'thisisaverysecretkey'

but it was working with adhoc.. I will seach for if any needed package
is missing or not.

Regards


On Tue, Apr 28, 2020 at 12:51 PM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Tuesday, 28 April 2020 11:28:25 CEST Oguzhan Kayhan wrote:
> [...]
> > Now my config is as follows on both wifi nodes
> >
> > wireless:
> > config wifi-iface 'wmesh'
> >         option device 'radio0'
> >         option ifname 'mesh0'
> >         option mode 'mesh'
> >         option mesh_id 'test'
> >         option mesh_fwding '0'
> >         option mesh_ttl '1'
> >         option mcast_rate '18000'
> >         option encryption 'none'
> [...]
> > Now here comes the second part..
> > How can I make the encryption over mesh?
>
> This is not an Gateworks OpenWrt 18.x support mailing list btw.
> And the OpenWrt documentation [1,2] explains how to do this.
>
> Anyway, you can enable it on OpenWrt by selecting wpad-mesh-openssl (or
> wpad-mesh on older OpenWrt versions). and then using something like:
>
>     config wifi-iface 'wmesh'
>          option device 'radio0'
>          option ifname 'mesh0'
>          option mode 'mesh'
>          option mesh_id 'test'
>          option mesh_fwding '0'
>          option mesh_ttl '1'
>          option mcast_rate '18000'
>          option encryption 'psk2+ccmp'
>          option key 'thisisaverysecretkey'
>
> But as said earlier, the gateworks OpenWrt 18.x is in rather bad shape. So
> expect that there are a lot of important fixes [3,4,5,6,7,8,9,10,11,12,13,..]
> missing.
>
> Kind regards,
>         Sven
>
>
> [1] https://openwrt.org/docs/guide-user/network/wifi/mesh/batman
> [2] https://openwrt.org/docs/guide-user/network/wifi/mesh/80211s
> [3] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=166741240afd396c41b284edaa5180b162232741
> [4] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=8f24653184536e1f8259bb43cffdae5673fb593a
> [5] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=eba3b028e46dbfe54f1208e9edf47bb0c6f73ac8
> [6] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=ff8df2b3f9c161edc3ab543bdbeb04a9fb45c959
> [7] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=a4322eba2b129adde45e3f7ac6c3805889623dd5
> [8] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=3a456683e5da7ed3a26ffb71e1dbbf1d1db0d036
> [9] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=6e0fa4a76db667d7f0c1d84a3af5017df26d3fad
> [10] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=574e4377fad5137595dea8a281061a3c945187c2
> [11] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=547042398afac3ce702adab28c753e7c9ebed452
> [12] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=ba5ec6b77c94a21bbd78b66c63317a4ff9b62962
> [13] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=96f4792fdb036ecf5c8417fce6503412b0b27e5f
