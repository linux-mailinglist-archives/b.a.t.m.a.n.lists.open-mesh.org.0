Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE2C195998
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 27 Mar 2020 16:12:30 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id ED1F38098B;
	Fri, 27 Mar 2020 16:12:28 +0100 (CET)
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 56D1A80055
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 27 Mar 2020 16:06:38 +0100 (CET)
Received: by mail-pg1-x534.google.com with SMTP id x7so4704120pgh.5
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 27 Mar 2020 08:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=eXeiwmriuUHSGPIQ5FE/vs4fhtvCZSUZ3+noRetg2ao=;
 b=J80NARwEAtfKj8z76W4AvMB6js5ArpMXn6a03i9pbVQzqrM4mOTeWkHm5iLUvzWKq6
 dvdMjte/1ibknnyKRwJhQgpA9uL2d4OucbWEktnWOfDfUhE3/Nin1yfF2DN9FgqoNm33
 hNQKG3GYV1fXckGDsLsUagkYTLnTHw/Qic1FS1/hf0/YhrQ4qXe1NQblwT7DoW48ZfK8
 Tc8Nej4b7pM3v2HivVo+eMvOYFgDALiweWzEwovBxrxHrGk39ihgZVhs902Mi+z/24FN
 3bS482It5MEKjA2IRfolXEyRT4Xikvj3228njhM/OHjzR7GRbY7uJQ7fnAy1dRUMpOWy
 yI/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eXeiwmriuUHSGPIQ5FE/vs4fhtvCZSUZ3+noRetg2ao=;
 b=cDjyEsv//NqeCawfNfyR1rkNM22N3TFNdoxWyqLRUG7KsxuR2cI0ZigUByKsKflroZ
 9lv16lzIQXqhaDInEdM2rjHa1eV/NKDsjRWm4Saj/oat23dKfa6oYmnY/5enf9ebeV+O
 /uhoNz5UEgUzI9lI7LM0A+lx2bwt4JhkkVDjCHzrnac7qsSEt8Y2QrKi6tE1OYbQN9Wz
 dhqboMnEaS2eec5k3kSSNGgTW97l9Szdyv3t64NbWHKYZo9JVqzqGnVWmEmRMoEjV2tI
 8YNt0Uti8Bnbfzov962KsVsMkvWDQAanciYSQi9EX1xggenHGqLVJY3FfJ9Gw8YJh9Rv
 PtKg==
X-Gm-Message-State: ANhLgQ0sa04c0+V7GDpFTUS2MZWyRYvEX4jFR4Q6elizY+beZyrPS6AW
 y5hCO95ke+RdO9qPpPxY1bfvrQ==
X-Google-Smtp-Source: ADFU+vs++DC7KxyU52I45Ga6jyMEVqGhwA7nu9vY/NNIxQmvXKQm1JdR/hw70GKZk7t4FSJKe8SEjw==
X-Received: by 2002:a63:ef41:: with SMTP id c1mr13864299pgk.195.1585321596559; 
 Fri, 27 Mar 2020 08:06:36 -0700 (PDT)
Received: from [192.168.1.188] ([66.219.217.145])
 by smtp.gmail.com with ESMTPSA id mq18sm4255882pjb.6.2020.03.27.08.06.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Mar 2020 08:06:35 -0700 (PDT)
Subject: Re: KASAN: null-ptr-deref Write in blk_mq_map_swqueue
To: syzbot <syzbot+313d95e8a7a49263f88d@syzkaller.appspotmail.com>,
 a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
 dongli.zhang@oracle.com, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, sven@narfation.org,
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com,
 viro@zeniv.linux.org.uk
References: <0000000000004760b805a1cc03fc@google.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <fa743a2c-f79e-6021-7c2b-72e178f913f4@kernel.dk>
Date: Fri, 27 Mar 2020 09:06:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0000000000004760b805a1cc03fc@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1585321598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=eXeiwmriuUHSGPIQ5FE/vs4fhtvCZSUZ3+noRetg2ao=;
 b=3QxLrE4YzvclnzOwhyvXSyDywjsse0viEnFKE//8E4RQjn4rndIHl7FnvUpPQs1v3jB72s
 wE+mcJHPSUNuesfhvggFfdmY/uy8RHSODbI78iNQaavlhtX8xg0TO/psj9GVGTPJ5OG4xT
 O85rVf+8lvnbJAIURXc8UhI+CRcb7wY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1585321598; a=rsa-sha256; cv=none;
 b=3MQH6S6cAK43cqMiMCUf7H8+AX1pJIHTXTf90q1EQmyYVnapuvc0vNRHg/LGEg9jxU90Lt
 Tcot6KdcObiovP/zr/7dED02A4qK7qsloCpp0zlFc7f1zaj8VGlhkgO7uMT+LhfjLNmp9f
 aWj7sPuw5fVDW0xhTHxNuafGDlZ5+a4=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=J80NARwE; 
 spf=pass (diktynna.open-mesh.org: domain of axboe@kernel.dk designates
 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=axboe@kernel.dk
X-Mailman-Approved-At: Fri, 27 Mar 2020 16:12:26 +0100
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

On 3/26/20 7:28 PM, syzbot wrote:
> syzbot has bisected this bug to:
> 
> commit 768134d4f48109b90f4248feecbeeb7d684e410c
> Author: Jens Axboe <axboe@kernel.dk>
> Date:   Mon Nov 11 03:30:53 2019 +0000
> 
>     io_uring: don't do flush cancel under inflight_lock

This is definitely an utterly bogus bisect, not related at all.

-- 
Jens Axboe

