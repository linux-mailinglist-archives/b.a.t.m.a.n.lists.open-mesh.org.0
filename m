Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FDA5BB0F5
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 16 Sep 2022 18:15:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0204D8179A;
	Fri, 16 Sep 2022 18:15:08 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4E457802ED
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 16 Sep 2022 18:15:03 +0200 (CEST)
Received: from kero.packetmixer.de (p200300C5973C57d0711F6270f7F2CD25.dip0.t-ipconnect.de [IPv6:2003:c5:973c:57d0:711f:6270:f7f2:cd25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 01007FA2A5;
	Fri, 16 Sep 2022 18:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1663344903; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YiYIf19NZMvrgYTDbEC0Yn/Ui+xRGAjJs0Zdx9nGGk8=;
	b=lPEroSZhkorvQmiuf2OjEKBN7ieXiBUqCtkD+jGertl6P2hs0O+qF2fOywXgs74IvTH9b1
	LyBI/tQUHF0s7KK+480rk16qe6JDwXJY3+H5U9b8SEp2S/JoaWHPkQQN11zFlCS2EMdgai
	sY0t2+kVSK3DNFZgkfaZrPkOBCT4TrbpG4Visp0e0Zfg1kMnFn3PaYiMXGAnemwqPbmq5F
	pS7X6DIofidyfjZYnYmcPzI2o/+mfzrtuhJn6Wd24lM2EMl2tqlhqkuURP/M/IsX4zUxQJ
	R+e87FqYdnbFBhGia5um1/gYbOegl7MYuxgER7V6WlajRUNGvT3ft0UcB/KfaA==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 2/4] batman-adv: Drop unused headers in trace.h
Date: Fri, 16 Sep 2022 18:14:52 +0200
Message-Id: <20220916161454.1413154-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220916161454.1413154-1-sw@simonwunderlich.de>
References: <20220916161454.1413154-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=simonwunderlich.de; s=09092022; t=1663344903;
	h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YiYIf19NZMvrgYTDbEC0Yn/Ui+xRGAjJs0Zdx9nGGk8=;
	b=eb17oQAPKX1swE8TSnr+BTKr7BDT6y2WassodJkx4LJ2VtRBD0Jlt8qEturYhDryrnjH+3
	i5+eGZ0OfmzvNS90YdlPkC7PSsbU+dkmKsuaTKQGDRzL6xeMx8rUyCT9wLS++xOKz1wqb8
	AdCrz0lJr7Wjl4535K7qdZFuamOp4v/1uVysCaNca/j1o31/U/5aKsYDkuGP20HGvzO5L7
	/1SfRR9DNByLrLvkhQkZHno8ljiqws65WkrpNmE4IInYfE1g6bO4W9LrlIm3gUoLqHUs92
	fh+xFStH5ig5IJf8AbDry41RA+OZNjRUCINzYDqe3oFxbrk2OZhXoz7Lmq16BA==
ARC-Seal: i=1; s=09092022; d=simonwunderlich.de; t=1663344903; a=rsa-sha256;
	cv=none;
	b=0VZVMo3njPxz2tJKlJsGgjioZsW0TWdB5ClthMCCbq4VqCpRTkDNLzdOqLyvxVfhi/rA2JpEbeFCq5vs7ntq7YWOrj7RjnNOd+7V14EaV6qTa8xnt/01ABptHhhmpBWVukglWfKvTjo8++J7s+feEDn+xxnJOpcMc2mPaa1w5YOs4fWdEOma4fb1/7XrGn/qUswOQO++6o2rA3dRpM13XjznORpl+GQ+6at+Vtj6sTsRb+J7JyL4V/lRPYTSmYRSaLKm2u6Ue25FcU6mOCZM1u1YdBJQ+Dgc45vgoiv3i27X4Ylavb3A1AHxbu76Qloq8hfFuiBI+yTvoDNWoTfayQ==
ARC-Authentication-Results: i=1;
	simonwunderlich.de;
	auth=pass smtp.auth=sw@simonwunderlich.de smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663344903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=YiYIf19NZMvrgYTDbEC0Yn/Ui+xRGAjJs0Zdx9nGGk8=;
	b=1jgmb4/fBXKyqOGTdoECnf1ZZVHIGFDVWa3lXXdqEFwQOJgCkWuIRQc4ltoKZlIqvui34e
	uQRMLuKQQAgOmTIygvncwtUysAIg6A2RqU3KQjBRxR/BC79XjcPYlCSa+gLWhlhhCQpymo
	nCATNfSsV24REKcCyo1YnemBK93B71o=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=lPEroSZh;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("simonwunderlich.de:s=09092022:i=1");
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1663344903; a=rsa-sha256;
	cv=pass;
	b=zQACqeXP1OtjzJka3zW07hIz4sUFomNY4mS8MrzRLegrReiw0OKMgwrkgPtK2lf637MZ3o
	WMMFs7xqS541AccelcLjvvyVqgGIAALHAG0rsnBQKcMWYi6HuuAnK17KIBczFtBGnodGmI
	OSYSVzrKqHBgC+2Zooa/hrqwRCCFNRo=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ETGU42ECCM6DDUIQVTDSBNO3ZK4LJTXN
X-Message-ID-Hash: ETGU42ECCM6DDUIQVTDSBNO3ZK4LJTXN
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ETGU42ECCM6DDUIQVTDSBNO3ZK4LJTXN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit 9abc291812d7 ("batman-adv: tracing: Use the new __vstring()
helper") removed the usage of WARN_ON_ONCE and __dynamic_array in this
file. But it was forgotten to adjust the headers accordingly (dropping th=
e
now no longer used ones).

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/trace.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/batman-adv/trace.h b/net/batman-adv/trace.h
index 31c8f922651d..5dd52bc5cabb 100644
--- a/net/batman-adv/trace.h
+++ b/net/batman-adv/trace.h
@@ -9,8 +9,6 @@
=20
 #include "main.h"
=20
-#include <linux/bug.h>
-#include <linux/kernel.h>
 #include <linux/netdevice.h>
 #include <linux/percpu.h>
 #include <linux/printk.h>
--=20
2.30.2
