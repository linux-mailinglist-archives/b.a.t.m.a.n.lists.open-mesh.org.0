Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3827C1DD408
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 21 May 2020 19:13:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F1EED80BEF;
	Thu, 21 May 2020 19:13:33 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1590081213;
 b=hIWqSSAD9s6tDwSegx0YWLg+aebB62XH6Li5asICpomueWuYZiUg7dpG9loAMPQIongfI
 oH466RdhbPtOVfLw9vvgsG7OwG+GFoeMrammbvQPveDo/ch0B4pqO8QZygqXRr3MQ1Q9lkv
 uVE7BNrEDt8/gL3tN9R+0DLgkq3+Svg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1590081213; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=qErTeCK4tQIPqWHFg86tukxo0vD1nZU9Gxn40A1UtRE=;
 b=C3M7Bt5csv1UxBb/PCaDZpMaXi0rD49f+21hzGjz0H/WzA/x17IiFjEXlVrW1r8g7IZ4G
 2W4uy1ps/hiJ+yYAMaDutPTEjfEObB76lfOlxuG7b2nqEQGRRlqc0JSytGUBId6rvyqX5ym
 KUc2pCtbTI5qedLSg+Z22FVi+p0wsuw=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=gmail.com;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=gmail.com policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=gmail.com; arc=pass; dmarc=pass (Used From Domain Record) header.from=gmail.com policy.dmarc=none
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 35E3280046
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 21 May 2020 19:13:31 +0200 (CEST)
Received: by mail-io1-xd29.google.com with SMTP id f3so8276056ioj.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 21 May 2020 10:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qErTeCK4tQIPqWHFg86tukxo0vD1nZU9Gxn40A1UtRE=;
        b=NmeYjSXv5ymkTWRWKQm8i50iM2b0tkmMn28/Iq25KyjrP7XgqdIrrBS7n5fAE1AW/t
         B56X3RcHMTD12Oskxn+HmZaKXS9+d5ZPzkPynVv5TGs0jMH69ZS5IT5W67L90JV+ivpe
         YFrhj5fzR+HywX/3rmXyS2DNRvnGuZAXvDK45MbjP1930cDAq1OmIoP7us62bkFGgRun
         qZiHVJxbV4k8T98gyI1bgDg+BgiTq4+wWbhC7oS52RuKbQ0EQvMlIhuNP24oBbALsyun
         XFQF3a7Zbv6aZ6/YqdQarri5GIM6IdY+n0DowHuK2WGC6wtQ2sxrR9xJEfwx634l956o
         6eWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qErTeCK4tQIPqWHFg86tukxo0vD1nZU9Gxn40A1UtRE=;
        b=XbuB9guqzejh8laIHZdn8kQ5NNQbMrGIxp0K51I4xPmSKQqGQAiWUFgXsM66h6EQ5j
         wCnsK92gHTPImdCOofssEfq4skKk0i09ZR1Rh70d+yIS+fq3p2Y1m4ZEiyV+2hTZ9PyR
         SaOMckD6eg2KnARQqf9RQKZzW6kEvGR1pZKF7xRLRvaP7A6ERqXyfrBOmGeS6uDccSTz
         NfPL13yhwddAdgW0zcg7fzZxxCxV3bgnqazJKm27r1vjZC30KOpnW99ELgwft/2dTz82
         wk5it2brBwPteqtzwG2jNWRGHuVvF2aqvZBk3EvMHenZzftEuYwY8f4ipmw4Lpx3iLmH
         /qGw==
X-Gm-Message-State: AOAM530J6WgH3yxUX8Np7hl3I6mJtnlaJh/Z5cEo04adI7H87MsDI/AV
	gWqbqcHIKemGWiPW7FopfNLTk1AjDoY/9+vF7w7XSy4JK+o=
X-Google-Smtp-Source: ABdhPJxec9ERmDJnADYOfJ70lNpr3VxQauTPgEelPbGMFhPLPo0utjBY7Uq7JdL7IKQFDEq+CON983h25HfkJDMYsKc=
X-Received: by 2002:a5d:9598:: with SMTP id a24mr8560595ioo.182.1590081209630;
 Thu, 21 May 2020 10:13:29 -0700 (PDT)
MIME-Version: 1.0
From: Alexey Ermakov <axel101@gmail.com>
Date: Thu, 21 May 2020 20:13:18 +0300
Message-ID: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com>
Subject: Batman-adv packet retranslation
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590081211;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=qErTeCK4tQIPqWHFg86tukxo0vD1nZU9Gxn40A1UtRE=;
	b=cyaSVg8Gbu2BPYW/5cJB4G26RKRY+eI6wlvOZeRRBTWiN6nALJKYvnV9zUq/xotYFZt1yS
	rngkj+9hEM7b68A3LmNBVa3G6ypHGv4uijsbWKLBuxISHOvKf+ngk4ju7X3L5OMrO7biT0
	0cKLkJmKb81i1d6iIvpTbBAimwFX68g=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590081211; a=rsa-sha256;
	cv=none;
	b=HtUoVg67mAozVIrf/a/ozBQzzi+mo4NtiKZf8GPbdotwDX8iFS+ZVNFJIq6vOjCI6q/ZjJ
	3V8TtzXPy/iVmLbXWIVsmUu2SXbKrlm9K2nN/Jy/8ze+h/G7bfh0gQxSxibeA0FRfyUSQi
	Ec6Gpxc3MIwf82mkoPvQd/COA9SDE0I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=NmeYjSXv;
	spf=pass (diktynna.open-mesh.org: domain of axel101@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=axel101@gmail.com
Message-ID-Hash: NOIVKV7IN5ZXJCPXRDBCPCC2RG65PQZQ
X-Message-ID-Hash: NOIVKV7IN5ZXJCPXRDBCPCC2RG65PQZQ
X-MailFrom: axel101@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NOIVKV7IN5ZXJCPXRDBCPCC2RG65PQZQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi, All.

There is a problem with retranslating packets in B.A.T.M.A.N. V mode.
I have 3 stations, st1, st2 and st3 with one active network interface.
This interface is configured so that st1 and st3 can see only st2.
I expect that if I join these stations in a bat0 network, then station
2 will act as a repeater and all three stations will be visible in the
bat0 network.
This works fine if I selecting B.A.T.M.A.N. IV algorithm, but doesn't
work in B.A.T.M.A.N.V.

--
Ermakov Alexey.
