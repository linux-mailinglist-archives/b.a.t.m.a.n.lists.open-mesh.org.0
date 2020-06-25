Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCEC2098B4
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 05:01:17 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 36F3080808;
	Thu, 25 Jun 2020 05:01:16 +0200 (CEST)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 86E1D801E5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 05:01:12 +0200 (CEST)
Received: by mail-il1-f199.google.com with SMTP id d3so3029381ilq.9
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Jun 2020 20:01:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=wKHziB1HTjinXOROzU9x8QSF9UVTTl5CGULxlu3fS2A=;
        b=LXzAv3WWGkFZT0bF0uCKaLr7/mS4ydvdGHtp+95QaaTce7qq4OsR1FQt8X5jaEgph6
         tJaRhMQXsufRhdc4hwqDOGZj3pKoLOHm95Q5SFg75fWjZKUaUhGWo08dzNqhc590Yqmy
         MfJzEhNvTZvfrsp4wWRxb6BJNf7MTd4BEpskzBaUbMo1RlxR8jVlP7sx8fLxq5BjQ/6z
         PZOFaqbDZ347K9rfe28jG3DXlzuPgSUN9soKvQNrUr5Moz82nvm43ehWpl8kp7ozi2m4
         69JJlebeh/ygG8UF9iY32y4wJ83z6uPtmR+MPlTtGM+sIYQpuaDdl3be/2lFJ5IpF66A
         EzJQ==
X-Gm-Message-State: AOAM530YFVKBVYwCkKuibfpZ4ARpCTZcKcy7j0dDl5ILFIb1v3vguVoh
	gpBYGCo9ojDbi6/7cj3HnIZ4DN+sV5IVjn4WJ3SKOZyRixgX
X-Google-Smtp-Source: ABdhPJxbs1SAyL/M/fgk3l40cIJl7wJzsJfAm+GKPt/0zA1RuUK6bKXZkytrERisRhBiK2xMcbSQIrQom47jw0jbMN8Qdv/m0rQo
MIME-Version: 1.0
X-Received: by 2002:a92:290b:: with SMTP id l11mr31731641ilg.145.1593054071282;
 Wed, 24 Jun 2020 20:01:11 -0700 (PDT)
Date: Wed, 24 Jun 2020 20:01:11 -0700
In-Reply-To: <00000000000047770d05a1c70ecb@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000006e0ff05a8dfce2d@google.com>
Subject: Re: KASAN: null-ptr-deref Write in blk_mq_map_swqueue
From: syzbot <syzbot+313d95e8a7a49263f88d@syzkaller.appspotmail.com>
To: a@unstable.cc, axboe@kernel.dk, b.a.t.m.a.n@lists.open-mesh.org,
	bvanassche@acm.org, davem@davemloft.net, dongli.zhang@oracle.com,
	hdanton@sina.com, jianchao.w.wang@oracle.com, linux-block@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, sven@narfation.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com,
	viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593054072;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=wKHziB1HTjinXOROzU9x8QSF9UVTTl5CGULxlu3fS2A=;
	b=nZ6420VgMAvBhIVoR1hYP4i5oL9Ywnni1BaP6haz2sQaxi/Bn1amVq43AL3lIuVObV9TMZ
	bRPmg8FA3nJL1f8sbwahO2PdjlI6nxd0XMS84riQ6sXs6dv5FYv9gsKYfljSrgIdfo5m0D
	hj/kOO2zH8Fo+byXsPBn1+3PtbqPBTQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593054072; a=rsa-sha256;
	cv=none;
	b=nI2Vo2LzdPts9K5naZ//IYZ14KeowxFzKwbulXNRX2UM7JbAgoNhgnRD9cJIK5X4+k9lcg
	Y6yvR5088mRvzF2kHFxsJyr3Yom5XejwTJUpEu48zWFni7TJAvLqy3jtjal2PpiZ1ir3x9
	cOKL9G0U01v2inv4oDLeWA7btQUXdJY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3dxP0XgkbAGwcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3dxP0XgkbAGwcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: ZKFGO6ZSHPNS7SRWJHNXVXHNXKW6COYF
X-Message-ID-Hash: ZKFGO6ZSHPNS7SRWJHNXVXHNXKW6COYF
X-MailFrom: 3dxP0XgkbAGwcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZKFGO6ZSHPNS7SRWJHNXVXHNXKW6COYF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This bug is marked as fixed by commit:
blk-mq: Fix a recently introduced regression in
But I can't find it in any tested tree for more than 90 days.
Is it a correct commit? Please update it by replying:
#syz fix: exact-commit-title
Until then the bug is still considered open and
new crashes with the same signature are ignored.
