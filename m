Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5881BA771
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:10:57 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 10D2C80E31;
	Mon, 27 Apr 2020 17:10:53 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588000251;
 b=OHYNvnBXtZYNXjjqU/nAZsLrETlplagI6xzdQ1/8oIswozO+NUZKQJi+ctHnFaTu/x0X/
 NHcj8TCcQKBlS3Exr8uIBzDrIFSVjqFImUFz34QiilnO69YGJpIlwwGGPQh+L+YEtgG8sVJ
 yohV4gpziZXQAGV3v3HkzUAPBZLi2dU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588000251; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ah8UMQ61/QmEF1sTwGYvqsZP4O1T95owIWim8DvhBAE=;
 b=XFi00giMKM/WC+ps04tflgCxmEZS3585obaBuIcFMLA4XaiRhPI5lsTHjYNp92mA0u1zk
 6ecmvzKx8bIykVMSuz5l1rf1XySA3SpT24E7N1BASoAIFcK+zZKNZ7OJwL32AZwumHaC4Um
 ojOBYNT2ec5I/vBNs2c1Tygltfr6NBI=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7075680DFF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:10:49 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id DD3416205B;
	Mon, 27 Apr 2020 17:00:42 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/4] batman-adv: fix batadv_nc_random_weight_tq
Date: Mon, 27 Apr 2020 17:00:36 +0200
Message-Id: <20200427150039.28730-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427150039.28730-1-sw@simonwunderlich.de>
References: <20200427150039.28730-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588000249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s55pedBSWVaozmgAGDj0zP1QQXjM8mgWhRkg0KPGK8s=;
	b=CSgjTqLnRyowiW4w7M9udc+RWdIEZxT41m4cOo6kq0KtpI+jW84VyTFsWNgZ0gQpNqe7EE
	6TsoDSXhJZidfAMgrajXSS0da08/n0vKcKfsLnQp+vd1l9tRNqD78D/R6Oo0H4cLxERV0s
	Ls185nVrcPq5RZt29WQFb63TSvwCjAw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588000249; a=rsa-sha256;
	cv=none;
	b=XHkiPuioK1USPp3YzzIVo+mJ2OMcst2NH2LKhIsZgV2Eu1aSQdfjS9h3ATfgDxKxV/6vms
	rhYk80EbBGFjJKd3vdta6rWu0ZeSvuN5RwssWcOFlHt/AGjSz8sQFM6y4I/9l2LspuDFa3
	wCXfYAfUwMSKhEmQhbzgPQt53OkZuME=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: FZIUJY67YQOEHDPNTLO4AJUPK3CDIBIE
X-Message-ID-Hash: FZIUJY67YQOEHDPNTLO4AJUPK3CDIBIE
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, George Spelvin <lkml@sdf.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FZIUJY67YQOEHDPNTLO4AJUPK3CDIBIE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: George Spelvin <lkml@sdf.org>

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
---
 net/batman-adv/network-coding.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 8f0717c3f7b5..b0469d15da0e 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -1009,15 +1009,8 @@ static struct batadv_nc_path *batadv_nc_get_path(s=
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
