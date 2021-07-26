Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 550C43D59F0
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 26 Jul 2021 14:57:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 132A180B7A;
	Mon, 26 Jul 2021 14:57:52 +0200 (CEST)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 83197804DC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Jul 2021 14:57:49 +0200 (CEST)
Received: from mail-wr1-f42.google.com ([209.85.221.42]) by
 mrelayeu.kundenserver.de (mreue010 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MXXhv-1lZezK01tf-00Yz9V for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Jul
 2021 14:57:49 +0200
Received: by mail-wr1-f42.google.com with SMTP id g15so10992527wrd.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Jul 2021 05:57:48 -0700 (PDT)
X-Gm-Message-State: AOAM530sxXSUEI05vpKDtHAQWnC7SxehZvzqhk9oJDhHlurb8I+Q236E
	aQKqwPLbb+d4+xOWymK44cjDQ1WUZJ8Ukv7ri6M=
X-Google-Smtp-Source: ABdhPJwCfqbh7SY1HczIHQboW40+xF1z3TRH8jhjG6PiC5glUphKKnEg3U09bKgxsDvY0zlQmQg+heF0MWWUIFL0iWs=
X-Received: by 2002:adf:f7c5:: with SMTP id a5mr468847wrq.99.1627304268605;
 Mon, 26 Jul 2021 05:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210724162429.394792-1-sven@narfation.org> <YPxHYW/HPI/LLMXx@zeniv-ca.linux.org.uk>
In-Reply-To: <YPxHYW/HPI/LLMXx@zeniv-ca.linux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 26 Jul 2021 14:57:31 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2MVQMFFBUzudy+yrcp4Md8mm=NcvX7YzGVz4C8W61sgQ@mail.gmail.com>
Message-ID: <CAK8P3a2MVQMFFBUzudy+yrcp4Md8mm=NcvX7YzGVz4C8W61sgQ@mail.gmail.com>
Subject: Re: [PATCH] asm-generic: avoid sparse {get,put}_unaligned warning
To: Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:H25M7OglRMIcJndTjTh0iaVzK9FQjVQ+wGoWe+B+rj4ufs/py6V
 ecmTfbB4WrgXREtIDxnts7oYecA8zP5TaoGfpacMgiFe0Ki4jyRFgTazyNDHXoAoALwCPyy
 3f0ucAbE96mOltJKDUV9C+GBKAoz4xh7lGeYuGkzfjTfMenaap6G0QeJRtoArdK0zEJeyER
 qiHoRA6TKmOD8448w9FDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yEXAimoZMmc=:MFPhE3Sij3TRbluFHO4Sz4
 JP1NyFSPTSeM6hQ+iVVAMLVqNcXRO5zZFuVMcHlkaHMKCOLL0rjOPSal0m+kY+UPXqD1egqCW
 hcr4Q2DsGyWYiSfYwYRzZ/+rABH7YsmS6fFRDqmxMvdxK0nVqLlxaBLvnanRWqT1Tqx82j79u
 JKMstuOxLBpTrTe8iB+5HObYg5C8K0+xYB9Uv++vRXL8NEqEHhklCgOzCxmIbGimh/eC5wF2Y
 nZdPzYUSg9DDTG47xRGKxexNj3JlD0aifXKaJxJfnS69ETGicJTnHOVN3c6TzMrPT9kGo3GZ3
 gb5PStyROnMbtdGz47UkHyfh8OhEYS8LPwregTqQX8efXB4bnUDaKi4qcD8Kz0p6HBdv4/Tlq
 CLD2fzfahYQ7GGv7Ywa5gkeEbanB/4ddLnwTFsPbW4reAVyqBwTy7mACPKrcCCHrr5oRoLosE
 9xjaUTDwPZPcs7nKV3ihvpbG00cqrVMTBPEfhji2MEMctudEtzwizLpGg0npQdsMqC9VjFDGh
 Qs/VzwY/hWt91v1sPxPqMufs/IpiEu4U5HPShw0hY2YBsIjddtX7KIYichpkwKnL8wB8RlbG6
 yBkDcv/dCEGJc553oJuoDe0PG1EMRJfchAr8jleVpiwFlNvyJPevU6rvJ6ktNZjpqgEqKi1qm
 Yos6gUzNnCCy0UsVP7cNnn6iiG1WWuUUcjqp/gojAu5juy74LRpaTTNUrhnSYYE5NWhXEk4c5
 JPBedrbsjq8htFaZUAcjBvbk3uI8MXiF7QaKGsaIPRTJr8mtLrceG0KRCfLd1mwFYF1hCWD2L
 w99oZohIF4DIwgzQRlLTlfgkgmBHNYUpO4j8qbUar6npVdPlKjWkgnImumKDptIhhiqUk1D
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1627304269;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6/SeG+OnDyF9G+mif2LIEKcm/6+ltHCY6+L5iNPtcHA=;
	b=E8ozwUF+Kfh9xLoOfmYXFkYTgmSK8sPpdAUgauTwphxhLwmx96KweCrE7KwsIKnhbqIKRl
	51gooWa3hu07s/2g2l/2CasT3T5bKhXcR9OYUA3K/5e5lByj3KpqCcdco4srKtB4ti0lk2
	hkA5D+GhBRz/XQYH58vuAjV96yxa9xw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1627304269; a=rsa-sha256;
	cv=none;
	b=WiY89VAHgSqwoeXzP4MXe+bIt/WSi/DLlZLNmQ57rWHitPV13RB1WZYlEkkTk6VUzh3JnV
	LhP+mrNLn+WPT3FZoVqdkzkY6vKKgdu/gQ2qVaCGUHKAyYs5kwEstvlIpRjfZEbu8hA83m
	a+IZ7si1j0sUl4ins/cYoehTHjHLelo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of arnd@arndb.de has no SPF policy when checking 212.227.126.187) smtp.mailfrom=arnd@arndb.de
Message-ID-Hash: ITGM43DU2DPFATQG3ZQXKLWTFLNRV6WZ
X-Message-ID-Hash: ITGM43DU2DPFATQG3ZQXKLWTFLNRV6WZ
X-MailFrom: arnd@arndb.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Arnd Bergmann <arnd@arndb.de>, b.a.t.m.a.n@lists.open-mesh.org, linux-arch <linux-arch@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ITGM43DU2DPFATQG3ZQXKLWTFLNRV6WZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sat, Jul 24, 2021 at 7:01 PM Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> On Sat, Jul 24, 2021 at 06:24:29PM +0200, Sven Eckelmann wrote:
>
> > The special attribute force must be used in such statements when the cast
> > is known to be safe to avoid these warnings.

I can see why this would warn, but I'm having trouble reproducing the
warning on linux-next.

>         How about container_of(ptr, typeof(*__pptr), x) instead of a cast?
> Would be easier to follow...

If both work equally well, I'd prefer Sven's patch since that only
expands 'type'
once, while container_of() expands it three more times. This may not make
much of a difference, but I've seen a number of cases where nested macros
can explode the preprocessed code size enough to slow down kernel compilation
over all, and it's quite possible to have get_unaligned()/put_unaligned in
the middle of that, with a complex expression passed into that.

      Arnd
