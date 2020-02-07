Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B20BA155913
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 Feb 2020 15:14:05 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B730F80278;
	Fri,  7 Feb 2020 15:13:57 +0100 (CET)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
 by open-mesh.org (Postfix) with ESMTPS id 94934800A2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 Feb 2020 15:13:51 +0100 (CET)
Received: by ory.petesbox.net (Postfix, from userid 326)
 id 24A82406FC; Fri,  7 Feb 2020 09:13:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1581084831; bh=2aYtnloKeKo0aIGH0e0wfiqep+drrQvEVBAFH3EcuIQ=;
 h=To:Reply-To:From:Subject:Date:From;
 b=R5e/3LIf3myLeTurwO2GRM7FNmsSkko0XtrOnsEvgXBLDwqon0CqdZRfuGnnmAXtk
 D1nNokFEVWY/FNv+aCbiOUSp1g2lJkeUZd6BBkjE4T6Y3ep05PdUzkCtRqS62IQScc
 zqdOtULsLLEaMJcazsiX4Djsv+Rbw3yCflTT8pJ8wjifl0qEa2g4Pxks4XIcKZ5+MG
 n9Nc6qlXMrUJcthUqWj4SKVbLG2kuuq4QyiOp6sOFXePdgPYkdJaFu6PwFsQo3A8Vn
 TJWBJ8nuvS3o+E65ISnHoguv8fB0A/4uwnbaKYdYdBs2L6PBVkU1ztLEYlHuGj4OXE
 O08x4+nnB9yGA==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.2
Received: from [192.168.2.25] (unknown [38.21.217.71])
 by ory.petesbox.net (Postfix) with ESMTPSA id BF64640326
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 Feb 2020 09:13:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1581084828; bh=2aYtnloKeKo0aIGH0e0wfiqep+drrQvEVBAFH3EcuIQ=;
 h=To:Reply-To:From:Subject:Date:From;
 b=r6Q3KbKt/6EEVs7txi6kp9vDAL8SQuu5GL1SR3yi5RfusIjZHRzDVrGvLf65EzC2f
 /BQb0t+HFYTJ77ITCQS6+lad85rtxOhjq5OvmXSYGv3zF9i+wfwl20sEPdDrgQkgbB
 5fGvJ5ReYppOqfHCHQ2ORpSPFqxPzsKx8vs1LMh7a853JKiw5aXSmjQ78hp4rszQ4A
 Re2QlpW6HqzhC0/Call+qFLFkZPweST7DlyUyWnI3wbwmBEYB/HYiQB4Ssn3QsSVmg
 VaMkQ88n+x3X7KXAQYa3crFirmJBy6b0mFnwju+8lD95Vm/S2z+7dXEcSe/3ir7dR1
 zr/iXVeWmzp/A==
To: b.a.t.m.a.n@lists.open-mesh.org
From: Steve Newcomb <srn@coolheads.com>
Subject: can't find logged information
Message-ID: <501bc34b-2c77-a12a-6cb0-c49903eb420b@coolheads.com>
Date: Fri, 7 Feb 2020 09:13:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581084832;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=2aYtnloKeKo0aIGH0e0wfiqep+drrQvEVBAFH3EcuIQ=;
 b=DvctiB49Xqr6igiyqnh6d6G54+2dAgM+jhgUla0hvWiXMB5jv5gwY3q2I9usK/Vh0+g6lN
 WAT2rn5+EfCNg6uSXqysPq4hQpwUvHZuI42TV3D1R7zyel2rKdJWcqY1C0c9r90uUkyAzH
 jVCtZqtTCzvEG7IftfkcOfzIrZFqQEI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581084832; a=rsa-sha256; cv=none;
 b=Mt0z1X3Q2LM8qqi+Nrxma7rtQShRbmeBLeptAYL7xsjlS1OL4LovNCXfqftDfkDXpxb7i9
 HlpFW6AdG5U0HNE9Ic+JY+nsIc6dD9kVP7TzPmUmRgZpAF/SBc2flCU2gS+0NEockpaR4s
 1ntHVIkq8yzGSXNyvYg7VjbblHDX5Kk=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=petesbox.net header.s=ory header.b=R5e/3LIf;
 dkim=fail (rsa verify failed) header.d=petesbox.net header.s=ory
 header.b=r6Q3KbKt; 
 spf=pass (open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27
 as permitted sender) smtp.mailfrom=srn@coolheads.com
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
Reply-To: srn@coolheads.com,
 The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Here in upstate New York, USA, I'm having difficulty with 2 meshes, each 
with 4 nodes, both meshes running BATMAN_IV. All nodes are TP-Link 
Archer C7 or A7 routers running the latest OpenWRT trunk. All nodes are 
stationary.  The radio environment is pretty quiet, I think.  There is 
only one gateway in each mesh.  Nothing ever changes.  (A map of the 
layout can be found at rosepark dot us hash map.)

Nevertheless, each mesh stops working at least once or twice per day.  
If I reboot the gateway node of the one that stops working, the mesh 
starts working again.  In order to keep the meshes running, sort of, 
they now run a script I wrote that reboots them when they stop being 
able to ping each other.  It is not a very satisfactory solution.  If I 
could see what's going on, I might see how to make the meshes more 
stable, but I can't find any debug messages.

I compiled batctl-full and the kernel module with all options, including 
all debug options.  Here's a portion of a "make menuconfig" screen:

<*> kmod-batman-adv......................................... 
B.A.T.M.A.N. Adv
[*]   B.A.T.M.A.N. V protocol
[*]   Bridge Loop Avoidance
[*]   Distributed ARP Table
[*]   Network Coding
[*]   Multicast optimisation
[*]   batman-adv debugfs entries
[*]   B.A.T.M.A.N. debugging
[*]   batman-adv sysfs entries
[*]   B.A.T.M.A.N. tracing support


I run "batctl ll all" followed by "batctl ll" and I see:

@rpc152:/tmp/log# batctl ll
[ ] all debug output disabled (none)
[x] messages related to routing / flooding / broadcasting (batman)
[x] messages related to route added / changed / deleted (routes)
[x] messages related to translation table operations (tt)
[x] messages related to bridge loop avoidance (bla)
[x] messages related to arp snooping and distributed arp table (dat)
[x] messages related to network coding (nc)
[x] messages related to multicast (mcast)
[x] messages related to throughput meter (tp)

But the only debug-related log messages I see are:

@rpc152:/tmp/log# echo "$(dmesg)" | grep batman
[   18.672978] batman_adv: B.A.T.M.A.N. advanced 2019.5-openwrt-0 
(compatibility version 15) loaded
[   42.067698] batman_adv: bat0: Adding interface: mesh0
[   42.073065] batman_adv: bat0: The MTU of interface mesh0 is too small 
(1500) to handle the transport of batman-adv packets. Packets going over 
this interface will be fragmented on layer2 which could impact the 
performance. Setting the MTU to 1560 would \
solve the problem.
[   42.098069] batman_adv: bat0: Interface activated: mesh0
[174193.938445] batman_adv: [Deprecated]: batctl (pid 22747) Use of 
debugfs file "nc_nodes".


@rpc152:/tmp/log# echo "$(logread)" | grep batman
Thu Feb  6 15:21:13 2020 kern.warn kernel: [174193.938445] batman_adv: 
[Deprecated]: batctl (pid 22747) Use of debugfs file "nc_nodes".
@rpc152:/tmp/log#


What have I missed?

Thanks.

Steve Newcomb
