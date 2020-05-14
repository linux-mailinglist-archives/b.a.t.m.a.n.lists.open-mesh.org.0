Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6D01D2B68
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2020 11:27:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D291A8084E;
	Thu, 14 May 2020 11:27:57 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589448477;
 b=dxXyU782EdOrrKczERAEdrWzU2H9PiGU+foHGhxDRla4lb4dPLLq1TxHBoJCgVC+C2qzi
 eGe9r9tbtO8gDRNJ6KHWotDdjeXqct2BLfaohWG6CGRH1C/6MJSlXN3vKR6PcCbqGviwxhd
 cIgVKa7LWzgzrzt/rKe//h4UY9y1x7Q=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589448477; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=yVzPcaUWq0P74XxL1uFZLHj/fd3+Z5p5lRrMmz2X5FY=;
 b=Enq1DiHI5Vtx96cxFP3WXCH0HH5TUpANBsySvZwfiipYLbX+3s2pD4f6fiItjKu/u4bTx
 nh2YVxl8k4lGFaegEgOQ/WVZI+ulH1hBXlvi+w3JqqxtrUHCfonhe5WUp7bL5RkNeE4cjrJ
 HDcjl/jaP4YMk8iq+AEY8pBr8r8SV5s=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=gmail.com;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=gmail.com policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=gmail.com; arc=pass; dmarc=pass (Used From Domain Record) header.from=gmail.com policy.dmarc=none
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EF49B80054
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 10:17:19 +0200 (CEST)
Received: by mail-io1-xd33.google.com with SMTP id f3so2078667ioj.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 01:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=yVzPcaUWq0P74XxL1uFZLHj/fd3+Z5p5lRrMmz2X5FY=;
        b=CMkxnPzojUjT6bHcjPxrrZZPjcBWN+ATFVBLO2dbyXMJkFcoGr5M4MVO+ipikCFYVV
         VmiSHDLuAsmYdlnZbdlg96Zea/gEXZdi6vI58ppQI4Rm5qKMah+sZa8jpYt4v5mzJTBt
         qtT6o4TRNfQIZriH1QbziNKw3VUKCe62O4gyqMVWEx5kVhFHMiVpq24cxLZGV2AI/IHR
         fDRiFHoutRuZVlKypBkuOrgeaM8g8T13CREsfLXwbtvbqMi55jL/0akeIMk3nc4eo2iy
         APclB0uTKsupfEMYiIYxzVYy4ujidSUzlr5tG9QaZQb9juGnjvlZVXb5TGSt1s+/aY2+
         xdrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yVzPcaUWq0P74XxL1uFZLHj/fd3+Z5p5lRrMmz2X5FY=;
        b=r81mnY94hE6tN5yFkM4IFyWWxLCWrUNc4cWcuu34FUOkv5XoVXrSHaRtVCWla0s8b9
         JdL74jQFaoMS+PWp77Ea/8fYcjVz2UmySX/MEqFn8WmgLFIocLguaF5u41+kO1jiYeMh
         DochEaB/MvxrrSZ5iZ41ri/z7EcJkyam/swtO41FoJpDQK9WSvTfB95tbCvf4mYKpowP
         ikd9Kn8nASHkyaXlKkYJIxuazhWw+yZe4juuBatfcHNA9TW7VF/fYKiDBqw+27L8bIRV
         tUHFFc+IsyFXXlvU5qpazR2CEHdinR35wsuEtsHAa4GXfxXZ5Lm7HE4Xf4cVdrGKyjJ7
         frdg==
X-Gm-Message-State: AOAM530vFSm5U0ZH6G86YQlNnWuZkGR2NVG5gdzdYpzCVGI/ZBTW6RXc
	8F/rf//qIGRiPWvDOKDT0OVFtx6wpXQuFmlZrq+M1yC4
X-Google-Smtp-Source: ABdhPJwFowYyJHEAvX46PTjatoHeCQs4JlvMzyNhk30rUQdnXcJ0FNyS+Goky1kIc9umCLxLfBFsmkXVd4VNOoU3XHU=
X-Received: by 2002:a6b:7701:: with SMTP id n1mr3052713iom.68.1589444238524;
 Thu, 14 May 2020 01:17:18 -0700 (PDT)
MIME-Version: 1.0
From: Maksim Iushchenko <maxim.yuschenko1@gmail.com>
Date: Thu, 14 May 2020 10:17:07 +0200
Message-ID: <CADSehqPoEQGqdURG0g8OO85Dvb5dL0eExwG+-9uum8=wz9VXsg@mail.gmail.com>
Subject: 
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589444240;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=yVzPcaUWq0P74XxL1uFZLHj/fd3+Z5p5lRrMmz2X5FY=;
	b=GRYbJKp3cS1hZskSSwqiEuYY6Hlg6Wgm/ZHfTdmFRhyFOjnxBFISwtdWr/Jsgt7XzybRXa
	96khaql4N9jtE8snutc+Z5M3Q7poWi1ujIWfMNcsf/eAWtoxu0C71DLJSZne0d5CIDTudu
	6lXgPUTkxRDHjjDHvQP5PcoTzfgaiTI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589444240; a=rsa-sha256;
	cv=none;
	b=TOCRc6jqcrmbjkNVGnuu8qofHdUAbkdBQ+XfwVNSMnz6Vc43dbc8Du9qCtEl8zi6F/5nK8
	+BPtUTZIgq+eKeSFFt0ww+2dp+YgRlijQVGmm7sYc+S9YiOAsfFdpVwaz6ujnBzoAWKESZ
	vJPijdr57T0cQ+k5qw7I4nWThiSB4RE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=CMkxnPzo;
	spf=pass (diktynna.open-mesh.org: domain of maximyuschenko1@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=maximyuschenko1@gmail.com
X-MailFrom: maxim.yuschenko1@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: TT7EIIQE4ZKFQ6ZT72HNCCMGWGYRVVVY
X-Message-ID-Hash: TT7EIIQE4ZKFQ6ZT72HNCCMGWGYRVVVY
X-Mailman-Approved-At: Thu, 14 May 2020 09:27:56 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TT7EIIQE4ZKFQ6ZT72HNCCMGWGYRVVVY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,
I am creating a Wi-Fi ad-hoc network based on batman-adv. I read that
batman-adv is able to work with any types of interfaces, but I still
have a question related to ad-hoc networking. Will Wi-Fi ad-hoc
network (based on batman-adv) work if Wi-Fi chip does not support
802.11s standard?
Unfortunately, there is no mention of ad-hoc mode support in
documentation of many Wi-Fi chips.

How to check if a Wi-Fi chip is suited to be used to create a Wi-Fi
ad-hoc network based on batman-adv?

For example, is ATWILC3000-MR110CA an appropriate chip to build a
Wi-Fi ad-hoc network based on batman-adv? Or maybe you could suggest
any another Wi-Fi chips?

Thanks in advance
