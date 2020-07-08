Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E5431218356
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  8 Jul 2020 11:15:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B2232805F9;
	Wed,  8 Jul 2020 11:15:43 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9988580241
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  8 Jul 2020 11:15:41 +0200 (CEST)
Received: from prime.localnet (p200300c5970ac600b5bb90d1e84cee84.dip0.t-ipconnect.de [IPv6:2003:c5:970a:c600:b5bb:90d1:e84c:ee84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 42E1F6206B;
	Wed,  8 Jul 2020 11:15:41 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Batman_V Originator Loop Issue
Date: Wed, 08 Jul 2020 11:15:40 +0200
Message-ID: <5716273.fDpRzsxG9E@prime>
In-Reply-To: <20200707194731.1176.30400@diktynna.open-mesh.org>
References: <20200707194731.1176.30400@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2059327.CWxM6B85zC"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1594199741;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lS97xJyPJwQ1BKaQI4lmM7JMClbNgYWFG8u6xox2vaQ=;
	b=WcR0TR1GuzlrPQMvcT8mGRj/J2vc9s1UEVbS+UZlY29zy4TQMbXp/PSVcf/H2acUbYrJVs
	fNYhXBLz0LAglrWCjp87NX1aWRBWE/iew9lGCexuUBZ/BZ8+KPqDGKmzABMjvR+rjMGL6N
	v+Z8jRPFW1AjGv8k6JVFJgI/hAltwyk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1594199741; a=rsa-sha256;
	cv=none;
	b=oxnuE2/EthZkBhtIMjsWmCxIqFwIiB8vA1BQvX9IUzGpwwPnFRyOavgXqYcPuye4/cZVqT
	8YpEU4jmII3yz2gTN5+dMS6Z7hNcbW90hte611JuK8dkvOYeg2Pm54JDOEljkum1CNBZ+j
	dCh9aAbg6WKvtt3LKelSaCzTwTFKwAY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: O7MSVOSHBEV6N26OL23CDIKYBKJPMDWL
X-Message-ID-Hash: O7MSVOSHBEV6N26OL23CDIKYBKJPMDWL
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: lavincent15@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O7MSVOSHBEV6N26OL23CDIKYBKJPMDWL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2059327.CWxM6B85zC
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Luke,

can you please describe which nodes are connected to the LAN and which are 
not? You say "one is connected to LAN" and the others are "operating as an 
access point", does that mean they are not connected to the same LAN via 
Ethernet?

If multiple nodes are connected and bridged to the same LAN, bridge loop 
avoidance should be enabled - you have that in your config, but you could 
double check with "batctl bl" and then "batctl bbt"/"batctl cl" (please post 
these tables if you think this could be connected).

You could also try disabling distributed arp table and multicast mode, just to 
make sure this is not shooting us in the foot here. Those optimizations are 
not really needed for such a small network.

Cheers,
       Simon

On Tuesday, July 7, 2020 9:47:31 PM CEST lavincent15@gmail.com wrote:
> Running batctl 2020.1-openwrt-1 [batman-adv: 2020.1-openwrt-2]
> 
> When running a two node network with one node connected to my lan and the
> other operating as an access point, my network works great. I can connect
> clients to my batman nodes and access my LAN.
> 
> When booting up a third node. My network works for 1 minute, then breaks
> down. My LAN cannot ping any of the batman nodes anymore.
> 
> I keep receiving messages like this: "[ 2900.755655] br-lan: received packet
> on bat0 with own address as source address (addr:8c:ae:4c:db:14:5c,
> vlan:0)" which signifies a bridge loop I think.
> 
> My originator messages look wrong as I can see my host originator messages
> along with all the neigbor nodes:
> 
> root@OpenWrt:/etc/config# batctl o -n
> [B.A.T.M.A.N. adv 2020.1-openwrt-2, MainIF/MAC: mesh0/00:30:1a:4e:b8:26
> (bat0/f2:07:f1:5f:e0:78 BATMAN_V)] Originator        last-seen (
> throughput)  Nexthop           [outgoingIF] * 00:30:1a:4e:b8:18    0.570s (
>       86.7) 00:30:1a:4e:b8:2e [     mesh0] 00:30:1a:4e:b8:18    0.570s (   
>    21.6) 00:30:1a:4e:b8:18 [     mesh0] * 00:30:1a:4e:b8:2e    1.510s (    
>  212.6) 00:30:1a:4e:b8:2e [     mesh0] 00:30:1a:4e:b8:2e    1.510s (      
> 38.9) 00:30:1a:4e:b8:18 [     mesh0] 00:30:1a:4e:b8:26    1.510s (      
> 38.9) 00:30:1a:4e:b8:18 [     mesh0] * 00:30:1a:4e:b8:26    1.510s (     
> 108.9) 00:30:1a:4e:b8:2e [     mesh0]
> 
> root@OpenWrt:/etc/config# batctl n -n
> [B.A.T.M.A.N. adv 2020.1-openwrt-2, MainIF/MAC: mesh0/00:30:1a:4e:b8:26
> (bat0/f2:07:f1:5f:e0:78 BATMAN_V)] IF             Neighbor             
> last-seen
> 00:30:1a:4e:b8:2e    0.490s (      179.0) [     mesh0]
> 00:30:1a:4e:b8:18    0.380s (       79.2) [     mesh0]
> 
> 
> 
> Here is my /etc/config/network:
> config interface 'loopback'
>         option ifname 'lo'
>         option proto 'static'
>         option ipaddr '127.0.0.1'
>         option netmask '255.0.0.0'
> 
> config globals 'globals'
>         option ula_prefix 'fdc4:e092:8929::/48'
> 
> config interface 'lan'
>         option type 'bridge'
>         option proto 'static'
>         option ipaddr '192.168.0.32'
>         option netmask '255.255.255.0'
>         option ip6assign '60'
>         option gateway '192.168.0.1'
>         list dns '8.8.8.8'
>         option ifname 'bat0 eth0'
> 
> config interface 'nwi_mesh0'
>         option mtu '2304'
>         option proto 'batadv_hardif'
>         option master 'bat0'
> 
> config interface 'bat0'
>         option proto 'batadv'
>         option routing_algo 'BATMAN_V'
>         option aggregated_ogms '1'
>         option ap_isolation '0'
>         option bonding '0'
>         option fragmentation '1'
>         option gw_mode 'server'
>         option log_level '0'
>         option orig_interval '1000'
>         option bridge_loop_avoidance '1'
>         option distributed_arp_table '1'
>         option multicast_mode '1'
>         option network_coding '0'
>         option hop_penalty '30'
>         option isolation_mark '0x00000000/0x00000000'
> 
> 
> And here is my /etc/config/wireless
> root@OpenWrt:/etc/config# cat wireless
> config wifi-device 'radio0'
>         option type 'mac80211'
>         option channel '36'
>         option hwmode '11a'
>         option path
> 'soc0/soc/1ffc000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0' option htmode
> 'VHT80'
> 
> config wifi-iface 'mesh0'
>         option device 'radio0'
>         option ifname 'mesh0'
>         option network 'nwi_mesh0'
>         option mode 'mesh'
>         option mesh_fwding '0'
>         option mesh_id 'batman_mesh'
>         option encryption 'none'
> 
> config wifi-iface 'wifinet0'
>         option device 'radio0'
>         option mode 'ap'
>         option ssid 'N2-Lander'
>         option encryption 'psk2'
>         option key 'finnjamin'
>         option ifname 'wlan0'
>         option network 'lan'
> 
> 
> Any and all help is greatly appreciated


--nextPart2059327.CWxM6B85zC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl8FjrwACgkQoSvjmEKS
nqHkgw//cgsQzGZbUiE/JSDWFOeRwM7Uqt3jUeq1iqM0gfqlW34uzpS8f3ggGH4F
du7c3TnMWyvlXqU4gW6OikoER5fOa/yBLUC0KK3iaJKPy1EEUMh9bZsmJLtoIDfj
WpwghXnFDYu5So+RPlp5eKTp15MGY9gUiZigzq4v19gM7Pq8Qmklr2ERDsRJzc5Q
98zk+5u6KNiyVM06V1K9swKExRm7yGCCWWO5+qtNxCJcueNejLrYJdLeX1LhAzi3
OeNczSFwOk/3807ANuNwa5yBMC1B6068Yy15+zypHGLpiD2c73+OITJOmBbPZY/o
cIUO3oCu4wAibmVQDvB6EEj2aGBup9XPJ7iRXVU5AqRDg6aTYnEKxWK6XMdAVytq
SlGn92M9dU14BhpkRDr78Fskgtd/k5BNMpNxwfEM9l1CePucA3s6GFHGXmxKWj53
aKJzfb2WgiYAb45EeS3bSx2TslQHyg866attJang3uA1e/Js9rp1qpCkUXoWitO0
ukScUaE01WxAHTag9f1RNpnOOv8Vt1syuCq9cuUOiYHB6dh/dUXxfgQppObPJheY
6bdbJZTPkP9zqv6AtgHHWLLwyglU8h2aVQdxOWOSdYjLWUCZrpd1rlDEExTLsndF
u1ZD49fGYSJg5eJ6jAcKoMre+9Dby53AD0C/nzB9tFTnePs8JJM=
=DXUX
-----END PGP SIGNATURE-----

--nextPart2059327.CWxM6B85zC--


