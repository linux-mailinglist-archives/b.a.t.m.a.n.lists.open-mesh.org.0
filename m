Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6E8656E5B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 27 Dec 2022 20:34:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AFB5E847B2;
	Tue, 27 Dec 2022 20:34:17 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F1A8A80381
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 27 Dec 2022 20:34:14 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672169655;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DZO12nqARGC+j2+PoDprOkGH+/Au3B7rgCItOJm/9oM=;
	b=ty8DxhGpr1Ve4xOSIo1am8niu6OGhl0bbCNAV2w40kH9oWDuezFyvewh6XzMdGFAWNSYgB
	tLe++aivedE6nPKng42G1I118xWZ/wu+obxw/BW42QBDDDxD/C+/tj/N5H9Rlf4ZbszyDI
	iqGDLP7mMSxU8QMx6B2AUV3PVQZd/6U=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672169655; a=rsa-sha256;
	cv=none;
	b=lvHUpNhnNXoutmguYjCeQr1L9yiIHMWCMb1+uuMHsHQZ5cjeNAtErZDCJqZuw36Lub2Geq
	s48/MFMT1XWNPNBlBmJToVgXXyZdEc+BbkqwQMKGBo802vchrxif5qejfr9reAne5Nz50N
	brRBgFNNDvSjrt4ufeADVyoBi5720G0=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6F5943EC76
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 27 Dec 2022 20:34:13 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v4 0/5] Implementation of a Stateless Multicast Packet Type
Date: Tue, 27 Dec 2022 20:34:04 +0100
Message-Id: <20221227193409.13461-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.3
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: OO74FAVSGPSIHNU6D6ZCEF2UJ35O667L
X-Message-ID-Hash: OO74FAVSGPSIHNU6D6ZCEF2UJ35O667L
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OO74FAVSGPSIHNU6D6ZCEF2UJ35O667L/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

The following patchset implements a stateless, TVLV capable batman-adv
multicast packet type.

The new batman-adv multicast packet type allows to contain several
originator destination MAC addresses within a TVLV. Routers on the way wi=
ll
potentially split the batman-adv multicast packet and adjust its tracker
TVLV contents.

Routing decisions are still based on the selected BATMAN IV or BATMAN V
routing algorithm. So this new batman-adv multicast packet type retains
the same loop-free properties.

The purpose of this new packet type is to allow to forward an IP
multicast packet with less transmissions / overhead than the
multicast-via-multiple-unicasts approach. Or to reach a lot more
destinations (currently up to 196, depending on the payload size, see
Wiki documentation for details) than with the default multicast fanout
for the via-unicasts approach.

This will allow using applications like mDNS again in several Freifunk
communities. And with less transmissions will also make more bulky
multicast applications, like media streaming (to an assessable amount of
receivers) a lot more feasible.

This approach is way simpler than the original multicast (tracker) packet
approach we envisioned years ago. As it involves no maintenance of an
extra, state based multicast routing table. However the TVLV capability
should allow to extend things later, to split control and data plane a bi=
t
more for instance, to further increase the number of destinations, to
further reduce overhead.

A compact overview can be found in the Wiki here, including limitations:

https://www.open-mesh.org/projects/batman-adv/wiki/Multicast-Packet-Type

Regards, Linus

___

Changelog v4:
* PATCH 4/5:
  * add missing include for linux/types.h in multicast.h
  * add missing kerneldoc for @bat_priv in batadv_mcast_forw_push_dest()
    and batadv_mcast_forw_push_tvlvs()
  * use sizeof_field(type, field) instead of sizeof(((type *)0)->field)
    in batadv_mcast_forw_push_dest()
* PATCH 5/5:
  * rename num_dests_remove to num_dests_reduce in
    batadv_mcast_forw_shrink_align_offse() to fix kerneldocs and for
    consistency=20
  * fix typo in kerneldoc in batadv_mcast_forw_shrink_update_headers()
    -> @num_dest_reduce -> @num_dests_reduce=20
  * use sizeof_field(type, field) instead of sizeof(((type *)0)->field)
    in batadv_mcast_forw_shrink_align_offset()

Changelog v3:
* PATCH 1/5:
  * remove now obsolete includes
* PATCH 2/5:
  * fix batadv_tvlv_handler_register() in network-coding.c
  * add missing include for linux/skbuff.h
  * move variable declarations out of the switch case
    in batadv_tvlv_call_handler()
* PATCH 3/5:
  * remove unnecessary include of multicast.h in routing.c
  * add a few missing includes to multicast_forw.c
    (linux/byteorder/generic.h, linux/errno.h, linux/gfp.h, linux/stddef.=
h
     uapi/linux/batadv_packet.h, multicast.h)
* PATCH 4/5:
  * add missing rcu_read_unlock() in error case before returning in
    batadv_mcast_forw_push_dests_list()
  * remove unnecessary include of soft-interface.h in multicast_forw.c
  * add a few missing includes to multicast_forw.c
    (linux/bug.h, linux/build_bug.h, linux/limits.h, linux/rculist.h,
     linux/rcupdate.h, linux/string.h)
  * make batadv_mcast_forw_mode_by_count() static
  * fix return types in the declaration of
    batadv_mcast_forw_packet_hdrlen() and batadv_mcast_forw_push()
    in multicast.h
  * fix typo in commit message: "that the are capable of"
    -> "that the*y* are capable of"
* PATCH 5/5:
  * make batadv_mcast_forw_shrink_pack_dests() adhere to 80 characters
    per line for consistency
  * add a "continue" statement after the jump label in
    batadv_mcast_forw_shrink_pack_dests() to silence the sparse error
    "error: label at end of compound statement"

Changelog v2:
* Add "[PATCH v2 0/5]" prefix to title of cover letter, so that
  Patchwork can hopefully find it - no other changes

