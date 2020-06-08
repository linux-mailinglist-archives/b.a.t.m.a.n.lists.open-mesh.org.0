Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B161F2417
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Jun 2020 01:19:58 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B9C4380BB9;
	Tue,  9 Jun 2020 01:19:57 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5EF5B8015B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  9 Jun 2020 01:19:55 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4854920814;
	Mon,  8 Jun 2020 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1591658394;
	bh=LrwI3WVVMEZTLt+oktHm+tTG2mf3KGJ3BQ4rafhaoYY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rDQJhI3p5YHJbgNnYb3jvpLxeHef65/yiWfBpOvQuhPyq3lutdVsC1Lrjrs8FN6hP
	 jnHrsl1RyNDKQLkhMLl5lt7d7TH7+RwNd4k3J74zsjvWLHx6nqHbXo4A24gzoAGt6T
	 67nAPT7MNfuBIbRp7cAVzLN85psVyZMSzi7DOKHg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 051/175] batman-adv: Revert "disable ethtool link speed detection when auto negotiation off"
Date: Mon,  8 Jun 2020 19:16:44 -0400
Message-Id: <20200608231848.3366970-51-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591658395;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=U6qp6lspa9T8Fh/Y7A4IUiSZLMB6kDU000xCTKfQsII=;
	b=LFfltb731d8HBoI6whFQpqVLNB8Sn6JiTXhyal0diSh/AUpyfxpoWRsqNSrYbPobM8PcBx
	Q1dxAN79qtXlTiiD+lPmDwGULr72jMDNG2iEp3acNxHYjBUI2BjNkgQZ4ZbD6HvqkBQIVu
	ZJvtQB6VxkbG0Df+/oRmkVBHP0znUPg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591658395; a=rsa-sha256;
	cv=none;
	b=ad3reWjjjjrO7n52nrNhxeiSFNqBSPyZdQgHuSWwEz9FY9IHf4P7X/ogTX0gAVd8Eg9B+T
	/0PKbrWlkgm5bq0ZHw6wGuCBn5fulqBmdm9FvyxcoeGta9FBuLvcoiCd6b9jSQAF1Blhba
	S1sFHu11I2e1CIMewnsOfz8HFNJdHxA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=rDQJhI3p;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DPHHFXWSNU5USIZAHVWLOXLZY56CLU5W
X-Message-ID-Hash: DPHHFXWSNU5USIZAHVWLOXLZY56CLU5W
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DPHHFXWSNU5USIZAHVWLOXLZY56CLU5W/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

[ Upstream commit 9ad346c90509ebd983f60da7d082f261ad329507 ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/bat_v_elp.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 2614a9caee00..a39af0eefad3 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -120,20 +120,7 @@ static u32 batadv_v_elp_get_throughput(struct batadv=
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
2.25.1
