Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C97B539195
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 31 May 2022 15:13:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A4C68805DB;
	Tue, 31 May 2022 15:13:49 +0200 (CEST)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A2FDE802F5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 20 May 2022 17:51:04 +0200 (CEST)
Received: by mail-pf1-x433.google.com with SMTP id bo5so8101258pfb.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 20 May 2022 08:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=creonexsystems-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:references:in-reply-to:subject:date:message-id
         :mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=yl0EHQtDWpIEJWrIlAmn+4j4EqEJYt6eTqcYnjUXyTg=;
        b=f9SNYYnZP0K56yrOAIcOIAO+mSPRykEVEHmq9qURTPGCswVCsqUhSjrOgpPgKW1c/R
         cSRiDnIvZLIN5yH8NMGjazwu2O/1dYLpNL0xDmbde1WgPy56vzRdmN5sErktSYsrhOlD
         Y5tAuYWuKPuuqMrN4dRAGXMWhFxwDo32S9sjbIANOc9BKesxGEHGBgGqGDE3qgITchfX
         /laFq+OqYJsrWTnjxapSAQBrjvrtMdySYugevfkHVvYdkcBcLOCtesXvLJ7mS9mdf1CG
         K4OFmO83mKoZX7RTebXnIxkArUeLjkdbV7HwoKJRhEodg1J0xJIZbzd0WeNgQm9I6QhE
         /T2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
         :message-id:mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=yl0EHQtDWpIEJWrIlAmn+4j4EqEJYt6eTqcYnjUXyTg=;
        b=WmerdBYpt94ILxQzBlc/h0S3cMiaalHPF4PAG7nDGyCqGdvO5e+942rXJxKEp7geBK
         SvyQiDZUJOpKR+JvNgFOmLQcBl62gjoAtrncAd9jmYIM4Twi3086ec2lXw93yDlPZBdn
         QXremSjERtUDx8NRWsGDhOm6tTiqSJ0qqeH9vMGfWAlWiZ2vf5AzWYlKTk8LA0FIRGcj
         2fo2XiA12fRzbtL1T4sK9weNjvPjFxCCMn3Mslmuq9tBShCduro74ihrTg5gDD9MaetD
         YZUyL7RH6S39ANw5bYDEZch0PeLPzsWX9eXd82clT1TicMOQLRRq4lgyVkaG9M9qZfN/
         oSPg==
X-Gm-Message-State: AOAM531CliwRggTFRp7XK1QnF9YuK4ls6s0Ndhvikgb4ft+ecSARR9FA
	UhEji3ZFUsMwu4MSpIVVEXjPvhTMQ2+DzA==
X-Google-Smtp-Source: ABdhPJwjqoN5SQwweirxr1VsmqSSF9tCbLsraJiJ0VQvJKQ4pFFzJID9pyXHzvTE9+dBJ8p+zoZniw==
X-Received: by 2002:aa7:8b0e:0:b0:50d:4310:c11f with SMTP id f14-20020aa78b0e000000b0050d4310c11fmr10852685pfd.49.1653061862484;
        Fri, 20 May 2022 08:51:02 -0700 (PDT)
Received: from CCSURF ([47.148.59.101])
        by smtp.gmail.com with ESMTPSA id u18-20020a170903305200b00161a16f0050sm5679936pla.222.2022.05.20.08.51.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 May 2022 08:51:01 -0700 (PDT)
From: <cchien@creonexsystems.com>
To: "'Sven Eckelmann'" <sven@narfation.org>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <2546299.1OsWWQgn6R@ripper>
In-Reply-To: <2546299.1OsWWQgn6R@ripper>
Subject: RE: Question about batman for ARM
Date: Fri, 20 May 2022 08:51:00 -0700
Message-ID: <03ca01d86c61$6781b190$368514b0$@creonexsystems.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHOQPARSDo6tLJ7A4PHjjuWG3RH7ADe7H8arTVIfOA=
Content-Language: en-us
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1653061864;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=yl0EHQtDWpIEJWrIlAmn+4j4EqEJYt6eTqcYnjUXyTg=;
	b=XfHcVLL45Oe0/z7cZPRkjn3NOvfjvjqHqbma9DEho/tHUhinfb6AQcpSEb42Sb+fkhugML
	5y3SQ7aQRIMECWrdWlhVR0w2txRJfm3ivun+tLamOSD/ez8alemb3biSFR9xBPPEcF5rQy
	2f7/stvx/zHn4nTZ+H4SPCh8QEpbJic=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=creonexsystems-com.20210112.gappssmtp.com header.s=20210112 header.b=f9SNYYnZ;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of cchien@creonexsystems.com has no SPF policy when checking 2607:f8b0:4864:20::433) smtp.mailfrom=cchien@creonexsystems.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1653061864; a=rsa-sha256;
	cv=none;
	b=wzxdRkBFQYVM43oIOx1ZNQSffGc3FTFr9jTuLtk0bwZym9iT1gbp98w5pc9Ghyxb3H1A98
	MQoQ554oJX+ji+/vg3+gc04KJrMfZA6yYwhYo+fYOz12cyv+Wl2tFLeuHop1qiI6XDtfM+
	Mi1SMoYL3dEdzah2h55Iys/HILKC2Ps=
X-MailFrom: cchien@creonexsystems.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: NVW7QRTKGEW2JAUGR4UFF2S3SHYSGAJJ
X-Message-ID-Hash: NVW7QRTKGEW2JAUGR4UFF2S3SHYSGAJJ
X-Mailman-Approved-At: Tue, 31 May 2022 13:13:47 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NVW7QRTKGEW2JAUGR4UFF2S3SHYSGAJJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


Hi Sven,

Thank you for the quick and informative response.
We will look into your suggestions.

Regards,
Charles
_____________
CreoNex Systems
2625 Townsgate Road, Suite 330
Westlake Village, CA 91320
www.creonexsystems.com
(805) 558-9687
This message (including any attachments) is for the named addressee(s)'s =
use only. It may contain sensitive, confidential, private proprietary or =
legally privileged information intended for a specific individual and =
purpose, and is protected by law. If you are not the intended recipient, =
please immediately delete it and all copies of it from your system, =
destroy any hard copies of it and notify the sender. Any use, =
disclosure, copying, or distribution of this message and/or any =
attachments is strictly prohibited.


-----Original Message-----
From: Sven Eckelmann <sven@narfation.org>=20
Sent: Friday, May 20, 2022 12:43 AM
To: Charles Chien <cchien@creonexsystems.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Question about batman for ARM

On Friday, 20 May 2022 08:18:45 CEST Charles Chien wrote:
> We=E2=80=99re currently trying to install batman-adv on an ARM =
platform but we=20
> ran into some issues and we would appreciate your help to answer our=20
> questions below:
>=20
> Is the batman-adv module compatible with an ARM processor (Raspberry =
PI 4)?

There is not just an "ARM" processor. It is a family of various =
processors.

Anyway, it can be used easily on Raspberry Pi - just make sure that you =
use a good wifi device + driver (+firmware) which actually can =
communicate over IBSS/802.11s (without forwarding enabled) and has no =
(extreme low) peer limit.=20
Unfortunately, you cannot take this for granted.

> I=E2=80=99m trying to install batman-adv onto an ARM Raspberry PI 4 =
with a=20
> Debian based Linux distribution (Pop OS). However, when I run=20
> =E2=80=9Cmodprobe batman-adv=E2=80=9D, it returns a FATAL error =
complaining that the=20
> module is not found in the =E2=80=9C/lib/modules=E2=80=9D directory. =
Where can I=20
> find/download the =E2=80=9C.ko=E2=80=9D for batman-adv for the ARM =
platform?

Ehrm, this is not how this works. You cannot just use a kernel module =
and hope that it works on all kernel (builds) available in the universe. =
This is also why we write following in each batman-adv release news =
entry: "As the kernel module always depends on the Linux kernel it is =
compiled against, it does not make sense to provide binaries on our =
website. As usual, you will find the signed tarballs in our download =
section:"

Either your distribution has to enable this module in their kernel build =
or you have to get their kernel headers (and build scripts) and then =
build it from scratch. And at least on the default Debian kernel, =
batman-adv is enabled since ages - so no idea why PopOS doesn't ship it

> And if I need to recompile the .ko file for ARM, is there an online=20
> repository where I can find the original source code for the=20
> batman-adv driver?

This is mentioned in multiple places on the website. Just to mention a =
few interesting pages:

* https://www.open-mesh.org/projects/open-mesh/wiki
* https://www.open-mesh.org/news/108
* https://www.open-mesh.org/projects/open-mesh/wiki/Download
* https://www.open-mesh.org/projects/open-mesh/wiki/UsingBatmanGit
* https://git.open-mesh.org/
  https://git.open-mesh.org/batman-adv.git
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/

Kind regards,
	Sven
