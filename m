Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E29E182341
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 11 Mar 2020 21:24:39 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A8603809B1;
	Wed, 11 Mar 2020 21:24:37 +0100 (CET)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 370078004D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 11 Mar 2020 05:36:04 +0100 (CET)
Received: by mail-il1-f197.google.com with SMTP id x10so498537ilo.23
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 10 Mar 2020 21:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=TOW6EyRWWRmr0XeVGg68EU3oaAG/uTESSlfkqLc+cAM=;
 b=JtcCtREaBdR9wF2Qw3vwEaLBUmKkAc7+6js2xt+jSgxa6f+zEbSY04b4pROBPGSrXL
 SZKUkc0QqkAwU8kQyCJ+69Eheh50MH2jHG76gm6atwfGwDCvWbDUrQK3Y33P55zvPPk5
 3JVB2F9P9PLquRPuiG4WVOfaRKbiP+CuH+9cytLxMfnP8xS0hAZCWsiaH4dG4xRJZed/
 vVRwbUmBHZdgDJepE2wLH+oTc3jPaRmo+Symi6bbyASzVma8uRvN0/nZ6oTlRQ3F1puW
 Y+uuDtPNWxw791+foIHCSv/7O6fePFtAYzBBYP7tMHXjh1A4NJk5mu9vLoA5pQGHvdYe
 WSow==
X-Gm-Message-State: ANhLgQ1jxcXpzPVCfMTOOHGR93QhMFVG6juILNsqUdNAlSMZGUcepmwT
 pUQ3zvy0C3maglbD6a9IbdeOPwTVmsotqjSYEGGcvzxalYie
X-Google-Smtp-Source: ADFU+vux2t/xaiujvf8Y0YWq1KqzivojgudC+oOlyt8deIl3lhzOJSMIuuTOmRBd2XaXjPCRM7y5g8S9EcYG/6ABJbFkK9akhOZH
MIME-Version: 1.0
X-Received: by 2002:a92:7b10:: with SMTP id w16mr1278071ilc.93.1583901362950; 
 Tue, 10 Mar 2020 21:36:02 -0700 (PDT)
Date: Tue, 10 Mar 2020 21:36:02 -0700
In-Reply-To: <0000000000002e20b9059fee8a94@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000019196205a08cc67d@google.com>
Subject: Re: WARNING in idr_destroy
From: syzbot <syzbot+05835159fe322770fe3d@syzkaller.appspotmail.com>
To: a@unstable.cc, airlied@linux.ie, airlied@redhat.com, 
 alexander.deucher@amd.com, b.a.t.m.a.n@lists.open-mesh.org, 
 christian.koenig@amd.com, daniel@ffwll.ch, davem@davemloft.net, 
 dri-devel@lists.freedesktop.org, gregkh@linuxfoundation.org, 
 hdegoede@redhat.com, kraxel@redhat.com, linux-kernel@vger.kernel.org, 
 maarten.lankhorst@linux.intel.com, mareklindner@neomailbox.ch, 
 mripard@kernel.org, netdev@vger.kernel.org, noralf@tronnes.org, 
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, tglx@linutronix.de, 
 tzimmermann@suse.de
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1583901364;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=TOW6EyRWWRmr0XeVGg68EU3oaAG/uTESSlfkqLc+cAM=;
 b=FG1lxU2SfODz/GL2BfncvbsgnOxBJTc8orIayOr7bD/KnbjkFdzv4nxpAzj8K8GjivysST
 ltc+/vpTCfzjYWTYPJv9DqPragzzXBODgWNzrJEpPxLpISBxtDPafwKiy4G7KCP7woPS0c
 Rx+qbaA3YL879GoZhZ+hofvVsudoWHQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1583901364; a=rsa-sha256; cv=none;
 b=rc/kLJa2b0SiQfbehacBnn4UgGvZu7toYP8aaSGcuCtZkH9MZVxqyI0X13IYUOfdi6n93J
 e+8OqkcrYvWN6V/qskxc7BbQTw8KFxo1l027f3upo1b78LifUAMNmC6uOGCbhr4uMmkAYu
 i48ijwLJeNYY3WvGVRpIkDRc2Yyy8ek=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3smpoXgkbACMRXYJ9KKDQ9OOHC.FNNFKDTRDQBNMSDMS.BNL@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.197 as permitted sender)
 smtp.mailfrom=3smpoXgkbACMRXYJ9KKDQ9OOHC.FNNFKDTRDQBNMSDMS.BNL@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Wed, 11 Mar 2020 21:24:36 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

syzbot has bisected this bug to:

commit 5b3709793d151e6e12eb6a38a5da3f7fc2923d3a
Author: Thomas Zimmermann <tzimmermann@suse.de>
Date:   Wed May 8 08:26:19 2019 +0000

    drm/ast: Convert AST driver to |struct drm_gem_vram_object|

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15a66fb5e00000
start commit:   63623fd4 Merge tag 'for-linus' of git://git.kernel.org/pub..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=17a66fb5e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=13a66fb5e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5d2e033af114153f
dashboard link: https://syzkaller.appspot.com/bug?extid=05835159fe322770fe3d
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14e978e3e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10b1a819e00000

Reported-by: syzbot+05835159fe322770fe3d@syzkaller.appspotmail.com
Fixes: 5b3709793d15 ("drm/ast: Convert AST driver to |struct drm_gem_vram_object|")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
