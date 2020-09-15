Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DBD26A037
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 15 Sep 2020 09:54:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1F9188083F;
	Tue, 15 Sep 2020 09:54:17 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 03E22802E1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 15 Sep 2020 09:54:12 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1600156452;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=80VcWjfsNfOQO/UX/blEkujj4aYOb4iOka0VlvhK79s=;
	b=pzg1Q81mrCdiN8y+HKNxeO0+u0ZJ8Jp7U2RI+Q+DHt37CFsGV7bMowmztF2fl4N3i+JXct
	GH2KRZK3oD0MvLNDPgIHnlxoHzMNXMkxby01shTFBtCIlYlYgjImXSPSlEEWkCzKWe9cAh
	c0XP4PIsY8DhqR4o6fR0rvJK9vxWd2jaKG8u5nto1nU0c3OdCHt6WdUWVKo2W9nPt7Mpt4
	uViwv98KXx8bVGbC1nF8KPTi1YJSAojtTMZyqYXcl4YYIBcepZtiS9V2byyaNRrGljo2w+
	S36sYYQ5/lGjK/UtL5+ywXKXnl6yE74l2ihzL52Vwfky9EFze2ld42syV1tF0Q==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint v5 0/3] batman-adv: mcast: BLA fixes
Date: Tue, 15 Sep 2020 09:54:07 +0200
Message-Id: <20200915075410.13932-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600156453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=80VcWjfsNfOQO/UX/blEkujj4aYOb4iOka0VlvhK79s=;
	b=eJLIa8AVVcnFWNgiVBwdab/A9EaE/AFYZ4U0dMUtcsxLcvzNc8h9vsvbanymLWMko/7LcJ
	7qD80qyzxMSE+XoTIzW66Pq+RsKBR1yvoPXe2TYfFnBTjY98bMa7SQlAn2QRCSb6A7FFJn
	atbDZVM/8TFni4dh8HTAo//a75Jb1NM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600156453; a=rsa-sha256;
	cv=none;
	b=gk3GgqEKSktlIeaNqPSeD/nRJ46dXmXJ9bQeDCVR0w7BfJf234jbfKX266bQbJXIUWRAJ5
	UOCkbaT8ruunadBIPfA8So9suw3/GAMohakxEW6F5v2gMQ2JUEfMeMDBeedeTy1VAly571
	1aHul9QtgGSqxD470/c9WBeCdvgjLhc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=pzg1Q81m;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: OBZMH4XPORF6ECJ5KUDCXIW7FYZG6673
X-Message-ID-Hash: OBZMH4XPORF6ECJ5KUDCXIW7FYZG6673
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OBZMH4XPORF6ECJ5KUDCXIW7FYZG6673/>
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

Changelog v6:
* Patch 3/3:
  - removed "is_for_same_orig" variable again and call "continue" directl=
y

Changelog v5:
* Patch 3/3:
  - added missing "*" in kernel doc for batadv_bla_check_duplist()

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
