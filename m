Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2359B1BA73B
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:06:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E625B80DEE;
	Mon, 27 Apr 2020 17:06:12 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1587999971;
 b=U3FjcsLPIRP86tdIcRsC/AqbExCMLIJfc7Cd891z5XlPpdJFaTDFlDsykhxil4Q9t9+66
 9b3oL5cMnKYGZ/cMQ25/szlNxV7ATD8ly13IBMJn3c+ZPTnCC80H801BxTMKYtruqSTNhXF
 vi3jTAH0vi6YF3Ei0bLic+FqCl+ZK6o=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1587999971; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=X0b5hxtfyt8hQaIHfZiqB0SHeN+aHF3Q0SeRMboUkpc=;
 b=uAyqfkjXnV38HGr8ySrq3DQ+GeMMujyzPQYiNPZPAjCi6Yx7wo73T43OEeycUv6+qpQ4i
 8JVfzsn6YACF0nk0J59OmrRfQSlr2OY8HcecwuVTEyFHZnCM2qNhrYbGd9EqMC5rbt9RIt4
 GUqQJL3Rcc24JW4q8nrHp7c7ZOdF/N4=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 35BCD80137
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:06:10 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id ED2A66206E;
	Mon, 27 Apr 2020 17:06:09 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/5] batman-adv: Start new development cycle
Date: Mon, 27 Apr 2020 17:06:03 +0200
Message-Id: <20200427150607.31401-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427150607.31401-1-sw@simonwunderlich.de>
References: <20200427150607.31401-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587999970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0NzJFcCKnpZAlffkukMJWoVX5SPs/JGPkYHC1ChhRTM=;
	b=uzG8Eqf5mKWFgD3dFoirswgdCUM2HsS3I951SrP1NdXCRmYq0rBVitLobD9OQUXylkABYP
	psag1QgMVOtyF+1BjZM06lbPgaqyzpF79Ri59Tu+6Kp1XFmllwyFXVM6p1Ni/Ij8dR357O
	jbyCwYptxze9ftkAoqQkYjJRawyQazo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587999970; a=rsa-sha256;
	cv=none;
	b=iVzKvL3F0OhgUIp3A2H3ylpuBQQg9pZoGYJpe0xpvhlGFYAcYGvhDULBRVS5KXT9nPLXmV
	9tEIiy5Gx9vvJqpdoZW+qvCTibXP29OTJJOgpdBs25hLaYTLkKDhxzP1uD7a81nPt9DOdO
	QXDMDFIU9XMa9pYcd5y6JQcihjAnH7Y=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DIPJF5EQH4FPPOXTTRKDWW5TYNO3WEQ7
X-Message-ID-Hash: DIPJF5EQH4FPPOXTTRKDWW5TYNO3WEQ7
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DIPJF5EQH4FPPOXTTRKDWW5TYNO3WEQ7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 2a234d0ad445..61d8dbe8c954 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
=20
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2020.1"
+#define BATADV_SOURCE_VERSION "2020.2"
 #endif
=20
 /* B.A.T.M.A.N. parameters */
--=20
2.20.1
