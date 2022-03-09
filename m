Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4804D34D8
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Mar 2022 17:46:09 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A7CF5805D6;
	Wed,  9 Mar 2022 17:46:08 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1D6B0805D6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Mar 2022 17:46:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646844365;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=blJ9I7ldNWiYziJCrOZk0Py29a8J6nGmp/OGvs6JS7A=;
	b=MAnDM3gm8czpsYKnWM4dR+hvy2SRR91ZLrkVmfaKnYC/jSUlh2TIW9HsPJbANWIZBQCFpQ
	sVIhxJNek+vdmvU/wYb8sPV2OqJmuzsS9Z7Gsll9jZQZdRmCaO7bqFjAJsteNrHYjAaByA
	feyz4WwGpubbrVTEcD0U5SEEcUOyGC4=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.9 0/2] batman-adv: Fixes for stable/linux-4.9.y
Date: Wed,  9 Mar 2022 17:45:40 +0100
Message-Id: <20220309164542.408824-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646844366;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=blJ9I7ldNWiYziJCrOZk0Py29a8J6nGmp/OGvs6JS7A=;
	b=iRn0xG0e7f/F92sRMmqtOBnx8TBSzNRgSQK23tlUQq1GARI32V38CiL+BNcRP41ZlyDuvp
	Ms43+7IxLe0ZxtdYQY+FE0VSH5sysO9ScJDxalKRHhJnC3WMp3CY3/+27jZI+bS4UtUwGb
	avGRYspgDHiUTbgyapwiyaOnmloPqf8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=MAnDM3gm;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646844366; a=rsa-sha256;
	cv=none;
	b=LG/jNNltIimqudOKOo/AHerVQ5N+vjE7U5wNu7APcDs2zbbSiBcjSK/P2jlcTS5KHQgG0j
	vuoz8uilfueCW7ndeZUIWHwZPUXrkhXUoJfVu8k4nuPTgg3FGxuYHk2ukibvIR9jU/gM1C
	hghDz5rH/LN35mvqheqvLdk9H+FAwKs=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RRDPLAECQHZDV6BY4625GXZFZUIC54SV
X-Message-ID-Hash: RRDPLAECQHZDV6BY4625GXZFZUIC54SV
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RRDPLAECQHZDV6BY4625GXZFZUIC54SV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

following two patches were backported "automatically" applied in
4.14.y, 4.19.y, 5.4.y, 5.10.y, 5.5.y and 5.16.y. But they failed
to apply cleanly in v4.9.y due to some changes in the patch context
and one missing function in the older batman-adv version.

These problems were now fixed manually.

Kind regards,
	Sven

Sven Eckelmann (2):
  batman-adv: Request iflink once in batadv-on-batadv check
  batman-adv: Don't expect inter-netns unique iflink indices

 net/batman-adv/hard-interface.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

--=20
2.30.2
