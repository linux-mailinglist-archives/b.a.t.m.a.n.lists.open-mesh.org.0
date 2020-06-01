Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4471EB05C
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  1 Jun 2020 22:42:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A1E7981726;
	Mon,  1 Jun 2020 22:42:07 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2595780199
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  1 Jun 2020 22:42:05 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1591044125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4tRJD8rlitRz/L3zWeKd5j7/CcCmf7ln0ANdlLAoCNU=;
	b=pQ1anc20jVcWzBTw+pohEu0VLdwi+xG0ttlgRvM1NMIl8VFeajQ0/GBTm715z3Otc68XOh
	pZWueZuQTiuBkI4i7SPNtiuz1kITlQYyVnmNxjCkD47VrrGtSd7IOpiDIbJCVaa58a9uhE
	7LzCsBzYA1zc/I2dh1kpmhR79KoFfjSfS6X23Zl1cCdPng6yM8/4KEpIEPjFHcbxKmMcvN
	x49Q5fhFye0ANLp5laNKmp+IehEaro5tqVhVkawvkC4jGQ0mpOs8x4t2Fae4gI/7EL0x2K
	K15Lkmla4VgHUXxGG5VveY+bgSlx6PazkWW8SUevjayaXXvzj0W6//n7QpavJQ==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH] batctl: Change/fix a throughput override function name
Date: Mon,  1 Jun 2020 22:42:03 +0200
Message-Id: <20200601204203.5505-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591044125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=4tRJD8rlitRz/L3zWeKd5j7/CcCmf7ln0ANdlLAoCNU=;
	b=W0v3B7lXJqVYTsqMf7uKUe4DtAc83Y9afL7AfPmZdL/OTH5tO/JK2oQjGjO2Z+SW/pG2A0
	LKTC1ZI+xoVzpyIIi09gPKNNqtvrT0r1XzrkGh3DilnrOIGstmo8GLwrtgwlO83g6oKEZ3
	dXVTwoe3vohre6rHYZ9CKwgGtkg6k6w=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591044125; a=rsa-sha256;
	cv=none;
	b=LRxdIRDTDsc/kcWJyt/xP8+nGRZQrSwOs65VAztxqhi676Lg74Hw47aJwTWpdkQ6H3kB6o
	o7/ZWZNZnw7B7EzVN2f4HX1IuFV2AGrfnBAWWq1afJYr7LUjATBIpY1R2b4UDZkYrL2QwY
	VB/CzBKdwD2+Y1wr6dkYRcMKoLNN96k=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=pQ1anc20;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: MM3G6WS7VYFV5HROLQVFKBYRH6D4Y4KT
X-Message-ID-Hash: MM3G6WS7VYFV5HROLQVFKBYRH6D4Y4KT
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MM3G6WS7VYFV5HROLQVFKBYRH6D4Y4KT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Fixes a copy and paste error in one of the function names of the
throughput override comand.

Fixes: e5e6560df828 ("batctl: Add throughput_override setting command")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 throughput_override.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/throughput_override.c b/throughput_override.c
index e9f0346..13b5dce 100644
--- a/throughput_override.c
+++ b/throughput_override.c
@@ -66,7 +66,7 @@ static int print_throughput_override(struct nl_msg *msg=
, void *arg)
 	return NL_STOP;
 }
=20
-static int get_attrs_elp_isolation(struct nl_msg *msg, void *arg)
+static int get_attrs_throughput_override(struct nl_msg *msg, void *arg)
 {
 	struct state *state =3D arg;
=20
@@ -78,7 +78,8 @@ static int get_attrs_elp_isolation(struct nl_msg *msg, =
void *arg)
 static int get_throughput_override(struct state *state)
 {
 	return sys_simple_nlquery(state, BATADV_CMD_GET_HARDIF,
-				  get_attrs_elp_isolation, print_throughput_override);
+				  get_attrs_throughput_override,
+				  print_throughput_override);
 }
=20
 static int set_attrs_throughput_override(struct nl_msg *msg, void *arg)
--=20
2.27.0.rc2
