Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC7B503698
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Apr 2022 14:25:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2899582E47;
	Sat, 16 Apr 2022 14:25:09 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1A5358072F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Apr 2022 14:25:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1650111906;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5gRVsR+k88icLnAey0T70AAH6oNT5lNOUkoxchzsRPM=;
	b=i0RK3PU/DoVn4u0RdPUi7bseSOcd+0YYoxH0rqT2Zu296Dfi8fyxkovp9uxEdMik15dVdM
	UzqxRdZpG8Q1C9+Fi4KXpvdvQ6dYaxzn9lHzSY2C9b60zLYmjqfWoEsYTXEE2vKcTiUh+X
	HfIW5qdgQtJ9O3bRUAwHVZ53VMfUEJg=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>,
	Felix Kaechele <felix@kaechele.ca>
Subject: [PATCH] batman-adv: Don't skb_split skbuffs with frag_list
Date: Sat, 16 Apr 2022 14:24:34 +0200
Message-Id: <20220416122434.33061-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650111907; a=rsa-sha256;
	cv=none;
	b=tQJgHBI3wdlZ7sGXb9IPyS+tkZjT2+paYv5a1AcAojj2jaxqInnnRGwh0h2wQBWJUaMqUb
	WFRuDs/+T9dN86IPAhe1Oi21H1V3A5i87u7rloHneoEnbYSqzoypLz3+TVE/eTTGI1ln+K
	uQK2LQaJEi0l+KaFaNuQzKxQT1y7BiE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="i0RK3PU/";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650111907;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=5gRVsR+k88icLnAey0T70AAH6oNT5lNOUkoxchzsRPM=;
	b=dWCQpUmbJRNQmGO6kGLrF37i7+uPX3e2m9TZJt6Kt5TKaVVAD8rdgsRFCO36AFex6n70Sa
	zNg3orcms8e2MzhVbZKgfr4m3KCsqBau3R9XB+/fQ56wSfp+uYGO20ftOZqK4koTYLWDNn
	bBRVQ5hjpAnogoWrlm1w5kfrxKExXpY=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: VBWJGIW5MY6QZBWLESUVN2DJZBI4XKWD
X-Message-ID-Hash: VBWJGIW5MY6QZBWLESUVN2DJZBI4XKWD
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VBWJGIW5MY6QZBWLESUVN2DJZBI4XKWD/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The receiving interface might have used GRO to receive more fragments tha=
n
MAX_SKB_FRAGS fragments. In this case, these will not be stored in
skb_shinfo(skb)->frags but merged into the frag list.

batman-adv relies on the function skb_split to split packets up into
multiple smaller packets which are not larger than the MTU on the outgoin=
g
interface. But this function cannot handle frag_list entries and is only
operating on skb_shinfo(skb)->frags. If it is then still trying to split
such an skb and xmit'ing it on an interface without support for
NETIF_F_FRAGLIST then validate_xmit_skb() will try to linearize it. But
this fails due to inconsistent information and __pskb_pull_tail will
trigger a BUG_ON after skb_copy_bits() returns an error.

In case of entries in frag_list, just linearize the skb before operating =
on
it with skb_split().

Reported-by: Felix Kaechele <felix@kaechele.ca>
Fixes: 9de347143505 ("batman-adv: layer2 unicast packet fragmentation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/fragmentation.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 0899a729..c120c7c6 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -475,6 +475,17 @@ int batadv_frag_send_packet(struct sk_buff *skb,
 		goto free_skb;
 	}
=20
+	/* GRO might have added fragments to the fragment list instead of
+	 * frags[]. But this is not handled by skb_split and must be
+	 * linearized to avoid incorrect length information after all
+	 * batman-adv fragments were created and submitted to the
+	 * hard-interface
+	 */
+	if (skb_has_frag_list(skb) && __skb_linearize(skb)) {
+		ret =3D -ENOMEM;
+		goto free_skb;
+	}
+
 	/* Create one header to be copied to all fragments */
 	frag_header.packet_type =3D BATADV_UNICAST_FRAG;
 	frag_header.version =3D BATADV_COMPAT_VERSION;
--=20
2.30.2
