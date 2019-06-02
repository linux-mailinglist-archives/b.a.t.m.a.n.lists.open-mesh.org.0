Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D6B322DB
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  2 Jun 2019 11:52:00 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 4F0D48198C;
	Sun,  2 Jun 2019 11:51:56 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id BB3DF8060C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  2 Jun 2019 11:51:53 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id C40371100E2;
 Sun,  2 Jun 2019 11:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1559469112;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=/Ypcrm2FW54amPe79jfgCHrpP+pQoOWQgZzSrxGvvtg=;
 b=kIJF4pQ4eiF68G5CERdEQ3CgzRiUeSjZ+RBVyTJNi7Z3TTyU5nb23Am3BLxK7oh1cCfhpb
 /D62IOEYCF2FYSEfDKn30vpDVOhL7qczl77Mneuk3/sH1t2uptzPzBTeje0xZXUaayfx5t
 UNBSHHmaFhcV90qfcl7NPtsS4B+VqUk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint v2] batman-adv: Fix duplicated OGMs on NETDEV_UP
Date: Sun,  2 Jun 2019 11:51:35 +0200
Message-Id: <20190602095135.15604-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1559469113;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=/Ypcrm2FW54amPe79jfgCHrpP+pQoOWQgZzSrxGvvtg=;
 b=MVfZ8zZ7B/8LvYZx7PpjECKOXSajlQ6UD6hIkO9tQw5omodcY3yltUlQAfAaZBn8X9xYK+
 uindBvFFATURbLD+v+Xe8RS0I54Rdh0nZdBpUmCdEn5I8P9FDEYoiG8Q7Ugey+PnRv+uDC
 WVcS6A+p3TJpUGYk27GUgkWalnJP3hI=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1559469113; a=rsa-sha256; cv=none;
 b=cbOJd8TtdANPFaTdKW7asJIE7hazUUxctIlt3r80IyDjQ8lDUYdk0ZlrRBAU+8yfOBqF88
 yQ8ZwtB5ZsQP9/qhIRRDvPcSBgIyM0/KGd9c/VJo0yeT1whuBYSl5CABFRC4gpb5AkzqAU
 0yaubL12nSoCskKfWyrmBRmR5eigLVY=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Antonio Quartulli <a@unstable.cc>,
 Marek Lindner <mareklindner@neomailbox.ch>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

The state of slave interfaces are handled differently depending on whether
the interface is up or not. All active interfaces (IFF_UP) will transmit
OGMs. But for B.A.T.M.A.N. IV, also non-active interfaces are scheduling
(low TTL) OGMs on active interfaces. The code which setups and schedules
the OGMs must therefore already be called when the interfaces gets added as
slave interface and the transmit function must then check whether it has to
send out the OGM or not on the specific slave interface.

But the commit 0d8468553c3c ("batman-adv: remove ogm_emit and ogm_schedule
API calls") moved the setup code from the enable function to the activate
function. The latter is called either when the added slave was already up
when batadv_hardif_enable_interface processed the new interface or when a
NETDEV_UP event was received for this slave interfac. As result, each
NETDEV_UP would schedule a new OGM worker for the interface and thus OGMs
would be send a lot more than expected.

Fixes: 0d8468553c3c ("batman-adv: remove ogm_emit and ogm_schedule API calls")
Reported-by: Linus Lüssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Marek Lindner <mareklindner@neomailbox.ch>

v2:
* added "(optional)" mark to kerneldoc of enabled function pointer

Here are the backports:

* 2019.2 backport: https://github.com/openwrt-routing/packages/pull/475
* 2018.1 backport: https://github.com/openwrt-routing/packages/pull/474
* 2016.5 backport: https://github.com/openwrt-routing/packages/pull/473


 net/batman-adv/bat_iv_ogm.c     | 4 ++--
 net/batman-adv/hard-interface.c | 3 +++
 net/batman-adv/types.h          | 3 +++
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index bd4138dd..240ed709 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -2337,7 +2337,7 @@ batadv_iv_ogm_neigh_is_sob(struct batadv_neigh_node *neigh1,
 	return ret;
 }
 
-static void batadv_iv_iface_activate(struct batadv_hard_iface *hard_iface)
+static void batadv_iv_iface_enabled(struct batadv_hard_iface *hard_iface)
 {
 	/* begin scheduling originator messages on that interface */
 	batadv_iv_ogm_schedule(hard_iface);
@@ -2683,8 +2683,8 @@ static void batadv_iv_gw_dump(struct sk_buff *msg, struct netlink_callback *cb,
 static struct batadv_algo_ops batadv_batman_iv __read_mostly = {
 	.name = "BATMAN_IV",
 	.iface = {
-		.activate = batadv_iv_iface_activate,
 		.enable = batadv_iv_ogm_iface_enable,
+		.enabled = batadv_iv_iface_enabled,
 		.disable = batadv_iv_ogm_iface_disable,
 		.update_mac = batadv_iv_ogm_iface_update_mac,
 		.primary_set = batadv_iv_ogm_primary_iface_set,
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 79d1731b..3719cfd0 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -795,6 +795,9 @@ int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
 
 	batadv_hardif_recalc_extra_skbroom(soft_iface);
 
+	if (bat_priv->algo_ops->iface.enabled)
+		bat_priv->algo_ops->iface.enabled(hard_iface);
+
 out:
 	return 0;
 
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 74b64473..e0b25104 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -2129,6 +2129,9 @@ struct batadv_algo_iface_ops {
 	/** @enable: init routing info when hard-interface is enabled */
 	int (*enable)(struct batadv_hard_iface *hard_iface);
 
+	/** @enabled: notification when hard-interface was enabled (optional) */
+	void (*enabled)(struct batadv_hard_iface *hard_iface);
+
 	/** @disable: de-init routing info when hard-interface is disabled */
 	void (*disable)(struct batadv_hard_iface *hard_iface);
 
-- 
2.20.1

