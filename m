Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A63AA82EC18
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 16 Jan 2024 10:48:42 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 741B783E9F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 16 Jan 2024 10:48:42 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1705398522;
 b=AbSpf+nlFPdir/8wN8hS0iCs4P4BDoW21NzUF7RBZV2uSugLVdxWaFUo12ecXiFIAWccH
 Cmy4KnFStA8RGsEk/XOTJcNZRghAyCVkll7IEt6yQhzbSAPkO6pULCnvxVkHnxPKpZ+5UHB
 iWfa4d31GnVFllwbhfh3WDuDG3iDUYk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1705398522; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=/VCLSujzzlDwuQlHwmx12Nj9mX+R3Jv83uQp+uToPts=;
 b=WG1MZp6/RlcvzeiRbE4fikvtRHQxB1lQXNTJdcsVBm4joPRj2BW4JSsf+/pCqiqvi9AH3
 aGV2QumGs7cv71+1cZ1Bd+ZRFU8HJg+t/2HLH072F99N4CDY8Y3zEvz1aA/iDzs1napb7PE
 F1Gds2+Qyk1khCbHN9nRulaov13UGLc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 41A55810BA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 16 Jan 2024 10:48:07 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1705398487; a=rsa-sha256;
	cv=none;
	b=ihOUNO4M6IrA61d3hWoEptkgUAXptZTnoP3cOVq5XXUdZeUUXvSlkOhJim45KJgfTgy4qb
	jSrGr+NtsIm4OO7mfv1Nviiz489ge5DxPH/XekWLqkOd2bq9hnCw0VNKzLecQmsxri9a97
	UEEIp48Kz+UIFcglxfq+TP4KTGtmuX0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="E0X/tHWC";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1705398487;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/VCLSujzzlDwuQlHwmx12Nj9mX+R3Jv83uQp+uToPts=;
	b=BCRV74WObuYDKrQu27tEH4H/GhDcR43t4NIZd6S6pO2UJ3HqMBr8PxnlZQ5zfBFW20vJ8k
	Wq3A2wAjG57hebxmMUySpfpHP4Nso51tizFRzoHB53ummUTdP7BEF6cLV8yaCQGdzzRn+l
	VZRFiUEDO4YP9jHPdWElhbpOqCq6BMw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1705398486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/VCLSujzzlDwuQlHwmx12Nj9mX+R3Jv83uQp+uToPts=;
	b=E0X/tHWCKP+I7eyjg29dLJkauXq79JyGU0MK8In7XKzm4VDEmrdqTc7dxx6so8eYcL53gf
	Nwhgz0OCj2RZ4EMqm4cBJVv+cwNETy7TDwSefwODFUXjgDw6u+HYRWMZ5BDqzU9veqE+FB
	MnYtekoPtvzsXOZZa7VducunC5Fbg8s=
From: Sven Eckelmann <sven@narfation.org>
To: linus.luessing@c0d3.blue
Cc: b.a.t.m.a.n@lists.open-mesh.org, clm@fb.com, davem@davemloft.net,
 dsterba@suse.com, edumazet@google.com, josef@toxicpanda.com, kuba@kernel.org,
 linux-btrfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
 syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+ebe64cc5950868e77358@syzkaller.appspotmail.com>
Subject: Re: [syzbot] [btrfs?] memory leak in corrupted
Date: Tue, 16 Jan 2024 10:48:03 +0100
Message-ID: <23660052.EfDdHjke4D@ripper>
In-Reply-To: <000000000000beadc4060f0cbc23@google.com>
References: <000000000000beadc4060f0cbc23@google.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9125406.EvYhyI6sBW";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: NQXUIV5KCH7C2XEVOO7BVYTPUEE7CP62
X-Message-ID-Hash: NQXUIV5KCH7C2XEVOO7BVYTPUEE7CP62
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NQXUIV5KCH7C2XEVOO7BVYTPUEE7CP62/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart9125406.EvYhyI6sBW
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: linus.luessing@c0d3.blue
Subject: Re: [syzbot] [btrfs?] memory leak in corrupted
Date: Tue, 16 Jan 2024 10:48:03 +0100
Message-ID: <23660052.EfDdHjke4D@ripper>
In-Reply-To: <000000000000beadc4060f0cbc23@google.com>
References: <000000000000beadc4060f0cbc23@google.com>
MIME-Version: 1.0

@Linus, this looks like something for you.

On Tuesday, 16 January 2024 10:27:20 CET syzbot wrote:
> syzbot found the following issue on:
> 
> HEAD commit:    052d534373b7 Merge tag 'exfat-for-6.8-rc1' of git://git.ke..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=14620debe80000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=a7031f9e71583b4a
> dashboard link: https://syzkaller.appspot.com/bug?extid=ebe64cc5950868e77358
> compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16a344c1e80000
> 
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/82a7201eef4c/disk-052d5343.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/ca12b4c31826/vmlinux-052d5343.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/3f07360ba5a8/bzImage-052d5343.xz
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+ebe64cc5950868e77358@syzkaller.appspotmail.com

The relevant line is the batadv_mcast_forw_tracker_tvlv_handler registration 
in batadv_mcast_init() which was introduced in
commit 07afe1ba288c ("batman-adv: mcast: implement multicast packet reception and forwarding")

And I can't find the batadv_tvlv_handler_unregister for 
BATADV_TVLV_MCAST_TRACKER in batadv_mcast_free()

Kind regards,
	Sven

> 
> BUG: memory leak
> unreferenced object 0xffff88811c71a980 (size 64):
>   comm "syz-executor.7", pid 5063, jiffies 4294953937
>   hex dump (first 32 bytes):
>     00 00 00 00 00 00 00 00 20 8e 7e 1c 81 88 ff ff  ........ .~.....
>     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>   backtrace (crc 9f8721dd):
>     [<ffffffff815f7d53>] kmemleak_alloc_recursive include/linux/kmemleak.h:42 [inline]
>     [<ffffffff815f7d53>] slab_post_alloc_hook mm/slub.c:3817 [inline]
>     [<ffffffff815f7d53>] slab_alloc_node mm/slub.c:3860 [inline]
>     [<ffffffff815f7d53>] kmalloc_trace+0x283/0x330 mm/slub.c:4007
>     [<ffffffff84aae617>] kmalloc include/linux/slab.h:590 [inline]
>     [<ffffffff84aae617>] kzalloc include/linux/slab.h:711 [inline]
>     [<ffffffff84aae617>] batadv_tvlv_handler_register+0xf7/0x2a0 net/batman-adv/tvlv.c:560
>     [<ffffffff84a8d09f>] batadv_mcast_init+0x4f/0xc0 net/batman-adv/multicast.c:1926
>     [<ffffffff84a895b9>] batadv_mesh_init+0x209/0x2f0 net/batman-adv/main.c:231
>     [<ffffffff84a9fa88>] batadv_softif_init_late+0x1f8/0x280 net/batman-adv/soft-interface.c:812
>     [<ffffffff83f48559>] register_netdevice+0x189/0xca0 net/core/dev.c:10188
>     [<ffffffff84a9f255>] batadv_softif_newlink+0x55/0x70 net/batman-adv/soft-interface.c:1088
>     [<ffffffff83f61dc0>] rtnl_newlink_create net/core/rtnetlink.c:3515 [inline]
>     [<ffffffff83f61dc0>] __rtnl_newlink+0xb10/0xec0 net/core/rtnetlink.c:3735
>     [<ffffffff83f621bc>] rtnl_newlink+0x4c/0x70 net/core/rtnetlink.c:3748
>     [<ffffffff83f5cd1f>] rtnetlink_rcv_msg+0x22f/0x5b0 net/core/rtnetlink.c:6615
>     [<ffffffff84093291>] netlink_rcv_skb+0x91/0x1d0 net/netlink/af_netlink.c:2543
>     [<ffffffff84092242>] netlink_unicast_kernel net/netlink/af_netlink.c:1341 [inline]
>     [<ffffffff84092242>] netlink_unicast+0x2c2/0x440 net/netlink/af_netlink.c:1367
>     [<ffffffff84092701>] netlink_sendmsg+0x341/0x690 net/netlink/af_netlink.c:1908
>     [<ffffffff83ef2912>] sock_sendmsg_nosec net/socket.c:730 [inline]
>     [<ffffffff83ef2912>] __sock_sendmsg+0x52/0xa0 net/socket.c:745
>     [<ffffffff83ef5af4>] __sys_sendto+0x164/0x1e0 net/socket.c:2191
>     [<ffffffff83ef5b98>] __do_sys_sendto net/socket.c:2203 [inline]
>     [<ffffffff83ef5b98>] __se_sys_sendto net/socket.c:2199 [inline]
>     [<ffffffff83ef5b98>] __x64_sys_sendto+0x28/0x30 net/socket.c:2199


--nextPart9125406.EvYhyI6sBW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmWmUNMACgkQXYcKB8Em
e0ak3w//d9HRSZJiTWYrWkiOMLEoDd7oWa9shGcdm9qS+bmJ4RWkqyLQKWiLl6yz
CcGxtbDBUXvVgMUHX9BuctKnigZ7VA+7wMY1ZLVE0KUPOlqkvlW9GvkOutwa2f1d
hwFa2uPCSXqWbIaU6JjxNvHM0sEJou392MebhV5n9M9zJlS8/v5t7lwgKa3tnLL2
vhyqSKKs7BESIvUhI399nPr2AfOhw+qqndV35B5gAJVeHC+iSWBycKolP/LstaJq
Z7JE1eusP50i3vrSVIglwiefF7kUq1Y088F1nq2ommuVXFfPAxss5bwUupG7Jmtf
gIYIslX/eLNpahJvVIKNTMPBjfcaeEbT8e87xIzhT1H4quv2oApKfWTM5u0XryDK
29ICqroEH4DCv+gEYF4Miip40m982YtZlB1wnShFK3icFZaEGipgqxJ67/XJNkfP
GXdNnzWlEl6PXsS388TYLkQlxWdFNsSM08IPZjolOEgIDhZaM3AUCDUe22BWiN5Z
BdbeU3sWmiy3BaZ2fUh6M0Cawd1Oz4QneJl3rPce1jeDI4ee9CtTdgWd1/ziG8yH
0QhMTljzGz5WEaPBT9L7PsKf33/s/IY1GwXzB/maObFi10G6nn+743btOlCodOb3
i4lTc8Z3Vl+4CCl78CUfQemr/nd8irtzCJk/OJuUlOSmepgs+J4=
=A35g
-----END PGP SIGNATURE-----

--nextPart9125406.EvYhyI6sBW--



