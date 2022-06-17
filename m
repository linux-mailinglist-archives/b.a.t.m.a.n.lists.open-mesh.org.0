Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEA554F357
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jun 2022 10:46:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2734483C18;
	Fri, 17 Jun 2022 10:46:26 +0200 (CEST)
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 21E83802FA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Jun 2022 10:41:50 +0200 (CEST)
Received: by mail-pg1-x535.google.com with SMTP id g186so3522825pgc.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Jun 2022 01:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=creonexsystems-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:references:in-reply-to:subject:date:message-id
         :mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=8J8mE94wSpOvn2raz2IrX8qq73QnMsuwYS7R5yRdfOg=;
        b=cTIFmhBroE0xCJ19/hsKJqbXu/M2Tz3y8zM6IRWTX8e+XjeubPoSqhSFkmNHbei6Vp
         8t8Kq/3PmEwETuBbHnR7EJ78bQph8WVZMxiUtYt19YGTzIIIBO08YZ+TIT1Bpi0H52Rh
         YP1mbdoYSEV1JFPvfN9IdPTzeSB+WG2WykwcNhp0W3XZRApsRNZaZlEUzxWFJu9crXWy
         eU0dyIhiTiAfu4Ox6hi/qG1p7R38ZEUVMnK6lqXUQzUUYVtlc28XqxYRD3hDpJvC3Pyx
         gh6vXqSr+RwUw7/50TX63VW73QLXD4M8qIKR9GE9GRvUBxyHggicDK9sYyhKOaMzDvHc
         01IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
         :message-id:mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=8J8mE94wSpOvn2raz2IrX8qq73QnMsuwYS7R5yRdfOg=;
        b=em01FexeaDyHVEDHFBS0vby2DBdeDG1cwXNVHhFiXZ/FDBn2MTcKb0u9t8t/spAKPE
         PSAtN7cjkDH2h4kzvHAdkHe+n/3zwVf2IpeHc9JYS+Gp4aw1x3wN05GqM1lTo8THL65B
         NnMNeSYcIz0CrLuOtut5TxjrmPpW3ju5C5+9Eb2vjivd/g56k8dCeVEAKntU9kGcK2f+
         HUVe7Ydbc/7WM/7zKltRG3AhDZqTRD2b9xukJ2Rd8DUhYYDwYqrJjOi38AJ2cfqMydKN
         8j4w/s//YmTENWzSJzaL73FNfuvCB2qWnvpUvFv8mDQhelbvh4pQyBzSAaCj0oJx+7xI
         nFhA==
X-Gm-Message-State: AJIora8htEW59pm/a/uXesg0/d0o2qgtxwM8yLSm86Gcr2eZVlw4WVtd
	CDoPQvHS1lc7ynuYCFLxqm5rcaXlocrwQA==
X-Google-Smtp-Source: AGRyM1spXGu1FViuAXKcUuxqjyXmAscsGmZA9akgG+/T5H4/mrEuuQXAGZOv46uhenXgwRQs128MoQ==
X-Received: by 2002:a63:6b82:0:b0:3fd:1865:a783 with SMTP id g124-20020a636b82000000b003fd1865a783mr7975472pgc.500.1655455308094;
        Fri, 17 Jun 2022 01:41:48 -0700 (PDT)
Received: from CCMOSESLaptop (c-73-70-252-191.hsd1.ca.comcast.net. [73.70.252.191])
        by smtp.gmail.com with ESMTPSA id v20-20020a17090331d400b001641047544bsm2980923ple.103.2022.06.17.01.41.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jun 2022 01:41:47 -0700 (PDT)
From: <cchien@creonexsystems.com>
To: "'Sven Eckelmann'" <sven@narfation.org>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <2546299.1OsWWQgn6R@ripper> <03ca01d86c61$6781b190$368514b0$@creonexsystems.com>
In-Reply-To: <03ca01d86c61$6781b190$368514b0$@creonexsystems.com>
Subject: RE: Question about batman for ARM
Date: Fri, 17 Jun 2022 01:41:46 -0700
Message-ID: <049201d88226$14ca9ae0$3e5fd0a0$@creonexsystems.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHOQPARSDo6tLJ7A4PHjjuWG3RH7ADe7H8aAdHVTOGtUkGx0A==
Content-Language: en-us
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1655455310; a=rsa-sha256;
	cv=none;
	b=FAhRLKyNdITn4O9dRo7Jr+FCtgEXzvqEIJQ2217aTnGYE0Z8y5Qek/FEile64+NFGx4Pln
	ODON5wEmMOhOK/llytgFakPFlGLd5JTwiXk+W7lJGxesAbmbOuMJ5DkDQ5oZ2uXoQIeETJ
	efH0ze3NoH9ef7XKg7csNCee3rY0fDo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=creonexsystems-com.20210112.gappssmtp.com header.s=20210112 header.b=cTIFmhBr;
	spf=none (diktynna.open-mesh.org: domain of cchien@creonexsystems.com has no SPF policy when checking 2607:f8b0:4864:20::535) smtp.mailfrom=cchien@creonexsystems.com;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1655455310;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8J8mE94wSpOvn2raz2IrX8qq73QnMsuwYS7R5yRdfOg=;
	b=Tk+1LJqw3nUWEHvxYcja6IPOZ8P0dHTJZ700/WnOaeSdhE/1hdudZUBQq1VWnYuJvvfyX7
	SYQ0p3zoIP/9tGmWjbyJkjsfrtVUVFPCjq4V/0kGVyp3oiOCyqKb6cnCIeTIgqKab6WaOp
	bCHItJz9IMhmKG6QkMr7HkbopvXwNbo=
X-MailFrom: cchien@creonexsystems.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 54DXPT7LAVUBW3K5M4QXUNXCUCOTWSDJ
X-Message-ID-Hash: 54DXPT7LAVUBW3K5M4QXUNXCUCOTWSDJ
X-Mailman-Approved-At: Fri, 17 Jun 2022 08:46:24 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/54DXPT7LAVUBW3K5M4QXUNXCUCOTWSDJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Sven,

Thanks for the suggestions.
We were able to get Debian to boot up with batman enabled in =
raspberry-pi.

We would like to use batman with a custom radio and are trying to figure =
out what part of the source code we may need to modify to allow batman =
to work with a custom radio.
Custom radio means that the radio is not a commercial radio, such as =
wi-fi or Bluetooth.

The comments in the source code are limited and so we are wondering if =
you could suggest any resources and/or documentations that might provide =
more information to help us in what we are trying to do?

Regards,
Charles
____________
CreoNex Systems
2625 Townsgate Road, Suite 330=20
Westlake Village, CA 91361
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
From: cchien@creonexsystems.com <cchien@creonexsystems.com>=20
Sent: Friday, May 20, 2022 8:51 AM
To: 'Sven Eckelmann' <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: RE: Question about batman for ARM


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
From: Sven Eckelmann <sven@narfation.org>
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

