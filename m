Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5624167C
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 11 Jun 2019 22:58:54 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 02832820CE;
	Tue, 11 Jun 2019 22:58:49 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 357EA80851
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 11 Jun 2019 22:58:46 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1560286725;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=cxKOoPytEs6edWb+W29h1M7ESx4o+g0++YGWf0zk+jQ=;
 b=I2CCeCQjPnyEMz6g7btaYILUtAZ0G8IGWt0/Vzwq4Shep6lvicFqvY7RxxiAXZk4Wghs+v
 hG3DsW7apthcWPBV6yvYhchmgG0XJGozNjum65KZRxwieh016M7Yp8EsEiI28MLOFBCHD7
 alT3f+DGpCO58UqmnWmq3g8jso7uIQV/EJQKOmhFOH/jAhaMQKdtzMGnhGxWPtT3K1Zfax
 jqnfelY62oPAXvXUPy5yRPQfBzomCdrxO+Q81TM3ZzxZxVqk0tZbrae7ef8fxO1oAXREHT
 nVkjdSN7eP90su+NvyP9eerGrF1KWqDCYJoLb9emXUKXVcYTL/XTEErUhLXX+A==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v5 0/2] batman-adv: Add routable multicast optimizations
Date: Tue, 11 Jun 2019 22:58:39 +0200
Message-Id: <20190611205841.5841-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1560286726;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=cxKOoPytEs6edWb+W29h1M7ESx4o+g0++YGWf0zk+jQ=;
 b=YdaQmnNSECoPNPYizoua+HMMW9Sk85OeTdmM7IIBsKZBGnulS2BaAc96SI6x6VV1FpzjyD
 OZRRTMwlCuW9CU51BhTs+KQ4WW804fkLqo7x2nx5c0QBZtd1UMF2B7yZOQ8JoAhEujjMk9
 iPuLtYx7ICWQE/32OZZDf6jMWB4yjYA3jIiNH9LNbT0eP824iIcncMfYzmPcxYD55BL6dG
 ONh3Ib+MCeAX2U7tMagAOKTDNRiAC837ZncNG61RcYDksNsUodlRAtqAhrli7Kyb/joZnd
 6/tlSSL0nvkNyi15oFSSQbJkaWdU8rpwsgCNnau1GBbc7VhhlSU/w81ih6Uj3g==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1560286726; a=rsa-sha256; cv=none;
 b=eiFjsoADBXE1rWXxICHefYQ2n18mZAeHORxtcsHbG/Sm8N1VvDBxltMsXBQPCFyTEesCdx
 E3wiEEm9PRS66fcFd0O9UcPjojosGc8HWsbg3DXbAMdzLqcqY9ax4XFWVkBJCRwo0Mo310
 qe0dE5fLigLU5DLJGBtc74Ny78T0a772MPiLQniwzoccxh68xlovNHwJkAZxuv4eYdjAZG
 HV+pdZn9k7l6efi2yR/tUqoEfAamjfhVvZCvtjBe0glAAtAeo3ljEV/MsQInIpO618/LZ8
 pUlGG4bgerd/84d9inne8b+qJLGTdDU2Mrc2s3PHrVd5eUc6i0H5gSwi908Nlw==
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

The following patchset fills the next gaps in the multicast address
rules page by adding support for group-aware optimizations for
multicast addresses of scope greater than link-local. So far, only
link-local addresses were optimized as packets with routable
addresses not only need to be forwarded to local multicast listeners
but also multicast routers.

"Handling rules depending on multicast address:" [0]

Before:

* Ipv4, link-local: supported without bridges
* IPv6, link-local: supported
* IPv4, routable: support planned.
* IPv6, routable: support planned.

After:

* Ipv4, link-local: supported without bridges
* IPv6, link-local: supported
* IPv4, routable: supported without bridges.
* IPv6, routable: supported.

Patch 1 adds the detection of multicast routers and announces
them via two new flags in its multicast TVLV. TVLV receivers will
memorize this and fill lists similar to how we already do for the
WANT_ALL_IPV4/IPV6 flags. Currently the detection for bridged-in
IPv6 multicast routers is not quite what the RFC for multicast router
discovery suggests. But once the MRD implementation in the Linux bridge
has matured a bit, I'm going to swap this simplified approach with
tapping into the bridge once more, asking the bridge for the presence of
multicast routers on the link. (This will then also add support for
"IPv4, routable, with bridges")

Then patch 2 implements the changes to the forwarding plane,
utilizing the new information we have gathered with the second patch.

Regards, Linus

[0]:
https://www.open-mesh.org/projects/batman-adv/wiki/Multicast-optimizations-tech#Handling-rules-depending-on-multicast-address

---

Changelog v5:

* updated commit message of [PATCH 1/2] with
  BATADV_MCAST_WANT_ALL_RTR{4,6} -> BATADV_MCAST_WANT_NO_RTR{4,6}
* now unsetting BATADV_MCAST_WANT_NO_RTR{4,6} in own tvlv flags
  (batadv_mcast_mla_flags_get() ) if BATADV_MCAST_WANT_ALL_IPV{4,6}
  is already set, to be able to reuse this combination to signalize
  want-all-link-local in the future - [PATCH 1/2]
* "routeable" -> "routable"

Changelog v4:

* rebased to master
* BATADV_MCAST_WANT_ALL_RTR{4,6} -> BATADV_MCAST_WANT_NO_RTR{4,6}
  => swapped the name of this flag and according logic in the code in
[PATCH 1/2]
  => swapped the name in the kerneldoc in [PATCH 2/2]

Changelog v3:

* rebased to master + routeable multicast preparations v4
* fixed build errors with CONFIG_IPV6_MROUTE disabled
* fixed build errors with CONFIG_IPV6 disabled

Changelog v2:

* rebased to master
* split patchset in two with the intention to ease reviewing
  (no code changes, just the last two patches here)

* removed unncessarilly added newline in batadv_mcast_flags_log()
  [PATCH 5/6] / [PATCH v2 1/2]
* kerneldoc: @BATADV_MCAST_NO_WANT_ALL_RTR6 -> -"NO_"
  in enum batadv_mcast_flags [PATCH 5/6] / [PATCH v2 1/2]




