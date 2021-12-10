Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5737046FE2D
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Dec 2021 10:52:40 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4C7C8804FA;
	Fri, 10 Dec 2021 10:52:39 +0100 (CET)
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 30E048040E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Dec 2021 10:43:20 +0100 (CET)
Received: by mail-pg1-x52f.google.com with SMTP id f125so7650553pgc.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Dec 2021 01:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WJHQS1TqoraBa2z6TQURFb9DY2t95GlT4haKiZfPPeY=;
        b=ch0H4egbYgiAUhf4tE3p+bnEWPZckrmnopkwgPK/R1Ppht09xz+pjYNB68b+majQsV
         LczzRRKB0MIB+u1trZ5eTzYRARzvHRiBYfhVEkpHxAsCFtA+dbZfjEjzQ5jX2xDW+cL6
         x6YZnZhxaQ/ct4B5pq9ZVLMiGgBAeMgaoLv9CbCXm9eUr/3EGznqwlMWD30EfmjDMEDz
         DP5T0PUYG+d3l40c38rhaI3ftPGjSOH0EGT9m/sniciRTtOzYsdxLxEaqwIsvXHxTHTZ
         qqWA8FrSE5E+SshOkIaUDR8I+zjcJmvdlb5EXYedvVJ2Yb5Zlmj2//H/4DGF8uNWRsKr
         MgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WJHQS1TqoraBa2z6TQURFb9DY2t95GlT4haKiZfPPeY=;
        b=i+HNGkgYXQZlSHiWKA3SPiewwkRSips5NCN5vHW7xtMwz7vch9E5FPaGTT37KHfSHD
         PECcWz0pB7EmoSRW51X7+sX/UePj9neCIHWSsRNIQ9RD2doYsD7otqnHAADjUxSYOqGO
         Co+dcMcOrSqq7qlexWyyq8YwNAwn3wO8sPIdkByBE5I9PlHOfLCBTQMGxzEgi06hWPqj
         rS2sX8AzWpDqNN4Dm6g1Zuh9jY2qRE8W7KNPlrKP+uELgfajhMODIxOJB69YZAMYQf6M
         D2ua6vj14f+AGJLHpipf4G8Khx/2DWKd1I2efEe0kB3YzDwuJe5emcozsa9W4F6J0Mms
         i6mA==
X-Gm-Message-State: AOAM531r8SEkhoKOlKdn4wCxXY5rnZaIvoRDVt7J4tA2L0c3z5LNO3bY
	xC3p/RDM6Y9uI5jfOd+l1ck=
X-Google-Smtp-Source: ABdhPJzrmcGyhdYsXEmPxvU+k6FeIrzvowGq8KGqA/CRsPd/8BiDmLGE0v1UNgmbjCNF6hU8F/EmKQ==
X-Received: by 2002:a05:6a00:1392:b0:4ad:5688:3e7d with SMTP id t18-20020a056a00139200b004ad56883e7dmr17154037pfg.59.1639129398410;
        Fri, 10 Dec 2021 01:43:18 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
        by smtp.gmail.com with ESMTPSA id s28sm2881638pfg.147.2021.12.10.01.43.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 01:43:18 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: sven@narfation.org
Subject: [PATCHv2] net/batman-adv:remove unneeded variable
Date: Fri, 10 Dec 2021 09:42:06 +0000
Message-Id: <20211210094206.426283-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <2844186.8fJna1iEf4@ripper>
References: <2844186.8fJna1iEf4@ripper>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1639129400;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=WJHQS1TqoraBa2z6TQURFb9DY2t95GlT4haKiZfPPeY=;
	b=4GsTdmVHipWp6jpJ/Hn3+0MMw34nnnGxceuqyyREP3fkUX/RR8GkBAB1zw+oMsEv6puLeV
	N3BvkZc68BO25Igta94p6w87UMlGUW3G951j1BnDHjYyIfgiGK0blni79f1jeE58Aw1RdD
	ngVjD/a5sldZU4EzgQi5Q+Hir1EEu94=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=ch0H4egb;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of cgel.zte@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=cgel.zte@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1639129400; a=rsa-sha256;
	cv=none;
	b=kz1b6VJrx8qP2UB3PAn3+jT8chIh/BF1u2xuzwemuCb/F7xOWTxVhSALvBdOuJEG/hPaR+
	j19wok4Dh4GSu4vznw3tdaXCDkiAdMkoX8HY4Vf80py4c130eBj4/3zAnMZEEHyJkRX2EB
	KU3CDJG7wHmRrZ/50pctEdlO2MmZ3PI=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: cgel.zte@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: DTCB5IWREFNONBT6OZ62LGPCDHVAE243
X-Message-ID-Hash: DTCB5IWREFNONBT6OZ62LGPCDHVAE243
X-Mailman-Approved-At: Fri, 10 Dec 2021 09:52:37 +0100
CC: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, cgel.zte@gmail.com, chi.minghao@zte.com.cn, davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, netdev@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DTCB5IWREFNONBT6OZ62LGPCDHVAE243/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Minghao Chi <chi.minghao@zte.com.cn>

Return status directly from function called.
change since v1: zealci@zte.com.cm
             v2: zealci@zte.com.cn
Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
---
 net/batman-adv/network-coding.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 0a7f1d36a6a8..0c300476d335 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -58,13 +58,9 @@ static int batadv_nc_recv_coded_packet(struct sk_buff =
*skb,
  */
 int __init batadv_nc_init(void)
 {
-	int ret;
-
 	/* Register our packet type */
-	ret =3D batadv_recv_handler_register(BATADV_CODED,
+	return batadv_recv_handler_register(BATADV_CODED,
 					   batadv_nc_recv_coded_packet);
-
-	return ret;
 }
=20
 /**
--=20
2.25.1
