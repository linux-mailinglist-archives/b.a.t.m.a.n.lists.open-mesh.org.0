Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1539F43DC23
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Oct 2021 09:34:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 196268276C;
	Thu, 28 Oct 2021 09:34:57 +0200 (CEST)
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 43FEE80105
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Oct 2021 09:23:24 +0200 (CEST)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1635405804;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VXi3Ela0bU7orviuWeiG2NP6r/UtKWhGLoJui6UniIo=;
	b=gEo8rej7fcIJJsGfWYod+i8Qe60d17Q14LswQJrg0kV9fFg6b3tLKKCV98fH6q2KKLx04N
	M9TkeCam5MX4lSf70Cq3DKhyfW1aEDC35SemQ9tP6mU0Z/6KRb7jnVX2SlpAMx1mfyz6hP
	WOnAsS4O5gh8lvgAPLI3HYQyRjVAAwk=
From: Yajun Deng <yajun.deng@linux.dev>
To: mareklindner@neomailbox.ch,
	sw@simonwunderlich.de,
	a@unstable.cc,
	sven@narfation.org
Subject: [PATCH net-next] batman-adv: Fix the wrong definition
Date: Thu, 28 Oct 2021 15:23:06 +0800
Message-Id: <20211028072306.1351-1-yajun.deng@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: yajun.deng@linux.dev
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635405805;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=VXi3Ela0bU7orviuWeiG2NP6r/UtKWhGLoJui6UniIo=;
	b=rySijsqiUjaga8lZTFq+VVX3or+BslOqBg31JAv7ScO+h20fJ9LOsISi9Lez0dRHJJqjju
	LOM/mTAITt09uvSU5je9sPGwt7YgN8AM6FVyKNbjr4es5a4SK0wTAisY6LtAKOsPr6zT9k
	ateWMPp/6kqQrSA/SJKtxO7/lj9IYUo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linux.dev header.s=key1 header.b=gEo8rej7;
	dmarc=pass (policy=none) header.from=linux.dev;
	spf=pass (diktynna.open-mesh.org: domain of yajun.deng@linux.dev designates 94.23.1.103 as permitted sender) smtp.mailfrom=yajun.deng@linux.dev
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635405805; a=rsa-sha256;
	cv=none;
	b=hWxfPbPE7dPx+FQDl5C5bQ+SGHHluxr2BkZq2sekA5ZAH6zJWknmWp/LYd9ThUvtnQQ5nh
	kDhWSM1Guq7oIurwqlSNo0gbLvvpH0yfCnGSW5xJRM2WLIDR/0Zf9GhWRxFfXClwYAwKtU
	//cYhoePttP2LNOtv0/uIbBZah00Ddk=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: yajun.deng@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: OXI7TPE47MDHFUMX4IJTMIUWABZEENZG
X-Message-ID-Hash: OXI7TPE47MDHFUMX4IJTMIUWABZEENZG
X-Mailman-Approved-At: Thu, 28 Oct 2021 07:34:55 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Yajun Deng <yajun.deng@linux.dev>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OXI7TPE47MDHFUMX4IJTMIUWABZEENZG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

There are three variables that are required at most,
no need to define four variables.

Fixes: 0fa4c30d710d ("batman-adv: Make sysfs support optional")
Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
---
 net/batman-adv/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 3ddd66e4c29e..758035b3796d 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -656,7 +656,7 @@ int batadv_throw_uevent(struct batadv_priv *bat_priv,=
 enum batadv_uev_type type,
 {
 	int ret =3D -ENOMEM;
 	struct kobject *bat_kobj;
-	char *uevent_env[4] =3D { NULL, NULL, NULL, NULL };
+	char *uevent_env[3] =3D {};
=20
 	bat_kobj =3D &bat_priv->soft_iface->dev.kobj;
=20
--=20
2.32.0
