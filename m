Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AD33AA14F9E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jan 2025 13:47:09 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 874C88458E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jan 2025 13:47:09 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1737118029;
 b=j3awiOj2b8ZAOdNYOeZLaEyck8QMvfx56IOCL0jkvxGGByliEfi3auP8kR7HHhW+OPq5M
 qsMPMQ13XQxrQ0rHDy53GN5pPXszFHHAWZ8JEBIEQPCcKO8OXnlZnvPplbzfkkUgYUNsiyS
 N8HJ0VhOL0tFSAPIkWEDfgq0hk5dooU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1737118029; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=StRkJYP5y3LB/HR0JwRqlnHyWxe+RVlySrfTr+v6vjs=;
 b=hvTsGfWPxcpzX1vDStF/G5GUfXcBRk3Rfap4TkCdFhrWXZpy8hKPtuVuNievAPPptW53D
 6K+kuiIuYo5kHQ4uYecXqktIMoSVP+4Xth7vQjgdAIIry6I7AwqeI5pQ/FhVDt/zaDEIDRx
 +iG9wspYAttAUYz0YVARfUVXgz341Gc=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7B37884218
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Jan 2025 13:39:47 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1737117587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=StRkJYP5y3LB/HR0JwRqlnHyWxe+RVlySrfTr+v6vjs=;
	b=zYWqUU89R9CbuInxdRDyz0HNkat/nPhETdeGnm3DTpaBFEC3qPLnW9x8D0i/fKf/+SF7VI
	iBRyfHRdMpdTVaCK3hNS4xRG4OdUHpQ3595IYZ6WoAVxjUTwuU9M016g+knkEay4ulm27z
	INP4kq5aUP6nUYOE/UcFhMbrWY5lb+g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1737117587; a=rsa-sha256;
	cv=none;
	b=TRN9Qq23484bJAiqgZiy9fPcUezaenf49igopnv1nbhoCZrRaxia4bmmvs1AfdqnEqE6Qh
	rp9AM6ElUm0VOpoc2yNXKjeMKaw2ucttIIHqxsqz1T5DwzQg5e5/laAfO2gz1JT1GkGqK3
	rxtmtjxH9uVfAcKB4sL4drx8QiRyjqA=
Received: from kero.packetmixer.de
 (p200300c5973C90d8A96Dd71a2E03f697.dip0.t-ipconnect.de
 [IPv6:2003:c5:973c:90d8:a96d:d71a:2e03:f697])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 1C319FA365;
	Fri, 17 Jan 2025 13:39:47 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Antonio Quartulli <antonio@mandelbit.com>,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 09/10] MAINTAINERS: mailmap: add entries for Antonio Quartulli
Date: Fri, 17 Jan 2025 13:39:09 +0100
Message-Id: <20250117123910.219278-10-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250117123910.219278-1-sw@simonwunderlich.de>
References: <20250117123910.219278-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 4KKW54NU4YAFB7JZBHHQZQZ5WGUUFTXZ
X-Message-ID-Hash: 4KKW54NU4YAFB7JZBHHQZQZ5WGUUFTXZ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4KKW54NU4YAFB7JZBHHQZQZ5WGUUFTXZ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Antonio Quartulli <antonio@mandelbit.com>

Update MAINTAINERS and link my various emails to
my company email address in .mailmap.

Signed-off-by: Antonio Quartulli <antonio@mandelbit.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 .mailmap    | 7 +++++++
 MAINTAINERS | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/.mailmap b/.mailmap
index 41aca254671d..d55b94d1fe0b 100644
--- a/.mailmap
+++ b/.mailmap
@@ -83,6 +83,13 @@ Anirudh Ghayal <quic_aghayal@quicinc.com> <aghayal@codeaurora.org>
 Antoine Tenart <atenart@kernel.org> <antoine.tenart@bootlin.com>
 Antoine Tenart <atenart@kernel.org> <antoine.tenart@free-electrons.com>
 Antonio Ospite <ao2@ao2.it> <ao2@amarulasolutions.com>
+Antonio Quartulli <antonio@mandelbit.com> <antonio@meshcoding.com>
+Antonio Quartulli <antonio@mandelbit.com> <antonio@open-mesh.com>
+Antonio Quartulli <antonio@mandelbit.com> <antonio.quartulli@open-mesh.com>
+Antonio Quartulli <antonio@mandelbit.com> <ordex@autistici.org>
+Antonio Quartulli <antonio@mandelbit.com> <ordex@ritirata.org>
+Antonio Quartulli <antonio@mandelbit.com> <antonio@openvpn.net>
+Antonio Quartulli <antonio@mandelbit.com> <a@unstable.cc>
 Anup Patel <anup@brainfault.org> <anup.patel@wdc.com>
 Archit Taneja <archit@ti.com>
 Ard Biesheuvel <ardb@kernel.org> <ard.biesheuvel@linaro.org>
diff --git a/MAINTAINERS b/MAINTAINERS
index c5e909a759e6..07206a6a1be5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3869,7 +3869,7 @@ F:	drivers/platform/x86/barco-p50-gpio.c
 BATMAN ADVANCED
 M:	Marek Lindner <marek.lindner@mailbox.org>
 M:	Simon Wunderlich <sw@simonwunderlich.de>
-M:	Antonio Quartulli <a@unstable.cc>
+M:	Antonio Quartulli <antonio@mandelbit.com>
 M:	Sven Eckelmann <sven@narfation.org>
 L:	b.a.t.m.a.n@lists.open-mesh.org (moderated for non-subscribers)
 S:	Maintained
-- 
2.39.5

