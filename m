Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C18FA6563FB
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 26 Dec 2022 17:02:54 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6FBF684593;
	Mon, 26 Dec 2022 17:02:53 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EE526805A7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Dec 2022 17:02:48 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672070569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JJxFxKykYXfGOxNeTMUU0YiKvfc1btXmycaYDIvzqKY=;
	b=NAi5Udd1p89MsvbGUi7gyMvK+YcSPAum4aNt/kCXRcLDIlyRM2jN2k0xVGNgJeBR5LXW/9
	4awvttCupN6aJxrFaDqqY5WyM7yjWPwoElYoBKWVuTxcBQpMK29cprCDKjLqDvPYS2uzqX
	HYCxblzUoPdmcKKxLM2qNSLc3iYyYWY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672070569; a=rsa-sha256;
	cv=none;
	b=VBJ+COu1d5RmLdNU4ONodkoXp4T4xH/diZuNAG2/RQDmL2OEHCX05ILdxqux+2kkKzDMgN
	cL2z/GprmoPRszcZpOox9pXoJ03sehNmi9P63QjzVnIRCLnawJOxdnNdPGN66QBq0f3I5Y
	vfgiG5B365ZFwfvR13WySS/3r0c6iRo=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 07F7B3EC75
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Dec 2022 17:02:47 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Implementation of a Stateless Multicast Packet Type
Date: Mon, 26 Dec 2022 17:02:28 +0100
Message-Id: <20221226160233.9521-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.3
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RHC6L2UUL3R6LBHBVEYDFLIOIERBVYV6
X-Message-ID-Hash: RHC6L2UUL3R6LBHBVEYDFLIOIERBVYV6
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RHC6L2UUL3R6LBHBVEYDFLIOIERBVYV6/>
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

