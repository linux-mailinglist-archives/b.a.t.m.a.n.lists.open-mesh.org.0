Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C0D155C48
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 Feb 2020 17:59:41 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 514488038D;
	Fri,  7 Feb 2020 17:59:35 +0100 (CET)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
 by open-mesh.org (Postfix) with ESMTPS id C89C9800AD
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 Feb 2020 17:59:31 +0100 (CET)
Received: by ory.petesbox.net (Postfix, from userid 326)
 id 5B4D040BCD; Fri,  7 Feb 2020 11:59:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1581094771; bh=ZTllxbT3JybwchcpOMpLtH77UjMMsCpbdI4z8Nl/hf0=;
 h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
 b=bkdMwJ/WVkj7t+bXAXbrzEbmataDnu1i3O7a+LovIZvn1xywjTj0cZcd9GaMdzY1O
 Pro/wv9n0Dg8GdIskDOATq64CK9LNv78FlVMuu74jHecHMsgC8BpRBl4gtEoR+k9ae
 GVpehcL876v507efBQQhj7igRdLnhHqADEu/PKTJbBF9xzXe7LMwLnEO86RMyTyBBn
 Ed6KaMPCec+DOi4vmJ3GKCe98ke4l+sq5AeU8eTZG/dW+7YInEsn/UYfYneZzmWe+v
 uDUcqK9U5BHa79Yb6AAeksqMpShH5uPhMSydRIPJbEqLoSZ2dm7yGv/zgBnuHMYkkz
 k9832BIxAwYBQ==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
 version=3.4.2
Received: from [192.168.2.25] (unknown [38.21.217.71])
 by ory.petesbox.net (Postfix) with ESMTPSA id 0B51340326;
 Fri,  7 Feb 2020 11:59:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1581094769; bh=ZTllxbT3JybwchcpOMpLtH77UjMMsCpbdI4z8Nl/hf0=;
 h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
 b=eXbPicu0mvybjkG/+cbKPqeeDRo7N7iIzz/IUm7ihW8sxHg/261Btd3cjhg/l/RFJ
 gC/4Nn09zpVQ+BRCZIUpUieZvjeRo0uqxFYvKDPq2XnLU01bagMF5ve/M2kH6CnUQa
 3BsjUA0SNd7aFx+7SyrPH20hE59sE0JgJpphMHdQA/eu8wFSIwywkw4G3xwf8nFqda
 So9P8t9jF0Q/JzlMBLldIsqyUP/KMMK5U9lNAeubZNWGTxxGWOEGVwfNNTQ0ocGNxy
 UNzcXUev4vHQGTPkXSluPs2S36UBYEW7qWelYALCjGcF01+DwJb4pi5BfBtOH+HH8D
 Dzo6DJJyrulQA==
Subject: Re: can't find logged information
To: Simon Wunderlich <sw@simonwunderlich.de>, b.a.t.m.a.n@lists.open-mesh.org
References: <24aa48bb-8f52-78be-28df-98ec2e2a054b@coolheads.com>
 <b696db36-b9db-d31a-d8a6-0523f8a0986c@coolheads.com>
 <1594276.uRpPO4E4fP@prime>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <60314915-68db-93c4-c35f-0a593015c7ba@coolheads.com>
Date: Fri, 7 Feb 2020 11:59:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1594276.uRpPO4E4fP@prime>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581094772;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=ZTllxbT3JybwchcpOMpLtH77UjMMsCpbdI4z8Nl/hf0=;
 b=reMudbmrr1XKuD83iaqigl6d4exmoQssW4Pu8v3SP+6K20Hh86UiDvgfL5wGEEgQ0ANho5
 rUBwIT+Ggo+V6vu5lhsmjpNoNijnnNxd+DDal7drsToMfYKOcpyEjo4iHN3wO+0Z1i4sxZ
 QRTnXarXMJY1o6Bq71EjyKluiac6qVs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581094772; a=rsa-sha256; cv=none;
 b=HiLYwU7BfnXWf50/w1JG+8ZHMkRkPijJZ4u5SABM3EGAWT1woUpS8J6kKI1uMK92Gf5po3
 1AqfqSlxTQ+yF68flt0M3LCCSl2B5LhF3CR4TiuTwOkERQmjEQ2vI+aHj4oSkP9P3GenGF
 u2j1zl3sl0Bh5k4cka8wrgpgUWQgkwo=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=petesbox.net header.s=ory header.b=bkdMwJ/W;
 dkim=fail (rsa verify failed) header.d=petesbox.net header.s=ory
 header.b=eXbPicu0; 
 spf=pass (open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27
 as permitted sender) smtp.mailfrom=srn@coolheads.com
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
Reply-To: srn@coolheads.com,
 The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>


On 2/7/20 10:52 AM, Simon Wunderlich wrote:
>
> Oops, you are right, we have actually removed that command in 2019.2. You can
> use one of the two following commands:
>
> cat /sys/kernel/debug/batman_adv/bat0/log
The cat method works.  Thanks.  Wow, with all the debug info selected, 
it's a torrent of stuff.  (Which I expected.)

>
> (will be removed in the future when debugfs support is dropped
>
>   trace-cmd stream -e batadv:batadv_dbg
Uh, *which* of the two above commands will be dropped?  Should I add 
trace-cmd to my menuconfig to retain access to the logs?  I haven't 
added it yet.

 > By "works" you mean you get useful outputs where the timeout is not 
increasing or similar? can you still "batctl ping" to one of your neighbors?

You are far ahead of where I am.  I meant only that I was getting what 
appears to be useful information, not that I have interpreted it.  It 
will take me a while to figure out how to read it.  I would be grateful 
for any hints on that, and I'm already very grateful for the help you 
have provided.

I haven't been using "batctl ping" to cue a reboot; I've been using 
"ping".  I'm not sure what difference it might make to use "batctl 
ping"; it seems to me that if I can't "ping" a node, after 3 or 4 trials 
over a period of 15-20 seconds, I'm no longer in touch with it in any 
usable way.  When that happens, as long as I don't reboot the gateway, 
everything just stays offline.  So it's better to reboot.

By the way, at least one user is using the mesh for landline telephone 
(Google Voice) service, so I'd really like to stabilize it if I can.
