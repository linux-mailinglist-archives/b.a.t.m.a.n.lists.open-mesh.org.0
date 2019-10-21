Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E25DE49C
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 21 Oct 2019 08:33:09 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 43B9B807FC;
	Mon, 21 Oct 2019 08:33:03 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 9850A801AA
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 21 Oct 2019 08:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1571639580;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=f8Na+LpUnC8JqDzImVYyMaPGE+qt4/Ni60vqdp8XrY8=;
 b=syXmfz8mKLUBM1cGhnWNvHBYSh0aKWq8MhW/asgTnjdfU2L/PxVDQdDyu8YF9k8y+pIyqs
 aSOIA4lTT3JstP8wWxFKYMQSLs0G1pUAyzE7YQJbs7sWyjV/hmLMWDJBbI0k2REkQ4xrKw
 T6nQAzCRX3HKyfei2AOTJuAUT71rS1E=
From: Sven Eckelmann <sven@narfation.org>
To: syzbot <syzbot+7dd2da51d8ae6f990403@syzkaller.appspotmail.com>
Subject: Re: general protection fault in batadv_iv_ogm_queue_add
Date: Mon, 21 Oct 2019 08:32:27 +0200
Message-ID: <2128256.8pjUZaGXEE@bentobox>
In-Reply-To: <000000000000ccde8d059564d93d@google.com>
References: <000000000000ccde8d059564d93d@google.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3485240.qhH8nyTcuX";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1571639580;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=f8Na+LpUnC8JqDzImVYyMaPGE+qt4/Ni60vqdp8XrY8=;
 b=SQ9G+9nYWhivOCRlxl0Y70RSXldM5X0fpAp6WXhztO9XBZJ/ckSb0UuOBXHjyzNFYhc7pf
 a6PxPmPt0FfWDJF+Qd2rxTOJ+rsIBEP/8hvsWbxgsuKqQ4gP7R+3bMP8cb0JP1BxoSCvBQ
 C0WtDyM7e75AQqTNKHeu9q4DxJWdY8s=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1571639580; a=rsa-sha256; cv=none;
 b=cfm+eBG8qj+xJvVQxLhvjvrpqsAW8h9i9aN96JBFUF3bRno4VDPjR0IIatqcIBP5XmqUtO
 GbOm5QEc6GJdfeP3nz7dHBAcRetKWd8FY8BAbmh0u+zb75Dsyxj0pL6ms03qwtoLEZJQ7F
 OnXOBbinc8liFXv9X81OCQx38mHEJwQ=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=syXmfz8m;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
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
 syzkaller-bugs@googlegroups.com, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart3485240.qhH8nyTcuX
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 21 October 2019 07:21:06 CEST syzbot wrote:
[...]
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+7dd2da51d8ae6f990403@syzkaller.appspotmail.com
> 
> kasan: CONFIG_KASAN_INLINE enabled
> kasan: GPF could be caused by NULL-ptr deref or user memory access
> general protection fault: 0000 [#1] PREEMPT SMP KASAN
> CPU: 0 PID: 4256 Comm: kworker/u4:0 Not tainted 5.4.0-rc3+ #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
> Google 01/01/2011
> Workqueue: bat_events batadv_iv_send_outstanding_bat_ogm_packet
> RIP: 0010:batadv_iv_ogm_queue_add+0x49/0x1120  
> net/batman-adv/bat_iv_ogm.c:605
> Code: 48 89 75 b8 48 89 4d c0 4c 89 45 b0 44 89 4d d0 e8 fc 02 46 fa 48 8d  
> 7b 03 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 <0f> b6 04 02 48  
> 89 fa 83 e2 07 38 d0 7f 08 84 c0 0f 85 18 0d 00 00
> RSP: 0018:ffff88805d2cfb80 EFLAGS: 00010246
> RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffff888092284000
> RDX: 0000000000000000 RSI: ffffffff872d1214 RDI: 0000000000000003
> RBP: ffff88805d2cfc18 R08: ffff888092284000 R09: 0000000000000001
> R10: ffffed100ba59f77 R11: 0000000000000003 R12: dffffc0000000000
> R13: ffffed101245080e R14: ffff888092284000 R15: 0000000100051cf6
> FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00000000200002c0 CR3: 00000000a421b000 CR4: 00000000001426f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>   batadv_iv_ogm_schedule+0xb0b/0xe50 net/batman-adv/bat_iv_ogm.c:813
>   batadv_iv_send_outstanding_bat_ogm_packet+0x580/0x760  
> net/batman-adv/bat_iv_ogm.c:1675

I am guessing that the fix for this is queued up since a while at 
 https://git.open-mesh.org/linux-merge.git/commit/40e220b4218bb3d278e5e8cc04ccdfd1c7ff8307

Kind regards,
	Sven
--nextPart3485240.qhH8nyTcuX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl2tUPsACgkQXYcKB8Em
e0ZceA/+OtAsNK+rKyCKhKluFI1maGPynDOVKdN3fkopRfC6pfxPDtjyvU6R4fbH
3XYTc6dQ8UBVltpEJ/0cNHCxuaEUjNRYM7rT3a+SD52ge/vJdIR1SdPpVY7UaQj9
plnFQBF7vSR/YoEfsXLyCFg1S/m237HGU4antFgJ7eNXgx/zSgKZ7tsXnaIDVbsP
iWsr+PXJ5RQzWDubFfDpJSyvCQn0XPztypLZRKsfa+bo73PqGn3WEWsA/I/QKwTu
7xUbIWtWEzqciX43489rtkAY2SvoeZAYPckXDs/D2udpdGEVJOLZ4xJCyDpVVfyR
+qm1au5OnHtKg4nMmyi60YLAmh+VN0t2E0GgByabgp7PQ6rgYIEB00Q2Muys1Mhn
agZ6Z9s4u118mjof9f8eJ1tv1Sx2aRRK+wBOvuOeb6tpoXSDqMV+YZP5TtZ9zETg
NN63hkKvbrhUYucyxWfkRI6x6pwbZHh3MoggT+34ShO/gzZdZV3S6IgDPpRhPYaL
Sjhno54NZ84oROcswA6b0gF2T/WD46ebZXxwjN0BIoThQX0U2fk/Hq4sCzTc0Fdt
7R3yK1SWI/yxLf2MHRqSm8MK066xj92gckB4VU8riRjUIbU+nt4mmTzRgdvXvsyY
UnrIIU0H3QSx+v56qHpFsFID5wu5BKjm2vKgrokmd9dSokXUSJs=
=GRad
-----END PGP SIGNATURE-----

--nextPart3485240.qhH8nyTcuX--



