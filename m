Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4644C358505
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  8 Apr 2021 15:43:34 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 14444812E1;
	Thu,  8 Apr 2021 15:43:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 626AE8010F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Apr 2021 15:43:30 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Batman-adv On Raspberry Pi Zero
From: giuseppedv@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Thu, 08 Apr 2021 13:43:30 -0000
Message-ID: <20210408134330.1234.53011@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: 2SWXZUTA4SSDPAKVZ34FPYZINK33KX7S
X-Message-ID-Hash: 2SWXZUTA4SSDPAKVZ34FPYZINK33KX7S
X-MailFrom: giuseppedv@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2SWXZUTA4SSDPAKVZ34FPYZINK33KX7S/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi all,
I have to create a Mesh Ad-Hoc Wireless Network using a certain number of Raspberry Pi Zero.
I have decided to use Pi Zero Wireless card in ad-hoc  mode and use the batman-adv module
to create the mesh over the ad-hoc wireless network. Here my systems:
- Raspberries Pi Zero W V1.1.
- Raspbian Buster: 2021-03-04-raspios-buster-armhf-lite.img
- Kernel: 5.10.17+
- Batman-adv: built-in kernel module.
No problems to create the ad-hoc wireless network between the Zeroes, even if the mtu needed for Batman-adv
complains:
[quote]# ip link set dev wlan0 mtu 1532
Error: mtu greater than device maximum[/quote]

Problems arise when I try to add the wlan0 interface to batman handler (the batman-adv module is loaded
correctly with modprobe or at boot time)

batctl if add wlan0     <--- OK No Problems

but if I want to request the wlan0 status I receive

[quote]batctl if
wlan0: <error reading status> [/quote]

Anyone experienced the same issues?
