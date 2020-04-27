Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B000B1BA388
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 14:26:58 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6E00680737;
	Mon, 27 Apr 2020 14:26:57 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1587990415;
 b=eVGF/RrzQKAiJuI49J0JHzWHn19RloqzHhYsEImWMosBVpVCRwcECceiOo3j3pzoGBgrZ
 ME0Bf58pJOpxNHVl+1tkqhL55080nxgLM9Ddzsh8FXHk4Zx2EmPLRkRoPBUuqYhsf0hCwDJ
 Wrrl+SvPtpmXON9+DQKhQ18rin8SmdM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1587990415; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=UUxRGOHOqnj3tcBOfOxASd1IjQ9tApDq+g8fydvi/s8=;
 b=r2zYTKUsOSX5iOV7yUP0x5LgFCBIMQPFRsFqogOEndRMfQgCKjj5nnXEBscO9f7Wwmmxi
 EL3FkBvWBTelK6rEDde9TaflrU87MfqflcagsWGcnD9XfAcgZzCTRHYSe3L32byEnGx1CFB
 8i5mLZKL5FViBfVPvdpt4551cAR1XXU=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kayhan.name.tr;
  arc=pass;
  dmarc=fail header.from=kayhan.name
Authentication-Results: open-mesh.org; dkim=pass header.d=kayhan.name.tr; arc=pass; dmarc=fail header.from=kayhan.name
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com [IPv6:2607:f8b0:4864:20::936])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E9D3F8004D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 14:26:52 +0200 (CEST)
Received: by mail-ua1-x936.google.com with SMTP id i5so17086008uaq.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 05:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kayhan.name.tr; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=UUxRGOHOqnj3tcBOfOxASd1IjQ9tApDq+g8fydvi/s8=;
        b=QTM+mKmhQiozI95Zj9M0AD7L9NlhJ1ZZrKYIOJVLzZDOEQXvMlbL7MbXSFmfEUOmpH
         gtafbSoTUw1icBHdbzL1LezZgWiuFoD4/ra5BL6dR1OzrS6f5v8cGeA2dJAWSGyiX4Cr
         usv6l5Y5KhJ1wv9a0Nm9Q2GcpyvZPpvH8ILnPPbRahtLcUOc3Uqvwpx1AwrqNcpoF+iy
         j5X+QAes4ESjOBsc8re6jJPq2QlwRuRZ+GigNLr6VrD/JFn86XG4gb8bSktt7HMjdwVw
         LZFtGkCQnOyhgAshmEzjswUyst27Nzky9sftFNMOF5fohZVQWFtSEWQnPcpps2+bvUwf
         Br+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=UUxRGOHOqnj3tcBOfOxASd1IjQ9tApDq+g8fydvi/s8=;
        b=oQaw47yMfdM5GRMxVLroXCENgAPXdaB4eYu+ZQGTxmEgFtD8MkfcmXGV7EN/H/W8Kx
         Dc0NElBN739pYAnQbh7Q7mYaUEBA73gaJ4Vq3TF3ORO+UMLIttkYrbQ2vKIze489pEsv
         /T75QRsdzETuQHBRTgVxhTainyJbHf2oi7r+ZpLnWRuXS6+CHsYuxLrJgbxeJWgO7FWI
         HRq8Ilu2zCdSelgyuBgt96mgFCaQaH8pUFiKFmfOasMOgGFlbkWrj2hZ6zCQVpU1bng4
         PuvMOx2LVjf97VLuFtMEXxkM0T9JN/eaFPBDpAMPEyT9H9GPbWxqExaZs0pves73Co6D
         sLTQ==
X-Gm-Message-State: AGi0PubawcahjlwkX7sUJ9QEzJFz5w0nKxucqp05tfMDZzKyR4oByVU0
	n15Di92guGkc/M9fzxJ/dEPhviWCEBm2rAMuvFjgILfsO3s=
X-Google-Smtp-Source: APiQypJ84mkuY2aIexyPqdBXmCI2qWc/EsUO67kQC8v5+3RB8xAFc7HK5pDo84x2NAr6LC7tuNGwdQAKnsT4DudQt4E=
X-Received: by 2002:a67:2904:: with SMTP id p4mr17068654vsp.101.1587990411486;
 Mon, 27 Apr 2020 05:26:51 -0700 (PDT)
MIME-Version: 1.0
From: Oguzhan Kayhan <oguzhan@kayhan.name.tr>
Date: Mon, 27 Apr 2020 15:26:40 +0300
Message-ID: <CANKYHpeiWj7w2KEnkEfjUHWKfbhEAj7kMVE5hL5xv6O_1ZVFwg@mail.gmail.com>
Subject: configuration issue
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587990413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=UUxRGOHOqnj3tcBOfOxASd1IjQ9tApDq+g8fydvi/s8=;
	b=AZ7snb2y4+12gzmlfFekJkfnBj1OCcZGIRNZitHAuIQY+EYn39zrXY0c2ExWHl3yuD4bMn
	4G6IRtfBmh1FBjr9xASHsTlb58x78I2sSfGr2MYqTolw7A9lO0HJufqpjvSIcD5Et4H6K3
	NKxMAzyuOGHujpTMkOJ7slSTY79lRV0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587990413; a=rsa-sha256;
	cv=none;
	b=EEPRi3NmBEFgaYSAuWA4Rfgi5COfWA1SGDO08t0O2HGq9yLAAQ25ih0HhcZUu2Subwejdu
	e+GQ0kjh/RL/zQsRW08Um7s4Zfbi0L9JMZj5MdBc6sCBpv6HILk4i6N/qBQEqO09GVcT02
	vq5fLqlPfxbkKv4/vcMmHD50U+HnjCI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kayhan.name.tr header.s=google header.b=QTM+mKmh;
	spf=pass (diktynna.open-mesh.org: domain of oguzhan@kayhan.name.tr designates 2607:f8b0:4864:20::936 as permitted sender) smtp.mailfrom=oguzhan@kayhan.name.tr
Message-ID-Hash: KF42VCBXAGCMNLWEQWYOKCTAMISZU5U7
X-Message-ID-Hash: KF42VCBXAGCMNLWEQWYOKCTAMISZU5U7
X-MailFrom: oguzhan@kayhan.name.tr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KF42VCBXAGCMNLWEQWYOKCTAMISZU5U7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello
I am running batman over a openwrt 18.06
default batman config over this firmware is batman-adv 2017.4

I have two systems present..
One board is with 802.11n radio. other is 802.11ac radio
This is the only difference..same image compiled running on both devices..


On 802.11n radio set..
config is as:
batman-adv:
config 'mesh' 'bat0'
        option 'aggregated_ogms'
        option 'ap_isolation'
        option 'bonding'
        option 'fragmentation'
        option 'gw_bandwidth'
        option 'gw_mode'
        option 'gw_sel_class'
        option 'log_level'
        option 'orig_interval'
        option 'vis_mode'
        option 'bridge_loop_avoidance'
        option 'distributed_arp_table'
        option 'multicast_mode'
        option 'network_coding'
        option 'hop_penalty'
        option 'isolation_mark'

wireless :
config wifi-iface
        option device 'radio0'
        option ifname 'mesh0'
        option network 'mesh'
        option mode 'adhoc'
        option ssid 'mesh'
        option bssid '02:CA:FE:CA:CA:40'
        option mcast_rate '18000'


network:
config interface 'lan'
        option type 'bridge'
        option ifname 'eth0 bat0'
        option proto 'static'
....
config interface 'mesh'
        option mtu '1532'
        option proto 'batadv'
        option mesh 'bat0'

config interface 'bat'
        option ifname 'bat0'
        option proto 'static'
        option mtu '1500'
        option ipaddr '172.0.0.10'
        option netmask '255.255.255.0'


This configuration works fine..
But if I run same config on the second node with 802.11ac radio.. it fails..
So I dig around and changed the config as follows.. And it started to work..
batman-adv is same..no difference

wireless:
config wifi-iface 'wmesh'
        option device 'radio0'
        option ifname 'adhoc0'
        option network 'bat0_hardif_wlan'
        option mode 'adhoc'
        option ssid 'mesh'
        option mcast_rate '18000'
        option bssid '02:CA:FE:CA:CA:40'

network:
config interface 'bat0_hardif_wlan'
        option mtu '1532'
        option proto 'batadv'
        option mesh 'bat0'

config interface 'bat0_hardif_eth0'
        option mtu '1532'
        option proto 'batadv'
        option mesh 'bat0'
        option ifname 'eth0'




I have two questions so far..

Why the first config does not work over second system..(Wifi works
fine but. for mesh. i needed to change the config like this)

Second question.. I can live with different config.. Ok..
But I want to use eth0 and eth2 and mesh network as a bridge...
But whenever i add any of this interfaces on bridge.. batman-adv fails..
What am I missing???
