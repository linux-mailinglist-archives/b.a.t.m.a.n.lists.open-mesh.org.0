Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D577233B42
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 31 Jul 2020 00:23:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1607680668;
	Fri, 31 Jul 2020 00:23:06 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5172C801AB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 31 Jul 2020 00:23:02 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1596147782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ky9wf19nVAsCHjJIqkcEqXEjY8p9h3p4dJUKsWZfK3U=;
	b=dkWyh/72sQRXoiZ+79llQQiNv3cFIPR1nzUepKDAwRnUqSYUSyhUTLg8MUeBKLblniE4s5
	qXHTdxxooCA8cClNf8lED+qcpHVvEDA2psdJsDua7QeOihX9EX1OX8T4IWvmFWpkIhxAhZ
	5zwrgJasOKLH0FDkKGO1KwAqRnfEw3Y7oWi5kbS6gs5qLZb79TOnE5nP7Q5r3W/FNchoSX
	bkyN1myjXSOmc4+bjHW7kJWD2rfkjX2oPM7k0xSy2UU19PTWEOeiiz3ZrMI4x1aJk89Td8
	rYA7tV/KhSAluwpQWucRPhbIyxM7MW1S+lo7VnWg5fPzg2tqYoC3OO+Or3vs3w==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH] batman-adv: Fix own OGM check in aggregated OGMs
Date: Fri, 31 Jul 2020 00:22:55 +0200
Message-Id: <20200730222255.5109-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1596147782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=Ky9wf19nVAsCHjJIqkcEqXEjY8p9h3p4dJUKsWZfK3U=;
	b=dXNy+Sa4Sm75XrJJWKlj9dr7j94G43ta1MBidAOK0IcmakQ4qr9lYzRhadpIKR0MVqXKKm
	/dJgDe3Y9CpksYup72wFDVDK2I+iPKHORMiTSy1UkDSeDpgXxDnwkUepqj1x8l+ghg1aru
	ghskXYGqgGefqjgK4rFUc5tSFJnNEAU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1596147782; a=rsa-sha256;
	cv=none;
	b=FKBX58hPM2ld7SF9FdASQt51tJqPTgx1lKtnmsYi+XgeqsXiO9TilkwbcwyUsgJbsRY8sk
	l8OIRRl+Qkz/uQTiTLcBetUxyLNDD4+7i72hH3O451Q/NPfwL70bnPtlDFy9p9h4jBQouD
	MSWiTFYG2kR2ehXeTzoY1P6lj3K2WuA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=dkWyh/72;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: YYMQW7QRC2OFWOTSDYWPVJIHRGJ5MYT3
X-Message-ID-Hash: YYMQW7QRC2OFWOTSDYWPVJIHRGJ5MYT3
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YYMQW7QRC2OFWOTSDYWPVJIHRGJ5MYT3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The own OGM check is currently misplaced and can lead to the following
issues:

For one thing we might receive an aggregated OGM from a neighbor node
which has our own OGM in the first place. We would then not only skip
our own OGM but erroneously also any other, following OGM in the
aggregate.

For another, we might receive an OGM aggregate which has our own OGM in
a place other then the first one. Then we would wrongly not skip this
OGM, leading to populating the orginator and gateway table with ourself.

The latter seems to not only be a cosmetic issue, but there were reports
that this causes issues with various subsystems of batman-adv, too. For
instance there were reports about issues with DAT and either disabling
DAT or aggregation seemed to solve it.

Fixing these issues by applying the own OGM check not on the first OGM
in an aggregate but for each OGM in an aggregate instead.

Fixes: 667996ebeab ("batman-adv: OGMv2 - implement originators logic")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/bat_v_ogm.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 0f8495b9..717fe657 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -881,6 +881,12 @@ static void batadv_v_ogm_process(const struct sk_buf=
f *skb, int ogm_offset,
 		   ntohl(ogm_packet->seqno), ogm_throughput, ogm_packet->ttl,
 		   ogm_packet->version, ntohs(ogm_packet->tvlv_len));
=20
+	if (batadv_is_my_mac(bat_priv, ogm_packet->orig)) {
+		batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
+			   "Drop packet: originator packet from ourself\n");
+		return;
+	}
+
 	/* If the throughput metric is 0, immediately drop the packet. No need
 	 * to create orig_node / neigh_node for an unusable route.
 	 */
@@ -1008,11 +1014,6 @@ int batadv_v_ogm_packet_recv(struct sk_buff *skb,
 	if (batadv_is_my_mac(bat_priv, ethhdr->h_source))
 		goto free_skb;
=20
-	ogm_packet =3D (struct batadv_ogm2_packet *)skb->data;
-
-	if (batadv_is_my_mac(bat_priv, ogm_packet->orig))
-		goto free_skb;
-
 	batadv_inc_counter(bat_priv, BATADV_CNT_MGMT_RX);
 	batadv_add_counter(bat_priv, BATADV_CNT_MGMT_RX_BYTES,
 			   skb->len + ETH_HLEN);
--=20
2.28.0.rc1
