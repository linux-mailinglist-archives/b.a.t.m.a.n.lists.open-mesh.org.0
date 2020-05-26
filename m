Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4691E1F49
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2020 12:05:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D1D758211A;
	Tue, 26 May 2020 12:05:57 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C97E58211A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 May 2020 12:05:54 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c597221100fc44a592f3d496ba.dip0.t-ipconnect.de [IPv6:2003:c5:9722:1100:fc44:a592:f3d4:96ba])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 6206C6206B;
	Tue, 26 May 2020 12:00:10 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 3/3] batman-adv: Revert "disable ethtool link speed detection when auto negotiation off"
Date: Tue, 26 May 2020 12:00:07 +0200
Message-Id: <20200526100007.10501-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526100007.10501-1-sw@simonwunderlich.de>
References: <20200526100007.10501-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590487554;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yjGigNDIfkGp5HWDjPI0/zixNvzpwE6lxpNbjR7pjuc=;
	b=hpzg9QeE7v4kknsMusxvOvBy06/CWZ8tnUtpFEsRmgZTpSMDC/rW4Tvb4YHe2dTLSSdwMC
	wovZ0NEf1ybEvt89SZHj3jtN+wtD/X3G3xGspcbr0I/yDo5pZ4HQDmTFbi1K7YkUtxJPWj
	7Fll80C8hZxK0ESe8WGpkmBPTYVOabE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590487554; a=rsa-sha256;
	cv=none;
	b=qEhUPpC6yJrkIkKburxhqaZ1w0MFWvlxbD6gmd7jk2l1iTKdP2JgSkCfQSnvsZCbvcZtrw
	cytkHWcG4xFrjxjLU6iHd5uQI+XacByptj8LRoW46z7NpzEad7pWoMwbFTIZGqQz80OkEI
	nYpMGuCV5CQ274sGH22SGTbUABSlR5c=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7UPML2EBNKMA6OCAZSTOWBMOJMDDXBJC
X-Message-ID-Hash: 7UPML2EBNKMA6OCAZSTOWBMOJMDDXBJC
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7UPML2EBNKMA6OCAZSTOWBMOJMDDXBJC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit 8c46fcd78308 ("batman-adv: disable ethtool link speed detectio=
n
when auto negotiation off") disabled the usage of ethtool's link_ksetting
when auto negotation was enabled due to invalid values when used with
tun/tap virtual net_devices. According to the patch, automatic measuremen=
ts
should be used for these kind of interfaces.

But there are major flaws with this argumentation:

* automatic measurements are not implemented
* auto negotiation has nothing to do with the validity of the retrieved
  values

The first point has to be fixed by a longer patch series. The "validity"
part of the second point must be addressed in the same patch series by
dropping the usage of ethtool's link_ksetting (thus always doing automati=
c
measurements over ethernet).

Drop the patch again to have more default values for various net_device
types/configurations. The user can still overwrite them using the
batadv_hardif's BATADV_ATTR_THROUGHPUT_OVERRIDE.

Reported-by: Matthias Schiffer <mschiffer@universe-factory.net>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_v_elp.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 353e49c40e7f..0bdefa35da98 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -127,20 +127,7 @@ static u32 batadv_v_elp_get_throughput(struct batadv=
_hardif_neigh_node *neigh)
 	rtnl_lock();
 	ret =3D __ethtool_get_link_ksettings(hard_iface->net_dev, &link_setting=
s);
 	rtnl_unlock();
-
-	/* Virtual interface drivers such as tun / tap interfaces, VLAN, etc
-	 * tend to initialize the interface throughput with some value for the
-	 * sake of having a throughput number to export via ethtool. This
-	 * exported throughput leaves batman-adv to conclude the interface
-	 * throughput is genuine (reflecting reality), thus no measurements
-	 * are necessary.
-	 *
-	 * Based on the observation that those interface types also tend to set
-	 * the link auto-negotiation to 'off', batman-adv shall check this
-	 * setting to differentiate between genuine link throughput information
-	 * and placeholders installed by virtual interfaces.
-	 */
-	if (ret =3D=3D 0 && link_settings.base.autoneg =3D=3D AUTONEG_ENABLE) {
+	if (ret =3D=3D 0) {
 		/* link characteristics might change over time */
 		if (link_settings.base.duplex =3D=3D DUPLEX_FULL)
 			hard_iface->bat_v.flags |=3D BATADV_FULL_DUPLEX;
--=20
2.20.1
