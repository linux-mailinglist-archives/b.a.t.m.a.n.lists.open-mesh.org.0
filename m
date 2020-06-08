Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AB31F2491
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Jun 2020 01:23:15 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BBD5B802FB;
	Tue,  9 Jun 2020 01:23:14 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B013D80046
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  9 Jun 2020 01:23:12 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A382A20899;
	Mon,  8 Jun 2020 23:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1591658591;
	bh=/rsiNZmJKMU7ImUM+XD8KQ6xKLVf5BpHcUfc7DiIKDY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BJB3TY+orpPhaXiEqle9dhpG4RxQqWii7/TV3KrxYwM2yEISIIkBnns9Dlv5Wedl6
	 bqxlTUX1hT+EWhVZALi23BL9ppr/fO/b09aiADzPrdxzfq5VI5CnN5Ey3RQlFAXHpN
	 ZiHUt9wiwMcRRUEA7EcX39O0HF5xKIBgC0Vbplxk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 025/106] batman-adv: Revert "disable ethtool link speed detection when auto negotiation off"
Date: Mon,  8 Jun 2020 19:21:17 -0400
Message-Id: <20200608232238.3368589-25-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232238.3368589-1-sashal@kernel.org>
References: <20200608232238.3368589-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591658593;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=egtNGrCbP05hP/iCTRFkg0PACJeT8my3YR7hB1M0OKk=;
	b=0D48aBulQbWOg/X9XZ6p/V+mwTsfg5PablD7cjs6tQhY1IsRrAwCCH/GbCpqR/k3tec9yN
	tzvDWZh9BK8rdBnmCwgBHpPX+ITaYtJyfOfhb6R+b/XXTdVZ6okc7tf2uDjwDCqI35OXj+
	HgT/573u9p34NzpL1JoNN8hFlFE4lWU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591658593; a=rsa-sha256;
	cv=none;
	b=HhTRwhTNDMmtx0oslL1hyBHEjaW0k0BH2Fs64NjSfEjdxtKiTH+5zVDpsUDtvyP3daEXc+
	1XD/hDExr3LcxwLuOXPo9RLhrJd9poIFSJypQyoPAjNBambvVVsA8ay9Bi4pJj8WrMBpkU
	6vRwvbwC8ke5ZkZ3cMczMkZ1befI4F4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=BJB3TY+o;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: BMI5HZAXIAGAIDNZ34M674VIVBF2ST6K
X-Message-ID-Hash: BMI5HZAXIAGAIDNZ34M674VIVBF2ST6K
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BMI5HZAXIAGAIDNZ34M674VIVBF2ST6K/>
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
index 5da183b2f4c9..af3da6cdfc79 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -132,20 +132,7 @@ static u32 batadv_v_elp_get_throughput(struct batadv=
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
