Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AB15B195168
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 27 Mar 2020 07:40:17 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 71C1B80BDB;
	Fri, 27 Mar 2020 07:40:12 +0100 (CET)
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id E98FD80049
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 27 Mar 2020 04:00:18 +0100 (CET)
Received: by mail-pf1-f195.google.com with SMTP id q3so3786070pff.13
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Mar 2020 20:00:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A8L7pOMKHT1Fvn5n/xgz4DQpKiNCVTukpmYePSYE6CA=;
 b=b41dMDpd/Uit8Lko+RkGot7Jvw+frgdftkmxaYjEdzf7AF8t/E4vFXoPUpI5m3tAHJ
 XenOD0VvslpV5YEMBunGJTbCFYYvxPPgznpJUk6JYv0Qt4kcC+fXW9ThA4QSx1Xh6RHw
 +fpHibqWPDNBGShaMCK3BYtlr9WKLAqFv1JK2DqGyjKtbo2+iWlf0tL02B1MMq4JV/HA
 1wC3YpSID7c5xxQPTuUjy1+n7EMBNiEJt1ME3glabyM0OVp/0aPXI9jJ373o63Dpi+GR
 9ziM27+tRxKEr9LcCtsvWJL/7D2JKvhJ9OE7f3sdFxVKSk9+6WOXGoWGEqq/+JawynLI
 GtQw==
X-Gm-Message-State: ANhLgQ1S/JSnLA7EnxUmy5ZlQY8gsPDGk1PD09qyT/OSMSVGf6qzfOqM
 pC3Ktj7olSlq9KlVUaWQvUQ=
X-Google-Smtp-Source: ADFU+vsvK0eP4Uqeyd1/ByCifUDiaGERpiXtrwFTIu/opIyVLOq497xPOF0F6FhTPWo15KgCVy2gKQ==
X-Received: by 2002:a63:f454:: with SMTP id p20mr11997394pgk.149.1585278017059; 
 Thu, 26 Mar 2020 20:00:17 -0700 (PDT)
Received: from ?IPv6:2601:647:4000:d7:f4c2:6961:f3fb:2dca?
 ([2601:647:4000:d7:f4c2:6961:f3fb:2dca])
 by smtp.gmail.com with ESMTPSA id f22sm2727805pgl.20.2020.03.26.20.00.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Mar 2020 20:00:16 -0700 (PDT)
Subject: Re: KASAN: null-ptr-deref Write in blk_mq_map_swqueue
To: syzbot <syzbot+313d95e8a7a49263f88d@syzkaller.appspotmail.com>,
 a@unstable.cc, axboe@kernel.dk, b.a.t.m.a.n@lists.open-mesh.org,
 davem@davemloft.net, dongli.zhang@oracle.com, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, sven@narfation.org,
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com,
 viro@zeniv.linux.org.uk
References: <0000000000004760b805a1cc03fc@google.com>
From: Bart Van Assche <bvanassche@acm.org>
Autocrypt: addr=bvanassche@acm.org; prefer-encrypt=mutual; keydata=
 mQENBFSOu4oBCADcRWxVUvkkvRmmwTwIjIJvZOu6wNm+dz5AF4z0FHW2KNZL3oheO3P8UZWr
 LQOrCfRcK8e/sIs2Y2D3Lg/SL7qqbMehGEYcJptu6mKkywBfoYbtBkVoJ/jQsi2H0vBiiCOy
 fmxMHIPcYxaJdXxrOG2UO4B60Y/BzE6OrPDT44w4cZA9DH5xialliWU447Bts8TJNa3lZKS1
 AvW1ZklbvJfAJJAwzDih35LxU2fcWbmhPa7EO2DCv/LM1B10GBB/oQB5kvlq4aA2PSIWkqz4
 3SI5kCPSsygD6wKnbRsvNn2mIACva6VHdm62A7xel5dJRfpQjXj2snd1F/YNoNc66UUTABEB
 AAG0JEJhcnQgVmFuIEFzc2NoZSA8YnZhbmFzc2NoZUBhY20ub3JnPokBOQQTAQIAIwUCVI67
 igIbAwcLCQgHAwIBBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFcPTXFzhAJ8QkH/1AdXblKL65M
 Y1Zk1bYKnkAb4a98LxCPm/pJBilvci6boefwlBDZ2NZuuYWYgyrehMB5H+q+Kq4P0IBbTqTa
 jTPAANn62A6jwJ0FnCn6YaM9TZQjM1F7LoDX3v+oAkaoXuq0dQ4hnxQNu792bi6QyVdZUvKc
 macVFVgfK9n04mL7RzjO3f+X4midKt/s+G+IPr4DGlrq+WH27eDbpUR3aYRk8EgbgGKvQFdD
 CEBFJi+5ZKOArmJVBSk21RHDpqyz6Vit3rjep7c1SN8s7NhVi9cjkKmMDM7KYhXkWc10lKx2
 RTkFI30rkDm4U+JpdAd2+tP3tjGf9AyGGinpzE2XY1K5AQ0EVI67igEIAKiSyd0nECrgz+H5
 PcFDGYQpGDMTl8MOPCKw/F3diXPuj2eql4xSbAdbUCJzk2ETif5s3twT2ER8cUTEVOaCEUY3
 eOiaFgQ+nGLx4BXqqGewikPJCe+UBjFnH1m2/IFn4T9jPZkV8xlkKmDUqMK5EV9n3eQLkn5g
 lco+FepTtmbkSCCjd91EfThVbNYpVQ5ZjdBCXN66CKyJDMJ85HVr5rmXG/nqriTh6cv1l1Js
 T7AFvvPjUPknS6d+BETMhTkbGzoyS+sywEsQAgA+BMCxBH4LvUmHYhpS+W6CiZ3ZMxjO8Hgc
 ++w1mLeRUvda3i4/U8wDT3SWuHcB3DWlcppECLkAEQEAAYkBHwQYAQIACQUCVI67igIbDAAK
 CRBxXD01xc4QCZ4dB/0QrnEasxjM0PGeXK5hcZMT9Eo998alUfn5XU0RQDYdwp6/kMEXMdmT
 oH0F0xB3SQ8WVSXA9rrc4EBvZruWQ+5/zjVrhhfUAx12CzL4oQ9Ro2k45daYaonKTANYG22y
 //x8dLe2Fv1By4SKGhmzwH87uXxbTJAUxiWIi1np0z3/RDnoVyfmfbbL1DY7zf2hYXLLzsJR
 mSsED/1nlJ9Oq5fALdNEPgDyPUerqHxcmIub+pF0AzJoYHK5punqpqfGmqPbjxrJLPJfHVKy
 goMj5DlBMoYqEgpbwdUYkH6QdizJJCur4icy8GUNbisFYABeoJ91pnD4IGei3MTdvINSZI5e
Message-ID: <60bb3266-03fb-acfc-d285-b0249bb5e57d@acm.org>
Date: Thu, 26 Mar 2020 20:00:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <0000000000004760b805a1cc03fc@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1585278019;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=A8L7pOMKHT1Fvn5n/xgz4DQpKiNCVTukpmYePSYE6CA=;
 b=1Y7KaU5brmfimivrbtuYzAEieIfaAAzTRhS0Qf+gSvC05vW1hFjJhZBHi7DbH3YNi6yucx
 sTggxgF5E907XNu8adQ4k+ZAl6R5WD7BCNUscA4VPTqVTFfTPJxhHkozG+4mW6ehvczBtW
 Mx11Qb3umOvS8d1AMJy+GPOPJxn5bT4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1585278019; a=rsa-sha256; cv=none;
 b=wNjPfMqrKBczPpc6aoPZX9FjS3OXr6QPTQFjFvcIAK+S2FUe9xwi1Bkcgp3q/heIJZG27P
 SD201WqAXydRWEyrmT1zX0hiSdAKVX6NjrH3bJe+YGg9VshbqWbWX+tnV4hDi9LZBXUNAq
 UlxKjKg8iw2hfoP9RmmJuV77xwtMFe8=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of bartvanassche@gmail.com designates
 209.85.210.195 as permitted sender) smtp.mailfrom=bartvanassche@gmail.com
X-Mailman-Approved-At: Fri, 27 Mar 2020 07:40:03 +0100
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

On 2020-03-26 18:28, syzbot wrote:
> syzbot has bisected this bug to:
> 
> commit 768134d4f48109b90f4248feecbeeb7d684e410c
> Author: Jens Axboe <axboe@kernel.dk>
> Date:   Mon Nov 11 03:30:53 2019 +0000
> 
>     io_uring: don't do flush cancel under inflight_lock
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14233ef5e00000
> start commit:   1b649e0b Merge git://git.kernel.org/pub/scm/linux/kernel/g..
> git tree:       upstream
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=16233ef5e00000
> console output: https://syzkaller.appspot.com/x/log.txt?x=12233ef5e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=27392dd2975fd692
> dashboard link: https://syzkaller.appspot.com/bug?extid=313d95e8a7a49263f88d
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13850447e00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=119a26f5e00000
> 
> Reported-by: syzbot+313d95e8a7a49263f88d@syzkaller.appspotmail.com
> Fixes: 768134d4f481 ("io_uring: don't do flush cancel under inflight_lock")
> 
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection


#syz fix: blk-mq: Fix a recently introduced regression in
blk_mq_realloc_hw_ctxs()
