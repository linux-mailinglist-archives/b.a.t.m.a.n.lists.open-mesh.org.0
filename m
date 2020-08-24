Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADD7250203
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 24 Aug 2020 18:28:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 09BC7803FD;
	Mon, 24 Aug 2020 18:27:51 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5F7BC8039D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Aug 2020 18:27:47 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970d68d0e0160e8a82c5fd76.dip0.t-ipconnect.de [IPv6:2003:c5:970d:68d0:e016:e8a:82c5:fd76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 1F39F62073;
	Mon, 24 Aug 2020 18:27:47 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 3/5] batman-adv: types.h: delete duplicated words
Date: Mon, 24 Aug 2020 18:27:39 +0200
Message-Id: <20200824162741.880-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200824162741.880-1-sw@simonwunderlich.de>
References: <20200824162741.880-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598286467;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gEAjjEDodcOq7TvIyxllOZ/FuPBa32kni1Fsuy9Vn/Y=;
	b=M8g3bcTeo12FsunAgdugGPq5L7YCKeTvDSD9py7O0FLmxMXqONzd/T3OFUCJMkuJPzlFFK
	FqUaZj8lfzURGo6MLvCjfOjFtVUJayWxY3xcMc415w23GtqPi1GA7z+sexdL1TXv6ID8jY
	Af8FGYUQN8WlhhU6ZqbSVBuSii7MCX4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598286467; a=rsa-sha256;
	cv=none;
	b=GuGrc3MircxsfDgOpRiRpZz3ZlljQJJ9vtZyMlGmvO2QKga6QRMWaqmOd+3DafhwMqZ3qf
	8Ivj9fEGtxVcKUraW6+tEjTlMvTyapjxJr/rgThu1L0sZ0jEOAERQr6sd57/sZtdg51o3P
	WL0i7fYpbJOdk8pn6oAEHpvpOJxhmKw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: UNTB4KY57RCKLMQI3PII2SV5AKMV76TL
X-Message-ID-Hash: UNTB4KY57RCKLMQI3PII2SV5AKMV76TL
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UNTB4KY57RCKLMQI3PII2SV5AKMV76TL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Randy Dunlap <rdunlap@infradead.org>

Delete the doubled word "time" in a comment.
Delete the doubled word "address" in a comment.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/types.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index ed519efa3c36..965336a3b89d 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1492,7 +1492,7 @@ struct batadv_tp_vars {
 	/** @unacked_lock: protect unacked_list */
 	spinlock_t unacked_lock;
=20
-	/** @last_recv_time: time time (jiffies) a msg was received */
+	/** @last_recv_time: time (jiffies) a msg was received */
 	unsigned long last_recv_time;
=20
 	/** @refcount: number of context where the object is used */
@@ -1996,7 +1996,7 @@ struct batadv_tt_change_node {
  */
 struct batadv_tt_req_node {
 	/**
-	 * @addr: mac address address of the originator this request was sent t=
o
+	 * @addr: mac address of the originator this request was sent to
 	 */
 	u8 addr[ETH_ALEN];
=20
--=20
2.20.1
