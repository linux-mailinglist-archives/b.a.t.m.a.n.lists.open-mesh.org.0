Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E85391F235D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Jun 2020 01:15:19 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A383080A43;
	Tue,  9 Jun 2020 01:15:18 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6F5B88028F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  9 Jun 2020 01:15:15 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 681F420872;
	Mon,  8 Jun 2020 23:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1591657659;
	bh=gumFx8A5m9fNWLYnCaEu3mPXlkEB5qOQe53IV6HBUdM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iofGzeyDknde6/RtOsP1/LBRNvBoC4KPuuKCtiR4QMJxHx6S+pbisToUxaJ2l2WUa
	 J9eJvBlHyA/A8xsqd6vw4GNHcHV75+b6AA3UoYZKSYTIOJUY5V1qw9cMl6c03uOGVW
	 iTFHNJKbTPJfYOHwe7ZUIR0is15QWxp+U/a1FOvc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 071/274] batman-adv: Revert "disable ethtool link speed detection when auto negotiation off"
Date: Mon,  8 Jun 2020 19:02:44 -0400
Message-Id: <20200608230607.3361041-71-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591658115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=nARyNylL9tkuW/DZ3FGoElr6vIGUIn0BqVGfo/1HeUY=;
	b=RB3EbZ/PcIGu75IlMS1pTnHmFozqNZArG8KoM9M+LOyv3WPJVd8lxnOhZMZcfhBQG6jH9W
	26UP/FKsJqh/BNMXF1guZbiGzckpIviP0tlxOk1/+rntQaZGXCRCKuE9YBt84alLysTiip
	el4VEWuVovBS5HuDpNZEidcvKJ1G/U8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591658115; a=rsa-sha256;
	cv=none;
	b=MOZGJWEJ0jCOc5Vxi2tahSC8PS/gYyUjyNSsSxF8uOuXUmb9lpysoxbjcCUIwP9zVltw/b
	Pm7wYl31KBtF3MJZKyQv19PI4LOBch98HNpymVVhroOxPI0F+dFcH5tRem4+bfX5xP2TiS
	We0UZnuzjQMmZvk+33+xXxcVFxTUg+c=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=iofGzeyD;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SUGP7KAZD6ALQ62SIOOEHKEMRTQK6AJ7
X-Message-ID-Hash: SUGP7KAZD6ALQ62SIOOEHKEMRTQK6AJ7
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SUGP7KAZD6ALQ62SIOOEHKEMRTQK6AJ7/>
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
index 1e3172db7492..955e0b8960d6 100644
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
2.25.1
