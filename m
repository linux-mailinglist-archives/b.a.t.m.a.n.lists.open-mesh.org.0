Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB971DFF6F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 May 2020 16:44:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 894F4805AF;
	Sun, 24 May 2020 16:44:11 +0200 (CEST)
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com [IPv6:2607:f8b0:4864:20::142])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2D74B80177
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 May 2020 16:44:09 +0200 (CEST)
Received: by mail-il1-x142.google.com with SMTP id 17so15307616ilj.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 May 2020 07:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=x8ULK0VqLHpUEce/FJhzdkYrIuICfiyytK7eI6dCyRQ=;
        b=tkGd13HfrGGdfBrrwrex342FRo/kZpJzKdKXPEmmtz/07I/1mGbt+bsIV2xtdyl39h
         9WgI5GC8YUfCqiY42RKaJzaxBlcrQ/12kkuAp+h0awqvg2Wec6FpSN6+8zMOGtXuX29E
         d48xWffMdfhS0AMSsmoZ1HNr1WEnRxEoZpDTAuuIv+7WkC103zh9G6u6vQXEq0TPd8ny
         K1wVikH30FD/m5Zlovt/+nHt5FkZX01PY45GcgG8oMJlPqxusUuIb8Fk6FKGUbIZ5y+V
         8cB1fUAxfZUqNA/NqRJjl+zVpiFh4vGgjr7Fg4Qz3qdFyEnVhRBygILyZj2tN/gn2Cui
         gbjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=x8ULK0VqLHpUEce/FJhzdkYrIuICfiyytK7eI6dCyRQ=;
        b=B01VkIhU2JFnyx+LIVAeJM36+JS/TneZ3QqmY6H35ITVHnv9g/mGv5BfUaIBMHFl7z
         nBExk28TvJ3Hefpot5XSCUYFN+fc3q4fT3iZ0bYaK+WnEAc7PhU/P9vSmT5qmZbnfax6
         YBplsyxYB2vOJSUlj8fvnR/7VQztlOq8cbcjCsd2Xp9tz382g3EPkB3WJ53xr7NvRfYh
         j12WQToHrJrUmowJjHCcuo0R4C47cf1MuPIAd98nRIeggB7QfmdlRSAWNuPTm3PPFDli
         FzFCMK6TOU7AD+5brpRyvvuCjbX8gjyB2nbSZZrlx50zJ0ajoHzd818xRSw75x56omwX
         Bu2A==
X-Gm-Message-State: AOAM530FRMu73DYuOcflPxkWDqcpw0CYINH0ZavzDPJBEcnQGZ2SmwDm
	7DNrgSXnnZYGmytmKMAHpaqPNO6RJkYHVE8lpgPnRbZ0FJA=
X-Google-Smtp-Source: ABdhPJw1zcIoa102c5W9Hbci4srcnY0xBO1nBWHaL/0VdgZEe1l69z5SxdHhItwImxFYBJDSd262nJXytbi/irkdZ3Y=
X-Received: by 2002:a92:5b13:: with SMTP id p19mr21604242ilb.104.1590331447339;
 Sun, 24 May 2020 07:44:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com>
 <4485194.d5W8GeZ6RB@sven-edge>
In-Reply-To: <4485194.d5W8GeZ6RB@sven-edge>
From: Alexey Ermakov <axel101@gmail.com>
Date: Sun, 24 May 2020 17:43:55 +0300
Message-ID: <CAOVt3fE8-U73oJV2XjnxFzWc35LAMeXeaNsTUUgPaLqvchv-Cw@mail.gmail.com>
Subject: Re: Batman-adv packet retranslation
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590331449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=x8ULK0VqLHpUEce/FJhzdkYrIuICfiyytK7eI6dCyRQ=;
	b=fWfZ+zMAGGQr8KrnNH+U8BktsypM+I3dAI4jIAha9oaKxkYfvh0NlcvITVBG9DVkS00g78
	p0hBDleX+nbCZBplWKriHCK2GqWAtWjNqlQbEC2UaQKyzjSpDt2w4KwGYRioxchGrM+Gj6
	wXHe7wgjT/KFPZZanhXtFXke13xsKrY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590331449; a=rsa-sha256;
	cv=none;
	b=jiIhbq9MlUPMDa/XuFgn1+cz5RQhu6t4+1g4ZQ5e6Qk2kMxmK/vVBKsDHZcXLoPTJJL4C8
	nEXDr7lnguAkJiD+OQfT4YLGNIUHtW6QI6F3ot7WZ6o9YKckqKRiwVaexbgubp4fD0Q737
	nmUJgOaSHRUQHCDtlxl1w+++g+Qy/yo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=tkGd13Hf;
	spf=pass (diktynna.open-mesh.org: domain of axel101@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=axel101@gmail.com
Message-ID-Hash: W2CHCRTNGIBVYVMVBF3M6OA4RNOAU7GL
X-Message-ID-Hash: W2CHCRTNGIBVYVMVBF3M6OA4RNOAU7GL
X-MailFrom: axel101@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W2CHCRTNGIBVYVMVBF3M6OA4RNOAU7GL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Sorry, I didn't provided full information about experiment conditions.
I could reproduce issue on virtual machines.
I started 3 nodes with virtual interfaces eth0 which linked to host
bridge interface br0.
Network traffic between node 1 and node 3 drops by nft as described
Sven Eckelmann above.
At start moment br0 is down.
After virtual machines had booted I configured them by following steps:
1) insmod /usr/batman-adv.ko
2) ifconfig eth0 up
3) batctl ra BATMAN_V
4 batctl if add eth0
5) ifconfig bat0 192.168.1.<n> up      NOTE: 'n' is node numer: 1, 2 or 3
6) batctl hardif eth0 to 100                NOTE: If sklip this step,
all works fine!

After this I started host bridge interface br0. NOTE: if bridge had
started before batman configured all works fine

After these steps I have following results:
---
NODE 1:
(none)# ip -o link show dev eth0
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
master bat0 state UP mode DEFAULT group default qlen 1000\
link/ether 00:04:23:dc:3b:01 brd ff:ff:ff:ff
:ff:ff
(none)# ip -o link show dev bat0
17: bat0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue
state UNKNOWN mode DEFAULT group default qlen 1000\    link/ether
62:7f:0f:87:43:78 brd ff:ff:ff:ff:ff:ff
(none)# batctl o
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/00:04:23:dc:3b:01
(bat0/62:7f:0f:87:43:78 BATMAN_V)]
  Originator        last-seen ( throughput)  Nexthop           [outgoingIF]
* 00:04:23:dc:3b:10    0.580s (        0.1)  00:04:23:dc:3b:10 [      eth0]

---
NODE 2:
(none)# ip -o link show dev eth0
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
master bat0 state UP mode DEFAULT group default qlen 1000\
link/ether 00:04:23:dc:3b:10 brd ff:ff:ff:ff
:ff:ff
(none)# ip -o link show dev bat0
17: bat0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue
state UNKNOWN mode DEFAULT group default qlen 1000\    link/ether
22:86:ba:4e:9c:5c brd ff:ff:ff:ff:ff:ff
(none)# batctl o
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/00:04:23:dc:3b:10
(bat0/22:86:ba:4e:9c:5c BATMAN_V)]
  Originator        last-seen ( throughput)  Nexthop           [outgoingIF]
* 00:04:23:dc:3b:01    0.960s (        0.1)  00:04:23:dc:3b:01 [      eth0]
* 00:04:23:dc:3b:1f    0.450s (        0.1)  00:04:23:dc:3b:1f [      eth0]

---
NODE 3:
(none)# ip -o link show dev eth0
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
master bat0 state UP mode DEFAULT group default qlen 1000\
link/ether 00:04:23:dc:3b:1f brd ff:ff:ff:ff
:ff:ff
(none)# ip -o link show dev bat0
17: bat0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue
state UNKNOWN mode DEFAULT group default qlen 1000\    link/ether
42:d8:87:c3:7e:6e brd ff:ff:ff:ff:ff:ff
(none)# batctl o
[B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/00:04:23:dc:3b:1f
(bat0/42:d8:87:c3:7e:6e BATMAN_V)]
  Originator        last-seen ( throughput)  Nexthop           [outgoingIF]
* 00:04:23:dc:3b:10    0.330s (        0.1)  00:04:23:dc:3b:10 [      eth0]

---
I didn't provided ping result because it's oblivious.
In my case eth0 not actualy ethernet connection between nodes, it is
connection to radio modem which configured as bridge and it can be
configured for a long time. Therefore, there is no guarantee that the
channel will be available at the batman setup time (but eth0 link is
UP).

=D0=BF=D1=82, 22 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 09:25, Sven Eckelma=
nn <sven@narfation.org>:
>
> On Thursday, 21 May 2020 19:13:18 CEST Alexey Ermakov wrote:
> [...]
> > I have 3 stations, st1, st2 and st3 with one active network interface.
> > This interface is configured so that st1 and st3 can see only st2.
> [...]
> > This works fine if I selecting B.A.T.M.A.N. IV algorithm, but doesn't
> > work in B.A.T.M.A.N.V.
>
> That's not a lot to work with. I am rather sure that the B.A.T.M.A.N. V
> developers will not be able to figure out what is going on with this
> information.
>
> I have just tried it out in my documented setup [1,2] and following
> test-init.sh::
>
>     #! /bin/sh
>
>     set -e
>     export PATH=3D"/host/batctl/:$PATH"
>
>     insmod /host/batman-adv/net/batman-adv/batman-adv.ko
>     batctl routing_algo BATMAN_V
>     /host/batctl/batctl if add enp0s1
>     ip link set up dev enp0s1
>     ip link set up dev bat0
>
>     MAC_PART=3D"$(ip link show enp0s1 | awk "/ether/ {print \$2}"| sed -e=
 "s/.*://" -e "s/[\\n\\ ].*//"|awk "{print (\"0x\"\$1)*1 }")"
>     IP_PART=3D"$(echo $MAC_PART|awk "{ print \$1 }")"
>     ip addr replace 192.168.55.${IP_PART}/24 dev bat0
>
> The used kernel version is next-20200521 and batman-adv 2020.1.
>
> These are the neighbor and originator tables of the devices + ping test
> results:
>
> * node1
>
>   - neighbor::
>
>       [B.A.T.M.A.N. adv 2020.1, MainIF/MAC: enp0s1/02:ba:de:af:fe:01 (bat=
0/12:99:c8:a5:1e:27 BATMAN_V)]
>       IF             Neighbor              last-seen
>       02:ba:de:af:fe:02    0.528s (        1.0) [    enp0s1]
>
>   - originator::
>
>       [B.A.T.M.A.N. adv 2020.1, MainIF/MAC: enp0s1/02:ba:de:af:fe:01 (bat=
0/12:99:c8:a5:1e:27 BATMAN_V)]
>          Originator        last-seen ( throughput)  Nexthop           [ou=
tgoingIF]
>        * 02:ba:de:af:fe:03    0.704s (        0.8)  02:ba:de:af:fe:02 [  =
  enp0s1]
>        * 02:ba:de:af:fe:02    0.704s (        1.0)  02:ba:de:af:fe:02 [  =
  enp0s1]
>
>   - bat0 ping::
>
>       $ for i in $(seq 1 3); do ping -q -c 3 192.168.55.$i; done
>       PING 192.168.55.1 (192.168.55.1) 56(84) bytes of data.
>
>       --- 192.168.55.1 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 28ms
>       rtt min/avg/max/mdev =3D 0.482/0.539/0.613/0.060 ms
>       PING 192.168.55.2 (192.168.55.2) 56(84) bytes of data.
>
>       --- 192.168.55.2 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 8ms
>       rtt min/avg/max/mdev =3D 1.797/1.940/2.060/0.114 ms
>       PING 192.168.55.3 (192.168.55.3) 56(84) bytes of data.
>
>       --- 192.168.55.3 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 10ms
>       rtt min/avg/max/mdev =3D 2.105/3.021/3.962/0.760 ms
>
>   - enp1s0 ping::
>
>       $ for i in $(seq 1 3); do ping -q -c 3 192.168.251.5$i; done
>       PING 192.168.251.51 (192.168.251.51) 56(84) bytes of data.
>
>       --- 192.168.251.51 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 36ms
>       rtt min/avg/max/mdev =3D 0.170/0.396/0.510/0.160 ms
>       PING 192.168.251.52 (192.168.251.52) 56(84) bytes of data.
>
>       --- 192.168.251.52 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 8ms
>       rtt min/avg/max/mdev =3D 1.572/2.353/3.192/0.664 ms
>       PING 192.168.251.53 (192.168.251.53) 56(84) bytes of data.
>
>       --- 192.168.251.53 ping statistics ---
>       3 packets transmitted, 0 received, +3 errors, 100% packet loss, tim=
e 41ms
>
> * node2
>
>   - neighbor::
>
>       [B.A.T.M.A.N. adv 2020.1, MainIF/MAC: enp0s1/02:ba:de:af:fe:02 (bat=
0/32:a0:63:19:b4:44 BATMAN_V)]
>       IF             Neighbor              last-seen
>       02:ba:de:af:fe:03    0.208s (        1.0) [    enp0s1]
>       02:ba:de:af:fe:01    0.344s (        1.0) [    enp0s1]
>
>   - originator::
>
>       [B.A.T.M.A.N. adv 2020.1, MainIF/MAC: enp0s1/02:ba:de:af:fe:02 (bat=
0/32:a0:63:19:b4:44 BATMAN_V)]
>          Originator        last-seen ( throughput)  Nexthop           [ou=
tgoingIF]
>        * 02:ba:de:af:fe:03    0.188s (        1.0)  02:ba:de:af:fe:03 [  =
  enp0s1]
>        * 02:ba:de:af:fe:01    0.016s (        1.0)  02:ba:de:af:fe:01 [  =
  enp0s1]
>
>   - bat0 ping::
>
>       $ for i in $(seq 1 3); do ping -q -c 3 192.168.55.$i; done
>       PING 192.168.55.1 (192.168.55.1) 56(84) bytes of data.
>
>       --- 192.168.55.1 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 7ms
>       rtt min/avg/max/mdev =3D 1.961/2.510/3.484/0.691 ms
>       PING 192.168.55.2 (192.168.55.2) 56(84) bytes of data.
>
>       --- 192.168.55.2 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 38ms
>       rtt min/avg/max/mdev =3D 0.287/0.481/0.606/0.140 ms
>       PING 192.168.55.3 (192.168.55.3) 56(84) bytes of data.
>
>       --- 192.168.55.3 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 9ms
>       rtt min/avg/max/mdev =3D 1.215/1.737/2.038/0.370 ms
>
>   - enp1s0 ping::
>
>       $ for i in $(seq 1 3); do ping -q -c 3 192.168.251.5$i; done
>       PING 192.168.251.51 (192.168.251.51) 56(84) bytes of data.
>
>       --- 192.168.251.51 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 10ms
>       rtt min/avg/max/mdev =3D 1.114/1.698/2.107/0.425 ms
>       PING 192.168.251.52 (192.168.251.52) 56(84) bytes of data.
>
>       --- 192.168.251.52 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 14ms
>       rtt min/avg/max/mdev =3D 0.360/0.747/1.270/0.384 ms
>       PING 192.168.251.53 (192.168.251.53) 56(84) bytes of data.
>
>       --- 192.168.251.53 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 7ms
>       rtt min/avg/max/mdev =3D 1.909/2.427/2.692/0.371 ms
>
> * node3
>
>   - neighbor::
>
>       [B.A.T.M.A.N. adv 2020.1, MainIF/MAC: enp0s1/02:ba:de:af:fe:03 (bat=
0/7a:f4:94:ef:b6:6d BATMAN_V)]
>       IF             Neighbor              last-seen
>       02:ba:de:af:fe:02    0.072s (        1.0) [    enp0s1]
>
>   - originator::
>
>       [B.A.T.M.A.N. adv 2020.1, MainIF/MAC: enp0s1/02:ba:de:af:fe:03 (bat=
0/7a:f4:94:ef:b6:6d BATMAN_V)]
>          Originator        last-seen ( throughput)  Nexthop           [ou=
tgoingIF]
>        * 02:ba:de:af:fe:01    0.764s (        0.8)  02:ba:de:af:fe:02 [  =
  enp0s1]
>        * 02:ba:de:af:fe:02    0.148s (        1.0)  02:ba:de:af:fe:02 [  =
  enp0s1]
>
>   - bat0 ping::
>
>       $ for i in $(seq 1 3); do ping -q -c 3 192.168.55.$i; done
>       PING 192.168.55.1 (192.168.55.1) 56(84) bytes of data.
>
>       --- 192.168.55.1 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 10ms
>       rtt min/avg/max/mdev =3D 1.736/2.948/3.925/0.910 ms
>       PING 192.168.55.2 (192.168.55.2) 56(84) bytes of data.
>
>       --- 192.168.55.2 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 11ms
>       rtt min/avg/max/mdev =3D 2.081/2.175/2.361/0.136 ms
>       PING 192.168.55.3 (192.168.55.3) 56(84) bytes of data.
>
>       --- 192.168.55.3 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 27ms
>       rtt min/avg/max/mdev =3D 0.278/0.489/0.649/0.156 ms
>
>   - enp1s0 ping::
>
>       $ for i in $(seq 1 3); do ping -q -c 3 192.168.251.5$i; done
>       PING 192.168.251.51 (192.168.251.51) 56(84) bytes of data.
>
>       --- 192.168.251.51 ping statistics ---
>       3 packets transmitted, 0 received, +3 errors, 100% packet loss, tim=
e 43ms
>       pipe 3
>       PING 192.168.251.52 (192.168.251.52) 56(84) bytes of data.
>
>       --- 192.168.251.52 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 10ms
>       rtt min/avg/max/mdev =3D 1.025/1.569/1.997/0.405 ms
>       PING 192.168.251.53 (192.168.251.53) 56(84) bytes of data.
>
>       --- 192.168.251.53 ping statistics ---
>       3 packets transmitted, 3 received, 0% packet loss, time 61ms
>       rtt min/avg/max/mdev =3D 0.214/0.376/0.480/0.117 ms
>
>
> And it seems I can communicate with all nodes perfectly fine. And the
> communication between node1 and node3 seems to be blocked as expected on
> enp1s0 (the slave device of bat0).
>
> Kind regards,
>         Sven
>
> [1] https://www.open-mesh.org/projects/open-mesh/wiki/Kernel_hacking_Debi=
an_image
> [2] https://www.open-mesh.org/projects/open-mesh/wiki/Advanced_Bridge_vir=
tual_network#Allow-communication-between-specific-nodes



--=20
=D0=95=D1=80=D0=BC=D0=B0=D0=BA=D0=BE=D0=B2 =D0=90=D0=BB=D0=B5=D0=BA=D1=81=
=D0=B5=D0=B9 =D0=95=D0=B2=D0=B3=D0=B5=D0=BD=D1=8C=D0=B5=D0=B2=D0=B8=D1=87.
