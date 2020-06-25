Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0652099D3
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 08:26:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D918680F63;
	Thu, 25 Jun 2020 08:26:38 +0200 (CEST)
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0406F800DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 06:05:56 +0200 (CEST)
Received: by mail-pf1-f194.google.com with SMTP id b5so2410047pfp.9
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Jun 2020 21:05:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4Th1ySPu0Vm274TN6hS4pYdPss9aQtC2GIfpH8g+Qzs=;
        b=AkT/SU44sShkodtccqDiOf1b9pSNSCnjpKQxfqr2ZrqYosBmArI/x5pMfgfhytFJzZ
         EWJh+fNHP+gPMiEWOl0PC9MCGJiwy9t04N5JczyLuZ29nl8P1I4EPGKA/esWJxF9mh4n
         AS324pXscnydznSmNO6TVKrDxKZsL1OmEMYmpxcPQmDo5Xidja0UwJpVgRhMq1IFaChh
         7DdXoOjkvTL3FbUETjuiAu9xxQCdZxADSnu849+BudOTlqjGUx7qjpYQvdyGbp5NZuaa
         Zzu2EX8h0x3HpwAUQK/PtXct6QA4ySjXDrRPzl7jK0rcyThAkCinXcNtCc6YegcFpchb
         io8Q==
X-Gm-Message-State: AOAM530oHYg1gfyaLT2zOwjGX7Jsing7Y+G6LwjHPDwIfM4i1CT2uST+
	6PWcswquOT52hqPyCT/1x6g=
X-Google-Smtp-Source: ABdhPJxbOHJBWsjgXqqQU6Bl8VHVLy3W1i7Ax0RG7BuEn+J/+kc6Pv3a7NobvWQt0Scp8ScAE0lFXg==
X-Received: by 2002:a63:1312:: with SMTP id i18mr24938054pgl.142.1593057955042;
        Wed, 24 Jun 2020 21:05:55 -0700 (PDT)
Received: from [192.168.50.147] (c-73-241-217-19.hsd1.ca.comcast.net. [73.241.217.19])
        by smtp.gmail.com with ESMTPSA id g140sm11384273pfb.48.2020.06.24.21.05.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 21:05:53 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
Subject: Re: KASAN: null-ptr-deref Write in blk_mq_map_swqueue
To: syzbot <syzbot+313d95e8a7a49263f88d@syzkaller.appspotmail.com>,
 a@unstable.cc, axboe@kernel.dk, b.a.t.m.a.n@lists.open-mesh.org,
 davem@davemloft.net, dongli.zhang@oracle.com, hdanton@sina.com,
 jianchao.w.wang@oracle.com, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, sven@narfation.org,
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com,
 viro@zeniv.linux.org.uk
References: <00000000000006e0ff05a8dfce2d@google.com>
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
Message-ID: <b30f9b35-1504-a8f6-91cd-828e56c59eef@acm.org>
Date: Wed, 24 Jun 2020 21:05:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <00000000000006e0ff05a8dfce2d@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593057957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=4Th1ySPu0Vm274TN6hS4pYdPss9aQtC2GIfpH8g+Qzs=;
	b=JfHEFpko0mTi4AT3jq+uOl46WznMj78YyzC8XERO5qvvscc1goxS9LhTe4VQBurIzCxv8u
	2/G6NpfJaMsTCQAxcFmRMpDskDwVPqe9vwgGoZ+nftZ+Cwow4L3tBKjcc+1D/0yGJbKZDt
	NeSBoTQNY0e8x8FZQt+Vtfp74npe+Yk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593057957; a=rsa-sha256;
	cv=none;
	b=pLxC1wXqmjQZyskFTzEuBbm/JEulnerpLQF0wHJ+bO/kQWiWovwHZ4RiYicj5XRC4L6XvD
	acLmFxTPdpqh88Zygzd+CC40X+V942mDbY/CC0h++eyJl75s8FmoJ/a3XIjAEPc5PoEQ7o
	+H+CM9Mm/gK/vBqlRU6CwXn7Z4MMtt0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of bartvanassche@gmail.com designates 209.85.210.194 as permitted sender) smtp.mailfrom=bartvanassche@gmail.com
X-MailFrom: bart.vanassche@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: O5FDRVFGTLOOYJ23SVTKEZUWTPWI3TXV
X-Message-ID-Hash: O5FDRVFGTLOOYJ23SVTKEZUWTPWI3TXV
X-Mailman-Approved-At: Thu, 25 Jun 2020 06:26:37 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O5FDRVFGTLOOYJ23SVTKEZUWTPWI3TXV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 2020-06-24 20:01, syzbot wrote:
> This bug is marked as fixed by commit:
> blk-mq: Fix a recently introduced regression in
> But I can't find it in any tested tree for more than 90 days.
> Is it a correct commit? Please update it by replying:
> #syz fix: exact-commit-title
> Until then the bug is still considered open and
> new crashes with the same signature are ignored.

#syz fix: blk-mq: Fix a recently introduced regression in blk_mq_realloc_hw_ctxs()

