Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F48C72A302
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 Jun 2023 21:22:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3A64B818EA
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 Jun 2023 21:22:28 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1686338548;
 b=CNP95higqr7KG5h4Xcd8/3bDrsIUv3KJtbaZtri//qVqIGubYtp7ZQdEMsc/nfOXNBn2i
 VgPbIzZz9cTZW06MgMm8/jDFACvkmFkmpXYs8ZjaBY17Yxa/G6mKnGuJK3BBVTba/Sju7K3
 aXG5Q/b8vcOyLOlGpP7HcyE9dfeUGYY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1686338548; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4qn+5ur7FXay8625nYDBxojez0A5kbYSEHJ893FlhnA=;
 b=Yi82syN9vV+Sqg/M3CjRhoT8+EKL576aUk4sPRqDNwc12gjdUVhEwaFUn293U8sJg1Bo8
 kaGtcyZ8DvaG+e5BsASAQoHLxBkFzqVKvpv4jWnRN2n3YwGZyay5AhdspUPlWGt/mdhnkYA
 j5zZO0IezB0zyFSPGyaPPKgWXZMDAuA=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=draeger.com
 policy.dmarc=reject
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=draeger.com
 policy.dmarc=reject
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 352F180669
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 Jun 2023 20:55:24 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: Error - mac address of the ping destination could not be resolved
 and is
 not a bat-host name
From: "Mark Mundy" <mark.mundy@draeger.com>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Fri, 09 Jun 2023 18:55:24 -0000
Message-ID: <168633692419.986.3016729917435716783@diktynna.open-mesh.org>
In-Reply-To: <8229391.T7Z3S40VBb@ripper>
References: <8229391.T7Z3S40VBb@ripper>
User-Agent: HyperKitty on https://lists.open-mesh.org/
X-MailFrom: mark.mundy@draeger.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: HDBUHW5CA4NH6NG3KAKXWSP3B5HHTZT6
X-Message-ID-Hash: HDBUHW5CA4NH6NG3KAKXWSP3B5HHTZT6
X-Mailman-Approved-At: Fri, 09 Jun 2023 21:22:15 +0200
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HDBUHW5CA4NH6NG3KAKXWSP3B5HHTZT6/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Thanks for your reply, Sven. Comments inline below

Sven Eckelmann wrote:
> On Thursday, 8 June 2023 22:38:23 CEST mark.mundy@draeger.com wrote:

If I read your message correctly, the bridging of interfaces may make my original question moot. If I am wrong about that, I will go back to your original answer. 

> If it should be a transparent bridge between mesh without IP routing then 
> please add bat0+eth1 in the same bridge. And then configure the IP address on 
> top of the bridge.

I think I understand this to mean that I should remove the ipaddress, netmask configuration items from the bat0 interface, and create a bridge with bat0 and eth1. Something more like this for 10.1.1.1, and similar changes for 10.2.1.1 where it is actually the bridge interface that contains holds the IP address info

# new configuration file 
# /etc/network/interfaces for 10.1.1.1
#
source-directory /etc/network/interfaces.d

allow-hotplug eth0
auto eth0
iface eth0 inet dhcp

allow hotplug eth1
auto eth1
iface eth1 inet static
        address 10.1.1.1
        netmask 255.0.0.0
        gateway 10.0.0.1
#        dns-nameservers 1.1.1.1 8.8.8.8 8.8.4.4

allow hotplug bat0
auto bat0
iface bat0 inet manual          <-- changed from static
#        address 10.2.1.4
#        netmask 255.0.0.0
        up ip link set up dev $IFACE
        pre-up ip link set up dev wlan0
        pre-up iw dev wlan0 del
        pre-up iw phy phy0 interface add wlan0 type mesh
        pre-up iw dev wlan0 set channel 149 80MHz
        pre-up ip link set up dev wlan0
        pre-up iw dev wlan0 mesh join mesh149
        pre-up batctl if add wlan0
        pre-up batctl if add eth1
        down ip link set down dev $IFACE
        batman-adv-bridge yes
        batman-adv-mesh-id bat0
        batman-adv-multicast-mode 1
        batman-adv-ttl 50
        batman-adv-originator-ttl 50
        batman-adv-gateway-mode server
        batman-adv-hard-interface wlan0
        batman-adv-hard-interface eth1

allow hotplug br0
auto br0
iface br0 inet static
        address 10.2.1.4
        netmask 255.0.0.0
        bridge_ports eth1 bat0



> Kind regards,
>     Sven
