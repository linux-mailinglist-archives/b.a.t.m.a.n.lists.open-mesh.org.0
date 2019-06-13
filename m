Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF5B44BD7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 Jun 2019 21:12:32 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 11854818CF;
	Thu, 13 Jun 2019 21:12:25 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 89BAA802FC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 Jun 2019 21:12:21 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id E870C1100B2;
 Thu, 13 Jun 2019 21:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560453141;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=GdQFv5FA9vi0A/+v5NqpTs+vG5PZq2MF40ZOE7SPLvM=;
 b=JLzGt/TOXcxZkzkxuLCIydmf6xXAl6wqfF43IWa/fBhye16JEZrgC6QFDvrtbhxZNpZ1pD
 iLA/1n6/mEVxgtUymtPUCjvTMcMFGE5uBTASb6TCKA6AH+fEN4W+0K51x0fyOWumk6EhBp
 SSEjUtqRxiQUBkfAGJrPGUzb0jujV6k=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 0/4] batctl: Add vid support and hardif settings
Date: Thu, 13 Jun 2019 21:12:13 +0200
Message-Id: <20190613191217.28139-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560453141;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=GdQFv5FA9vi0A/+v5NqpTs+vG5PZq2MF40ZOE7SPLvM=;
 b=PzBMJWBOt2QXe//tjXxkCendU26skWfVXKDwBeXMIvALLccMbjT1/Mai4gdg3OmcHh8tSt
 fZIwzUjV3b3fiyC7nM+XuTZY9+TID6wCqluOwokwqujGCiHsatZZG3nUKVLRqI8JiXIDfM
 HXRUo65amlph5wj9HjERfdXRLQwrydc=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560453141; a=rsa-sha256; cv=none;
 b=gdxznboa62X1cOYbQu52soow/EQH09000iXJLNOE0xPUG9+ra5OV2CXrL4ARmkIbUue/eS
 XHpY+0WctYU5jYWxYm/1NMzSXVSJolvAZ2HnJhC4l+gadbUohD+P3RIjvYGG3sny6BjXLl
 O+VwK5zMPeFee+C9ZnWgUcdbPvDJ8Kc=
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
interface settings in batctl [1]. But I got no feedback at all. So I've
decided to just implement the first option and use it as chance to improve
the vlan settings.

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
  $ batctl -m bat0 vid 8 ap_isolation enable


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

Kind regards,
	Sven


[1] https://www.open-mesh.org/issues/373

Sven Eckelmann (4):
  batctl: Make vlan setting explicit
  batctl: Integrate hardif setting framework
  batctl: Add elp_interval setting command
  batctl: Add throughput_override setting command

 Makefile              |   2 +
 README.rst            |  33 +++++++++
 ap_isolation.c        |   5 ++
 elp_interval.c        | 111 +++++++++++++++++++++++++++++
 main.c                | 160 +++++++++++++++++++++++++++++++++++-------
 main.h                |  10 ++-
 man/batctl.8          |  12 +++-
 sys.c                 |  57 ++++++++++++---
 sys.h                 |   5 +-
 throughput_override.c | 113 +++++++++++++++++++++++++++++
 10 files changed, 470 insertions(+), 38 deletions(-)
 create mode 100644 elp_interval.c
 create mode 100644 throughput_override.c

-- 
2.20.1

