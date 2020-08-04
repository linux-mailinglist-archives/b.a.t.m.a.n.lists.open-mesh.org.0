Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE6B23B49A
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  4 Aug 2020 07:53:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A203C80344;
	Tue,  4 Aug 2020 07:53:09 +0200 (CEST)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com [209.85.166.70])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 88E4780344
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  4 Aug 2020 07:53:06 +0200 (CEST)
Received: by mail-io1-f70.google.com with SMTP id m26so27232775ioc.6
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 03 Aug 2020 22:53:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=BRdtTRPOEaQKBrhbJMVyVg8f+gg0wNhNpfaLQFbDwIc=;
        b=rL+q7URRIsdMvR2MNksHCE9+V3qKKngSgCh1Ii1TgTslRmgsT0v+w5qmPfase6cc+h
         dZgfFzh1ayaT04FR60INmcKPa02ggGdwV1z6HW9b5BVNC60bCY8PvdRIi3f3iyLif/JU
         NXT4F0manSiafzVGbt/9Tma5K0OMGOPXkbIaLj6ECWuWiXBLfFkWQ94eCWpD5Qsaj4LZ
         eUjm5sH80ChrNaccNoIZHkqwiwXm3iQr9mRlx1woFfug4bwU2OKkT3BDiER63W0ind0G
         khQEkeD9zjVVrcMLARV+Vnoea537ktsAER1/070EeGUL/6G5in6boR9nTee8s3xk+8jo
         VxJQ==
X-Gm-Message-State: AOAM533APlwaeOupF8Az9BeIR+TEq2/do6FULAShF61oc/daD5EZZz+Q
	Gmg3sSABDL3GzpTGFGv+yjqUvz+whs1lzdXF3qAB0I/UrCpM
X-Google-Smtp-Source: ABdhPJzEkoMCbnNdFUe97FE5HM517BQ0ax1yAE9KKbwZVWX1mKbnq4Vi7DM1AkTvDXzbANiqrkZroxhk4raf2RYgrw3J8jVZ61+P
MIME-Version: 1.0
X-Received: by 2002:a6b:e216:: with SMTP id z22mr3305588ioc.97.1596520385235;
 Mon, 03 Aug 2020 22:53:05 -0700 (PDT)
Date: Mon, 03 Aug 2020 22:53:05 -0700
In-Reply-To: <0000000000003d6e8405abeb1da7@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000070529b05ac06deaa@google.com>
Subject: Re: KASAN: use-after-free Read in hci_send_acl
From: syzbot <syzbot+98228e7407314d2d4ba2@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	johan.hedberg@gmail.com, kuba@kernel.org, linux-bluetooth@vger.kernel.org,
	linux-kernel@vger.kernel.org, marcel@holtmann.org, mareklindner@neomailbox.ch,
	michael.chan@broadcom.com, netdev@vger.kernel.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1596520386;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=BRdtTRPOEaQKBrhbJMVyVg8f+gg0wNhNpfaLQFbDwIc=;
	b=PaGEst+zi2f5gCZeveueq7u70TDi9Pw3ZOrcGLjdTBs/cQIH7J0A0Jf0XTmql1dxS3wu2Y
	E4PmrYmxRDhBpe/XEgVTq1fjhQkaX0/Aiwu/NnP22V7HC0zZmJHU79rdmvjb71vX5aFlwh
	nSAA9Tf5Ax9Qhlc5yXXLe6GZe8BSxBY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1596520386; a=rsa-sha256;
	cv=none;
	b=rkLvp+bw7PBml3WnPmwQka2YZf5WuhwXnSVonnZ2g356I3Jc61oo8F7TNeplBlMZU6qCie
	TL7tED/Aizx+Caot+JHtYoqmAPOU5cQnMI28FvYNoCgwO22b5hkI1MjfdZFzUQMnGkMAL+
	jIky/zixPJKKe9S7g0V5Lrecg88e86s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3wfcoXwkbAFQEKL6w770DwBB4z.2AA270GE0DyA9F09F.yA8@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3wfcoXwkbAFQEKL6w770DwBB4z.2AA270GE0DyA9F09F.yA8@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: ON2OK3GSEJIZXZFCSBUX263TGAZJR75X
X-Message-ID-Hash: ON2OK3GSEJIZXZFCSBUX263TGAZJR75X
X-MailFrom: 3wfcoXwkbAFQEKL6w770DwBB4z.2AA270GE0DyA9F09F.yA8@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ON2OK3GSEJIZXZFCSBUX263TGAZJR75X/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit 4ffcd582301bd020b1f9d00c55473af305ec19b5
Author: Michael Chan <michael.chan@broadcom.com>
Date:   Mon Sep 19 07:58:07 2016 +0000

    bnxt_en: Pad TX packets below 52 bytes.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=167b0f04900000
start commit:   ac3a0c84 Merge git://git.kernel.org/pub/scm/linux/kernel/g..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=157b0f04900000
console output: https://syzkaller.appspot.com/x/log.txt?x=117b0f04900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c0cfcf935bcc94d2
dashboard link: https://syzkaller.appspot.com/bug?extid=98228e7407314d2d4ba2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=152f1904900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1482dfca900000

Reported-by: syzbot+98228e7407314d2d4ba2@syzkaller.appspotmail.com
Fixes: 4ffcd582301b ("bnxt_en: Pad TX packets below 52 bytes.")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
