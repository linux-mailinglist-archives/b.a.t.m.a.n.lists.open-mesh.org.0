Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AA22A3496D0
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Mar 2021 17:31:24 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 36ED483E06;
	Thu, 25 Mar 2021 17:31:22 +0100 (CET)
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4AEE483D6A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 17:17:23 +0100 (CET)
Received: by mail-pg1-x529.google.com with SMTP id u19so2272686pgh.10
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 09:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ChKEADg0vg3cJHSoLhniBIbLYuRGuBZcp326QuaxabM=;
        b=ceEj3CHfsGFxfZiJo8R2gtoTGZqbdTRwgIDP2QrSCIYdt1PbiBMXz5X95S7VwAJMi3
         /aQOlxSwIP/px/nx+qocNTsVHRF9AyTtio9vuG5YGqeA7VCqCbvo+5QM6WlSrb+U763c
         gZDmqIhdkY9mT+mAxinrZ9kBf31bDp+yIiMaCjkFEPXQ2PBeY8VX+iqfYxz1yMUtChk/
         S9k/VhoCGfo2Bnwoe2jV6oBMw//2nbLjf5O+ddQ9onm5oe4G1l1752DiSIUXPSop+BxS
         P+H4/RXM1g29F8X3+p2OSBNwtFrRVymDr/yADrmJcww4nd/IEtey1BL17CTzTx7Pf9Z8
         GCeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ChKEADg0vg3cJHSoLhniBIbLYuRGuBZcp326QuaxabM=;
        b=mmRPLeWUaBCPxrHRvNONKRQIcMtBQvcmS17nsobcQzndiza9LbJsqP9MsO4w9ZYJpi
         BjGEy09aX36AyvZL4g0/qcUEnvY2V1/aGnKycbbiJq/PRfYq3HFhX0Dq6LxQ47Deubnf
         VcLcOBKwv5WNax7uTJCsUH0pz9nFGfS4W2i+xjnU3MZR221jQnbT/lLLg9yqUmr4X3Q5
         uMs7uIeVa91QXkoWU+Ei9gtPhX3obBEsH/yvyDkFfflRtlOjE4zZ+71L1IUI0zXd7YIN
         HZGLVOndSngqarAKZ21SJl0J1RPZXfMGpb4b95m3UtnS5zMSiODk/4TsifD/pDLioUye
         JhVQ==
X-Gm-Message-State: AOAM532Fs29jF7oMf1vOZmNofTckvvQDSxn1THKEF4YSzMl8NAp7oJHu
	kd5YOGHEeOvpWQwjno/oO0Y=
X-Google-Smtp-Source: ABdhPJy3WVE9CrfV8+wG/JPQxhwT7Os6ORae9B37Gp59oww88kyypDSnRj0NhrzC3P7JAypSgzjX/A==
X-Received: by 2002:a63:c90c:: with SMTP id o12mr8476535pgg.210.1616689041583;
        Thu, 25 Mar 2021 09:17:21 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
        by smtp.gmail.com with ESMTPSA id s15sm6416917pgs.28.2021.03.25.09.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:17:20 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: netdev@vger.kernel.org,
	davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v3 2/7] mld: get rid of inet6_dev->mc_lock
Date: Thu, 25 Mar 2021 16:16:52 +0000
Message-Id: <20210325161657.10517-3-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210325161657.10517-1-ap420073@gmail.com>
References: <20210325161657.10517-1-ap420073@gmail.com>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616689043; a=rsa-sha256;
	cv=none;
	b=A5/oz0MykCSKL9PmOTrqp2unr7Zjw/UCQ3U/5pVp/qT9qq5TqJA7gOy1Ax7/83+eauWazg
	MCMeu+BKiQUKxyx1dgMSciP6z8YKNaguAHMQZI/G0N8SZdi93g52HYqsGi7GPatfNFyIg+
	nNt9/EiRyQA4XTxoIpIaUWOizXnmp5w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=ceEj3CHf;
	spf=pass (diktynna.open-mesh.org: domain of ap420073@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ap420073@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616689043;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:in-reply-to:in-reply-to:references:references:  dkim-signature;
	bh=ChKEADg0vg3cJHSoLhniBIbLYuRGuBZcp326QuaxabM=;
	b=KSEaQWe3Oy10RRYuyF3jn2MdKL/wzldKO7OxqouTshNU0eHa9ZxkbK9+MTVbaec8KoYdr8
	4mK1yaTOptuFDRSGNY+dl02E6pRcGPQMkqHh0AoocTx3zTESUaOBjITS1N6p9/r4xKXfBo
	JhmDhH47f/Ey9NI0tErVACaIhCJGWac=
X-MailFrom: ap420073@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: QJYTWJSLE3QCOAXZZBKDE52OR2HZ3KKZ
X-Message-ID-Hash: QJYTWJSLE3QCOAXZZBKDE52OR2HZ3KKZ
X-Mailman-Approved-At: Thu, 25 Mar 2021 16:31:11 +0100
CC: ap420073@gmail.com, jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QJYTWJSLE3QCOAXZZBKDE52OR2HZ3KKZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The purpose of mc_lock is to protect inet6_dev->mc_tomb.
But mc_tomb is already protected by RTNL and all functions,
which manipulate mc_tomb are called under RTNL.
So, mc_lock is not needed.
Furthermore, it is spinlock so the critical section is atomic.
In order to reduce atomic context, it should be removed.

Suggested-by: Cong Wang <xiyou.wangcong@gmail.com>
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
v2 -> v3:
 - No change
v1 -> v2:
 - Separated from previous big one patch.

 include/net/if_inet6.h | 1 -
 net/ipv6/mcast.c       | 9 ---------
 2 files changed, 10 deletions(-)

diff --git a/include/net/if_inet6.h b/include/net/if_inet6.h
index af5244c9ca5c..1080d2248304 100644
--- a/include/net/if_inet6.h
+++ b/include/net/if_inet6.h
@@ -167,7 +167,6 @@ struct inet6_dev {
 
 	struct ifmcaddr6	*mc_list;
 	struct ifmcaddr6	*mc_tomb;
-	spinlock_t		mc_lock;
 
 	unsigned char		mc_qrv;		/* Query Robustness Variable */
 	unsigned char		mc_gq_running;
diff --git a/net/ipv6/mcast.c b/net/ipv6/mcast.c
index 692a6dec8959..35962aa3cc22 100644
--- a/net/ipv6/mcast.c
+++ b/net/ipv6/mcast.c
@@ -752,10 +752,8 @@ static void mld_add_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 	}
 	spin_unlock_bh(&im->mca_lock);
 
-	spin_lock_bh(&idev->mc_lock);
 	pmc->next = idev->mc_tomb;
 	idev->mc_tomb = pmc;
-	spin_unlock_bh(&idev->mc_lock);
 }
 
 static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
@@ -764,7 +762,6 @@ static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 	struct ip6_sf_list *psf;
 	struct in6_addr *pmca = &im->mca_addr;
 
-	spin_lock_bh(&idev->mc_lock);
 	pmc_prev = NULL;
 	for (pmc = idev->mc_tomb; pmc; pmc = pmc->next) {
 		if (ipv6_addr_equal(&pmc->mca_addr, pmca))
@@ -777,7 +774,6 @@ static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 		else
 			idev->mc_tomb = pmc->next;
 	}
-	spin_unlock_bh(&idev->mc_lock);
 
 	spin_lock_bh(&im->mca_lock);
 	if (pmc) {
@@ -801,10 +797,8 @@ static void mld_clear_delrec(struct inet6_dev *idev)
 {
 	struct ifmcaddr6 *pmc, *nextpmc;
 
-	spin_lock_bh(&idev->mc_lock);
 	pmc = idev->mc_tomb;
 	idev->mc_tomb = NULL;
-	spin_unlock_bh(&idev->mc_lock);
 
 	for (; pmc; pmc = nextpmc) {
 		nextpmc = pmc->next;
@@ -1907,7 +1901,6 @@ static void mld_send_cr(struct inet6_dev *idev)
 	int type, dtype;
 
 	read_lock_bh(&idev->lock);
-	spin_lock(&idev->mc_lock);
 
 	/* deleted MCA's */
 	pmc_prev = NULL;
@@ -1941,7 +1934,6 @@ static void mld_send_cr(struct inet6_dev *idev)
 		} else
 			pmc_prev = pmc;
 	}
-	spin_unlock(&idev->mc_lock);
 
 	/* change recs */
 	for (pmc = idev->mc_list; pmc; pmc = pmc->next) {
@@ -2582,7 +2574,6 @@ void ipv6_mc_up(struct inet6_dev *idev)
 void ipv6_mc_init_dev(struct inet6_dev *idev)
 {
 	write_lock_bh(&idev->lock);
-	spin_lock_init(&idev->mc_lock);
 	idev->mc_gq_running = 0;
 	INIT_DELAYED_WORK(&idev->mc_gq_work, mld_gq_work);
 	idev->mc_tomb = NULL;
-- 
2.17.1
