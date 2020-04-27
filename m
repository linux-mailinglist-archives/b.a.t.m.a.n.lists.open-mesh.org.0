Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FB61BA748
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:06:37 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EEBF981030;
	Mon, 27 Apr 2020 17:06:29 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1587999973;
 b=it//YA1z9dVyEG2KZU8d5doKcJh9UX18kjFjdB9L+9Fd1b5mw+L4wdEf1m8qqwBJ0bQJc
 Rsp2hibyLHlIe4fuiCwfAVPxU7il/CmUaOGR7xRpuyUVkYTo892hNpRtCU2j4KRPLmiOoGd
 bt5cpACb3H26tuiQXzr/d4la+TYhIwI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1587999973; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=xOKBUZst3EcdMALOG4f6wpJFc7qNP01Ims43C1QGdhA=;
 b=wWK7Chg2ttzimkfHrrTPYwlDvp6Alner41rImARKN1g/m2UGUiRsVJnbcblXLJnOAxzYZ
 lFzlVkmzk3Hvoz0IcKlg3qjQ263b26uB/k7G9M2rNiuSWviwrZXlmUQSWwKtaeJsvYjIuoq
 L1vEPhx5K0JYsrYyVRfGISpxlBonKF0=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7DFFC80DEE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:06:12 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 464F962058;
	Mon, 27 Apr 2020 17:06:12 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 5/5] batman-adv: remove unused inline function batadv_arp_change_timeout
Date: Mon, 27 Apr 2020 17:06:07 +0200
Message-Id: <20200427150607.31401-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427150607.31401-1-sw@simonwunderlich.de>
References: <20200427150607.31401-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587999972;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AbLBY1fZ6oAmp5LnA8cVeMLU2GstwpHeCtb/iiMm0xs=;
	b=KnNM051+0mnobiNMv/018RKeQzhWlezjTlXgPHKjFJy/LK8HRtNyD3wSu+dXUTd8PktHIv
	+ZBsBt0IaCvJRgs7KqwykTEo/eB7e4xYMXOqXupiTYbJnc5C85Kc3pL5DRixRnvU+fAcZ7
	lmhgpWGmdS1/FmzpsBrusJ8av/g//iA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587999972; a=rsa-sha256;
	cv=none;
	b=MZjqS72574+TmzwZt9stcZxDl+rlAbqKy+5l5ZsvA90emdyQl/d+NcPhaso4bNqSL3OQBY
	UNqzbHpgInOGlc/tNpQCmVaAXLduKU0jVkWkxtpyORf1nMzu1SvFk9zcer6WkyV3kK0BQP
	4bzazUuJS4lmDpELPCwLDQpb566ldj8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: QX4IQ4E547ESUSKZEIZVMIC4RKO5VEZO
X-Message-ID-Hash: QX4IQ4E547ESUSKZEIZVMIC4RKO5VEZO
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, YueHaibing <yuehaibing@huawei.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QX4IQ4E547ESUSKZEIZVMIC4RKO5VEZO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: YueHaibing <yuehaibing@huawei.com>

There's no callers in-tree.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/distributed-arp-table.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/net/batman-adv/distributed-arp-table.h b/net/batman-adv/dist=
ributed-arp-table.h
index 2bff2f4a325c..4e031661682a 100644
--- a/net/batman-adv/distributed-arp-table.h
+++ b/net/batman-adv/distributed-arp-table.h
@@ -163,11 +163,6 @@ static inline void batadv_dat_init_own_addr(struct b=
atadv_priv *bat_priv,
 {
 }
=20
-static inline void batadv_arp_change_timeout(struct net_device *soft_ifa=
ce,
-					     const char *name)
-{
-}
-
 static inline int batadv_dat_init(struct batadv_priv *bat_priv)
 {
 	return 0;
--=20
2.20.1
