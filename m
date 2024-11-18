Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D289D2139
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Nov 2024 09:04:59 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 65F1183FA9
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Nov 2024 09:04:59 +0100 (CET)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732003499;
 b=0MiZOH0doPfpyY9wNKz6Te6ldJFflyG9ckmYsRRJp5BLcRXuah/i/P7mupNLF3w0Gxe3d
 pITCHLmcmfWiHWtBwUz3pFZE40KKLgOCDFwD/uiha+mH8AKif39kVI4lnB4/tdlG+lVUYSu
 MCgCEF042xjC9SAjTHLlOXsiTsxrD9A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732003499; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=mwf+YVRtgj2OUzd/Wn+QZr/A+U2vlDAMwkVxyqN+0qs=;
 b=JSL107ETQM3WOiflyZoVFLv/GrynwEzEL5xds2XOS5Tw3xEpyFL3yok8/KBbInRr0dXF8
 FDOJYh+ojDqSwtz6HXwS2zSEZBFb1KJ67rjU3bQYTBxNa05Uozpd2WfCLR6Yv6Jm9wnw66w
 mdlEu4ZdxjV80nzKqGndD8+Q7JH9tgI=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 476A581D74
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 18 Nov 2024 20:44:44 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: IP connectivity issue at openwrt nodes
From: soanican@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Mon, 18 Nov 2024 19:44:44 -0000
Message-ID: <173195908428.676947.9438253969806655968@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
X-MailFrom: soanican@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: 2TZPMJB5KB53JLTJCECSZSANDXDF5K3O
X-Message-ID-Hash: 2TZPMJB5KB53JLTJCECSZSANDXDF5K3O
X-Mailman-Approved-At: Tue, 19 Nov 2024 09:04:47 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2TZPMJB5KB53JLTJCECSZSANDXDF5K3O/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,
Im new to batman-adv and this is my first attempt to make it work. Im having connectivity issue, couldnt complete the configuration.

topology: PC1---eth0(Openwrt1)phy1sta0----------phy1ap0(openwrt2)eth0--PC2

openwrt1 has bridge(br-lan), with members of eth0 and bat0.
PC1 is connected to eth0
bat0 has interface phy1-ap0 and interface is active
openwrt1 br1 ip is 192.168.1.11

openwrt2 has bridge(br-lan), with members of eth0 and bat0
PC2 is connected to eth0
bat0 has interface phy1-sta0 and interface is active
openwrt2 br1 ip is 192.168.1.12

openwrt2 phy1-sta0 is connected to openwrt1 phy1-ap0

I can not ping 192.168.1.11 from openwrt2 and can not 192.168.1.12 from openwrt1 (from console/ssh interfaces)
My final aim is to be able to ping from PC1 connected to eth0 of openwrt1, to openwrt1, openwrt2 and PC2 connected to eth0 of openwrt2.
What I am missing here?

some logs from batman-adv:
version: batctl 2024.3-openwrt-1 [batman-adv: 2024.3-openwrt-2]

[  188.360147] phy1-sta0: associated
[  188.379399] batman_adv: bat0: Adding interface: phy1-sta0
[  188.384849] batman_adv: bat0: The MTU of interface phy1-sta0 is too small (1532) to handle the transport of batman-adv packets. Packets going over this interface will be fragmented on layer2 which could impact the performance. Setting the MTU to 1560 would solve the problem.
[  188.409162] batman_adv: bat0: Interface activated: phy1-sta0


root@dasal-01:~# brctl show
bridge name     bridge id               STP enabled     interfaces
br-lan          7fff.16acd96f6f78       no              eth0
                                                        bat0                                                        
root@owrt-01:~# batctl if
phy1-sta0: active
