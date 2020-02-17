Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADA9161246
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 17 Feb 2020 13:43:52 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2E72A80742;
	Mon, 17 Feb 2020 13:43:47 +0100 (CET)
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com
 [IPv6:2607:f8b0:4864:20::544])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id E7135801FB
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 17 Feb 2020 13:05:35 +0100 (CET)
Received: by mail-pg1-x544.google.com with SMTP id z7so9022527pgk.7
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 17 Feb 2020 04:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E4kMIrPNCiyRmgWZhxYZuFBKw4V0voF4y3zqsgP+Bx8=;
 b=AjudUUl8bP457vmLEn8jzTV/8BjAFYLhRqQXTc79xuDnZY1eo3TRrvzB2YGEMbvLT7
 UIv4Hhl2OEVYIfYUWECPHSVBKs2rkqRl+v8qd0QPTlEUYCoMxs3BZXaCCV7htJir9cSY
 P/kY0eSDVSH+iALQRmfCw3WMbZMGTo4mQC9tEB8sy7rhWRG3A+4265uZVtAFCkzD21Ah
 9Aoi5xP2qvwE4XSzkGgH1fn6TcBfVX2C/aBtOVd7eDyB9rObsZM2boT3jLVEgvXN/Nbq
 DIo9gfPWLL/Yh5BE6QnzQL4WTrwlJ/DOUhRyBuVqHwTaWEiDf9CJ4PA1Bug15bVIDudS
 pCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E4kMIrPNCiyRmgWZhxYZuFBKw4V0voF4y3zqsgP+Bx8=;
 b=NNIpcxhTb+3wg1U1ZGvioIZgA0ZDunVX0ILgv5F5I+hUDmVCHq6XozWYxSyjm/u7sZ
 yH4h7NhC8lAU8bAVqjuVsLrui3hePWs24+PYYn5KIZLbfJzkRYzP15B8/HoxBKLon9Ni
 8q3vyrBK+E94Vk1xzHwCJROvkqwRvrf5qiLuube79ADCw59pCEdJ1whF1BQFmV8EyLqt
 j8IEEfQn1YJMJQptWigd7Q/04FV/JQzTaFITWqhT0xP7DyWsKEQ3OwpTInd8g4u3SNDm
 fI1bi0dAJP8QSzv142hLTIxLIrnN7RoTJ84kEuwu1WUXxwEzEqBOg7OR0bwliFIPyma0
 1nvw==
X-Gm-Message-State: APjAAAXAJF5JnctVkfMp3viP7d/yhZBtxDgUFD+ekO+QspOL3NNvEXKy
 K4fVkL+hfMYIA380/Qtv/Q==
X-Google-Smtp-Source: APXvYqyDFaAFJ2xtas+m18JCGS6zRjMUeJs00Ho6bHth9PbfxctixNvC0pC7ga6HGg9pYbnN4j/oyA==
X-Received: by 2002:a17:90a:bc41:: with SMTP id
 t1mr19422318pjv.137.1581941134218; 
 Mon, 17 Feb 2020 04:05:34 -0800 (PST)
Received: from madhuparna-HP-Notebook
 ([2402:3a80:1ee0:fe92:14b2:4950:fe83:57e])
 by smtp.gmail.com with ESMTPSA id d2sm377070pjv.18.2020.02.17.04.05.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Feb 2020 04:05:33 -0800 (PST)
From: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
X-Google-Original-From: Madhuparna Bhowmik <change_this_user_name@gmail.com>
Date: Mon, 17 Feb 2020 17:35:25 +0530
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] net: batman-adv: Use built-in RCU list checking
Message-ID: <20200217120524.GA12888@madhuparna-HP-Notebook>
References: <20200216144718.2841-1-madhuparnabhowmik10@gmail.com>
 <1634394.jP7ydfi60B@sven-edge>
 <20200216155243.GB4542@madhuparna-HP-Notebook>
 <14125758.fD4hS3u3Vl@sven-edge>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <14125758.fD4hS3u3Vl@sven-edge>
User-Agent: Mutt/1.9.4 (2018-02-28)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581941135;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=E4kMIrPNCiyRmgWZhxYZuFBKw4V0voF4y3zqsgP+Bx8=;
 b=MuSVTvWRAblMXVAUiWaGU2Ic2OpnRaZRQ8WwimYsCIaYeb+U810hVHlinC3y9lBkYovxzr
 zvIUFrXQH3MIgAOOscQke5TFYAj7BDWgPOsfQxeTZG7e5AwhM6kx4BXIcl5obrlKrD3iAM
 O2S2nh4/kNDs1k4UeYaaA14AWzzlmb0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581941135; a=rsa-sha256; cv=none;
 b=lAuBVnfD26otujIaj+iIuqtlvVTZj7MNfG+zE4T+JZNCQAU/Ofgn48i63xh1dBB/2UKH6o
 yYQrJQ+d/Wvi2Tt8DICUFHlsFMy9ozzmrWkxiuc5KnxHdB9wwIOS+S6S60LSexmK41/Esp
 K7RRgsKhcUH+VklZCCVImVFEbTxuOQI=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=AjudUUl8;
 spf=pass (diktynna.open-mesh.org: domain of madhuparnabhowmik10@gmail.com
 designates 2607:f8b0:4864:20::544 as permitted sender)
 smtp.mailfrom=madhuparnabhowmik10@gmail.com
X-Mailman-Approved-At: Mon, 17 Feb 2020 13:43:39 +0100
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
Cc: mareklindner@neomailbox.ch, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc, linux-kernel@vger.kernel.org,
 frextrite@gmail.com, Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>,
 joel@joelfernandes.org, linux-kernel-mentees@lists.linuxfoundation.org,
 davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Sun, Feb 16, 2020 at 05:17:36PM +0100, Sven Eckelmann wrote:
> On Sunday, 16 February 2020 16:52:44 CET Madhuparna Bhowmik wrote:
> [...]
> > > I understand this part. I was asking how you've identified them. Did you use 
> > > any tool for that? coccinelle, sparse, ...
> > 
> > Not really, I did it manually by inspecting each occurence.
> 
> In that case, I don't understand why you didn't convert the occurrences from 
> hlist_for_each_entry_rcu to hlist_for_each_entry [1]. Because a manual
> inspection should have noticed that there will always be the lock around
> these ones.
>
Hi Sven,
I have been working on similar issues (passing cond argument to
list_for_each_entry_Rcu()). That's why may be I didn't notice that in
this case rcu variant is not required.
Thank you for taking a closer look and fixing it the right way.

Regards,
Madhuparna

> KInd regards,
> 	Sven
> 
> [1] https://www.kernel.org/doc/html/v5.6-rc1/RCU/whatisRCU.html#analogy-with-reader-writer-locking


