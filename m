Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBFC21B294
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2020 11:47:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5D0E780638;
	Fri, 10 Jul 2020 11:47:02 +0200 (CEST)
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C2FA6801FB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Jul 2020 11:29:20 +0200 (CEST)
Received: by mail-io1-xd2b.google.com with SMTP id a12so5305974ion.13
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Jul 2020 02:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qh+ZP2zscLOQAmRrtrXb4rG4QVqeDjvhgeGXL8vvy88=;
        b=eVNbmWPkCwf6NXiJXOXYR9QadE9i9Y/fMeIwTk2Qt7ySzb2NIfN2QwH2998R64k+MV
         syBYqzJu4nX4zX/zDP665IC4PUnP7IIBDRXaoJtm16cRNI/dYRTgN6oQxqGopKSZ35Lv
         nuKDPbmUusqp2ydqetfovnVQ6M0Gr3Kdbvnwdh0qX8vAOIBo4qsiLugbdgw7Qm1zY0sG
         ggW84XFoP+stApIpftU4S97Gtm+326dTtGbQnYYKfdOB11FtmwcFz7f3uRiKkFDwjVu7
         dadLvDAOCT+TBhP/BS3ncorinII9kWebfaMbitQaz0gvbAPvKusVPzQmgI6wqU+xJ26T
         VupQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qh+ZP2zscLOQAmRrtrXb4rG4QVqeDjvhgeGXL8vvy88=;
        b=tB2cwrx7oMwig21t+XytkpLqCFdWLoFw4fgfYRKcBCIdiTn2GAFo8Wz5iUHtWA7Ppd
         uy5kzCct2XHoRhY4qRLLlLCPXlwSq520hkgxjiGxySIejtAMZuG/N7NVOBXrrPWwmXG0
         kzMFKwbgoogAyrmNYK1347ivX4wDwPV3IT+waj7tdPNkHmkB15GhMPEMXnOuwuX/0Or+
         2Chpt8fcl9OQmHXfw9WDEW41xMyLr87nuopiJYHFPn5RM0bZB5fG3CshuySCDO+XqsLF
         IsC0yBw1nXVP11EVWsLoKhxmFNH72qvA7pIriHAUNg5eNt6QU1mi0632MX9+i0QFvOX3
         OTPA==
X-Gm-Message-State: AOAM532RqncaaMdt6h8BEmde3XgIa0/UqC0ps3fB3lusDwL+HdwygPPG
	E/+dgdAMYZuNxnJkzDgqhX4ja5MFw0cmW94ofu7v2RRa
X-Google-Smtp-Source: ABdhPJylaw2HXGD1a3dvSybSoli7y99zmDeFX7gP8zX+o8vZDIceeQP/GEg/8t1U3BMX72e0QyvX+/EQhX0lsgf3G+8=
X-Received: by 2002:a6b:acc7:: with SMTP id v190mr47101154ioe.53.1594373359312;
 Fri, 10 Jul 2020 02:29:19 -0700 (PDT)
MIME-Version: 1.0
From: Maksim Iushchenko <maxim.yuschenko1@gmail.com>
Date: Fri, 10 Jul 2020 11:29:08 +0200
Message-ID: <CADSehqO4YiKBKQJs0KWBdefWo3D1rNgMz2buGN2aQAXyZpZzNg@mail.gmail.com>
Subject: Batman-adv TTL value
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1594373360;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=qh+ZP2zscLOQAmRrtrXb4rG4QVqeDjvhgeGXL8vvy88=;
	b=CTN6RRWAT0KmEUdiBzlAAa9tXWZHpELf0tQzZWcWGDWWCnUWQK0oy21UF3g/8202s91MOj
	vUk7oP2+cS6gRKSmGCXKE0CGSmTSmM9Gwm87bOetHr5o+IgfAP5bwiK0dS0JwKsDLFFHVG
	6PMVe0r8Brg7b4oz1rtMc+Kg6nqU25o=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1594373360; a=rsa-sha256;
	cv=none;
	b=VAGUvRLuZn37QyDZbujxaxKnUgIZOmTz8I/Twl9ewHAyq7e/KvOE+2K2Q1TiyCTjIrOmdQ
	vchvlFTKgRqoQ6iRBMIEyM76HXmI0qUy9+ue5msvhQQfdHaPdwMB0fHY8/noEtRsWd9rMm
	g8k2Wy5oDlUSHqIViQrQ6jGVivemQp8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=eVNbmWPk;
	spf=pass (diktynna.open-mesh.org: domain of maximyuschenko1@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=maximyuschenko1@gmail.com
X-MailFrom: maxim.yuschenko1@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: AW7N7WPPFXRGXV4EQE4XHS4Q46XZQ4VL
X-Message-ID-Hash: AW7N7WPPFXRGXV4EQE4XHS4Q46XZQ4VL
X-Mailman-Approved-At: Fri, 10 Jul 2020 09:47:00 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AW7N7WPPFXRGXV4EQE4XHS4Q46XZQ4VL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,
batman-adv messages contain TTL value in batman header. So,
1. What is default TTL batman-adv uses?
2. Is it possible to set my own TTL value for each batman-adv packet?
