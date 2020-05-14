Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB741D3AE5
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2020 21:00:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3A22280D7F;
	Thu, 14 May 2020 21:00:16 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589482815;
 b=u8SUctDNLic2+/UlGe7sskWBr+02CFNuyCL99G86zulyTtv2Rah9cnhAcwAyUkSLXa+Tq
 WXxklnqFLWUfTsMz/WDCB7jk/ME+Hpy5yJMesXRL2qZZ02YcNK2MQtSnaAU/mOZSrirpJP3
 nK1NjRUn+J/LdAGzb81zzAfofGL3r6Q=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589482815; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=3G9864wIN8BKQmiNeFti5H86CaKkk2kKkmB1IQ999k4=;
 b=VVKU5YK1Q1cGS8r4J/qr92iMXe+h0rGYTbJ42RgKl5mpGPjqEnM09RfepFrFh2My3a+Lf
 YyvUorRXgLqtFJQzHOSoUY6AargbP7Zr/3NJBfwwIReBanjdAtl0RorLOg0j9GP2C0L6wnp
 B4EclJrjRzB0BU1ScB1t3iIbn8yMNtg=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail header.d=kernel.org;
  arc=fail;
  dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail header.d=kernel.org; arc=fail; dmarc=fail (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5CD7A809EA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 21:00:13 +0200 (CEST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F21B52078C;
	Thu, 14 May 2020 18:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1589482501;
	bh=jQoFJSWE+b5sWXK1XaHTPQsUf+lErTrt/chz9Uz3FYY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=2N/1yElKaywmwGi95IeNn/SJGpRTg+fP6zRJU3bzoGGlmB3FnurJurOO+giCOT16z
	 3ghCiDLTkAeu+qn67qJXUTkCOIBg8pv5K2bR2MZ7ajHnmA/kyoj0BtuVBl2NfksS6O
	 gh5854TdoYGOZuJigyjuB6M7xYLYq5wxOihlpEdQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 04/39] batman-adv: fix batadv_nc_random_weight_tq
Date: Thu, 14 May 2020 14:54:21 -0400
Message-Id: <20200514185456.21060-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514185456.21060-1-sashal@kernel.org>
References: <20200514185456.21060-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589482813;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=r1yWPNCBciAXUbOaEeWF0J5dAdUMQOgEQiVoAye0TGo=;
	b=QihQ67saFCQ/AyCdeBvSyIhr7rN0pE+WW2BwYbRVPTfpfIEFOG0Lr3ZEu5/EZfFcP+u+u8
	+359vp27aFkRGS6Fh8MELHkO/B8YFnCJF7w/Satea+xwRfSWi1aEhVVLAyNWnQKVe9sXkj
	jbqteQK/Ucx8WUu1B5S3o0LB06BTcCU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589482813; a=rsa-sha256;
	cv=none;
	b=ikAJhbwmJlzIyvbZ5oWifmDkWIVUTPc81XSrua2/pOiXGFTgvkUaTxMSyFqpYTHCwtMRQ3
	v5SVOxRs6pbLHxuDA4IRADyrITAS2bQAXYgnuWcGRYMfmBg+ddaedNKlDcXKFg6x7obPzu
	j4wFdxNjW4vntMOJwxe9YE902/ml7y8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=default header.b=2N/1yElK;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: J2CQHXFY4FU2HFMZGXICFK4PZ2BEJQGK
X-Message-ID-Hash: J2CQHXFY4FU2HFMZGXICFK4PZ2BEJQGK
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: George Spelvin <lkml@sdf.org>, Sasha Levin <sashal@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/J2CQHXFY4FU2HFMZGXICFK4PZ2BEJQGK/>
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
index 7a7dcac205667..7aacec24958eb 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -1017,15 +1017,8 @@ static struct batadv_nc_path *batadv_nc_get_path(s=
truct batadv_priv *bat_priv,
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
