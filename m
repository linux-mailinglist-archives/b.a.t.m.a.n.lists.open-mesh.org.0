Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 7062280C0E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 20:55:14 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id E674C826FA;
	Sun,  4 Aug 2019 20:55:08 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 9DA478020A
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 20:55:05 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1564944905;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=N9vdFJnAkyt6U4AiiAIgg7fW/v7zOLx/C2iOEqX0dYg=;
 b=Rtcj6IR8E1t1uovEbFHoQZZjx3n7/LvWQuqoJzQrUNWN6NBRsFAH3OeR8f/LCldv9kciO7
 dN9r4DmAta0cSKgBLnY9zVICpU0f4HyW568Z6dkWJAk4GULqMZ4AhHraNp17lnLvG4mYFV
 LOAGEG4DSyv1W+V54wYmR6aekNrKIlx5W4hJPv0rmmRzVnd4bpYO7mDRYc0WkhQNIFhBVL
 LEebBfSeFikAEEfyWc+edAlQKrQS5LJoN0Sb1Ou2hspWvZnyk8C64fVh9pvYyZivvU4Iwk
 Wiicf+OBERbQYab8ErjChdxSEWGH1zlyCDounn3j/PECrpSS4SGr1FFEsnvteg==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v3 0/2] batman-adv: BATMAN_V: OGMv2 packet aggregation
Date: Sun,  4 Aug 2019 20:54:52 +0200
Message-Id: <20190804185454.975-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1564944905;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=N9vdFJnAkyt6U4AiiAIgg7fW/v7zOLx/C2iOEqX0dYg=;
 b=oktW+nIb8JaOWmalyikqKpMAQAknlo2ypBWi7KM8UMw1NouvDykzB0qEXqbVnr5y1CbJr4
 KnNLrIOCQlnHcI7HTDRQ+yMRYtc3TxK0rLAkwaSWl8gTBXEV+x4IlzK6BC3cw+8Oms7+Em
 cSdHKsEeLS+5dkpLvTB2NIaT2GNvMYDjZylQEgqnI0gph/kDsKbJgbn6TgAtognO3A3l1x
 O8gNj9Cmn2Y2/Bf3keM+FPu4dODO5xR3ZziA2bdzg5piHWA355p2qi98h4wXdc0z7KBaFh
 CVZBTXRX1ByQT9FDeIQeMyAHNUgxLLUZCErjqP4MNNdq6DoQgILcHOBggIlXNg==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1564944905; a=rsa-sha256; cv=none;
 b=Fw2/ND2VXqYwNLhSXJYZvIkEXuXjlRjJ5wBenawyN3OAzlaeMgD2/VJO3kQ/pN5pX1V9X5
 ZZJhQrMmlQBcRk54VMBmxcIjl32gQEE+jAlNshfIbuTJVgkl7368P0SCTSCxpz75xbeVWh
 2kPH6DtiliyPuOZvmTv52rzhxfBCwXwndpvoctrEMb+3uZCD3FVV1lrcTF+FDsLZOB3dkn
 W6r3zKpVRoyjDnPurhyrHGaqTwboaVWtZcbu/4rZurMvh7AawVRHdIxaYknidUFUN7+tNy
 NsCug6nSHeV0oIcSDknXAd2917AeIwzIPSLOFpzo8877N0V4Mpr2u+XjnQhSqQ==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
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

This small patchset implements the transmission side for the OGMv2
packet aggregation in BATMAN_V. The receiver part was already
implemented and seems to work nicely.

The first patch implements the necessary queueing mechanism, utilizing
skb queues.

The second patch then implements the actual OGMv2 packet aggregation for
the queued packets.


Opportunities for later improvements (left out on purpose, to keep this
patchset simple):

* Reset queue timer on full queue / if flushing in batadv_v_ogm_queue_on_if():
  -> to avoid sending small aggregates in the worker afterwards
* Remove BATADV_MAX_AGGREGATION_BYTES (512 bytes) limitation:
  -> not needed for BATMAN_V, would break compatibility though...
(* Increase BATADV_MAX_AGGREGATION_MS (100ms):
   -> BATMAN_V has less averaging, therefore could use slower OGM intervals
      and therefore slightly larger aggregtion time window)

Regards, Linus


Ref./obsolete: Previous, generic aggregation patchset:
https://patchwork.open-mesh.org/patch/17013/

==

Changelog v3:

* PATCH 1/2:
  * added missing include for linux/lockdep.h
  * removed inline for batadv_v_ogm_len()
  * adjusted @aggr_len kerneldoc in types.h
* PATCH 2/2:
  * moved skb_aggr declaration in batadv_v_ogm_aggr_send() to own line

Changelog v2:

* PATCH 1/2:
  * added lockdep_assert_held()
  * fixed aggr_len kerneldoc in types.h
  * fixed alignment in batadv_v_ogm_queue_left()
  * added missing includes in bat_v_ogm.{c,h}
  * fixed @hard_iface kerneldoc for batadv_v_ogm_aggr_list_free()
  * removed unused bat_priv in batadv_v_ogm_aggr_work()
* PATCH 2/2:
  * unchanged


