Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 557BD4FBB6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Jun 2019 15:07:55 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 8968C81B29;
	Sun, 23 Jun 2019 15:07:49 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id A4BD28051C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Jun 2019 15:07:46 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 0CA8A1100D0;
 Sun, 23 Jun 2019 15:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1561295266;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=194a/tj23RIrhw2+65FBvoALVVc1Q8cTd+rFFNJc3Zo=;
 b=qcw2VgSugACOQGa6gwASeiQudeBSf+mxUfgtZwbY/yDHU+9XVneUEC+PXJiFkmv2BGlqAT
 zMtLQI/BXtOO/DdrOqrPk4XeHhFVqty5ZU67WViEIkpEf6Z0/LbobJMlzIuURmSKiVimOC
 uvz4qMcsmHE/CQnGcvuNzxyAFy0TjqE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 0/6] batctl: Add vid support and hardif settings
Date: Sun, 23 Jun 2019 15:07:03 +0200
Message-Id: <20190623130709.24751-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1561295266;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=194a/tj23RIrhw2+65FBvoALVVc1Q8cTd+rFFNJc3Zo=;
 b=raOVfpKWnfFNzFnFx1nHB98rdCiZac/fPnIehkGGpyl5rIxLCvKYHrZFP3142/lH+MLSBV
 Aqxk3AI6a6YmIx9iUHa2VfJZ5JCEfoSxHdg6XZig/6CPvJLKJ9r0+YlmNcSju/qco2s5m/
 eqxAHqkfFXuOpr+fffbQkRFIyRXOK7E=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1561295266; a=rsa-sha256; cv=none;
 b=XgaukoKE3ofpripR6BqMlaJE1LPX0Vhy/P6z7tEz0bBw/vZdjS33XwzHicNPK7ivI5xL3k
 fY55Fu+qVG4Pov92kyXJray9DzY3eufwPfPcrYHTy0WxX7hRYkpB58aYXRT9ErhcxIBhqf
 UV6u4rvkQhb3Tn69jwNWVCX+9BWMajQ=
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
 main.c                  | 273 ++++++++++++++++++++++++++++++++++++----
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
 32 files changed, 772 insertions(+), 103 deletions(-)
 create mode 100644 elp_interval.c
 create mode 100644 throughput_override.c

-- 
2.20.1

