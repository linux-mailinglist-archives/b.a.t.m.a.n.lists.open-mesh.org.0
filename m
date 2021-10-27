Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C62B943C927
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 27 Oct 2021 14:03:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4A1E780BF3;
	Wed, 27 Oct 2021 14:03:25 +0200 (CEST)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5FD3280088
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 27 Oct 2021 13:57:23 +0200 (CEST)
Received: by mail-lf1-x12e.google.com with SMTP id bi35so5592403lfb.9
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 27 Oct 2021 04:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=YXg0m4/fJ//WGjGcJyxQ/if/yQiYorndqx8ywLLIUxc=;
        b=jThNapv4PN8aFz+XjA3tDVZi4wprRuBhHugJZuBZP/DlIxvP+7fAyNaCpZfMarEbNr
         32z6q58YY8ApfMWn6WvDE/kcNYwITYRTkN9HyeXEsDEsQTUe74ZXWQHzvkqtfGGj17Qo
         ynN7dn4s3aT1IyjCygoNmPf4h3n+nJe+wc6ms7nrmnKXEULCUyFAj1iT+7tuuCqedvOG
         YOG9Fxav3t2/PAu9/eNGwnbEsLMY0Y+hMxJlEUS/winNQX8Y5womyGufSRlz72jTdk4S
         lRYJkL0mrCi584gmxe06pmVG97mROw8QBmN04nFVOppFqz5rwzzCy/6IidXzwYpfVPtV
         9ibQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YXg0m4/fJ//WGjGcJyxQ/if/yQiYorndqx8ywLLIUxc=;
        b=4+UzLr7lfqUa48Sqsk1fe8O4mnmVb7ObWN1SetxStmKiX9tFiun6OTeBf9s4FYSlp8
         YAVU7hpueAT0x5qSOaOnPNxNoZwjygESXOsO9879ydfHqz7OP320NAvpjGlpLOYUsOvJ
         XfozyluR/FdgCSJeD/5VfXLbm0X//sqCKLmbGlnS/LT3dIwNjMhxFs5GsScRbeu4GBlq
         J8mcTOnpfPPF1fakVTG8BaGXMFNGh4qW1YBi4yYqHAJM4o29k0BlkbLFV4Lo/hgwZ+qV
         m4urpfICjipiMvGXdk+ZEqGXKWFqJLKfwpZSjKdB6WksrXHmjGtrH9eETAEKvnff6Hd9
         q3dg==
X-Gm-Message-State: AOAM5319gnKwYm29QpSwpn8O9YJjTrdnMjo7Y0mOIzqdDwa6O5XxGavV
	YqGmXc+zPEHiI120DRChA8nvteoUsSY=
X-Google-Smtp-Source: ABdhPJzG06ZKCx25ZsvM2ShhEKwT6MB3ORkQuYBX2CgoUoilCJl3p64N9h9V/iWAX2ORJiz4HBy9oA==
X-Received: by 2002:a05:6512:1284:: with SMTP id u4mr2381577lfs.226.1635335842638;
        Wed, 27 Oct 2021 04:57:22 -0700 (PDT)
Received: from [192.168.1.11] ([94.103.235.8])
        by smtp.gmail.com with ESMTPSA id p9sm1118651lfu.121.2021.10.27.04.57.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Oct 2021 04:57:22 -0700 (PDT)
Message-ID: <e4922538-1a57-1d21-9079-e954d742d844@gmail.com>
Date: Wed, 27 Oct 2021 14:57:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [syzbot] WARNING in batadv_v_ogm_free
Content-Language: en-US
To: syzbot <syzbot+b6a62d5cb9fe05a0e3a3@syzkaller.appspotmail.com>,
 a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
 kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de,
 syzkaller-bugs@googlegroups.com
References: <00000000000010317a05cee52016@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <00000000000010317a05cee52016@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635335843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=YXg0m4/fJ//WGjGcJyxQ/if/yQiYorndqx8ywLLIUxc=;
	b=KDhPy78yITB03kwcw8JYENjDS7GQ3C/QS7cGJkwOhSipiKNbM8bsR1X/ZBS60EZaAK0gEE
	v6kNTWNnVm5iaGVsbYjJ2YF0wBK06DvaHe+un+zlA6UexP77oU/AdXqNGZL/CvE+R2MPWQ
	oC1XfU7xomu1F/sNF0hiUOk4KrOhtVY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=jThNapv4;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=paskripkin@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635335843; a=rsa-sha256;
	cv=none;
	b=Js7CmzsrYy7R2o2pKcOpYsL1Unn4NKsdzyR4YBHAluq0dyUGzE3wO5CwHNUwNEp4+v2V9p
	FUcc8i+wrytz9PXFKO019M/PAgxARwh/JkIMBN0mE8bOeg1Z5Pm3hjwXazLrY3SsuohRqi
	lqR/UMqwVQ0y6NWclXZuc2jn0YFHnOc=
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: USP3JTNV3JKOEPZXH3IVYTO6O3KSPB7P
X-Message-ID-Hash: USP3JTNV3JKOEPZXH3IVYTO6O3KSPB7P
X-Mailman-Approved-At: Wed, 27 Oct 2021 12:03:23 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/USP3JTNV3JKOEPZXH3IVYTO6O3KSPB7P/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 10/22/21 02:19, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    2f111a6fd5b5 Merge tag 'ceph-for-5.15-rc7' of git://github..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=121d909f300000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=d95853dad8472c91
> dashboard link: https://syzkaller.appspot.com/bug?extid=b6a62d5cb9fe05a0e3a3
> compiler:       Debian clang version 11.0.1-2, GNU ld (GNU Binutils for Debian) 2.35.2
> 
> Unfortunately, I don't have any reproducer for this issue yet.
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+b6a62d5cb9fe05a0e3a3@syzkaller.appspotmail.com
> 

Looks like bug on error handling path in batadv_mesh_init(). Must be 
fixed by my batman-adv patch.

#syz fix: net: batman-adv: fix error handling




With regards,
Pavel Skripkin
