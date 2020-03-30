Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 485B9198074
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 30 Mar 2020 18:05:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EE92380A65;
	Mon, 30 Mar 2020 18:05:26 +0200 (CEST)
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 842B580208
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 30 Mar 2020 17:56:15 +0200 (CEST)
Received: from fsav305.sakura.ne.jp (fsav305.sakura.ne.jp [153.120.85.136])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 02UFD7Hq079755;
 Tue, 31 Mar 2020 00:13:07 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav305.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav305.sakura.ne.jp);
 Tue, 31 Mar 2020 00:13:07 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav305.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 02UFD7n5079751
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Tue, 31 Mar 2020 00:13:07 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Subject: Re: kernel panic: smack: Failed to initialize cipso DOI.
To: syzbot <syzbot+89731ccb6fec15ce1c22@syzkaller.appspotmail.com>,
 casey@schaufler-ca.com
References: <000000000000db448f05a212beea@google.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <a293a766-4329-f6de-c8a9-1a5051217c45@I-love.SAKURA.ne.jp>
Date: Tue, 31 Mar 2020 00:13:05 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <000000000000db448f05a212beea@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1585583776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GMUPZfkZD2gC65onL6EIHNV9mm/WzYrUWxbqq4Vk6Z8=;
 b=eWboSZ71I41u8OqyG9Bwz4xcErkkxVs5W+wXGe6fbaV9ZQAXNCN7Xq73mGcE2e1YDD7Dz7
 cagpSm1AdVCHGflBbrurh1OQ15jdr8klp0tH0Pmfr6FVs4LXxwqRGpmfHZELiT6WvJRPXx
 0AMjoN7sVTvcwx5nC6cTSxDEKT7ZvLs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1585583776; a=rsa-sha256; cv=none;
 b=wDCqA39DwZ9HSk9hKvUfTtwJ/236rwdZDazHRqjQFBqQ7vyhHhdEQQ5k9GL/TZSSJQ6SIl
 /0GCG9PKsH8JCb3jnoUkq86HUYFir/GiI2NjdbSAudB1bBq/i3a347OM/hNmPdP/sTgG2p
 0UQD8ITfC1IOjCS5gcUiNXNUw1SlGd4=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=none (diktynna.open-mesh.org: domain of penguin-kernel@I-love.SAKURA.ne.jp
 has no SPF policy when checking 202.181.97.72)
 smtp.mailfrom=penguin-kernel@I-love.SAKURA.ne.jp
X-Mailman-Approved-At: Mon, 30 Mar 2020 18:05:25 +0200
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
Cc: linux-security-module@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 jmorris@namei.org, serge@hallyn.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On 2020/03/30 22:51, syzbot wrote:
> Hello,
> 
> syzbot found the following crash on:
> 
> HEAD commit:    1b649e0b Merge git://git.kernel.org/pub/scm/linux/kernel/g..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=14957099e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=4ac76c43beddbd9
> dashboard link: https://syzkaller.appspot.com/bug?extid=89731ccb6fec15ce1c22
> compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1202c375e00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1390bb03e00000

Wrong bisection. This is not a network / driver problem.
There is a memory allocation fault injection prior to this panic.

  [ T1576] FAULT_INJECTION: forcing a failure.
  [ T1576] Kernel panic - not syncing: smack:  Failed to initialize cipso DOI.
