Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F823D6278
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 26 Jul 2021 18:22:23 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BFDA081106;
	Mon, 26 Jul 2021 18:22:21 +0200 (CEST)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1630A803DF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Jul 2021 18:22:19 +0200 (CEST)
Received: from mail-wr1-f50.google.com ([209.85.221.50]) by
 mrelayeu.kundenserver.de (mreue010 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1M6DnM-1m1Tms2pxI-006h5f for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Jul
 2021 18:22:18 +0200
Received: by mail-wr1-f50.google.com with SMTP id l18so4121535wrv.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Jul 2021 09:22:18 -0700 (PDT)
X-Gm-Message-State: AOAM532u0MhzuAM4IMpKy9Q8W93tlZdoxcIxWzmOnH7ivArLzoCCEc1Q
	3k9Zm/zXY7H5rykpKdedeaPBspeyPvBnfh9PapI=
X-Google-Smtp-Source: ABdhPJye/ed6/FsM5yNUWTWtPJo/Xm2xrm3gGSltDPBIF+Kg8Q/ZjELHmN1WQSWO+r1dLUQThBaEPvfiDXicJHijpKc=
X-Received: by 2002:adf:e107:: with SMTP id t7mr20157064wrz.165.1627316538300;
 Mon, 26 Jul 2021 09:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210724162429.394792-1-sven@narfation.org> <YPxHYW/HPI/LLMXx@zeniv-ca.linux.org.uk>
 <CAK8P3a2MVQMFFBUzudy+yrcp4Md8mm=NcvX7YzGVz4C8W61sgQ@mail.gmail.com> <3234493.RMHOAZ7QyG@ripper>
In-Reply-To: <3234493.RMHOAZ7QyG@ripper>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 26 Jul 2021 18:22:02 +0200
X-Gmail-Original-Message-ID: <CAK8P3a35PNhsMQNU11RCaKm-o3-oG8pOXG836aoubxQMpTyVNQ@mail.gmail.com>
Message-ID: <CAK8P3a35PNhsMQNU11RCaKm-o3-oG8pOXG836aoubxQMpTyVNQ@mail.gmail.com>
Subject: Re: [PATCH] asm-generic: avoid sparse {get,put}_unaligned warning
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:kQdaYBI+Cp+1L0AG1sQhG5c9j/VOoL5zKSc/+N3KqhZl/8bgJKM
 Erzh84i0BozOT2hyThokgkwIa1FHzt83wiuTz7hgLkymRohjiUN+45iPnqCtowxRu0v++aB
 Db+nHD2IBwqVzm/z6iTFkaVpsxE4pZa7/1dykfeRtCsItEkBVwfTlS7E7HTjI5ktJxBcih+
 lHVp0vKHutWCx82a3K4yA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ri16/yRUtaY=:e2qeqoT4igW05sSw+9u8oO
 XJLDNds/f6IuWW2p38p1Kc8r0QcGk5oImwTBCBSvsEcxcaJ22AJyOGL3xtqJbtOAcKBpd7q4w
 yl+qw7YEyUZQPAYlg6ekrop4dJyEwv7i4cwSNXltm0RjSCd9Xpdr7uHWRzIL+0W8UYt3oVidG
 eUMBn6hpErkDmFKuPMqFnAfYrNvONc1+7uCSOTsu9G7DkSLx17uHJYd2SD/721wzR3rzWofn6
 wipfUFfoH3LWylfPGVQ7b5Gb1KZ2upf0y2+A9Ij4Mwx0n4G1R85H8G0ocqv6GT9GYiXobolmk
 utuq/GnXDvei99AxvHQ4GN4QvFbUFqGVGgzP9yulmcKFYRdZwP2fJMBoOq7EzlDmXa6gT3nTr
 QG+vfGyUYfYzGUvaFvzdHnrfTYVvDIkrZYz2S1/HhvmNphlWuoSY+V+YN79CG7iXxIt7cJgIG
 EpekfCC/J9Qp8OOSpKn0pMxXnqyofWWn5Tbchuh0/mSSWZ9vrXDc9yCOihm/3B3TvFg7fyXWO
 uHfbUW6uX3XCRzHz0gV9aRuj2ZJRMM8M7+5jXYbgREuRe9i52ShNE0gU1CY7XV64V/KyCA+k4
 RxDCVx3Hm1FjlVAGP8GgrRo0xCAOKmeSqmNTFnmkomku8YvjjmoGqodArSEe7wMuiBqhvps4H
 8rXRxl7f48xToEDxTgnxXCsN703W6AdUM46SQcdX7y+/sI0yg2Ep/54C/orATboz4DAKD+bjd
 /myC+QSPYkwewIfll+OtacTZQWgLsxPW5xDwY9HEI14n8dzVCIhzWrB5/HOYcciVJ6zrUYrIH
 Du1Kzf/ejEOsIEwT5/Fz0AwOgOdE0mmbanUqtbZO41VoXiv2hwgT2hlwvmYpkF7XC+pf2Nb
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1627316539;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7fBk0xHsaKhVwGVDGQ/kuCEhnDs++Xdm8n1RPPeuY6c=;
	b=EDwFTC+9H2uvsm6Fgj0/qRKf+abjwoaaNkjoaP5GjmX03e79RT/9MimbDWJ8Sp2+3ilJUO
	uON1WKMsnEjQXn82NmW96qReUbIXTHWpKAMZ5Lq+HvyXkmQkmsTSer+u1VhTRbEJsQAWVU
	p5xtgnnpkgoVr3gZXQsAe7BNc2ao/os=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1627316539; a=rsa-sha256;
	cv=none;
	b=Ee2kuDkYkz45O1Vxziz35azcotDKIdvPnPKUC/tDsUXQc2D6HBokDSiyCdvJJj9dmkgb4z
	FBPaRgw5CeWQw3c956EJ6cp48wGplCXLdslI6kTQLw+MXH6pQebMRTyQYvGGpqXk3lDswx
	f+m4zSR5EgT7MGFdbpRwJ6BTtqAQxJM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of arnd@arndb.de has no SPF policy when checking 212.227.126.135) smtp.mailfrom=arnd@arndb.de
Message-ID-Hash: VKSER2BSJXEV73VXSCQ467EPCOW3AQEG
X-Message-ID-Hash: VKSER2BSJXEV73VXSCQ467EPCOW3AQEG
X-MailFrom: arnd@arndb.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Al Viro <viro@zeniv.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>, b.a.t.m.a.n@lists.open-mesh.org, linux-arch <linux-arch@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VKSER2BSJXEV73VXSCQ467EPCOW3AQEG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Mon, Jul 26, 2021 at 5:04 PM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Monday, 26 July 2021 14:57:31 CEST Arnd Bergmann wrote:
> > >
> > > > The special attribute force must be used in such statements when the cast
> > > > is known to be safe to avoid these warnings.
> >
> > I can see why this would warn, but I'm having trouble reproducing the
> > warning on linux-next.
>
> I have sparse 0.6.3 on an Debian bullseye amd64 system. Sources are from
> linux-next next-20210723
>
>     make allnoconfig
>     cat >> .config << "EOF"
>     CONFIG_NET=y
>     CONFIG_INET=y
>     CONFIG_BATMAN_ADV=y
>     CONFIG_BATMAN_ADV_DAT=y
>     EOF
>     make olddefconfig
>     make CHECK="sparse -Wbitwise-pointer" C=1
>
> I should maybe have made this clearer in the last sentence of the first
> paragraph: "This is also true for pointers to variables with this type when
> -Wbitwise-pointer is activated."

Ok, got it. I assumed this would be turned on by an 'allmodconfig' build.

> > If both work equally well, I'd prefer Sven's patch since that only
> > expands 'type' once, while container_of() expands it three more times

Not sure what I was thinking here, as it's not 'type' that gets expanded
here but 'ptr'. We could do Al's suggestion to avoid the __force without
multiple expansions, using

diff --git a/include/asm-generic/unaligned.h b/include/asm-generic/unaligned.h
index 1c4242416c9f..d138dc5fd8e3 100644
--- a/include/asm-generic/unaligned.h
+++ b/include/asm-generic/unaligned.h
@@ -10,17 +10,25 @@
 #include <asm/byteorder.h>

 #define __get_unaligned_t(type, ptr) ({
                 \
-       const struct { type x; } __packed *__pptr =
(typeof(__pptr))(ptr);      \
+       const struct { type x; } __packed *__pptr =
         \
+                               container_of(ptr, typeof(*__pptr), x);
         \
        __pptr->x;
         \
 })

 #define __put_unaligned_t(type, val, ptr) do {
         \
-       struct { type x; } __packed *__pptr = (typeof(__pptr))(ptr);
         \
+       struct { type x; } __packed *__pptr =
         \
+                               container_of(ptr, typeof(*__pptr), x);
         \
        __pptr->x = (val);
         \
 } while (0)

-#define get_unaligned(ptr)     __get_unaligned_t(typeof(*(ptr)), (ptr))
-#define put_unaligned(val, ptr) __put_unaligned_t(typeof(*(ptr)), (val), (ptr))
+#define get_unaligned(ptr)     ({
         \
+       __auto_type _ptr = (ptr);
         \
+       __get_unaligned_t(typeof(*(_ptr)), (_ptr));
         \
+})
+#define put_unaligned(val, ptr)        ({
                 \
+       __auto_type _ptr = (ptr);
         \
+       __put_unaligned_t(typeof(*(_ptr)), (val), (_ptr));
         \
+})

 static inline u16 get_unaligned_le16(const void *p)
 {

Not sure if this is any better.

        Arnd
