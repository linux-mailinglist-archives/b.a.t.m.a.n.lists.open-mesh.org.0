Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hhutC1bJQ2qYhwoAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 15:49:10 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6A26E509F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 15:49:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=g+0RlvV8;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A6EF68084B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 15:49:09 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782827349;
 b=QZIUGOzQBdGIr7j7Xup1U5pDTqeomTPXmhE47qTJQcd7u4c0fYysFTtL7qdmVtmgrneHk
 zfunnlVSz1425kwymy9UVn4GtxHHevmwheAUk+l3i9OA3IOXxvapD6/3Yho4n2lfAGA+ON8
 tj74+OGgTxXM2hUt+5K9WNQ2Lv2KTuQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782827349; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Fb4AHoI005tpjwAxxp5lWW56BRhiNymjwDtZfAu8jEY=;
 b=ODwv23MDjXH/2iDG9i7NZ95bv5DRYoZbXTTqYWco52up4Fh1RVJgmeLPVu0okeqPdAyD7
 4A9kK5Q7LbT76Tk/PGplbh/mZyGyxOCysO3zUFOa4xbdXCClOECWl4deNpp6PbkQQB5MOPs
 ORP74eC+pM64Uudtejwf43do6dMl+rU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E280D83BE1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2026 15:44:37 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782827077;
	b=RKNGYl96syC81pq+jT6qiQRv+dXt3HdqSscbUdr9i/Nt9Co320sSvXGs1hru2r0VgMg5E4
	iA5J8C+782BmCRawtrJLN7t/PYrmLpQr43LoqN6vHT4S5QskxpNY+D9TmLN6W+IoY07ox/
	r2Zql6ui8qkJNt3Ewnm7u9NbIrRYZe8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782827077;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Fb4AHoI005tpjwAxxp5lWW56BRhiNymjwDtZfAu8jEY=;
	b=tGnBuSCW40ZomEpMZs5YcMnjnLojRO/VXUPjj3Jw/iTPPK/BZJvKG7NgGwlyOB1oCg9/Zi
	J64YjSO4DLUztzpJnPVXbgkFdT+ZCGtNsiGld+pIbycYY8W44oXkVtumH6W3YAHu/RpNgV
	dBD12/e9smuP5PiQ1zFFll1BkrMrLeg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=g+0RlvV8;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1782827076;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Fb4AHoI005tpjwAxxp5lWW56BRhiNymjwDtZfAu8jEY=;
	b=g+0RlvV8yBF2crQjVDHmRqFFschJXsFVx44giWbgrqsDnmShE3tEpkEOsFDukpYXml6HqP
	i7i9dYvGONYp7EYBWrfdZOcMmYHJknExhD3WMLO63XjTbG8tywc0YaVrDlmRSJXWeOz+Wy
	J4YaOfbfOYWVIcQZNw8sTHHaBfOlQz9uw3YPrGVAWH5Ae8a+9ijvkZNA32O9mitBPjYNgQ
	LNl4rRTimaVZS8eVIP4uuDSNgEY7ocetUmAgbhgcbVnsLcT23uaBet7xpJJftVtUK2SrXD
	hWKQTXHsIn7u053j/Fy5NirQAc6SOcy23cZARG8pnBYBlYHg8HSujFRKd6XbFw==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	stable@vger.kernel.org,
	Sashiko <sashiko-bot@kernel.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 6/6] batman-adv: dat: ensure accessible eth_hdr proto
 field
Date: Tue, 30 Jun 2026 15:44:30 +0200
Message-ID: <20260630134430.85786-7-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260630134430.85786-1-sw@simonwunderlich.de>
References: <20260630134430.85786-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: OF7EXIEG5IIHFD5T4JURVEHNY266HH5T
X-Message-ID-Hash: OF7EXIEG5IIHFD5T4JURVEHNY266HH5T
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OF7EXIEG5IIHFD5T4JURVEHNY266HH5T/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:stable@vger.kernel.org,m:sashiko-bot@kernel.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:from_mime,lists.open-mesh.org:from_smtp];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB6A26E509F

From: Sven Eckelmann <sven@narfation.org>

When batadv_get_vid() accesses the proto field of the ethernet header, it
is not checking if the data itself is accessible. The caller is responsible
for it. But in contrast to other call sites, batadv_dat_get_vid() and its
caller didn't make sure this is true. This could have caused an
out-of-bounds access.

Cc: stable@vger.kernel.org
Reported-by: Sashiko <sashiko-bot@kernel.org>
Fixes: be1db4f6615b ("batman-adv: make the Distributed ARP Table vlan aware")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/distributed-arp-table.c | 23 +++++++++++++++++++++++
 net/batman-adv/main.c                  |  3 +++
 2 files changed, 26 insertions(+)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index ead02c9e08484..c40c9e02391be 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -1066,6 +1066,9 @@ static u16 batadv_arp_get_type(struct batadv_priv *bat_priv,
  * @skb: the buffer containing the packet to extract the VID from
  * @hdr_size: the size of the batman-adv header encapsulating the packet
  *
+ * The caller must ensure that at least @hdr_size + ETH_HLEN bytes are
+ * accessible after skb->data.
+ *
  * Return: If the packet embedded in the skb is vlan tagged this function
  * returns the VID with the BATADV_VLAN_HAS_TAG flag. Otherwise BATADV_NO_FLAGS
  * is returned.
@@ -1148,6 +1151,10 @@ bool batadv_dat_snoop_outgoing_arp_request(struct batadv_priv *bat_priv,
 	if (!READ_ONCE(bat_priv->distributed_arp_table))
 		goto out;
 
+	/* first, find out the vid. */
+	if (!pskb_may_pull(skb, hdr_size + ETH_HLEN))
+		goto out;
+
 	vid = batadv_dat_get_vid(skb, &hdr_size);
 
 	type = batadv_arp_get_type(bat_priv, skb, hdr_size);
@@ -1243,6 +1250,10 @@ bool batadv_dat_snoop_incoming_arp_request(struct batadv_priv *bat_priv,
 	if (!READ_ONCE(bat_priv->distributed_arp_table))
 		goto out;
 
+	/* first, find out the vid. */
+	if (!pskb_may_pull(skb, hdr_size + ETH_HLEN))
+		goto out;
+
 	vid = batadv_dat_get_vid(skb, &hdr_size);
 
 	type = batadv_arp_get_type(bat_priv, skb, hdr_size);
@@ -1305,6 +1316,10 @@ void batadv_dat_snoop_outgoing_arp_reply(struct batadv_priv *bat_priv,
 	if (!READ_ONCE(bat_priv->distributed_arp_table))
 		return;
 
+	/* first, find out the vid. */
+	if (!pskb_may_pull(skb, hdr_size + ETH_HLEN))
+		return;
+
 	vid = batadv_dat_get_vid(skb, &hdr_size);
 
 	type = batadv_arp_get_type(bat_priv, skb, hdr_size);
@@ -1353,6 +1368,10 @@ bool batadv_dat_snoop_incoming_arp_reply(struct batadv_priv *bat_priv,
 	if (!READ_ONCE(bat_priv->distributed_arp_table))
 		goto out;
 
+	/* first, find out the vid. */
+	if (!pskb_may_pull(skb, hdr_size + ETH_HLEN))
+		goto out;
+
 	vid = batadv_dat_get_vid(skb, &hdr_size);
 
 	type = batadv_arp_get_type(bat_priv, skb, hdr_size);
@@ -1807,6 +1826,10 @@ bool batadv_dat_drop_broadcast_packet(struct batadv_priv *bat_priv,
 	if (batadv_forw_packet_is_rebroadcast(forw_packet))
 		goto out;
 
+	/* first, find out the vid. */
+	if (!pskb_may_pull(forw_packet->skb, hdr_size + ETH_HLEN))
+		goto out;
+
 	vid = batadv_dat_get_vid(forw_packet->skb, &hdr_size);
 
 	type = batadv_arp_get_type(bat_priv, forw_packet->skb, hdr_size);
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 3c4572284b532..4d3807a645b78 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -580,6 +580,9 @@ void batadv_recv_handler_unregister(u8 packet_type)
  * @skb: the buffer containing the packet
  * @header_len: length of the batman header preceding the ethernet header
  *
+ * The caller must ensure that at least @header_len + ETH_HLEN bytes are
+ * accessible after skb->data.
+ *
  * Return: VID with the BATADV_VLAN_HAS_TAG flag when the packet embedded in the
  * skb is vlan tagged. Otherwise BATADV_NO_FLAGS.
  */
-- 
2.47.3

