Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2EC2695D8
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Sep 2020 21:48:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 516D7807D0;
	Mon, 14 Sep 2020 21:48:43 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 83C0C802F3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 21:48:41 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1600112921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5F8Z9xfmYh11Wu4mimqGcFu84poyndG2wXr104e7Big=;
	b=u3Pyxv+e6LV2JHTqr4SlzkjU6S/8FU2KSHhZ215+6p4f77JXMQ83m9yNG8MAt1WldKnru+
	Rv9OvOz9oAchiOe3PPg7ymeGYTl/iesYrKAwXY1nyBeZ8EDv0u8DsT8TWLhFslCBDehkM+
	B4ztYak0K3s18z1pLd7wsOoxzSgCgPcE+DQbR1C21ewYyqlTl7k88qt8HjYuK65oWKavsF
	cNlffqbkLMlYgsfZE8nyKzKOG7UM68KR+bZlYf38KgsRhwYKWNqOkSv+pgzvDLxZl05lBq
	+N97K2tECGl5aeK+Q4iQoQRvbYfXn4SAtJLCW0i/ubT8+beZIacHXa6zeXomrA==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint v4 0/3] batman-adv: mcast: BLA fixes
Date: Mon, 14 Sep 2020 21:48:34 +0200
Message-Id: <20200914194837.10425-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600112921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=5F8Z9xfmYh11Wu4mimqGcFu84poyndG2wXr104e7Big=;
	b=G1sgQubAkrgdBZ9hBNRu7wSUwHJt76q1pg6cArgm5wjWsNwu/luDkZea+RkhtrwroJ+ye9
	hI6wDgFfpkO1ObtLYMH/ELRCVUZkTpcJ5bfOZazZLa91dG2ZIo4jZQPdX3wbBkVffDQOAS
	u0e0S3f7vMOeIwHAu0W31cw2qw66RIE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600112921; a=rsa-sha256;
	cv=none;
	b=icBPaM1cTPBeYSjxZr74oLBGFW8Y+qyfe8zMCLvqQGyndTvm/5f/e7M11xASQEBmThT9H1
	W5Rn0h+A8VZXNFNDjWyeDrwBWLo0a/hglYUppHPdIuIiTdAS4rWUenZO7Pnx5r+vwfYl+r
	xr+5g4caPwfnYGjJcG6WnXCa29t2FDo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=u3Pyxv+e;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: YVYVHCPY4OEKO2KGLBAWV7KT57LZPLMG
X-Message-ID-Hash: YVYVHCPY4OEKO2KGLBAWV7KT57LZPLMG
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YVYVHCPY4OEKO2KGLBAWV7KT57LZPLMG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

These are three fixes for issues which occur when using the batman-adv
multicast-to-unicast feature.

They fix issues when using the multicast-to-unicast conversion
while BLA is enabled and some nodes are sharing the same LAN side. Here
it either causes "just" duplicates in the "good" scenario (Patch 3/3).
But can also cause multiple BLA backbones to send a frame from the mesh
into the same, shared LAN segment (Patch 2/3). Or in the worst case, even
reflect packets back to the host in the shared LAN, which completely
confuses switches/bridges and ICMPv6 Neighbor Discovery (Patch 1/3).

Regards, Linus

---

Changelog v4:
* Patch 1/3:
  - fixed build with CONFIG_BATMAN_ADV_MCAST=3Dn
    -> dummy for batadv_mcast_forw_send_orig()
* Patch 2/3:
  - fixed parameters for batadv_bla_rx() with CONFIG_BATMAN_ADV_BLA=3Dn
    (bool is_bcast -> int packet_type)

Changelog v3:
* removed 1/4, as it was already applied
* renamed title (excluded TT, as already applied)

* Patch 1/3:
  - moved bla-backbone check into multicast code:
    -> to stay on the safe side for net, to touch less other code
       paths - the issue was observed specifically for multicast
       and the fix was tested for that
  - added a note regarding implications for mcast-fanout
* Patch 2/3:
  - previous approach was broken, it would break the DHCPv6 gateway
    code; instead distinguish by batadv 3 vs. 4 addr unicast header
  - added some more code comments
  - updated commit message with new approach
* Patch 3/3:
  - made code a bit more verbose and explicit
  - added some more code comments
  - added missing kernel doc for "orig" parameter to
    new batadv_bla_check_duplist()

Changelog v2:
* Adding "Fixes:" lines
