Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B19D3DC785
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 18 Oct 2019 16:39:02 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0DE67807F9;
	Fri, 18 Oct 2019 16:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1571409538;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=eRGnb8cUOJbTPQ38k1pd3jr1sz9t9S5SQfpV7qjK/2Y=;
	b=ZLJQuWSrk8Zu+7k49hufJ0DLH+yhpzEbKfbxLYLA8znqNSZtFPkcOOV4gdD1N3hjLDNG7g
	qqvseVuFafQmYSfIc0FxTTg0q9UOlD3InIiV/mJt0h89P2Kin7gaJyM2KWdAM11zAuo/+k
	Xq/zb7abRjywiLJeGi8C2vO2AhHkeY4=
References: <0000000000006120c905952febbd@google.com>
 <5289022.tfFiBPLraV@bentobox>
In-Reply-To: <5289022.tfFiBPLraV@bentobox>
Date: Fri, 18 Oct 2019 16:34:02 +0200
To: Sven Eckelmann <sven@narfation.org>
X-Mailman-Approved-At: Fri, 18 Oct 2019 16:38:55 +0200
MIME-Version: 1.0
Message-ID: <mailman.10.1571409535.20745.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Alexander Potapenko via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Alexander Potapenko <glider@google.com>,
 USB list <linux-usb@vger.kernel.org>, mareklindner@neomailbox.ch,
 Networking <netdev@vger.kernel.org>, b.a.t.m.a.n@lists.open-mesh.org,
 a@unstable.cc, LKML <linux-kernel@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 syzbot <syzbot+0183453ce4de8bdf9214@syzkaller.appspotmail.com>,
 David Miller <davem@davemloft.net>, Petko Manolov <petkan@nucleusys.com>
X-Mailman-Version: 2.1.29
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
Content-Type: multipart/mixed; boundary="===============8720407825735998800=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============8720407825735998800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8720407825735998800==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <glider@google.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
	by open-mesh.org (Postfix) with ESMTPS id 083D18011B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 18 Oct 2019 16:34:15 +0200 (CEST)
Received: by mail-wm1-x344.google.com with SMTP id n124so2644850wmf.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 18 Oct 2019 07:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qRJSjSfwWk65VGJdf4XvN9SqgEtDgNCxKyoZRmSRziU=;
        b=Dran/X3VvHsOsLxMHx2mR4Tbc2E0CsYuXkAVyxt+rQg1nOiiruEmPu6Rq/0c282a+F
         ggJOtx621SXz4bS1W6J3oTzOrrCZthi6et66yFpQYwUW2P9id96GcGZMCfdcXwbLX5es
         ve8HtlmX+75D9UfDTi1k9mYUAFEwXCjB8Q5j2H7CuqjYuTNuHkEXO7gqEN/vVEffGumb
         bPwC0XzbDLfAfKN1WTlLIxCzJsSCIt2y6MkGh031HvQEv9/LlHfkESbTMlJ0AYSuR5mG
         oeShHCaasoNi9k/zgpcPJBvcsuumloyWQqdDVf6fcgvcjI+LILE1fhCeVpnrMRN7cTPP
         XEpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qRJSjSfwWk65VGJdf4XvN9SqgEtDgNCxKyoZRmSRziU=;
        b=miZEz0Znv53OicPa3WlZjhJduTtQ27wo/nArvn3lCcLu8dMT9Wr7AwxTWNcN979YIs
         y4X6jUOmovdohgkkdi8j0HVX+q40kAGWNCqwfzCN7ZVx7jIL+6Rz3xhGo+0VybRTRuw4
         8VKUTurhkywtDMtQAcVlZm+5h8ka1Jf8HbPznGpSNznQxiMe7v8be7EysuAL6BzR1DIy
         82luXUzmthPUxobjiYCRwNrQsiyryppSpvf9I7upAdmVIx4xdeJHrEMsErnxQGVwOo34
         DPszjjVUhsnvPIx5os8YI223kJa1Kzb9FVElrkssAYQb/Lbk+4trhK5V51XcRYJEngW0
         pPeA==
X-Gm-Message-State: APjAAAUYVTJcI02CFi+PuUS2FQxfLp1KhETB+nWzsEa2i3b5WxDnBUYt
	5NeLfboxdYJxHDHRfM7oz4whZQ7dtchGG6IAVLdO4A==
X-Google-Smtp-Source: APXvYqx5fIkvKBTZRLKu9evz7okLaALBFiYvdfXt23Zivfzy0uSIv3xvGaPkDb4c0B8dNmIBr6OCZSHyRLUQMglcJRw=
X-Received: by 2002:a05:600c:2196:: with SMTP id e22mr2108693wme.79.1571409254188;
 Fri, 18 Oct 2019 07:34:14 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000006120c905952febbd@google.com> <5289022.tfFiBPLraV@bentobox>
In-Reply-To: <5289022.tfFiBPLraV@bentobox>
From: Alexander Potapenko <glider@google.com>
Date: Fri, 18 Oct 2019 16:34:02 +0200
Message-ID: <CAG_fn=VFnPmhupvPLZMZWJP6U_-w=fxoZd+R668rzBeCGh+S3A@mail.gmail.com>
Subject: Re: KMSAN: uninit-value in batadv_hard_if_event
To: Sven Eckelmann <sven@narfation.org>
Cc: syzbot <syzbot+0183453ce4de8bdf9214@syzkaller.appspotmail.com>, a@unstable.cc, 
	b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, 
	LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, 
	Networking <netdev@vger.kernel.org>, sw@simonwunderlich.de, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Petko Manolov <petkan@nucleusys.com>, 
	USB list <linux-usb@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1571409255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=qRJSjSfwWk65VGJdf4XvN9SqgEtDgNCxKyoZRmSRziU=;
	b=0xl3hLjAHrE6FNXCeubO0nskqGX1l5RnuCauyaRyNzqdoQzaN4X7mbTOy/Hc1yDUZB8Zkp
	Ax4xLpm0o6DzAvt5ysZL5r/692KAd3166+gc7atD5mRjNNoK0E2jcRGX2vIbTa2yroEdFU
	UlftUIVZMe3kpQF6xgpgKA5NzskNR6U=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1571409255; a=rsa-sha256;
	cv=none;
	b=s+d8nP0dNyXAbxYXdlEMs1vANsy3Zza1HVXe5E12WQvcegKVzSMa4L07bzh0cvKCt76Qyz
	vw3xrhvEv/nzKeSOk5BFT0KqoBVpvxnHwCGgaH4g4V7pAW/P2Mq6l69nrmYfVTUwCASLaT
	B5rZQBgRCBEQbkxHNHWTdOgIFMyURRE=
ARC-Authentication-Results: i=1;
	open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=Dran/X3V;
	spf=pass (open-mesh.org: domain of glider@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=glider@google.com
X-Mailman-Approved-At: Fri, 18 Oct 2019 16:38:55 +0200

On Fri, Oct 18, 2019 at 4:32 PM Sven Eckelmann <sven@narfation.org> wrote:
>
> Hi,
>
> not sure whether this is now a bug in batman-adv or in the rtl8150 driver=
. See
> my comments inline.
>
> On Friday, 18 October 2019 16:12:08 CEST syzbot wrote:
> [...]
> > usb 1-1: config 0 has no interface number 0
> > usb 1-1: New USB device found, idVendor=3D0411, idProduct=3D0012,
> > bcdDevice=3D56.5f
> > usb 1-1: New USB device strings: Mfr=3D0, Product=3D0, SerialNumber=3D0
> > usb 1-1: config 0 descriptor??
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> > BUG: KMSAN: uninit-value in batadv_check_known_mac_addr
> > net/batman-adv/hard-interface.c:511 [inline]
> > BUG: KMSAN: uninit-value in batadv_hardif_add_interface
> > net/batman-adv/hard-interface.c:942 [inline]
> > BUG: KMSAN: uninit-value in batadv_hard_if_event+0x23c0/0x3260
> > net/batman-adv/hard-interface.c:1032
> > CPU: 0 PID: 13223 Comm: kworker/0:3 Not tainted 5.4.0-rc3+ #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> > Google 01/01/2011
> > Workqueue: usb_hub_wq hub_event
> > Call Trace:
> >   __dump_stack lib/dump_stack.c:77 [inline]
> >   dump_stack+0x191/0x1f0 lib/dump_stack.c:113
> >   kmsan_report+0x14a/0x2f0 mm/kmsan/kmsan_report.c:109
> >   __msan_warning+0x73/0xf0 mm/kmsan/kmsan_instr.c:245
> >   batadv_check_known_mac_addr net/batman-adv/hard-interface.c:511 [inli=
ne]
> >   batadv_hardif_add_interface net/batman-adv/hard-interface.c:942 [inli=
ne]
> >   batadv_hard_if_event+0x23c0/0x3260 net/batman-adv/hard-interface.c:10=
32
> >   notifier_call_chain kernel/notifier.c:95 [inline]
> [...]
>
> The line in batman-adv is (batadv_check_known_mac_addr):
>
>                 if (!batadv_compare_eth(hard_iface->net_dev->dev_addr,
>                                         net_dev->dev_addr))
>
> So it goes through the list of ethernet interfaces (which are currently
> attached to a batadv interface) and compares it with the new device's MAC
> address. And it seems like the new device doesn't have the mac address pa=
rt
> initialized yet.
>
> Is this allowed in NETDEV_REGISTER/NETDEV_POST_TYPE_CHANGE?
>
> > Uninit was stored to memory at:
> >   kmsan_save_stack_with_flags mm/kmsan/kmsan.c:150 [inline]
> >   kmsan_internal_chain_origin+0xbd/0x170 mm/kmsan/kmsan.c:317
> >   kmsan_memcpy_memmove_metadata+0x25c/0x2e0 mm/kmsan/kmsan.c:253
> >   kmsan_memcpy_metadata+0xb/0x10 mm/kmsan/kmsan.c:273
> >   __msan_memcpy+0x56/0x70 mm/kmsan/kmsan_instr.c:129
> >   set_ethernet_addr drivers/net/usb/rtl8150.c:282 [inline]
> >   rtl8150_probe+0x1143/0x14a0 drivers/net/usb/rtl8150.c:912
>
> This looks like it should store the mac address at this point.
>
>     static inline void set_ethernet_addr(rtl8150_t * dev)
>     {
>         u8 node_id[6];
>
>         get_registers(dev, IDR, sizeof(node_id), node_id);
>         memcpy(dev->netdev->dev_addr, node_id, sizeof(node_id));
>     }
>
> But it seems more like get_registers failed and the uninitialized was sti=
ll
> copied to the mac address. Thus causing the KMSAN error in batman-adv.
Yes, most of such reports is usually because functions like
get_registers() fail or read 0 bytes.

> Is this interpretation of the KMSAN output correct or do I miss something=
?
>
> Kind regards,
>         Sven



--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg

--===============8720407825735998800==--
