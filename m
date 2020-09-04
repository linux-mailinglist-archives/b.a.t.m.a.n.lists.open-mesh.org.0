Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E5A25E178
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  4 Sep 2020 20:28:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 98B9A803C2;
	Fri,  4 Sep 2020 20:28:09 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 146628029D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Sep 2020 20:28:06 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1599244086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BrDOGd2SzGBioDFhIiaGxL6pjzzFD9pVH266isrLK/A=;
	b=LOaH5PNHbb2fOG0vkWz6N0RZV/0xnZ6CnCl63bmCM7/+L8EVM/dBCBGw15nqvqrfiA9M6p
	/ky8ueVKKTNtOMmmc6k/kowjDBxxSqJE3QS1e69Jpfei1TBnnMzHBXZDEHnobycCljS9q7
	CF5I1YInsSOYbWLVyzvhAX5LbQZz5a5obEN5H5nAkcvO+MZw0eZstlassIv6uTkXHvumZI
	AiBuhwz3L/NohOLVsI6l4Em8KmjwRpYpO+4v2Sn2AisavEfPZUeeVIXt7OkmxJ2LmUVlLb
	wHHVRjmuNFI9TPiUgJ+ur8J/3rCTRtNjh+DBvLfUqQ82eiUglRywGGddTl7jrA==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint v2 0/4] batman-adv: mcast: TT/BLA fixes
Date: Fri,  4 Sep 2020 20:27:59 +0200
Message-Id: <20200904182803.8428-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599244087;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=BrDOGd2SzGBioDFhIiaGxL6pjzzFD9pVH266isrLK/A=;
	b=wGv57MuFty83dDqzp8WRYDQghJNwQaMNz89UIsNZRo9e69sroY7gL+litLj0NNCxSzzNGx
	FJnqExVXRWqGGsU7UXGuT/gC5qH1I7nd4IRDNZGb+8RnsNecvzLkxz+XIhqfgXaO4rNHQc
	iH1bbMTFAV+HvaUuHTWpBKJo7xSpl0A=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599244087; a=rsa-sha256;
	cv=none;
	b=YyzGAewlN+KB2VNkEj02QBdQIg2l13uycCrjOGGbDP4uMwnzdZKL/qbJQC0U2GlLLQPOFU
	aBrJS4Gb8nh5SFFUhjRAhmTgAukeN/+nEApiZsABDdxoZ4MFp9JV34zQ/Ez6x1PBW8JuoR
	cBfy7ZWe4IUU1EwzfUnLsu3HobPsp08=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=LOaH5PNH;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JUH7LCWPH3ZNFHUQCYP6ZQFVGMX34DQR
X-Message-ID-Hash: JUH7LCWPH3ZNFHUQCYP6ZQFVGMX34DQR
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JUH7LCWPH3ZNFHUQCYP6ZQFVGMX34DQR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

These are four fixes for issues which occur when using the batman-adv
multicast-to-unicast feature.

The first one fixes an issue of an intermediate node snitching
multicast-to-unicast packets and either dropping it or rerouting it to
another node. Which causes lost packets on some and duplicate packets on
other nodes.

Patches 2 to 4 fix issues when using the multicast-to-unicast conversion
while BLA is enabled and some nodes are sharing the same LAN side. Here
it either causes "just" duplicates in the "good" scenario (Patch 4/4).
But can also cause multiple BLA backbones to send a frame from the mesh
into the same, shared LAN segment (Patch 3). Or in the worst case, even
reflect packets back to the host in the shared LAN, which completely
confuses switches/bridges and ICMPv6 Neighbor Discovery.

Changelog v2:
* Adding "Fixes:" lines

Regards, Linus

