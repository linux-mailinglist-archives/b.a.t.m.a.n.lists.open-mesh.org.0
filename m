Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 448AC2C5A5D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 18:18:45 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2BA188009A;
	Thu, 26 Nov 2020 18:18:44 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2D7B98009A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Nov 2020 18:18:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1606411120;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pS2LeujNcJqZrUhhZI/obc8+zVdZSGuw/F4eMsIbKn8=;
	b=djNUpD5z5cyuzlFMNeSFMJm8mfSskqklGAQrtPaZtnsDqZMldxfenLZk6bzq+yIK2Rq7mc
	bqQu3g2AdgD91ElQctWJM6ESs+pWQhPHg1fmPTp/T3DLHVMgsw+DLTBbeEoO6n5HBEBBNp
	TeLZLRlhPOCl8G78z60fI/kjQ71UUTw=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>,
	=?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH] batman-adv: Consider fragmentation for needed_headroom
Date: Thu, 26 Nov 2020 18:18:32 +0100
Message-Id: <20201126171832.1064799-1-sven@narfation.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606411121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=pS2LeujNcJqZrUhhZI/obc8+zVdZSGuw/F4eMsIbKn8=;
	b=Uqu3mjXCuIHANl6NF0Jq9RYS2iLYxzANzctjaLqh9ZU5vzu0KYz2osbTkv+VBDl6cF8IT5
	psYivDBO7czW88+kcV+hwEPC6WJTHfVhmiFD/lJjeVyiviBzlQJv/YtCxWlrsl7EiSlHxe
	LSMZ+UtSBZ+FVgPat+eV0Wye1vNg9CY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606411121; a=rsa-sha256;
	cv=none;
	b=z2Blye3gjNSZZ2qxYOEObdB6m5ZsPpKe6+rH7pXH0Ja0ibOlZCi2Gr/4n4bMgPb0XJntws
	KSP8a18Tl7sEkr5lnifqpEFuhjmJ94gveIcYZ4kNQAwju5RMGd/PPee5MYcmhtBh/Hx0bs
	m0dK8MAXgz2G7Ui1cWPXKZ7XRWnZ+GQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=djNUpD5z;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2VVKTTFDVTDLBYXCIU7U4F4XOXQPDBG4
X-Message-ID-Hash: 2VVKTTFDVTDLBYXCIU7U4F4XOXQPDBG4
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2VVKTTFDVTDLBYXCIU7U4F4XOXQPDBG4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

If a batman-adv packets has to be fragmented, then the original batman-ad=
v
packet header is not stripped away. Instead, only a new header is added i=
n
front of the packet after it was splitted.

This size must be considered to avoid cost intensive reallocations during
the transmission through the various device layers.

Reported-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index f122e448..bbedb9a4 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -553,6 +553,9 @@ static void batadv_hardif_recalc_extra_skbroom(struct=
 net_device *soft_iface)
 	needed_headroom =3D lower_headroom + (lower_header_len - ETH_HLEN);
 	needed_headroom +=3D batadv_max_header_len();
=20
+	/* fragmentation headers don't strip the unicast/... header */
+	needed_headroom +=3D sizeof(struct batadv_frag_packet);
+
 	soft_iface->needed_headroom =3D needed_headroom;
 	soft_iface->needed_tailroom =3D lower_tailroom;
 }
--=20
2.29.2
