Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D97B21E1127
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 16:59:41 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A78CA81DA4;
	Mon, 25 May 2020 16:59:40 +0200 (CEST)
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 48EE1800DF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 16:59:37 +0200 (CEST)
Received: by mail-io1-xd2b.google.com with SMTP id h10so18825438iob.10
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 07:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=1WZqyhiselCt6eDzzX8IJIrx1Nzd0jc0XVuhLOEBHIc=;
        b=RFd1Qn6GHzr+oUtmxxQhs/6x3Of0v+oV+sAJSJc5r19Jk7TTurBE8JBPbduyqhGB9i
         iS4cnmOc5wVFBeT+zQG2EpTWg7KDn9DLlwq66Ro36FtuXd0aBVZT86qxaiWzMPBJvy0k
         VJ4pjexBxaFTiKdv47lcPICNZlSMxKLGdPdevb+HDn3oGiF5+MJoXJpjOdFGlIY/Skio
         YGnl8a2QFRSNXBFwY9FxfipyX9e2IakRrIt3dGef5x3O+ibMpRDmos/AbTSkPe9B7MYy
         8IAKMzEnybonLK0wTGRN5fLLcIKW/bbSM5cBjIkIxwJtnp59PI2SuSpU8QmiFhXTl4A5
         AQfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=1WZqyhiselCt6eDzzX8IJIrx1Nzd0jc0XVuhLOEBHIc=;
        b=qtz2Hhs+uMvQk7RJdpIwj9QrErNf9LhtaNuI1MIU5491asSGHTEdHxlq8Ib9YmmCyO
         YNsTzRwHnMAWcpmWnNSIpoqKwf46lDeJ8wofli3vObH8pmv4b3SWzWxBhhqwYBHd3xt4
         xuSRN9XYiuieviss5nvxuSOfdga/uCHRSP0/6855R4lmNTSfXJLoAuFeGu7KCsMoYl7J
         VLnKwJur01sOapZu8NPAUvg4G1nbRmaewe2WJsY32yzR2bgc358v/Yze0PBbd1tnhQjg
         TTsOaybmWv3d72URRSZunZKNE3qpbMvu/J+NLKPadBMvKILXcoJjRqwJcxy6dFWkGZfy
         gCEQ==
X-Gm-Message-State: AOAM532EdKNo54K6DrHMHGE8SvEhQ95CtKwz59gmqFRRwPTtOY6xGsxS
	SkD16wUDCNUAJ5ChGCWy+LRHsYdZS0d/NLjb29qQD614MwM=
X-Google-Smtp-Source: ABdhPJwrW3Uwu12IfAiMRtD5y+o0TyNRIZ+Rql2Mal9b/N6x6ul3Ec4WXxPvwLcTAPOrQlfosvvXmGmsRIBscdjTkBA=
X-Received: by 2002:a05:6638:d08:: with SMTP id q8mr19437277jaj.77.1590418775555;
 Mon, 25 May 2020 07:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com>
 <2164745.TYCVdmGlQZ@sven-edge> <CAOVt3fG9AbAEMP+uKLy8Hsnub6=hAJG2Ekg3vrC__AqVJAdZHw@mail.gmail.com>
 <4309595.MtDqpTPQ1e@rousseau>
In-Reply-To: <4309595.MtDqpTPQ1e@rousseau>
From: Alexey Ermakov <axel101@gmail.com>
Date: Mon, 25 May 2020 17:59:23 +0300
Message-ID: <CAOVt3fEbtq-9aR-p-uEhukb+sdWduay3WfZi6GpwtdVdZpe=vQ@mail.gmail.com>
Subject: Re: Batman-adv packet retranslation
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590418777;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=1WZqyhiselCt6eDzzX8IJIrx1Nzd0jc0XVuhLOEBHIc=;
	b=G9NpvEUgXlSnpzNjlkY044kfpCiUiNQIu5oBu+bqEfnnrel//fryRRejM3aOFAbgrCV6VP
	Unv4H8zi0iCKaTSQCS8nCHHsYKj5RJjwVAfpDRqHXKREwHbkF2d76+Aexi2WB9fUyc3dM+
	8mjl1fIcQR4ObGDD1t/DTDCxm2067yM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590418777; a=rsa-sha256;
	cv=none;
	b=S7AdLLGtxfwVJya7uim3PZVrP5v0+gxhP2GEXBJgXC49mqo+SLP+XRhsOtM2osh5skn1zZ
	aRLQDFtqD0Kjw3SfVH8W7wVObuAptZAWVTN8oFEY1wMb1hZKBLG6ZVTTCL3Edy193cKHuG
	YPUneS0l9fOVtqd+uS8lnr2Ly1J7h44=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=RFd1Qn6G;
	spf=pass (diktynna.open-mesh.org: domain of axel101@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=axel101@gmail.com
Message-ID-Hash: 6GFLYZBONNCS2CYK545IL7LD2UK5NWBL
X-Message-ID-Hash: 6GFLYZBONNCS2CYK545IL7LD2UK5NWBL
X-MailFrom: axel101@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6GFLYZBONNCS2CYK545IL7LD2UK5NWBL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

> To give advice on what to change, please provide the batman-adv routing t=
ables
> which allow us to understand how batman-adv sees your network. Please ref=
er to
> Sven's email with various examples.

Below I provide ethernet MAC addresses, tables with throughput overrid
to 100kbit/s and tables without output override.
Note that in case without override batman detects throughput about
100mbit/s. This is not quiet correct, because as I say before, nodes
connects to modems and throughput from node to modem is 100mbit/s, but
actual speed of modem is 145 kbit/s=D0=B1 therefore I should set throughput
override



eth0 interface MAC adresses:

Node 1:

node1# ip -o link show dev eth0
31: eth0@eth2: <BROADCAST,UP,LOWER_UP> mtu 1500 qdisc noqueue master
bat0 state UP mode DEFAULT group default qlen 1000\    link/ether
fe:00:00:c3:5b:13 brd ff:ff:ff:ff:ff:ff


Node 2:

node2# ip -o link show dev eth0
31: eth0@eth2: <BROADCAST,UP,LOWER_UP> mtu 1500 qdisc noqueue master
bat0 state UP mode DEFAULT group default qlen 1000\    link/ether
fe:00:00:3b:9b:13 brd ff:ff:ff:ff:ff:ff

---

Node 3:

node3# ip -o link show dev eth0
31: eth0@eth2: <BROADCAST,UP,LOWER_UP> mtu 1500 qdisc noqueue master
bat0 state UP mode DEFAULT group default qlen 1000\    link/ether
fe:00:00:31:ed:13 brd ff:ff:ff:ff:ff:ff

Tables with throughput overrid to 100kbit/s:

 -- Node 1 tables --

node1# batctl o
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:c3:5b:13
(bat0/fe:ee:f9:fe:00:68 BATMAN_V)]
   Originator        last-seen ( throughput)  Nexthop           [outgoingIF=
]
 * fe:00:00:3b:9b:13    0.750s (        0.1)  fe:00:00:3b:9b:13 [    eth0]
node1# batctl n
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:c3:5b:13
(bat0/fe:ee:f9:fe:00:68 BATMAN_V)]
IF             Neighbor              last-seen
fe:00:00:3b:9b:13    0.410s (        0.1) [    eth0]

 -- Node 2 tables --

node2# batctl o
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:3b:9b:13
(bat0/6a:53:d2:c1:6f:2e BATMAN_V)]
   Originator        last-seen ( throughput)  Nexthop           [outgoingIF=
]
 * fe:00:00:31:ed:13    0.190s (        0.1)  fe:00:00:31:ed:13 [    eth0]
 * fe:00:00:c3:5b:13    0.210s (        0.1)  fe:00:00:c3:5b:13 [    eth0]
node2# batctl n
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:3b:9b:13
(bat0/6a:53:d2:c1:6f:2e BATMAN_V)]
IF             Neighbor              last-seen
fe:00:00:31:ed:13    0.320s (        0.1) [    eth0]
fe:00:00:c3:5b:13    0.120s (        0.1) [    eth0]

 -- Node 3 tables --

node3# batctl o
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:31:ed:13
(bat0/fa:be:fa:e6:5b:7a BATMAN_V)]
   Originator        last-seen ( throughput)  Nexthop           [outgoingIF=
]
 * fe:00:00:3b:9b:13    0.650s (        0.1)  fe:00:00:3b:9b:13 [    eth0]
node3# batctl n
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:31:ed:13
(bat0/fa:be:fa:e6:5b:7a BATMAN_V)]
IF             Neighbor              last-seen
fe:00:00:3b:9b:13    0.500s (        0.1) [    eth0]

-----------------------------------------

Tables without throughput override:

-- Node 1 tables --

node1# batctl o
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:c3:5b:13
(bat0/26:f5:9a:68:f5:2d BATMAN_V)]
   Originator        last-seen ( throughput)  Nexthop           [outgoingIF=
]
 * fe:00:00:3b:9b:13    0.090s (      100.0)  fe:00:00:3b:9b:13 [    eth0]
 * fe:00:00:31:ed:13    0.350s (       88.2)  fe:00:00:3b:9b:13 [    eth0]
 * fe:00:00:c3:5b:13    1.330s (       88.2)  fe:00:00:3b:9b:13 [    eth0]
node1# batctl n
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:c3:5b:13
(bat0/26:f5:9a:68:f5:2d BATMAN_V)]
IF             Neighbor              last-seen
fe:00:00:3b:9b:13    0.010s (      100.0) [    eth0]

-- Node 2 tables --

node2# batctl o
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:3b:9b:13
(bat0/6a:5d:4e:09:dc:f4 BATMAN_V)]
   Originator        last-seen ( throughput)  Nexthop           [outgoingIF=
]
 * fe:00:00:31:ed:13    0.150s (      100.0)  fe:00:00:31:ed:13 [    eth0]
 * fe:00:00:c3:5b:13    0.080s (      100.0)  fe:00:00:c3:5b:13 [    eth0]
node2# batctl n
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:3b:9b:13
(bat0/6a:5d:4e:09:dc:f4 BATMAN_V)]
IF             Neighbor              last-seen
fe:00:00:31:ed:13    0.440s (      100.0) [    eth0]
fe:00:00:c3:5b:13    0.060s (      100.0) [    eth0]

-- Node 3 tables --

node3# batctl o
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:31:ed:13
(bat0/12:a7:e0:9e:f3:b6 BATMAN_V)]
   Originator        last-seen ( throughput)  Nexthop           [outgoingIF=
]
 * fe:00:00:3b:9b:13    0.100s (      100.0)  fe:00:00:3b:9b:13 [    eth0]
 * fe:00:00:c3:5b:13    0.200s (       88.2)  fe:00:00:3b:9b:13 [    eth0]
node3# batctl n
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/fe:00:00:31:ed:13
(bat0/12:a7:e0:9e:f3:b6 BATMAN_V)]
IF             Neighbor              last-seen
fe:00:00:3b:9b:13    0.300s (      100.0) [    eth0]
