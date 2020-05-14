Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 541351D3B3C
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2020 21:05:31 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6A02E810EE;
	Thu, 14 May 2020 21:05:30 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589483116;
 b=AQH4eTwKQsGJR7dOUs0OYpJm/WuU6m0N5ea0QHwtqzqzuEzd/zEiYNlym/ZI5FjX9qNkl
 /DtUJPlZuTQ9vVU8ByQC5qHJ6zgzF5XjMEVq+wweJIIRa9iU9LNGmay3wHZMOHGMuRDG4WE
 3yTMpruZGRB03JEPVwKZ0MQqACQkq+o=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589483116; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=hTZu9pJ27zARHY05YgDnAYMKTsVq70+DksiuJFclgug=;
 b=FLk03M891j1I/D9Yx21hPTo4D9XW5MQw3EwENxknHUGwkoR24TRVWh+D2EAAQ7B+FNy3e
 NGtIzIvTKmoyHYEep6SVzqH/buy9IrX1CRsCQD/R20gjCMmifdJ5hbiuOAyS0fEMKkvMKzt
 NW/PH28422oG+j05jU92niXeG49GTNo=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail header.d=kernel.org;
  arc=fail;
  dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail header.d=kernel.org; arc=fail; dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 732348093A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 21:05:13 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A8A33207DA;
	Thu, 14 May 2020 18:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1589482589;
	bh=QFTkzBayBCSLe6D142nis/Kp93e8vPojON2nwQBsMzU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Brl4fJMNO+dCEgL84Tz7L98jYM06if+HtU/xzMkCZfJ4IK8MVoU7mYN9J2j8IFBgm
	 xUjv/QfKxqlr33o7fu1ZvJsr6Mr5LdKCYX48uhytqp7ne+hwCY+GW+1TnypxnxssiF
	 eVPRjGA4A9Tihz74bkAScILyQrkHzXcHFRUIemWU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 03/14] batman-adv: fix batadv_nc_random_weight_tq
Date: Thu, 14 May 2020 14:56:14 -0400
Message-Id: <20200514185625.21753-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514185625.21753-1-sashal@kernel.org>
References: <20200514185625.21753-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589483113;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Y680iE10W34Pt/KEhXQfXQ/V2GLO1xUX1ib+5Go/yIQ=;
	b=crs3zlUBRQ/DJiwiA3g94ivkIFFPPhQIhvyM7vgC8f/qr2cNLdbjHr5jogaX6iXrl1CYyb
	SOKtaWkiC8ulq6VrWfgWXaE4FimVwGWWxsO4OOh9ZdiJtB5qlz/fPIw3YuCOzKUOwAlXxj
	HD+NOOBIO9aMKprGqbVYG9HxJ3OX6CY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589483113; a=rsa-sha256;
	cv=none;
	b=3ROZb9gfkpMxKmDV7bZo2hWSLQVQ3RcAkaRZB4FtT4IIUmT8AEFwsnbHgaVbKvzHdJmUtG
	zOiQBym7JxD/ROSXTMK2hzcyNki3e0YiLr3dkl41pwXMRIWrObk3I2R0KQyh2mu9qfOPAu
	ifMHHV2E+/qJvD9F1Iqlxm/xgfsUDDw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=Brl4fJMN;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ONI74KYVCBVOEVNLIDHHBTHGJ5YDTBD7
X-Message-ID-Hash: ONI74KYVCBVOEVNLIDHHBTHGJ5YDTBD7
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: George Spelvin <lkml@sdf.org>, Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ONI74KYVCBVOEVNLIDHHBTHGJ5YDTBD7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: George Spelvin <lkml@sdf.org>

[ Upstream commit fd0c42c4dea54335967c5a86f15fc064235a2797 ]

and change to pseudorandom numbers, as this is a traffic dithering
operation that doesn't need crypto-grade.

The previous code operated in 4 steps:

1. Generate a random byte 0 <=3D rand_tq <=3D 255
2. Multiply it by BATADV_TQ_MAX_VALUE - tq
3. Divide by 255 (=3D BATADV_TQ_MAX_VALUE)
4. Return BATADV_TQ_MAX_VALUE - rand_tq

This would apperar to scale (BATADV_TQ_MAX_VALUE - tq) by a random
value between 0/255 and 255/255.

But!  The intermediate value between steps 3 and 4 is stored in a u8
variable.  So it's truncated, and most of the time, is less than 255, aft=
er
which the division produces 0.  Specifically, if tq is odd, the product i=
s
always even, and can never be 255.  If tq is even, there's exactly one
random byte value that will produce a product byte of 255.

Thus, the return value is 255 (511/512 of the time) or 254 (1/512
of the time).

If we assume that the truncation is a bug, and the code is meant to scale
the input, a simpler way of looking at it is that it's returning a random
value between tq and BATADV_TQ_MAX_VALUE, inclusive.

Well, we have an optimized function for doing just that.

Fixes: 3c12de9a5c75 ("batman-adv: network coding - code and transmit pack=
ets if possible")
Signed-off-by: George Spelvin <lkml@sdf.org>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/network-coding.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 86c69208da2b7..91de807a8f03a 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -991,15 +991,8 @@ static struct batadv_nc_path *batadv_nc_get_path(str=
uct batadv_priv *bat_priv,
  */
 static u8 batadv_nc_random_weight_tq(u8 tq)
 {
-	u8 rand_val, rand_tq;
-
-	get_random_bytes(&rand_val, sizeof(rand_val));
-
 	/* randomize the estimated packet loss (max TQ - estimated TQ) */
-	rand_tq =3D rand_val * (BATADV_TQ_MAX_VALUE - tq);
-
-	/* normalize the randomized packet loss */
-	rand_tq /=3D BATADV_TQ_MAX_VALUE;
+	u8 rand_tq =3D prandom_u32_max(BATADV_TQ_MAX_VALUE + 1 - tq);
=20
 	/* convert to (randomized) estimated tq again */
 	return BATADV_TQ_MAX_VALUE - rand_tq;
--=20
2.20.1
