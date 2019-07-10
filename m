Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BAE63A25
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Jul 2019 19:27:19 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C60B281F2D;
	Tue,  9 Jul 2019 19:27:03 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 085CA80D96
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  9 Jul 2019 19:26:56 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f9fc::4065])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 244B61FDB9;
 Tue,  9 Jul 2019 17:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1562693216;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=HMj2YgpSjiO4+j9jQuHRQrb2MJ5d/Y6V1sYgP5L7OL4=;
 b=MtNVtVLGeNlzWHZnIwQ3Lj67TQ2icoOPECp4aP5eHKN5ZtzDn98KUQ18IumW1dpLw4sStg
 jNVJHRq/B20CCfF+AGEQSXcFwP8eQeKDNuJp1kpCBkkp3TPdyRyUbH4nJFZVHGjDJ6EkLY
 BTAgnrqVZYRZ6G3iNteHAZqcbKo/Ecs=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v3 0/6] batctl: Add vid support and hardif settings
Date: Tue,  9 Jul 2019 19:26:45 +0200
Message-Id: <20190709172651.5869-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1562693216;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=HMj2YgpSjiO4+j9jQuHRQrb2MJ5d/Y6V1sYgP5L7OL4=;
 b=IwjkKEvUZBnDQ5cMIrFamwz8XHImwf+E8s0dNSC0aeEeRLrxbcp9KXEuvtIfxojipnmo/P
 Dl+tx9uGrSlEdc4Dv6eOA6rKW8a49QizuWwAREardsqFrMvGWQTFUB6v7vUgYDdrvFtN88
 rmwM17INSriKaGaXhWSSaPcj/oFJVPA=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1562693216; a=rsa-sha256; cv=none;
 b=EQpkTtD9pUp2+/8B9s373oiUTOnhMhqnNG03P3dWm1upckOMG3MBp5/gnNfH/g0mUAyixo
 7Fj7rpOOtpPgQC7RnguVdoiYuBMvlTUCeWbJW7CqR4ayv+C1bgr2wvMjNtpWwno0iowHNP
 VfsCkaisBOOBgSxP1RVNMYszf4Kn0AM=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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

Hi,

I've asked a quite while back for some ideas regarding the support for hard
interface settings in batctl [1]. The current consensus seems to be that
a more iw-like interface is prefered.

vlan settings
=============

The requirement to have a VLAN master device on top of the batadv mesh
interface is artificially limiting the capabilities of batctl. Not all
master devices in linux which register a VLAN are from type "vlan" and are
only registering a single VLAN.

For example VLAN aware bridges can create multiple VLANs. These require
that the VLAN is identified using the VID and not the vlan device.

It is now possible to specify the vlan using:

  $ batctl vlan bat0.8 ap_isolation enable
  $ batctl meshif bat0 vid 8 ap_isolation enable


hardif settings
===============

The infrastructure for the new vlan/vid prefix of commands can now be used
to introduce another prefix: "hardif".

B.A.T.M.A.N. V introduced two additional settings which are hard (slave)
interface specific. These can can finally be implemented in batctl. This
will allow to change/read these settings when sysfs support is not enabled
in the kernel.

  $ batctl hardif eth0 throughput_override 15mbit
  $ batctl hardif eth0 elp_interval


Changes
=======

v3
--

* drop prefix "dev" and "slave"

v2
--

* replaced (while still being compatible) -m option with "meshif"/"dev" prefix
* added alternative "slave" for "hardif" prefix
* automatically detect meshif for "hardif"/"slave"
* introduced enum selector_prefix to make code to select correct
  subcommands/code paths better readable
* add helper to automatically guess the type of netdev to allow omission of
  meshif/slave/vlan/... in some situations

v1
--

* initial version

[1] https://www.open-mesh.org/issues/373

Kind regards,
        Sven

Sven Eckelmann (6):
  batctl: Make vlan setting explicit
  batctl: Integrate hardif setting framework
  batctl: Add elp_interval setting command
  batctl: Add throughput_override setting command
  batctl: Replace '-m meshif' option with selector prefix
  batctl: Allow to omit explicit prefix name

 Makefile                |   2 +
 README.rst              |  33 +++++
 aggregation.c           |   2 +-
 ap_isolation.c          |  15 ++-
 bonding.c               |   2 +-
 bridge_loop_avoidance.c |   2 +-
 distributed_arp_table.c |   2 +-
 elp_interval.c          | 111 ++++++++++++++++
 fragmentation.c         |   2 +-
 functions.c             | 119 +++++++++++++++---
 functions.h             |   8 +-
 gw_mode.c               |   2 +-
 hop_penalty.c           |   2 +-
 interface.c             |   2 +-
 isolation_mark.c        |   2 +-
 loglevel.c              |   2 +-
 main.c                  | 271 ++++++++++++++++++++++++++++++++++++----
 main.h                  |  23 +++-
 man/batctl.8            |  60 +++++----
 multicast_fanout.c      |   2 +-
 multicast_forceflood.c  |   2 +-
 multicast_mode.c        |   2 +-
 network_coding.c        |   2 +-
 orig_interval.c         |   2 +-
 ping.c                  |   2 +-
 statistics.c            |   2 +-
 sys.c                   |  73 +++++++++--
 sys.h                   |   5 +-
 throughput_override.c   | 113 +++++++++++++++++
 throughputmeter.c       |   2 +-
 traceroute.c            |   2 +-
 translate.c             |   2 +-
 32 files changed, 770 insertions(+), 103 deletions(-)
 create mode 100644 elp_interval.c
 create mode 100644 throughput_override.c

-- 
2.20.1

