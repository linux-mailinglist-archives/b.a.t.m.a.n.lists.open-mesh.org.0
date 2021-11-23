Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 158BA45A2F8
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:43:38 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9BF2984486;
	Tue, 23 Nov 2021 13:43:33 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0E150844F2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:43:30 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3827D60F6B;
	Tue, 23 Nov 2021 12:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671408;
	bh=Zy0qbFzvtm383Z2ZrBGYUZ2oBIz3dno/sZKFUCwfJvo=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=Vja0F19WoJANtJW2jdWXr9CgaDHwdGJM1Tu9UgWkc1q0xfc4cObl78aPrIwO5KlrM
	 ZdZVdsOS/Ey1+r2EvjssiA+EaoSG0X3W4wxxHpv90RTeoJ2Ksio+seseypW3MwJmeH
	 nx7P+hDaLUBjmvZVYZe+LMBzhgiFHTl2e2MI+4uE=
Subject: Patch "batman-adv: Fix own OGM check in aggregated OGMs" has been added to the 4.9-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,linus.luessing@c0d3.blue,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:43:01 +0100
In-Reply-To: <20211120123958.260826-3-sven@narfation.org>
Message-ID: <16376713811943@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671410; a=rsa-sha256;
	cv=none;
	b=q6pjTk4T0s7H45y6Ty249CfCbLHcC4WivhviXwHIxjVPJl6GwrUf1yvArammHe4B0bZJcc
	se36DHAeW+LZTYhgb/dTm2PUt14iLiGRxIm01AsVi+jv+hNguux6IUrN2zpsT4IN9qUQBG
	2M049Ikze96jQaTo3xv6CXmKyGuLD3o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671410;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=5lOPvtDjIQAfaJwU2CWrWAA4NoYGx5ESJYq5cF1GMlU=;
	b=pvlGOWL3+8AZGnIetIB/qdppo12u8WRQYNpNT+pRIvuc2M/dmUOTgMYnFIIANhmPLtoyu4
	GLPHtt5DN2F2NZQ8ehYVCf8zaEhCxeBUJXyFMcBQKmOfpXVDI4zz9BU4GQ2f1RwfhY/LBY
	k8G0cVKYOUQBWtjklt/d1jX8mu+ToZY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=Vja0F19W;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LH2SER3PBWY4PZBGAZIRAL56OVD7JGS3
X-Message-ID-Hash: LH2SER3PBWY4PZBGAZIRAL56OVD7JGS3
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LH2SER3PBWY4PZBGAZIRAL56OVD7JGS3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Fix own OGM check in aggregated OGMs

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-fix-own-ogm-check-in-aggregated-ogms.patch
and it can be found in the queue-4.9 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:37:10 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:39:53 +0100
Subject: batman-adv: Fix own OGM check in aggregated OGMs
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, "Linus L=FCssing" <linus.luessing@c0=
d3.blue>, "Simon Wunderlich" <sw@simonwunderlich.de>, "Sven Eckelmann" <s=
ven@narfation.org>
Message-ID: <20211120123958.260826-3-sven@narfation.org>

From: Linus L=FCssing <linus.luessing@c0d3.blue>

commit d8bf0c01642275c7dca1e5d02c34e4199c200b1f upstream.

The own OGM check is currently misplaced and can lead to the following
issues:

For one thing we might receive an aggregated OGM from a neighbor node
which has our own OGM in the first place. We would then not only skip
our own OGM but erroneously also any other, following OGM in the
aggregate.

For another, we might receive an OGM aggregate which has our own OGM in
a place other then the first one. Then we would wrongly not skip this
OGM, leading to populating the orginator and gateway table with ourself.

Fixes: 9323158ef9f4 ("batman-adv: OGMv2 - implement originators logic")
Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.9 backported: adjust context, correct fixes line ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/bat_v_ogm.c |   11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -690,6 +690,12 @@ static void batadv_v_ogm_process(const s
 		   ntohl(ogm_packet->seqno), ogm_throughput, ogm_packet->ttl,
 		   ogm_packet->version, ntohs(ogm_packet->tvlv_len));
=20
+	if (batadv_is_my_mac(bat_priv, ogm_packet->orig)) {
+		batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
+			   "Drop packet: originator packet from ourself\n");
+		return;
+	}
+
 	/* If the troughput metric is 0, immediately drop the packet. No need t=
o
 	 * create orig_node / neigh_node for an unusable route.
 	 */
@@ -788,11 +794,6 @@ int batadv_v_ogm_packet_recv(struct sk_b
 	if (batadv_is_my_mac(bat_priv, ethhdr->h_source))
 		return NET_RX_DROP;
=20
-	ogm_packet =3D (struct batadv_ogm2_packet *)skb->data;
-
-	if (batadv_is_my_mac(bat_priv, ogm_packet->orig))
-		return NET_RX_DROP;
-
 	batadv_inc_counter(bat_priv, BATADV_CNT_MGMT_RX);
 	batadv_add_counter(bat_priv, BATADV_CNT_MGMT_RX_BYTES,
 			   skb->len + ETH_HLEN);


Patches currently in stable-queue which might be from sven@narfation.org =
are

queue-4.9/batman-adv-consider-fragmentation-for-needed_headroom.patch
queue-4.9/ath9k-fix-potential-interrupt-storm-on-queue-reset.patch
queue-4.9/batman-adv-mcast-fix-duplicate-mcast-packets-from-bla-backbone-=
to-mesh.patch
queue-4.9/ath10k-fix-max-antenna-gain-unit.patch
queue-4.9/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-lan.patch
queue-4.9/batman-adv-reserve-needed_-room-for-fragments.patch
queue-4.9/batman-adv-fix-own-ogm-check-in-aggregated-ogms.patch
queue-4.9/batman-adv-keep-fragments-equally-sized.patch
queue-4.9/batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.p=
atch
