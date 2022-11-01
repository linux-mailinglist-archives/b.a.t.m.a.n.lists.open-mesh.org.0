Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FC461522D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  1 Nov 2022 20:21:53 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2586581411;
	Tue,  1 Nov 2022 20:21:52 +0100 (CET)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7B42980847
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  1 Nov 2022 19:49:57 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1667328597;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=A3pquILFyTAaAh8Al0RazblTBZKRiNJ4gUJFXCvfK7w=;
	b=01iixTnfg5GbBFe/bNNGEJIx01w6dYMh8fqyxkR2OGQNLRsfVA5gJBgRxwfjtqpHVI+fid
	7Gl3WVEdsmZu0Y5yWpxchJaW5L9YtaxAALPNwmglF1EDR2mlIYaWjh6IG1eUszxUsGd+gE
	nzTUs3cEYaDC4AvMtCP2BJPa2OBWQnk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=creonexsystems-com.20210112.gappssmtp.com header.s=20210112 header.b=bKBUQqvB;
	spf=none (diktynna.open-mesh.org: domain of cchien@creonexsystems.com has no SPF policy when checking 2607:f8b0:4864:20::633) smtp.mailfrom=cchien@creonexsystems.com;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1667328597; a=rsa-sha256;
	cv=none;
	b=f13YBC5waHsEFPdcXXVLCx9PnYT5qsox9VjXDVl1K6yu0izQVckg8zlNQcp8WNe5N2W8a0
	c2eNviX4HPbF9WxMD0El72z2DrOnEhQtyUABVvaxSGTMRLEpVQDZnVZOqb825kEpp9izsN
	clTUtOwsQZxYE1il2H6n1rXPTwBvcqw=
Received: by mail-pl1-x633.google.com with SMTP id 4so14433482pli.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 01 Nov 2022 11:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=creonexsystems-com.20210112.gappssmtp.com; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=A3pquILFyTAaAh8Al0RazblTBZKRiNJ4gUJFXCvfK7w=;
        b=bKBUQqvBjsKGJbhdyg8SwPO6a9lUxk95PKLkewOpsxWpE8MzlDZGzSbf+C/vhOpwsO
         DvjL3pnD/OmnUXBK9CqwDkaFLkdY1Inptch8WnFl+s5K53zjRYKpFediwTZMB9TuSfM6
         wYiYbEB0ZB24OqHQRVlRd9KI/NButWSeGA/azDK2h72P3G7bKYf6pdl36oRBeLdDY2Va
         Hv9YEuKiDW+nar1Sh6HEKmVPxU6j6GAEFbL8A+C8QNQIyUbEdfm6pehibWdSWBZVq+AO
         mhkydywyPuj7DZTrPiswimVw16cHG4YyiYMs9JmF4ZLsW1QComop1MCRF8Jdj49n4Na6
         hrHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A3pquILFyTAaAh8Al0RazblTBZKRiNJ4gUJFXCvfK7w=;
        b=7X3WzfHhhA+LxHwsHaYbUNZrhzjkGprBIKfsgyrstxf4DKixw9yjm649A6J6QmQ2Tn
         7anUH7vPi2FJEGJlbmu+IViTgCwSK6c+nTXHriUrFTH0lY0UnsXUEKt/eyN5NC6hvBR2
         TvbwvKZafpnzQng6vezrnHHBQKD7jAG91j1hX8eLjNx+/bBP2Q7keoQphDUcSEXx2T/t
         giaEuQpJQIhJqS6Mn2HfLsyDdG8NnvT7UQ1MrXqCyGD0RiqV1uNv0XNNwyZ9xolk2KyV
         WHeKYEcFMum9i2cFZd1DM62Wcg/pzq7x+MNUosq7XwPRvGSuEcYj1pJ/s5Hw7u5XkIM+
         B18w==
X-Gm-Message-State: ACrzQf3qYpEA9p2UOs+3ZFBTKj4ro4IW2mSdZGfOLL/RJCg5N8zykaZk
	Y5EKX0VN7Wim2dnR/tFcsW0E5pVPAgHKqQ==
X-Google-Smtp-Source: AMsMyM5OgvnfYlAE6ogN/H4xFv92xxFsh+mpNsUf/B253lrivDCsw+HZ9WTeeSS6jzd/gJuOZETxFA==
X-Received: by 2002:a17:90a:7388:b0:212:cc3b:4af with SMTP id j8-20020a17090a738800b00212cc3b04afmr177475pjg.1.1667328595335;
        Tue, 01 Nov 2022 11:49:55 -0700 (PDT)
Received: from CCSURF ([47.154.235.246])
        by smtp.gmail.com with ESMTPSA id x5-20020aa79ac5000000b0056bdb5197f4sm6869662pfp.35.2022.11.01.11.49.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Nov 2022 11:49:54 -0700 (PDT)
From: <cchien@creonexsystems.com>
To: "'Sven Eckelmann'" <sven@narfation.org>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <3826484.QQW5a1qdB9@ripper> <014301d8848f$5874d0b0$095e7210$@creonexsystems.com> <20961862.b4RiU9qLUR@ripper>
In-Reply-To: <20961862.b4RiU9qLUR@ripper>
Subject: RE: Question about batman for ARM
Date: Tue, 1 Nov 2022 11:49:54 -0700
Message-ID: <01ba01d8ee22$bc00d6e0$340284a0$@creonexsystems.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHOQPARSDo6tLJ7A4PHjjuWG3RH7AGaaj0oAnFmJs0CIT7uX64OWa/Q
Content-Language: en-us
X-MailFrom: cchien@creonexsystems.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: P4AINHA2NFDSU7BQ2KTEWGXLYP2OEVNJ
X-Message-ID-Hash: P4AINHA2NFDSU7BQ2KTEWGXLYP2OEVNJ
X-Mailman-Approved-At: Tue, 01 Nov 2022 19:21:50 +0100
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/P4AINHA2NFDSU7BQ2KTEWGXLYP2OEVNJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Sven,

Thank you for your past suggestions.
We are now looking into getting BATMAN working on a Zynq-7000 Xilinx FPGA.
This FPGA hosts dual-arm A9 cores. We have successfully loaded up Ubuntu on
this platform and it is running
Linux version 4.19.0-xilinx-v2019.2 (oe-user@oe-host) (gcc version 8.2.0
(GCC))

The above line is from cat /proc/version.

Can you point me to a BATMAN installation for this OS and platform? I could
not find any resources online for this.
The way suggested by BATMAN home page does not work for some reason.

Thank you for your help.

Regards,
Charles
_____________
CreoNex Systems
2625 Townsgate Road, Suite 330
Westlake Village, CA 91320
www.creonexsystems.com
(805) 558-9687
This message (including any attachments) is for the named addressee(s)'s use
only. It may contain sensitive, confidential, private proprietary or legally
privileged information intended for a specific individual and purpose, and
is protected by law. If you are not the intended recipient, please
immediately delete it and all copies of it from your system, destroy any
hard copies of it and notify the sender. Any use, disclosure, copying, or
distribution of this message and/or any attachments is strictly prohibited.


-----Original Message-----
From: Sven Eckelmann <sven@narfation.org> 
Sent: Monday, June 20, 2022 5:51 AM
To: cchien@creonexsystems.com
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Question about batman for ARM

On Monday, 20 June 2022 12:20:19 CEST cchien@creonexsystems.com wrote:
> Does BATMAN ADV interfaces with the radio via the network driver or 
> does BATMAN include the network driver?

As said before, it is interfacing with the generic ethernet netdev layer of
the kernel. For example in:

*
https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b89025
2a865efa91:/net/batman-adv/hard-interface.c#l727
*
https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b89025
2a865efa91:/net/batman-adv/send.c#l108
*
https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b89025
2a865efa91:/net/batman-adv/hard-interface.c#l185

There are a lot of other places when it uses the abstraction interfaces of
the kernels for ethernet related communication.

For B.A.T.M.A.N. V, it is also trying to get throughput information via
various generic kernel functionality:

*
https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b89025
2a865efa91:/net/batman-adv/bat_v_elp.c#l67

There is also one detection for wifi interfaces to decide whether broadcast
messages should be repeated or not:

*
https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b89025
2a865efa91:/net/batman-adv/hard-interface.c#l877


> Can you provide some guidance on where the network driver or interface 
> to network driver is located within BATMAN?

It is not talking directly to the driver. It is always using abstraction
layers. Either the normal network core, ethernet or cfg80211 abstraction
interfaces. But these don't abstract the requirement for ethernet
compatibility away - the underlying device must provide this either directly
or via a wrapper. Just perform a `git grep -e ETH_ -e eth_ -e ethhdr` to see
that it is build around the concept of ethernet packets.

Also things like originators and the complete translation table only works
with ethernet addresses.

Kind regards,
	Sven
