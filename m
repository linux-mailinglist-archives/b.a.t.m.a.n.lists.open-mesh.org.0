Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPqOMqMF82nawgEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 09:32:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC6649EA75
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 09:32:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AB5EC84623
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 09:32:49 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777534369;
 b=I3gSuj2X+D2pw916W2Fy3xO+yeyyfYYYFoEwNsd75Do7tkV/IcDuZdmYJy9W8OQowz28O
 2V2XCbxQgXs9AA5KvmeBfvzRrEfMRrLcBCdprwBd4AIU9k6qDDY+jEa4sutg7ghVqP+TGCN
 cnulYdGm/D1nOfEKvkVrZbKaT8YgG5k=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777534369; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ekCy/GX+5k72OAkBDR9bmLdXrX1HQq/QVHZD/S3Dr/A=;
 b=pBfPMI9BzA3WV6CZcWPxKRXp5To04Xt95erZXAo+vrrLUQB5bshIaGE3YlwbbSgSa6YNL
 liUSzPZsI5233i2RIg5Es+snNBU5qZtxP7r9laPfq/fIA5nRDw+pkQOffe3ghQvB5JobPWm
 Ng1OiQ0oByiH4Ztz1S+2mB3CT8cTTKs=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=163.com;
 arc=pass;
 dmarc=pass header.from=163.com policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=163.com; arc=pass;
 dmarc=pass (Used From Domain Record) header.from=163.com policy.dmarc=none
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 230E5815DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 30 Apr 2026 09:24:56 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777533898;
	b=CIKbjsA6h+Q02jXe3RGVICe4diFhJkwWKxoj5D2+wl1x+RY+zJzV8/k5GZsW7k1YThpZwI
	pPqk054Lkk6+g47fjbnIEYP0xqQ4O3Q01SpPU+0oCxTJEfTuQN040vvv6hmtIGTMhIf4cT
	MUZvl0Mp9/qno4Oha/Q9CC9xDMaI3O0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=163.com header.s=s110527 header.b="bhfNzI/w";
	spf=pass (diktynna.open-mesh.org: domain of rob_garcia@163.com designates
 220.197.31.3 as permitted sender) smtp.mailfrom=rob_garcia@163.com;
	dmarc=pass (policy=none) header.from=163.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777533898;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=ekCy/GX+5k72OAkBDR9bmLdXrX1HQq/QVHZD/S3Dr/A=;
	b=LXCKDpBHDL9YC/y3C8g8cHzvEaESsPoFPLdACGKx7MR8k5jH4NBDh0qcjF6bUk7Sa6sbW2
	h4KoxIne3WdI4akgOh18YkfcSpylA13BTaiC76KV7aHluTcjxhg3bUnxxx/+edyyIB4kqD
	tktGFoMq8mwhcfWx3UXAec9PbzP209c=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=ek
	Cy/GX+5k72OAkBDR9bmLdXrX1HQq/QVHZD/S3Dr/A=; b=bhfNzI/wZX/r+rr2g9
	yF4Im+Qn4RJ5dYPadk8tB2CeBvw6vzCYOdVaUsHhinRYH4rgwkliidJQcVVkSADF
	3uZaKO/n3T9h44YgnllO7IEoone5uVvI4SeJyLEMzRtGt9BS4LibpXdiZEe6dry3
	juSS9f4gL9JOW2wtvHTMU6Fqw=
Received: from pek-lpg-core5.wrs.com (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id
 _____wAX4WzdAfNpXUOSCg--.61089S2;
	Thu, 30 Apr 2026 15:16:46 +0800 (CST)
From: Robert Garcia <rob_garcia@163.com>
To: stable@vger.kernel.org,
	Haoze Xie <royenheart@gmail.com>
Cc: Simon Wunderlich <sw@simonwunderlich.de>,
	Robert Garcia <rob_garcia@163.com>,
	Yifan Wu <yifanwucs@gmail.com>,
	Juefei Pu <tomapufckgml@gmail.com>,
	Yuan Tan <yuantan098@gmail.com>,
	Xin Liu <bird@lzu.edu.cn>,
	Ao Zhou <n05ec@lzu.edu.cn>,
	Sven Eckelmann <sven@narfation.org>,
	Marek Lindner <mareklindner@neomailbox.ch>,
	Antonio Quartulli <a@unstable.cc>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	b.a.t.m.a.n@lists.open-mesh.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5.15.y] batman-adv: hold claim backbone gateways by reference
Date: Thu, 30 Apr 2026 15:16:45 +0800
Message-Id: <20260430071645.3030702-1-rob_garcia@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _____wAX4WzdAfNpXUOSCg--.61089S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxXryxGFykCrWrWr13GF1ftFb_yoWrCr15pF
	17Kw1rKrs7Xws7X342yry2gF1UXrs3GrW7WryUGF1Iyw1jyr18K345KF1IvF4YyFyqkrs8
	Zr1Ykr17urs8CrUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zR4SoJUUUUU=
X-Originating-IP: [60.247.85.88]
X-CM-SenderInfo: 5uresw5dufxti6rwjhhfrp/xtbC5h7OOmnzAd4ToQAA37
X-MailFrom: rob_garcia@163.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation
Message-ID-Hash: DKASSHRJVHCLN63WHZM7ZNQIWSY54CIN
X-Message-ID-Hash: DKASSHRJVHCLN63WHZM7ZNQIWSY54CIN
X-Mailman-Approved-At: Thu, 30 Apr 2026 09:32:10 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DKASSHRJVHCLN63WHZM7ZNQIWSY54CIN/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 0DC6649EA75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FREEMAIL_CC(0.00)[simonwunderlich.de,163.com,gmail.com,lzu.edu.cn,narfation.org,neomailbox.ch,unstable.cc,davemloft.net,kernel.org,lunn.ch,lists.open-mesh.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	NEURAL_HAM(-0.00)[-0.999];
	HAS_XOIP(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:email,lzu.edu.cn:email,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[rob_garcia@163.com,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[163.com:+];
	R_SPF_NA(0.00)[no SPF record]

From: Haoze Xie <royenheart@gmail.com>

[ Upstream commit 82d8701b2c930d0e96b0dbc9115a218d791cb0d2 ]

batadv_bla_add_claim() can replace claim->backbone_gw and drop the old
gateway's last reference while readers still follow the pointer.

The netlink claim dump path dereferences claim->backbone_gw->orig and
takes claim->backbone_gw->crc_lock without pinning the underlying
backbone gateway. batadv_bla_check_claim() still has the same naked
pointer access pattern.

Reuse batadv_bla_claim_get_backbone_gw() in both readers so they operate
on a stable gateway reference until the read-side work is complete.
This keeps the dump and claim-check paths aligned with the lifetime
rules introduced for the other BLA claim readers.

Fixes: 23721387c409 ("batman-adv: add basic bridge loop avoidance code")
Fixes: 04f3f5bf1883 ("batman-adv: add B.A.T.M.A.N. Dump BLA claims via netlink")
Cc: stable@vger.kernel.org
Reported-by: Yifan Wu <yifanwucs@gmail.com>
Reported-by: Juefei Pu <tomapufckgml@gmail.com>
Co-developed-by: Yuan Tan <yuantan098@gmail.com>
Signed-off-by: Yuan Tan <yuantan098@gmail.com>
Suggested-by: Xin Liu <bird@lzu.edu.cn>
Signed-off-by: Haoze Xie <royenheart@gmail.com>
Signed-off-by: Ao Zhou <n05ec@lzu.edu.cn>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Robert Garcia <rob_garcia@163.com>
---
 net/batman-adv/bridge_loop_avoidance.c | 27 +++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 17687848daec..fb9aaf82f713 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -2131,6 +2131,7 @@ batadv_bla_claim_dump_entry(struct sk_buff *msg, u32 portid,
 			    struct batadv_bla_claim *claim)
 {
 	u8 *primary_addr = primary_if->net_dev->dev_addr;
+	struct batadv_bla_backbone_gw *backbone_gw;
 	u16 backbone_crc;
 	bool is_own;
 	void *hdr;
@@ -2146,32 +2147,35 @@ batadv_bla_claim_dump_entry(struct sk_buff *msg, u32 portid,
 
 	genl_dump_check_consistent(cb, hdr);
 
-	is_own = batadv_compare_eth(claim->backbone_gw->orig,
-				    primary_addr);
+	backbone_gw = batadv_bla_claim_get_backbone_gw(claim);
+
+	is_own = batadv_compare_eth(backbone_gw->orig, primary_addr);
 
-	spin_lock_bh(&claim->backbone_gw->crc_lock);
-	backbone_crc = claim->backbone_gw->crc;
-	spin_unlock_bh(&claim->backbone_gw->crc_lock);
+	spin_lock_bh(&backbone_gw->crc_lock);
+	backbone_crc = backbone_gw->crc;
+	spin_unlock_bh(&backbone_gw->crc_lock);
 
 	if (is_own)
 		if (nla_put_flag(msg, BATADV_ATTR_BLA_OWN)) {
 			genlmsg_cancel(msg, hdr);
-			goto out;
+			goto put_backbone_gw;
 		}
 
 	if (nla_put(msg, BATADV_ATTR_BLA_ADDRESS, ETH_ALEN, claim->addr) ||
 	    nla_put_u16(msg, BATADV_ATTR_BLA_VID, claim->vid) ||
 	    nla_put(msg, BATADV_ATTR_BLA_BACKBONE, ETH_ALEN,
-		    claim->backbone_gw->orig) ||
+		    backbone_gw->orig) ||
 	    nla_put_u16(msg, BATADV_ATTR_BLA_CRC,
 			backbone_crc)) {
 		genlmsg_cancel(msg, hdr);
-		goto out;
+		goto put_backbone_gw;
 	}
 
 	genlmsg_end(msg, hdr);
 	ret = 0;
 
+put_backbone_gw:
+	batadv_backbone_gw_put(backbone_gw);
 out:
 	return ret;
 }
@@ -2467,6 +2471,7 @@ int batadv_bla_backbone_dump(struct sk_buff *msg, struct netlink_callback *cb)
 bool batadv_bla_check_claim(struct batadv_priv *bat_priv,
 			    u8 *addr, unsigned short vid)
 {
+	struct batadv_bla_backbone_gw *backbone_gw;
 	struct batadv_bla_claim search_claim;
 	struct batadv_bla_claim *claim = NULL;
 	struct batadv_hard_iface *primary_if = NULL;
@@ -2489,9 +2494,13 @@ bool batadv_bla_check_claim(struct batadv_priv *bat_priv,
 	 * return false.
 	 */
 	if (claim) {
-		if (!batadv_compare_eth(claim->backbone_gw->orig,
+		backbone_gw = batadv_bla_claim_get_backbone_gw(claim);
+
+		if (!batadv_compare_eth(backbone_gw->orig,
 					primary_if->net_dev->dev_addr))
 			ret = false;
+
+		batadv_backbone_gw_put(backbone_gw);
 		batadv_claim_put(claim);
 	}
 
-- 
2.34.1

