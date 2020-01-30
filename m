Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id CD76F14DDB9
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Jan 2020 16:25:14 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 9EE3280632;
	Thu, 30 Jan 2020 16:25:04 +0100 (CET)
Received: from mail26.lwspanel.com (mail26.lwspanel.com [91.216.107.40])
 by open-mesh.org (Postfix) with ESMTPS id 6B039801EF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 30 Jan 2020 16:24:58 +0100 (CET)
Received: from mail26.lwspanel.com (localhost.localdomain [127.0.0.1])
 by filter2.mynetwork.local (Postfix) with ESMTP id CDEF2176A042
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 30 Jan 2020 16:24:57 +0100 (CET)
Received: from mail26.lwspanel.com (localhost.localdomain [127.0.0.1])
 by filter1.mynetwork.local (Postfix) with ESMTP id 971AF176A288
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 30 Jan 2020 16:24:55 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail26.lwspanel.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,UNPARSEABLE_RELAY
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Virus: No
X-Spam-Virus-Status: No
X-Envelope-From: <faycel.benhajkhalifa@eisox.com>
Received: from mail26.lwspanel.com (localhost.localdomain [127.0.0.1])
 (Authenticated sender: faycel.benhajkhalifa@eisox.com)
 by mail26.lwspanel.com (Postfix) with ESMTPSA id 87DA017698F8
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 30 Jan 2020 16:24:55 +0100 (CET)
Received: from
 OiBaIIcBsU/nrRoRIGTj8RsZZ7wEezEIE3UOA/iMW4O9JTZlbJVyUGSmb6Fg7MiJWtkrrCDwjQo2ApXWcMcXqQ==
 (9XkpJ9TyInpIAd/1n4O2tV9E9ZZBdALT) by mail26.lwspanel.com
 with HTTP (HTTP/1.1 POST); Thu, 30 Jan 2020 16:24:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Thu, 30 Jan 2020 16:24:55 +0100
From: faycel.benhajkhalifa@eisox.com
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Internet connection problem with Batman
Message-ID: <1e9ca23deab35c772fdfc80feb96437f@eisox.com>
X-Sender: faycel.benhajkhalifa@eisox.com
User-Agent: Roundcube Webmail/1.3.10
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1580397898;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=tK1WN1SZoQaXq3APOSYbd6nu5STsZotYbaeQHNDX0VI=;
 b=VQwyZXUBAqBfTrSdaqXdZTJzhTtuhek+UeIFh+ulODtdzvKPwB++glLpmEi9w9uULGGLOU
 drU0/BjuaPaQWEn/OS02wAzLDR4c7M1zxVdcT8SwDd45suvfjgpDOv2a+3Beob8hMUbezN
 ASx9tw15Wz/rNVMbaiEWZ3vDu+ZCEh8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1580397898; a=rsa-sha256; cv=none;
 b=28WXI59nnDdvg3oFtPbPJNDrC3GelMJLsYh4OAWX1BEP36urBrkUrB19UCk7C4tmkGT6K7
 3B5PidIRufOI6E6eiFp16oF8gRwvV3wXesncwOiYfSWrdv9YFOuJ0TetxPIYoOTvoKTznL
 Xt+NH9JtRwo8HxCu4BHtpDbOlbSgXUc=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of faycel.benhajkhalifa@eisox.com designates
 91.216.107.40 as permitted sender)
 smtp.mailfrom=faycel.benhajkhalifa@eisox.com
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hello,
I saw that you are contributing to BATMAN, may I ask you a few questions 
about my installation?
I have several boards with OpenWRT firmware:

Mips processor
Kernel version 4.14.131
OpenWRT 18.06.01
BATMAN: Batctl openwrt-2018.1-1 [batman-adv: openwrt-2018.1-8]

I have 8 connected mesh boards.
Internet connection on the boards is not always available.
When a board no longer has an internet connection, I connect to another 
board and try the following commands:

batctl o: I find the board in the table with last-seen <1 and a quality 
between 191 and 233 (good quality)
batctl ping does not succeed every time
ping with the OpenWRT ping command does not work
If I restart the board which no longer has internet, then it reconnects 
to the network and accesses the internet without problem (functional 
pings)

I tried with a Static or Dynamic IP, the result is the same. The 
internet connection works then is interrupted and I can't find why. And 
sometimes without restarting the board, it finds the internet
OpenWRT Config:

/etc/config/network
config interface 'wan'
option type 'bridge'
option ifname 'eth0 bat0'
option dns '8.8.8.8'
option stp '1'
option gateway '192.168.1.1'
option netmask '255.255.255.0'
option ipaddr '192.168.1.101'
option proto 'static'
/etc/config/wireless
config wifi-iface 'wmesh'
option device 'radio0'
option ifname 'adhoc0'
option mode 'adhoc'
option network 'mesh'
option encryption 'psk2'
option ssid 'ssid'
option bssid 'bssid'
option key 'password'

/etc/config/batman-adv

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
option 'bridge_loop_avoidance'
option 'distributed_arp_table'
option 'multicast_mode'
option 'network_coding'
option 'hop_penalty' 0
option 'isolation_mark

and I added a patch in batman-adv/patches

--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
--- 2 2019-07-15 17:26:55.717093662 +0200
+++ 1 2019-07-15 17:26:46.565093715 +0200
@@ -43,7 +43,7 @@
/* purge originators after time in seconds if no valid packet comes in
* -> TODO: check influence on BATADV_TQ_LOCAL_WINDOW_SIZE
*/
-#define BATADV_PURGE_TIMEOUT 200000 /* 200 seconds */
+#define BATADV_PURGE_TIMEOUT 10000 /* 10 seconds */
#define BATADV_TT_LOCAL_TIMEOUT 600000 /* in milliseconds */
#define BATADV_TT_CLIENT_ROAM_TIMEOUT 600000 /* in milliseconds */
#define BATADV_TT_CLIENT_TEMP_TIMEOUT 600000 /* in milliseconds */

The purpose of this patch is to make the network reconnect more quickly 
when a board being removed or added.
Thanks for your help,
I can provide more information about my network if you wish.

Regards,
