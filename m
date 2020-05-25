Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 531211E1354
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 19:22:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2E22281DBF;
	Mon, 25 May 2020 19:22:06 +0200 (CEST)
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2DBAA80145
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 19:22:03 +0200 (CEST)
Received: by mail-il1-x129.google.com with SMTP id a18so623107ilp.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 10:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=fTnDsZHN4lyUfFban9vm+Vu+8Yf/oO+HymEakGElFHo=;
        b=aHtf4xGS06qRk2ENxXLDR1EbxTR6REhXuuj8MhxGS2Tua/JoV8vsztJDVnU2o2FPUN
         iYbKsf1+qWXxPkE05qPgOt+FLevm/FgWzrljOh5jVt4SCvhn0mn8YXwSFys2pI5lIFSU
         +Z4APelp7mQ3ZiJzd8+w3gjszz598TAujdLLR6ND5qpQrXiL76QLt7XcvMFkBsJyn9Nu
         i2izl+PaMTWSlo+uFapkIu4XOepe6xUg7ArNPn0XuMRcoLeelygb3IG0B9pRj8YGYEkW
         M/RVTtjmn1S+ngWEZaM4MP6LyRPr1mmF4opuhaaE8Sktb6a7fWI5NwuzHCuQY+0+4Ff3
         td3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=fTnDsZHN4lyUfFban9vm+Vu+8Yf/oO+HymEakGElFHo=;
        b=eMoliDL3pr0CrVdWaH64h4SU5Mm+Vk6KlpmZG0iHN8CkOzPGd/kQ+ItDDRIFKfiYni
         r2aP+9Z5URsjfs2uIAmthwJ2DqGosw/9AjmREMUOtJR1lonlJ9ULR/C/4IVOucAmjN8E
         E3vKDYpnENKzzOlQtuiCK+OU9uQg5D3qMixt6WRkfHW568dmKInSVjYLSBPdjQze6KOq
         iDSVlpL3LeUYugcuabG7CbVBDvcM1OD+qM86Dyzg96K+yKOeMA+nFqc/7y2clRjGC/+M
         QK4+MF749lQEa+irpbnX+1O2S8zPfWqfq6IZ3zVei2MCc/fSahKSrLd1JupDteQ4FiuU
         xPgg==
X-Gm-Message-State: AOAM530zpm+K3Y6g9T7bJtP74ap7+4WKE5JGJnVXU+6c+ZV6kkAZSN+t
	XEderQAyttez3zv9dtmJ5nx0zDv9SOdJclRh484pzIyX500=
X-Google-Smtp-Source: ABdhPJzuYfcOepK5zY5WScTx27A9eM5Q1Er/JPVIpMgMsvkT8G70yoCfBMs2hm3DikjkQio+JQsYrWAHMWXOSU9+kIw=
X-Received: by 2002:a92:d88c:: with SMTP id e12mr26848343iln.197.1590427321484;
 Mon, 25 May 2020 10:22:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com>
 <4309595.MtDqpTPQ1e@rousseau> <CAOVt3fEbtq-9aR-p-uEhukb+sdWduay3WfZi6GpwtdVdZpe=vQ@mail.gmail.com>
 <10714145.5AxrDinkzN@rousseau>
In-Reply-To: <10714145.5AxrDinkzN@rousseau>
From: Alexey Ermakov <axel101@gmail.com>
Date: Mon, 25 May 2020 20:21:50 +0300
Message-ID: <CAOVt3fGODcxuZAigHuHSgPED5Y67kB2NV2encCyDz4qMFy7gyQ@mail.gmail.com>
Subject: Re: Batman-adv packet retranslation
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590427323;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=fTnDsZHN4lyUfFban9vm+Vu+8Yf/oO+HymEakGElFHo=;
	b=nmYYjKRkXDo+FbWl2egTLDAuNpWqfLNepxOxBdv8IYjj0KzmPIARM602k4j+p8+vYA/l3k
	VL+CobrYxqWuGl5mo/C+++iwxC0NrnBGOrdgrH3RaJtd1jBB4PScXHMxsQm69PpYL4vCLh
	iSD/dygveO3LT+YbGa42nBuqm5QO1ts=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590427323; a=rsa-sha256;
	cv=none;
	b=w9vRHuhchlr/w+55FCyw/hFTWn5pPsnRlfAqTEELPnlMa+MI3kIvv1+2e7LTVDugCYcr8E
	xQFd7OtWIIbWavZ4vQvynnlYKBsAVO/QxhRNyFNxL5p/pPp+5yXTCiqbi0eQKIPdoq8pOc
	kzfjx97otHdhafidS9SF5VSf3JQVyVI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=aHtf4xGS;
	spf=pass (diktynna.open-mesh.org: domain of axel101@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=axel101@gmail.com
Message-ID-Hash: PPIUCLOLO6JDDT4NUOFCB7M3Z7RWI5LM
X-Message-ID-Hash: PPIUCLOLO6JDDT4NUOFCB7M3Z7RWI5LM
X-MailFrom: axel101@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PPIUCLOLO6JDDT4NUOFCB7M3Z7RWI5LM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

> I am surprised you still are configuring a throughput override of 100kbit/s.
> What's the idea behind this configuration ?

I have two channels between nodes (actually more, but this doesn't matter now)
1) Radio modem, connects as follows:
   NODE1(eth0)<-->modem(radio)<-->(radio)modem<-->(eth0)NODE2
eth0 interface have 100mbit/s speed and batman detects it as 100mbit/s.
radio has 145kbit/s, and actual speed of this channel is 145kbit/s

2) eth1 Ethernet channel. Speed of this channel is 100mbit/s
   NODE1(eth1)<---->(eth1)NODE2

Now make a test:
1) Set up eth0 modem channel
2) Disconnect eth1 channel
3) Turn on nodes - batman saw eth0 channel between nodes and detected
speed 100mbit/s (because speed between node and modem is 100mbit/s, as
I understand)
4) plug eth1 cable in - At this moment I expect batman switch to eth1
channel because it has real 100mbit/s speed. But batman doesn't
switch, because it detects eth0 as 100mbit/s too.
Therefore I override throughput of eth0, actually batman detects
incorrect speed on eth0.
