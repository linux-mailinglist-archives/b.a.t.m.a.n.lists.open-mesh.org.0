Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AB735393F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Apr 2021 19:53:15 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4CEA88161E;
	Sun,  4 Apr 2021 19:53:14 +0200 (CEST)
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 311F0801CB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Apr 2021 19:53:12 +0200 (CEST)
Received: by mail-yb1-xb36.google.com with SMTP id i144so10378164ybg.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 04 Apr 2021 10:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Edv2NIqs6TgQAVFR5nfqfnJYDzWxIiK5iWFCeIIDS90=;
        b=NL2Ej4xOUAV/1MXXCauJY26lyDCKcAvfM7c3K3zsGAdYAHG6SvE0h4ijGTxpWMjv2S
         Bww6YFTLDvpYXjX+kqV/g+lpGXD+Mwjc0M+UfdtiIg2x23T1JQF2zYw4wkJQDpblNVVE
         letOgjo+9uNO0rtf9U6XjypMTTS8gC1EJdW7yn5IGJgogkfO3MFox83HX51JOj5JtDc/
         hWLESTNuHNV5WKt/CdoVQFX+NlSEzQyc1G0kqp5bMtCo+1gyNxaQK4CvyRYlW1JW5NF8
         +efBvZ8+aCEGH+H1Ym40RVhCcfsVa05IG3OSBBYLDuu3UegDOInCJHjDV1PTH0vxvbdh
         jE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Edv2NIqs6TgQAVFR5nfqfnJYDzWxIiK5iWFCeIIDS90=;
        b=HpXT5vWDZlcbCrgKf48mlYZZn+X0FHuvd9Hw+VSmS8tPZw8uXSk0bsuZ3ntLA7nAwN
         6bsKV5+e37bsc5CDRgcmBQweE+10XvfVAz9ruMZ48X22+wjn5AKl3j8lkqn/+PhlacyL
         pHzRMT7PsUoFakhrN0qPlE+pFHrNQXjDl7xrD4doozqXB2r5rcBWisbsvD/CTUdA8FPr
         HqDazSF4BWv3O+XiTOIWfcZKNPxtmoJGInqd1oosCvOLXeukF93C9A+aryziHBi9sys/
         CqOK63xsD0C13v8BRkx795RCGgqu1p0IyzsBG+/swYgSPX+lOwslvdtitKXTonSjvYcB
         arhw==
X-Gm-Message-State: AOAM532Zrqi4ia+68OTlRO1zf0e03tzersZZc3wnofoTtV932gxhMt3j
	D6+Vw2N+s5ybZywDcUNwfk/8bCVaAhIujeldAgs02QNThGU=
X-Google-Smtp-Source: ABdhPJyX/SPzWsC1eRKZb659Jj50b0vMoiIgepPv5dg8UJ1ePPTizLpXxDz0sn86yqq8OfF+pxPz2Kni70HDJnxFQys=
X-Received: by 2002:a25:cf81:: with SMTP id f123mr30760600ybg.379.1617558790711;
 Sun, 04 Apr 2021 10:53:10 -0700 (PDT)
MIME-Version: 1.0
From: Andi Depressivum <andidepressivum@gmail.com>
Date: Sun, 4 Apr 2021 19:52:35 +0200
Message-ID: <CAEX-Y1Z8vHvj_TD-EL-Y9AiSeKV9WHb=BxJMwJx0h5z0xfk5OA@mail.gmail.com>
Subject: How to mesh over ethernet VLAN?
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=NL2Ej4xO;
	spf=pass (diktynna.open-mesh.org: domain of andidepressivum@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andidepressivum@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617558792; a=rsa-sha256;
	cv=none;
	b=mpkRiYccRU1ft3csa4jNQb+6p65XLOXU8+qeypxuNGAdWh8Ychcyi9QlPxwFaEjDgtNkMv
	hE3ueS/67uFDOdULvgVndIiAcoIEw9oJpQSpaiTuOIDPP4TI/QrtJ572Tsm6eB3l06rqeR
	Ta6F9ivl9reqrydtC0loq3b/u/mliaU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617558792;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=Edv2NIqs6TgQAVFR5nfqfnJYDzWxIiK5iWFCeIIDS90=;
	b=CIorEFxCgP9rKZCsJeHEJElscm+E1f4xafOwdB6j1+IVsZGeA785Hw4s4ebKKzu74w1xdC
	bV3mwngKp5mavVEOYEAK/AOBSKur63j0/X/ODLfWzvohx0r/A16a45LOfJT6lq4WEcfyE5
	6Zbc98PAOQfezFq6ZERaxSm9kGqT6UA=
Message-ID-Hash: SIERPT5MTXYBMRBDUP2LGJ3VOJC3OF2X
X-Message-ID-Hash: SIERPT5MTXYBMRBDUP2LGJ3VOJC3OF2X
X-MailFrom: andidepressivum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SIERPT5MTXYBMRBDUP2LGJ3VOJC3OF2X/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello everybody,

What's the correct setup to mesh also over an existing ethernet VLAN link?

My core network with all routers & servers is running on VLAN 3
(eth0.3 in the routers). How do I have to setup batman-adv to a) mesh
also over this existing link and b) propagate this VLAN also over
wireless links. Bridging eth0.3 with bat0.3 and adding eth0.3 also as
a hardif doesn't work, as it will remove eth0.3 from the bridge.

If I add eth0 instead as hardif the routers are only seeing each other
over wireless link. Or do I have to use a separate VLAN for ethernet
meshing which isn't bridged to a bat0.X interface?

Thanks a lot!
