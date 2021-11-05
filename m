Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DA531446E58
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Nov 2021 15:41:29 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D5F2880D74;
	Sat,  6 Nov 2021 15:41:27 +0100 (CET)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E499880313
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  6 Nov 2021 00:22:22 +0100 (CET)
Received: by mail-ed1-x52f.google.com with SMTP id m14so37463842edd.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 05 Nov 2021 16:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=w2gOE+DOXszVA72y+bPQ9DsIj9a+sryR+aGOxD13eEc=;
        b=N4U1tAKTHmdncPeJZ2zm64ql4Cndw4IhqV1QLsD9NSJluQeykXEprBaem50h4QjvjS
         mdcx0wxonVRlt/cAqBjc8QM4DnbnTwUtrdZ6+gAoJnH/buaoDgL42ea8MWb+vrZO3ZWA
         R2YIrW0CdepVvYww2ljQI4/cjeWq3nwlObIUnC7+sDRe7a8yeIy/V/YRRpgjIpA7kUDu
         NixkYVU7aAWYHWIwJby1g5SgAmM4NtokoQa0inVx7hklpfKvLCUTK1oelZJwPEFogxdG
         cOyugD+Qgtvsnn3r4hAGUUx9qytGlnBKLqSbmiWvdHge0BWYIxvSOU9HsHqmhADo347a
         fj7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=w2gOE+DOXszVA72y+bPQ9DsIj9a+sryR+aGOxD13eEc=;
        b=40WV07CR6EpMRt/nfyA17DYA/07BEH3gnmQvSCq8v+q4vmBj35swHmuJpId1THQGB2
         8mnlK4EJ0e3lzrw5nkVOBM2OuiYSy7doX2eb3aZr4Bktz4eM11aT7mKM1ycmvwoWcDgZ
         LutXE/npzqra0JXbuLkiA3TIJWtR5yIxl5xWtJeVQngQAp5/+lYBgeVVgoGKj1aVg5WW
         h7fjBHRfH/vc0DkwrqrxRLCIPXppZRrG4xqhhIu8vsowjr6ynX3zSU1x2DDMd9jBKA8A
         OcT5+helhlkcGl4h8YVMSiZ4z4k5XQ4qAajymBpunIAInGjz3H1KzY1jtHSJA+824gmE
         XXRA==
X-Gm-Message-State: AOAM5338PJGAPzLIRixGTGsQqqsKRB20x4n7wUw0NhCnwn7+RyQtHdUh
	wQc3lOmwmtHThd17s9m+jhg6sE3jYYzF8NjC7gbC8x+3xCU=
X-Google-Smtp-Source: ABdhPJzI0QbYHSxjUHz2eLETu5tdITgXInJxngHva1FQYcRchEQG4Vi2bX85fMeT/Z9jIHLwGgnYoo/kZfFgfpsfOzY=
X-Received: by 2002:a17:907:60ca:: with SMTP id hv10mr25445819ejc.500.1636154542057;
 Fri, 05 Nov 2021 16:22:22 -0700 (PDT)
MIME-Version: 1.0
From: Dweb Fan <dwebfan@gmail.com>
Date: Fri, 5 Nov 2021 16:22:11 -0700
Message-ID: <CA+HNRgC0FKMtSiDOZR3E_T_77C0QXv+r9kqncKNO5-ARwj4ZYA@mail.gmail.com>
Subject: Unable to get DHCP after join wlan0 WIFI mesh network
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=N4U1tAKT;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of dwebfan@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=dwebfan@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1636154542; a=rsa-sha256;
	cv=none;
	b=XNQeIiE415UPChP93HdChQn7x0B44K/9g0NurMWDWSxrzNKXqq3ID050sIwnuA4jJ8lovs
	iEtIdR1MiorQIIzLNElHriGcQbrEfYwrqBmSEd7mTG0bmfK+SvX1HWSescCQZklbtLiIiY
	NJ8VrQrXGY1AMvsVV5CNqm/cBCmk1Vw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1636154542;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=w2gOE+DOXszVA72y+bPQ9DsIj9a+sryR+aGOxD13eEc=;
	b=ui0ABgWEiuOdotEbj4zSdt8zD0qkQdR85DBZAaSnUQW+bBms0ji7W0phaT1RUQMBmmJrZB
	40h2xjlSH2p2pZ1dFxEpIC+5PY9YVdzHh7sFs4DIL0AefC1ufwYkg3n7704O5T6y2PKy89
	aOIt5djCuCe61o8q5kenUfF5021cHsI=
X-MailFrom: dwebfan@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: YOLDZ3HMPESD4JL46GGTE7N5T6DSQW2J
X-Message-ID-Hash: YOLDZ3HMPESD4JL46GGTE7N5T6DSQW2J
X-Mailman-Approved-At: Sat, 06 Nov 2021 14:41:24 +0100
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YOLDZ3HMPESD4JL46GGTE7N5T6DSQW2J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Dear all,

Thanks for making such a great project!

I'm following the guide from
https://github.com/binnes/WiFiMeshRaspberryPi, and setting up wifi
mesh network on top of raspberry pi 3B+. Below steps are good now:
 - batctl ping works (peer can ping each other through both IP and MAC addr=
ess)
 - mac os wifi client can discover the ad-host network, and join the networ=
k

But, after joining the wifi network, the client can not get DHCP, and
I did below debugging
1. configure static IP in the same subnet at the mac OS wifi client
manually, and unable to ping other nodes
2. I run "batctl td bat0" to dump packets, and I am unable to see
packets from wifi client MAC address
3. I run "batctl td wlan0" to dump packets, and I can see dhcp
request, but unable to see further packets
$ sudo batctl td -p 256 wlan0
09:01:23.945726 IP 0.0.0.0.68 > 255.255.255.255.67: BOOTP/DHCP,
Request from 18:65:90:d1:cf:79, length 300
09:01:26.457608 IP 0.0.0.0.68 > 255.255.255.255.67: BOOTP/DHCP,
Request from 18:65:90:d1:cf:79, length 300
09:01:30.999474 IP 0.0.0.0.68 > 255.255.255.255.67: BOOTP/DHCP,
Request from 18:65:90:d1:cf:79, length 300
09:01:39.903231 IP 0.0.0.0.68 > 255.255.255.255.67: BOOTP/DHCP,
Request from 18:65:90:d1:cf:79, length 300

4. I follow the document
https://www.kernel.org/doc/Documentation/networking/batman-adv.txt,
but seems like unable to see batman related files/folders under
/sys/class/net/wlan0. Here is output:
$ ls /sys/class/net/wlan0
addr_assign_type  carrier             device    duplex
ifindex    mtu                   operstate       phys_switch_id  speed
      tx_queue_len  wireless
address           carrier_changes     dev_id    flags
iflink     name_assign_type      phy80211        power
statistics  type
addr_len          carrier_down_count  dev_port  gro_flush_timeout
link_mode  napi_defer_hard_irqs  phys_port_id    proto_down
subsystem   uevent
broadcast         carrier_up_count    dormant   ifalias
master     netdev_group          phys_port_name  queues
testing     upper_bat0

I searched from google, and seems all documents only mentioned about
setting up bat0 interfaces, but not one like me. So wonder to know if
anyone here can share insight on how to debug it.

More information for your reference:
- Hardware: Raspberry PI 3B+
- OS Image: The latest 64bit Raspberry OS
- Kernel: 5.10.63-v8+ #1459 SMP PREEMPT Wed Oct 6 16:42:49 BST 2021 aarch64
- Batctl version: 2021.3
- Output of "batctl if"
$ sudo batctl if
wlan0: active
- Output of "ifconfig"
$ ifconfig
bat0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.199.1  netmask 255.255.255.0  broadcast 192.168.199.25=
5
        inet6 fe80::1eba:7eaf:a368:c6b  prefixlen 64  scopeid 0x20<link>
        ether 26:62:68:1a:9e:60  txqueuelen 1000  (Ethernet)
        RX packets 459  bytes 19278 (18.8 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 1  bytes 54 (54.0 B)
        TX errors 0  dropped 124 overruns 0  carrier 0  collisions 0

eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.1.45  netmask 255.255.255.0  broadcast 10.0.1.255
        inet6 fd7d:f80:9055:0:1d0c:6985:efd9:a41  prefixlen 64
scopeid 0x0<global>
        inet6 2601:646:8600:6ba:a5c0:ef19:893f:d9b3  prefixlen 64
scopeid 0x0<global>
        inet6 fd7d:f80:9055::5a8  prefixlen 128  scopeid 0x0<global>
        inet6 fe80::2435:6879:8cc:a782  prefixlen 64  scopeid 0x20<link>
        ether b8:27:eb:14:84:89  txqueuelen 1000  (Ethernet)
        RX packets 2943  bytes 484286 (472.9 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 582  bytes 86581 (84.5 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 9  bytes 728 (728.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 9  bytes 728 (728.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlan0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 169.254.75.154  netmask 255.255.0.0  broadcast 169.254.255.255
        inet6 fe80::ba27:ebff:fe41:d1dc  prefixlen 64  scopeid 0x20<link>
        ether b8:27:eb:41:d1:dc  txqueuelen 1000  (Ethernet)
        RX packets 289  bytes 91371 (89.2 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 4084  bytes 467767 (456.8 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

- Files under /sys/class/net/bat0
$ tree /sys/class/net/bat0
/sys/class/net/bat0
=E2=94=9C=E2=94=80=E2=94=80 addr_assign_type
=E2=94=9C=E2=94=80=E2=94=80 address
=E2=94=9C=E2=94=80=E2=94=80 addr_len
=E2=94=9C=E2=94=80=E2=94=80 broadcast
=E2=94=9C=E2=94=80=E2=94=80 carrier
=E2=94=9C=E2=94=80=E2=94=80 carrier_changes
=E2=94=9C=E2=94=80=E2=94=80 carrier_down_count
=E2=94=9C=E2=94=80=E2=94=80 carrier_up_count
=E2=94=9C=E2=94=80=E2=94=80 dev_id
=E2=94=9C=E2=94=80=E2=94=80 dev_port
=E2=94=9C=E2=94=80=E2=94=80 dormant
=E2=94=9C=E2=94=80=E2=94=80 duplex
=E2=94=9C=E2=94=80=E2=94=80 flags
=E2=94=9C=E2=94=80=E2=94=80 gro_flush_timeout
=E2=94=9C=E2=94=80=E2=94=80 ifalias
=E2=94=9C=E2=94=80=E2=94=80 ifindex
=E2=94=9C=E2=94=80=E2=94=80 iflink
=E2=94=9C=E2=94=80=E2=94=80 link_mode
=E2=94=9C=E2=94=80=E2=94=80 lower_wlan0 ->
../../../platform/soc/3f300000.mmcnr/mmc_host/mmc1/mmc1:0001/mmc1:0001:1/ne=
t/wlan0
=E2=94=9C=E2=94=80=E2=94=80 mtu
=E2=94=9C=E2=94=80=E2=94=80 name_assign_type
=E2=94=9C=E2=94=80=E2=94=80 napi_defer_hard_irqs
=E2=94=9C=E2=94=80=E2=94=80 netdev_group
=E2=94=9C=E2=94=80=E2=94=80 operstate
=E2=94=9C=E2=94=80=E2=94=80 phys_port_id
=E2=94=9C=E2=94=80=E2=94=80 phys_port_name
=E2=94=9C=E2=94=80=E2=94=80 phys_switch_id
=E2=94=9C=E2=94=80=E2=94=80 power
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 autosuspend_delay_ms
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 control
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 runtime_active_time
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 runtime_status
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 runtime_suspended_time
=E2=94=9C=E2=94=80=E2=94=80 proto_down
=E2=94=9C=E2=94=80=E2=94=80 queues
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx-0
=E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rps_cpus
=E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 rps_flow_cnt
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 tx-0
=E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 byte_queue_limits
=E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 hold_time
=E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 inflight
=E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 limit
=E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 limit_max
=E2=94=82       =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 limit_min
=E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 traffic_class
=E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 tx_maxrate
=E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 tx_timeout
=E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 xps_cpus
=E2=94=82       =E2=94=94=E2=94=80=E2=94=80 xps_rxqs
=E2=94=9C=E2=94=80=E2=94=80 speed
=E2=94=9C=E2=94=80=E2=94=80 statistics
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 collisions
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 multicast
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_bytes
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_compressed
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_crc_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_dropped
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_fifo_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_frame_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_length_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_missed_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_nohandler
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_over_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rx_packets
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 tx_aborted_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 tx_bytes
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 tx_carrier_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 tx_compressed
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 tx_dropped
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 tx_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 tx_fifo_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 tx_heartbeat_errors
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 tx_packets
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 tx_window_errors
=E2=94=9C=E2=94=80=E2=94=80 subsystem -> ../../../../class/net
=E2=94=9C=E2=94=80=E2=94=80 testing
=E2=94=9C=E2=94=80=E2=94=80 tx_queue_len
=E2=94=9C=E2=94=80=E2=94=80 type
=E2=94=94=E2=94=80=E2=94=80 uevent

8 directories, 73 files

Looking forward to hearing from you and have a good day!

Best Regards
Dweb
