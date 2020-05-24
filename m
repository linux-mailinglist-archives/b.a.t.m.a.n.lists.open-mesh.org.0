Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A29F11E037C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 May 2020 23:53:22 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6EA6581726;
	Sun, 24 May 2020 23:53:21 +0200 (CEST)
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E53028011B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 May 2020 23:53:18 +0200 (CEST)
Received: by mail-il1-x12a.google.com with SMTP id 18so15835702iln.9
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 May 2020 14:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=c1JGnHvtGIN2YC3JULaNWLUonf0tO7kCl/uTtlupOp0=;
        b=V7ihQL3ZxK2Tr/sU3dcMe0CgWiHITN+QATWqdcPngPqMljkBmXMiiwM+Aj+QFdC5xk
         mEbunEmtRsVpltbbSS5fHaW1ukXC34LLCQx0VxgxR2JfNF1kgPf27luIbqHOeYFdgdhq
         QUTzEbAy0Dk76citPwDbycSESV59moYejhEk8WB6FOsNYjamKSz6JWFSRlI/btdOB1mP
         3SE9x1omE2u91asLWSAzwOxwCpNc90VVidqttXF1pwAAhMwFepHczFSt/u934bqBZS36
         ZUpWIHELNBNJfUU5/HlWlOdnX3FezORPpaWLbMGJV3z9SAJ0RlNgpD0Jdx9rxfKZcLVm
         YZbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=c1JGnHvtGIN2YC3JULaNWLUonf0tO7kCl/uTtlupOp0=;
        b=Kgyp/qKDfdFfIWbuKIpoS8TN4pW8Ws70Nkh0njGvxxEhpjYv6u3lcBe0Hjn6ETmapj
         kCpXwuzHp9/bJ7ozw9rkxFdt6a3Z9Dlp7Kyr2HEf5fvsQZCEIEirAWI9QWOKEFDCKoDe
         3UQ1wQ1SgJgJI1b58IU0a5t1U8YKOX8AZlEQbSeIYw2Wn6c/mPBO9bmrBlJMsFhbAeTj
         3tl0zb6I5hvNsMRimgReDrYuzEQ9vr00L9K6aWIG/xoZX8N2hxqQ6ErRzVo4y8V+8rXi
         dilZ+t2wDKSIz12fUdFEZTxWOqdPy880ifXJi1E806mDJ5kTPsVZjQq3vUkTopz8UFoj
         quQg==
X-Gm-Message-State: AOAM530rH/FdJ9LS7DaBi1F6LUAlPI1qysyxGtsgJaZAEgBpIhcyvjeO
	mO2eDnbUXh+07v9ohzGd+hxUNy6KApb6wcRm2HAzdGuVuic=
X-Google-Smtp-Source: ABdhPJwESJ30uzbo5WvaOo1Qo/dL/92LhLkqkDLL5fulDBeNxv5FIJtZ6xLLXG3LM17vIYnCsGYPUx7mdbY385r/P8c=
X-Received: by 2002:a92:1d45:: with SMTP id d66mr5793160ild.219.1590357197326;
 Sun, 24 May 2020 14:53:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com>
 <4485194.d5W8GeZ6RB@sven-edge> <CAOVt3fE8-U73oJV2XjnxFzWc35LAMeXeaNsTUUgPaLqvchv-Cw@mail.gmail.com>
 <2164745.TYCVdmGlQZ@sven-edge>
In-Reply-To: <2164745.TYCVdmGlQZ@sven-edge>
From: Alexey Ermakov <axel101@gmail.com>
Date: Mon, 25 May 2020 00:53:05 +0300
Message-ID: <CAOVt3fG9AbAEMP+uKLy8Hsnub6=hAJG2Ekg3vrC__AqVJAdZHw@mail.gmail.com>
Subject: Re: Batman-adv packet retranslation
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590357198;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=c1JGnHvtGIN2YC3JULaNWLUonf0tO7kCl/uTtlupOp0=;
	b=apTzS+b5RqlVS7frqvxI0nulT7hqwrSTJEGHN9F6k60nhTwbZIAZRC0zfuomphxgzqeOij
	rQZa4Kaaq6ZNO6i7vpKPJ+7mvA2cxFcleY98qtnBQlbNOuQ2BL8bCQtpxKchVzonDPoQEl
	D+fzVJNeO7DP8QxgjUhb+K/4tSxf9QM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590357198; a=rsa-sha256;
	cv=none;
	b=RNkHiDqOexx41lZHpdAr2Udl6ODjqmZQSNef15v4P68wiaZ2tRDeKpUvX5sxV+e8AjyE9r
	352imlG+8B39NhFaexSH3Vho18RPk3IW/zk7gtbUVgtDuLF8iDx78i3c4UBB34lD7FiSHW
	Ewi7SpeCTABwvbGH2ORRLjaHXkjz7no=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=V7ihQL3Z;
	spf=pass (diktynna.open-mesh.org: domain of axel101@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=axel101@gmail.com
Message-ID-Hash: CGZSCNIFRJWQNS4AW27PGKLSWUSSHL5O
X-Message-ID-Hash: CGZSCNIFRJWQNS4AW27PGKLSWUSSHL5O
X-MailFrom: axel101@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CGZSCNIFRJWQNS4AW27PGKLSWUSSHL5O/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

> As Marek pointed  out, you told batman-adv that the  eth0 interfaces have for
> some reason a link speed of 0.1 [Mbit/s] (or 1 [100Kbit/s] - what the actual
> unit is for B.A.T.M.A.N. V). And unfortunately, 88% (for the hop penalty) of 1
> [100 Kbit/s] is in integer arithmetic 0 [100 Kbit/s]. And 0 whatever/s is just
> discarded by B.A.T.M.A.N. V [1] and not considered for routing traffic - hey,
> this path ends up as being 0 and therefore useless.
> The reason why you want to set the link to 1 [100 Kbit/s] has to be figured
> out by yourself. But for a (during forwarding) strictly monotonic decreasing,
> integer value, it is a bad starting point to set it to 1 [whatever-unit] for a
> multi-hop setup.

I have three interfaces on each node:
eth0 - radio modem, speed 145 kbit/s (see desiription below)
eth1 - ethernet, speed 100mbit/s
eth2 - radio modem 10kbit/s (hasn't been tested yet)

I have to say few words about radio modems. Radio modem is not builtin
device with special driver, it is separate machine with linux which
set up as bridge and connected to node by ethernet. This means node
can send data to modem with 100mbit/s, and think that all is ok but
data will dropped on modem side, it will not call netif_stop_queue, or
something on node side.

All tests I have been making were with eth0 and eth1 because eth2
doesn't ready yet.

---
FIRST test conditions:
 - All 3 nodes see each other
 - Both interfaces added to batman network
 - no throuthput override

FIRST test steps:
 - Turn on all nodes and setup batman - All nodes see each other.
Route goes via eth1
 - Switch off eth1 (plug off ethernet cable) - Route switches to eth0,
all nodes see each other
 - Switch eth1 on - Unstable behavior: sometimes route switch back to
eth1, but sometimes - not
---
SECOND test conditions:
 - All 3 nodes see each other
 - Both interfaces added to batman network
 - eth0 throuthput override set to 100, eth1 throuthput override set to 100000

SECOND test steps:
 - Turn on all nodes and setup batman - All nodes see each other.
Route goes via eth1
 - Switch off eth1 (plug off ethernet cable) - Route switches to eth0,
all nodes see each other
 - Switch eth1 on - Route switch back to eth1, works as expected
---
THIRD test conditions:
 - Node 1 And Node3 see only node 2, but not each other on eth0. All 3
nodes see each other on eth1
 - Both interfaces added to batman network
 -  no throuthput override

THIRD test steps:
 - Turn on all nodes and setup batman - All nodes see each other.
Route goes via eth1
 - Switch off eth1 (plug off ethernet cable) - Route switches to eth0,
ALL NODES SEE EACH OTHER (this means speed 145 kbit/s enough to route
through Node 2)
 - Switch eth1 on - Unstable behavior sometimes route switch back to
eth1, but sometimes - not
---
FOURTH test conditions:
 - Node 1 And Node3 see only node 2, but not each other on eth0. All 3
nodes see each other on eth1
 - Both interfaces added to batman network
 - eth0 throuthput override set to 100, eth1 throuthput override set to 100000

FOURTH test steps:
 - Turn on all nodes and setup batman - All nodes see each other.
Route goes via eth1
 - Switch off eth1 (plug off ethernet cable) - Route switches to eth0,
But Node 1 and Node 2 see only Node 3 for the reasons you described
above.
 - Switch eth1 on - Route switch back to eth1, works as expected
---
Summary: If I don't set override throughput, batman doesn't switch
back to ster eth0, but if I set it, retranslation doesn't work
properly.
I believe, I should tweak batman and I whould be happy if you say how.
