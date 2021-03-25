Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FEB3496D2
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Mar 2021 17:31:37 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 07FFB83E17;
	Thu, 25 Mar 2021 17:31:35 +0100 (CET)
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2138483DC5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 17:17:33 +0100 (CET)
Received: by mail-pg1-x52b.google.com with SMTP id i22so2291788pgl.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 09:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=IuIs2AKwnOT5DUwxOE4TuFWPiYz5xOK1TFqmiizyDz8=;
        b=ici/bBrX1/HjB0wZZLvZ5yssoU7veWtbPefnk8eraB/EZiybfkSauEsPcv9VOgO0EI
         hjrLkLR8BAgJu0EnAcKRrEUxREM7oyx7UHs65CGEx+WtPpSLDiHp57hTVhMs32F8oRUG
         zhekjqVYB0lEHHX4eH6uZ+Vn5RCiEQJ0yQV7yJh9RUDPIy3b4iouKmg3sGoz1cjcYCG/
         NZ/0ek1A0PbDzbGa0jUyDO0ZRX4R1Ri08zRVQlI9xoRXkh9XRHeIHUjUTxkqL3cdFUft
         Zo5Ac2hC0wlMbVEsh9NJ8TDE7KF0pLCnZ+O4nnbTQef7bfcs7sCpGcTMo+UKpvPkM8ZV
         92RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=IuIs2AKwnOT5DUwxOE4TuFWPiYz5xOK1TFqmiizyDz8=;
        b=uGJN0kfmLHVX9hBNNwYeEH3Q/Bi1t+/FtpDoQHsEqRpyYCo+5vdiegC438SLkCd5kD
         X3peSziol1v3gQOEVE/WDApAWpwgpTKHBTCQ65iS3WJY88ETwofsbRbFJU/zz3Z4cMgI
         gxbw3NHoilRt0iZ3LMOmPDZRI4mGmsYtCv5nKZG+ROA7miuk13a+6yp77sJYMWn1lNWM
         TeD1N80qHS+8DO6K7dxaB1TrW9vwOqGx5yJ1Z1VGeyAqanY1pp7ojg22NuVUBWrZi+VY
         3K+dsxtbvoGZP8HW0k8eqF9FviLW8g9KGviXLMJNN3ggXTLICGCuOzb4gWwLEybxcbD9
         HKrw==
X-Gm-Message-State: AOAM532EdYFF0v835AiPxvTaL67dgr1pdZK8ZV6/f8tvt1VyGP0OyswU
	uMMBrkE46rmdpyqF6WVVXVE=
X-Google-Smtp-Source: ABdhPJxDj3+JcV6hrKJfEAh+aS9/XIvZrCshWY2TM5aHQnQ3oX+RvMbIq8Lg/YTXSeueA/KO/7Q39g==
X-Received: by 2002:a63:1845:: with SMTP id 5mr8336415pgy.244.1616689051287;
        Thu, 25 Mar 2021 09:17:31 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
        by smtp.gmail.com with ESMTPSA id s15sm6416917pgs.28.2021.03.25.09.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:17:30 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: netdev@vger.kernel.org,
	davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v3 4/7] mld: convert ip6_sf_list to RCU
Date: Thu, 25 Mar 2021 16:16:54 +0000
Message-Id: <20210325161657.10517-5-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210325161657.10517-1-ap420073@gmail.com>
References: <20210325161657.10517-1-ap420073@gmail.com>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616689053; a=rsa-sha256;
	cv=none;
	b=Ktzry7dhheUCyOzbnY+wSi44kx7jPprjJOBNKVLbvtnmmdsWXeu20x/BpJSRkZAU/taFI1
	6e/EP6EByMruQ+dTMK7nzMZTbuwmTgm64MNKjxz0DtAcaIIRgyC8BIGltzzZwiqab01k8S
	KixvUOXF/XwWRCc0Bqwi2FKDd49mzxg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b="ici/bBrX";
	spf=pass (diktynna.open-mesh.org: domain of ap420073@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ap420073@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616689053;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:in-reply-to:in-reply-to:references:references:  dkim-signature;
	bh=IuIs2AKwnOT5DUwxOE4TuFWPiYz5xOK1TFqmiizyDz8=;
	b=F3z+MjvwTQ2kn3cY29m7O/ChkwGwa7l+V6I4IugoWfUXTCedBgd6NFOtuthiMDLsX5/X46
	fFuKqAXpdoYr05W1pPsnh2n8MCpvrC+Q3h8S6RULz79ZHmO5f1Yg8iKLXAJF7XPAtVIzMI
	YcvakyDV7M1MXdu7RI5ObC5PvXJOZbY=
X-MailFrom: ap420073@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: BJUCQLCPB7HNAO252ZYHRL64LGO2TZTG
X-Message-ID-Hash: BJUCQLCPB7HNAO252ZYHRL64LGO2TZTG
X-Mailman-Approved-At: Thu, 25 Mar 2021 16:31:11 +0100
CC: ap420073@gmail.com, jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BJUCQLCPB7HNAO252ZYHRL64LGO2TZTG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The ip6_sf_list has been protected by mca_lock(spin_lock) so that the
critical section is atomic context. In order to switch this context,
changing locking is needed. The ip6_sf_list actually already protected
by RTNL So if it's converted to use RCU, its control path context can
be switched to sleepable.
But It doesn't remove mca_lock yet because ifmcaddr6 isn't converted
to RCU yet. So, It's not fully converted to the sleepable context.

Suggested-by: Cong Wang <xiyou.wangcong@gmail.com>
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
v2 -> v3:
 - Fix sparse warnings because of rcu annotation
v1 -> v2:
 - Separated from previous big one patch.

 include/net/if_inet6.h |   7 +-
 net/ipv6/mcast.c       | 200 ++++++++++++++++++++++++++---------------
 2 files changed, 130 insertions(+), 77 deletions(-)

diff --git a/include/net/if_inet6.h b/include/net/if_inet6.h
index 062294aeeb6d..7875a3208426 100644
--- a/include/net/if_inet6.h
+++ b/include/net/if_inet6.h
@@ -97,12 +97,13 @@ struct ipv6_mc_socklist {
 };
 
 struct ip6_sf_list {
-	struct ip6_sf_list	*sf_next;
+	struct ip6_sf_list __rcu *sf_next;
 	struct in6_addr		sf_addr;
 	unsigned long		sf_count[2];	/* include/exclude counts */
 	unsigned char		sf_gsresp;	/* include in g & s response? */
 	unsigned char		sf_oldin;	/* change state */
 	unsigned char		sf_crcount;	/* retrans. left to send */
+	struct rcu_head		rcu;
 };
 
 #define MAF_TIMER_RUNNING	0x01
@@ -115,8 +116,8 @@ struct ifmcaddr6 {
 	struct in6_addr		mca_addr;
 	struct inet6_dev	*idev;
 	struct ifmcaddr6	*next;
-	struct ip6_sf_list	*mca_sources;
-	struct ip6_sf_list	*mca_tomb;
+	struct ip6_sf_list	__rcu *mca_sources;
+	struct ip6_sf_list	__rcu *mca_tomb;
 	unsigned int		mca_sfmode;
 	unsigned char		mca_crcount;
 	unsigned long		mca_sfcount[2];
diff --git a/net/ipv6/mcast.c b/net/ipv6/mcast.c
index 9da55d23a13c..bc0fb4815c97 100644
--- a/net/ipv6/mcast.c
+++ b/net/ipv6/mcast.c
@@ -113,10 +113,25 @@ int sysctl_mld_qrv __read_mostly = MLD_QRV_DEFAULT;
  */
 
 #define for_each_pmc_rcu(np, pmc)				\
-	for (pmc = rcu_dereference(np->ipv6_mc_list);		\
-	     pmc != NULL;					\
+	for (pmc = rcu_dereference((np)->ipv6_mc_list);		\
+	     pmc;						\
 	     pmc = rcu_dereference(pmc->next))
 
+#define for_each_psf_rtnl(mc, psf)				\
+	for (psf = rtnl_dereference((mc)->mca_sources);		\
+	     psf;						\
+	     psf = rtnl_dereference(psf->sf_next))
+
+#define for_each_psf_rcu(mc, psf)				\
+	for (psf = rcu_dereference((mc)->mca_sources);		\
+	     psf;						\
+	     psf = rcu_dereference(psf->sf_next))
+
+#define for_each_psf_tomb(mc, psf)				\
+	for (psf = rtnl_dereference((mc)->mca_tomb);		\
+	     psf;						\
+	     psf = rtnl_dereference(psf->sf_next))
+
 static int unsolicited_report_interval(struct inet6_dev *idev)
 {
 	int iv;
@@ -734,10 +749,14 @@ static void mld_add_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 	if (pmc->mca_sfmode == MCAST_INCLUDE) {
 		struct ip6_sf_list *psf;
 
-		pmc->mca_tomb = im->mca_tomb;
-		pmc->mca_sources = im->mca_sources;
-		im->mca_tomb = im->mca_sources = NULL;
-		for (psf = pmc->mca_sources; psf; psf = psf->sf_next)
+		rcu_assign_pointer(pmc->mca_tomb,
+				   rtnl_dereference(im->mca_tomb));
+		rcu_assign_pointer(pmc->mca_sources,
+				   rtnl_dereference(im->mca_sources));
+		RCU_INIT_POINTER(im->mca_tomb, NULL);
+		RCU_INIT_POINTER(im->mca_sources, NULL);
+
+		for_each_psf_rtnl(pmc, psf)
 			psf->sf_crcount = pmc->mca_crcount;
 	}
 	spin_unlock_bh(&im->mca_lock);
@@ -748,9 +767,9 @@ static void mld_add_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 
 static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 {
-	struct ifmcaddr6 *pmc, *pmc_prev;
-	struct ip6_sf_list *psf;
+	struct ip6_sf_list *psf, *sources, *tomb;
 	struct in6_addr *pmca = &im->mca_addr;
+	struct ifmcaddr6 *pmc, *pmc_prev;
 
 	pmc_prev = NULL;
 	for (pmc = idev->mc_tomb; pmc; pmc = pmc->next) {
@@ -769,9 +788,16 @@ static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 	if (pmc) {
 		im->idev = pmc->idev;
 		if (im->mca_sfmode == MCAST_INCLUDE) {
-			swap(im->mca_tomb, pmc->mca_tomb);
-			swap(im->mca_sources, pmc->mca_sources);
-			for (psf = im->mca_sources; psf; psf = psf->sf_next)
+			tomb = rcu_replace_pointer(im->mca_tomb,
+						   rtnl_dereference(pmc->mca_tomb),
+						   lockdep_rtnl_is_held());
+			rcu_assign_pointer(pmc->mca_tomb, tomb);
+
+			sources = rcu_replace_pointer(im->mca_sources,
+						      rtnl_dereference(pmc->mca_sources),
+						      lockdep_rtnl_is_held());
+			rcu_assign_pointer(pmc->mca_sources, sources);
+			for_each_psf_rtnl(im, psf)
 				psf->sf_crcount = idev->mc_qrv;
 		} else {
 			im->mca_crcount = idev->mc_qrv;
@@ -803,12 +829,12 @@ static void mld_clear_delrec(struct inet6_dev *idev)
 		struct ip6_sf_list *psf, *psf_next;
 
 		spin_lock_bh(&pmc->mca_lock);
-		psf = pmc->mca_tomb;
-		pmc->mca_tomb = NULL;
+		psf = rtnl_dereference(pmc->mca_tomb);
+		RCU_INIT_POINTER(pmc->mca_tomb, NULL);
 		spin_unlock_bh(&pmc->mca_lock);
 		for (; psf; psf = psf_next) {
-			psf_next = psf->sf_next;
-			kfree(psf);
+			psf_next = rtnl_dereference(psf->sf_next);
+			kfree_rcu(psf, rcu);
 		}
 	}
 	read_unlock_bh(&idev->lock);
@@ -990,7 +1016,7 @@ bool ipv6_chk_mcast_addr(struct net_device *dev, const struct in6_addr *group,
 				struct ip6_sf_list *psf;
 
 				spin_lock_bh(&mc->mca_lock);
-				for (psf = mc->mca_sources; psf; psf = psf->sf_next) {
+				for_each_psf_rcu(mc, psf) {
 					if (ipv6_addr_equal(&psf->sf_addr, src_addr))
 						break;
 				}
@@ -1089,7 +1115,7 @@ static bool mld_xmarksources(struct ifmcaddr6 *pmc, int nsrcs,
 	int i, scount;
 
 	scount = 0;
-	for (psf = pmc->mca_sources; psf; psf = psf->sf_next) {
+	for_each_psf_rcu(pmc, psf) {
 		if (scount == nsrcs)
 			break;
 		for (i = 0; i < nsrcs; i++) {
@@ -1122,7 +1148,7 @@ static bool mld_marksources(struct ifmcaddr6 *pmc, int nsrcs,
 	/* mark INCLUDE-mode sources */
 
 	scount = 0;
-	for (psf = pmc->mca_sources; psf; psf = psf->sf_next) {
+	for_each_psf_rcu(pmc, psf) {
 		if (scount == nsrcs)
 			break;
 		for (i = 0; i < nsrcs; i++) {
@@ -1532,7 +1558,7 @@ mld_scount(struct ifmcaddr6 *pmc, int type, int gdeleted, int sdeleted)
 	struct ip6_sf_list *psf;
 	int scount = 0;
 
-	for (psf = pmc->mca_sources; psf; psf = psf->sf_next) {
+	for_each_psf_rtnl(pmc, psf) {
 		if (!is_in(pmc, psf, type, gdeleted, sdeleted))
 			continue;
 		scount++;
@@ -1707,14 +1733,16 @@ static struct sk_buff *add_grhead(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 #define AVAILABLE(skb)	((skb) ? skb_availroom(skb) : 0)
 
 static struct sk_buff *add_grec(struct sk_buff *skb, struct ifmcaddr6 *pmc,
-	int type, int gdeleted, int sdeleted, int crsend)
+				int type, int gdeleted, int sdeleted,
+				int crsend)
 {
+	struct ip6_sf_list *psf, *psf_prev, *psf_next;
+	int scount, stotal, first, isquery, truncate;
+	struct ip6_sf_list __rcu **psf_list;
 	struct inet6_dev *idev = pmc->idev;
 	struct net_device *dev = idev->dev;
-	struct mld2_report *pmr;
 	struct mld2_grec *pgr = NULL;
-	struct ip6_sf_list *psf, *psf_next, *psf_prev, **psf_list;
-	int scount, stotal, first, isquery, truncate;
+	struct mld2_report *pmr;
 	unsigned int mtu;
 
 	if (pmc->mca_flags & MAF_NOREPORT)
@@ -1733,7 +1761,7 @@ static struct sk_buff *add_grec(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 
 	psf_list = sdeleted ? &pmc->mca_tomb : &pmc->mca_sources;
 
-	if (!*psf_list)
+	if (!rcu_access_pointer(*psf_list))
 		goto empty_source;
 
 	pmr = skb ? (struct mld2_report *)skb_transport_header(skb) : NULL;
@@ -1749,10 +1777,12 @@ static struct sk_buff *add_grec(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 	}
 	first = 1;
 	psf_prev = NULL;
-	for (psf = *psf_list; psf; psf = psf_next) {
+	for (psf = rtnl_dereference(*psf_list);
+	     psf;
+	     psf = psf_next) {
 		struct in6_addr *psrc;
 
-		psf_next = psf->sf_next;
+		psf_next = rtnl_dereference(psf->sf_next);
 
 		if (!is_in(pmc, psf, type, gdeleted, sdeleted) && !crsend) {
 			psf_prev = psf;
@@ -1799,10 +1829,12 @@ static struct sk_buff *add_grec(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 			psf->sf_crcount--;
 			if ((sdeleted || gdeleted) && psf->sf_crcount == 0) {
 				if (psf_prev)
-					psf_prev->sf_next = psf->sf_next;
+					rcu_assign_pointer(psf_prev->sf_next,
+							   rtnl_dereference(psf->sf_next));
 				else
-					*psf_list = psf->sf_next;
-				kfree(psf);
+					rcu_assign_pointer(*psf_list,
+							   rtnl_dereference(psf->sf_next));
+				kfree_rcu(psf, rcu);
 				continue;
 			}
 		}
@@ -1866,21 +1898,26 @@ static void mld_send_report(struct inet6_dev *idev, struct ifmcaddr6 *pmc)
 /*
  * remove zero-count source records from a source filter list
  */
-static void mld_clear_zeros(struct ip6_sf_list **ppsf)
+static void mld_clear_zeros(struct ip6_sf_list __rcu **ppsf)
 {
 	struct ip6_sf_list *psf_prev, *psf_next, *psf;
 
 	psf_prev = NULL;
-	for (psf = *ppsf; psf; psf = psf_next) {
-		psf_next = psf->sf_next;
+	for (psf = rtnl_dereference(*ppsf);
+	     psf;
+	     psf = psf_next) {
+		psf_next = rtnl_dereference(psf->sf_next);
 		if (psf->sf_crcount == 0) {
 			if (psf_prev)
-				psf_prev->sf_next = psf->sf_next;
+				rcu_assign_pointer(psf_prev->sf_next,
+						   rtnl_dereference(psf->sf_next));
 			else
-				*ppsf = psf->sf_next;
-			kfree(psf);
-		} else
+				rcu_assign_pointer(*ppsf,
+						   rtnl_dereference(psf->sf_next));
+			kfree_rcu(psf, rcu);
+		} else {
 			psf_prev = psf;
+		}
 	}
 }
 
@@ -1913,8 +1950,9 @@ static void mld_send_cr(struct inet6_dev *idev)
 				mld_clear_zeros(&pmc->mca_sources);
 			}
 		}
-		if (pmc->mca_crcount == 0 && !pmc->mca_tomb &&
-		    !pmc->mca_sources) {
+		if (pmc->mca_crcount == 0 &&
+		    !rcu_access_pointer(pmc->mca_tomb) &&
+		    !rcu_access_pointer(pmc->mca_sources)) {
 			if (pmc_prev)
 				pmc_prev->next = pmc_next;
 			else
@@ -2111,7 +2149,7 @@ static int ip6_mc_del1_src(struct ifmcaddr6 *pmc, int sfmode,
 	int rv = 0;
 
 	psf_prev = NULL;
-	for (psf = pmc->mca_sources; psf; psf = psf->sf_next) {
+	for_each_psf_rtnl(pmc, psf) {
 		if (ipv6_addr_equal(&psf->sf_addr, psfsrc))
 			break;
 		psf_prev = psf;
@@ -2126,17 +2164,22 @@ static int ip6_mc_del1_src(struct ifmcaddr6 *pmc, int sfmode,
 
 		/* no more filters for this source */
 		if (psf_prev)
-			psf_prev->sf_next = psf->sf_next;
+			rcu_assign_pointer(psf_prev->sf_next,
+					   rtnl_dereference(psf->sf_next));
 		else
-			pmc->mca_sources = psf->sf_next;
+			rcu_assign_pointer(pmc->mca_sources,
+					   rtnl_dereference(psf->sf_next));
+
 		if (psf->sf_oldin && !(pmc->mca_flags & MAF_NOREPORT) &&
 		    !mld_in_v1_mode(idev)) {
 			psf->sf_crcount = idev->mc_qrv;
-			psf->sf_next = pmc->mca_tomb;
-			pmc->mca_tomb = psf;
+			rcu_assign_pointer(psf->sf_next,
+					   rtnl_dereference(pmc->mca_tomb));
+			rcu_assign_pointer(pmc->mca_tomb, psf);
 			rv = 1;
-		} else
-			kfree(psf);
+		} else {
+			kfree_rcu(psf, rcu);
+		}
 	}
 	return rv;
 }
@@ -2188,7 +2231,7 @@ static int ip6_mc_del_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 		pmc->mca_sfmode = MCAST_INCLUDE;
 		pmc->mca_crcount = idev->mc_qrv;
 		idev->mc_ifc_count = pmc->mca_crcount;
-		for (psf = pmc->mca_sources; psf; psf = psf->sf_next)
+		for_each_psf_rtnl(pmc, psf)
 			psf->sf_crcount = 0;
 		mld_ifc_event(pmc->idev);
 	} else if (sf_setstate(pmc) || changerec)
@@ -2207,7 +2250,7 @@ static int ip6_mc_add1_src(struct ifmcaddr6 *pmc, int sfmode,
 	struct ip6_sf_list *psf, *psf_prev;
 
 	psf_prev = NULL;
-	for (psf = pmc->mca_sources; psf; psf = psf->sf_next) {
+	for_each_psf_rtnl(pmc, psf) {
 		if (ipv6_addr_equal(&psf->sf_addr, psfsrc))
 			break;
 		psf_prev = psf;
@@ -2219,9 +2262,10 @@ static int ip6_mc_add1_src(struct ifmcaddr6 *pmc, int sfmode,
 
 		psf->sf_addr = *psfsrc;
 		if (psf_prev) {
-			psf_prev->sf_next = psf;
-		} else
-			pmc->mca_sources = psf;
+			rcu_assign_pointer(psf_prev->sf_next, psf);
+		} else {
+			rcu_assign_pointer(pmc->mca_sources, psf);
+		}
 	}
 	psf->sf_count[sfmode]++;
 	return 0;
@@ -2232,13 +2276,15 @@ static void sf_markstate(struct ifmcaddr6 *pmc)
 	struct ip6_sf_list *psf;
 	int mca_xcount = pmc->mca_sfcount[MCAST_EXCLUDE];
 
-	for (psf = pmc->mca_sources; psf; psf = psf->sf_next)
+	for_each_psf_rtnl(pmc, psf) {
 		if (pmc->mca_sfcount[MCAST_EXCLUDE]) {
 			psf->sf_oldin = mca_xcount ==
 				psf->sf_count[MCAST_EXCLUDE] &&
 				!psf->sf_count[MCAST_INCLUDE];
-		} else
+		} else {
 			psf->sf_oldin = psf->sf_count[MCAST_INCLUDE] != 0;
+		}
+	}
 }
 
 static int sf_setstate(struct ifmcaddr6 *pmc)
@@ -2249,7 +2295,7 @@ static int sf_setstate(struct ifmcaddr6 *pmc)
 	int new_in, rv;
 
 	rv = 0;
-	for (psf = pmc->mca_sources; psf; psf = psf->sf_next) {
+	for_each_psf_rtnl(pmc, psf) {
 		if (pmc->mca_sfcount[MCAST_EXCLUDE]) {
 			new_in = mca_xcount == psf->sf_count[MCAST_EXCLUDE] &&
 				!psf->sf_count[MCAST_INCLUDE];
@@ -2259,8 +2305,7 @@ static int sf_setstate(struct ifmcaddr6 *pmc)
 			if (!psf->sf_oldin) {
 				struct ip6_sf_list *prev = NULL;
 
-				for (dpsf = pmc->mca_tomb; dpsf;
-				     dpsf = dpsf->sf_next) {
+				for_each_psf_tomb(pmc, dpsf) {
 					if (ipv6_addr_equal(&dpsf->sf_addr,
 					    &psf->sf_addr))
 						break;
@@ -2268,10 +2313,12 @@ static int sf_setstate(struct ifmcaddr6 *pmc)
 				}
 				if (dpsf) {
 					if (prev)
-						prev->sf_next = dpsf->sf_next;
+						rcu_assign_pointer(prev->sf_next,
+								   rtnl_dereference(dpsf->sf_next));
 					else
-						pmc->mca_tomb = dpsf->sf_next;
-					kfree(dpsf);
+						rcu_assign_pointer(pmc->mca_tomb,
+								   rtnl_dereference(dpsf->sf_next));
+					kfree_rcu(dpsf, rcu);
 				}
 				psf->sf_crcount = qrv;
 				rv++;
@@ -2282,7 +2329,8 @@ static int sf_setstate(struct ifmcaddr6 *pmc)
 			 * add or update "delete" records if an active filter
 			 * is now inactive
 			 */
-			for (dpsf = pmc->mca_tomb; dpsf; dpsf = dpsf->sf_next)
+
+			for_each_psf_tomb(pmc, dpsf)
 				if (ipv6_addr_equal(&dpsf->sf_addr,
 				    &psf->sf_addr))
 					break;
@@ -2291,9 +2339,9 @@ static int sf_setstate(struct ifmcaddr6 *pmc)
 				if (!dpsf)
 					continue;
 				*dpsf = *psf;
-				/* pmc->mca_lock held by callers */
-				dpsf->sf_next = pmc->mca_tomb;
-				pmc->mca_tomb = dpsf;
+				rcu_assign_pointer(dpsf->sf_next,
+						   rtnl_dereference(pmc->mca_tomb));
+				rcu_assign_pointer(pmc->mca_tomb, dpsf);
 			}
 			dpsf->sf_crcount = qrv;
 			rv++;
@@ -2356,7 +2404,7 @@ static int ip6_mc_add_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 
 		pmc->mca_crcount = idev->mc_qrv;
 		idev->mc_ifc_count = pmc->mca_crcount;
-		for (psf = pmc->mca_sources; psf; psf = psf->sf_next)
+		for_each_psf_rtnl(pmc, psf)
 			psf->sf_crcount = 0;
 		mld_ifc_event(idev);
 	} else if (sf_setstate(pmc))
@@ -2370,16 +2418,20 @@ static void ip6_mc_clear_src(struct ifmcaddr6 *pmc)
 {
 	struct ip6_sf_list *psf, *nextpsf;
 
-	for (psf = pmc->mca_tomb; psf; psf = nextpsf) {
-		nextpsf = psf->sf_next;
-		kfree(psf);
+	for (psf = rtnl_dereference(pmc->mca_tomb);
+	     psf;
+	     psf = nextpsf) {
+		nextpsf = rtnl_dereference(psf->sf_next);
+		kfree_rcu(psf, rcu);
 	}
-	pmc->mca_tomb = NULL;
-	for (psf = pmc->mca_sources; psf; psf = nextpsf) {
-		nextpsf = psf->sf_next;
-		kfree(psf);
+	RCU_INIT_POINTER(pmc->mca_tomb, NULL);
+	for (psf = rtnl_dereference(pmc->mca_sources);
+	     psf;
+	     psf = nextpsf) {
+		nextpsf = rtnl_dereference(psf->sf_next);
+		kfree_rcu(psf, rcu);
 	}
-	pmc->mca_sources = NULL;
+	RCU_INIT_POINTER(pmc->mca_sources, NULL);
 	pmc->mca_sfmode = MCAST_EXCLUDE;
 	pmc->mca_sfcount[MCAST_INCLUDE] = 0;
 	pmc->mca_sfcount[MCAST_EXCLUDE] = 1;
@@ -2789,7 +2841,7 @@ static inline struct ip6_sf_list *igmp6_mcf_get_first(struct seq_file *seq)
 		im = idev->mc_list;
 		if (likely(im)) {
 			spin_lock_bh(&im->mca_lock);
-			psf = im->mca_sources;
+			psf = rcu_dereference(im->mca_sources);
 			if (likely(psf)) {
 				state->im = im;
 				state->idev = idev;
@@ -2806,7 +2858,7 @@ static struct ip6_sf_list *igmp6_mcf_get_next(struct seq_file *seq, struct ip6_s
 {
 	struct igmp6_mcf_iter_state *state = igmp6_mcf_seq_private(seq);
 
-	psf = psf->sf_next;
+	psf = rcu_dereference(psf->sf_next);
 	while (!psf) {
 		spin_unlock_bh(&state->im->mca_lock);
 		state->im = state->im->next;
@@ -2828,7 +2880,7 @@ static struct ip6_sf_list *igmp6_mcf_get_next(struct seq_file *seq, struct ip6_s
 		if (!state->im)
 			break;
 		spin_lock_bh(&state->im->mca_lock);
-		psf = state->im->mca_sources;
+		psf = rcu_dereference(state->im->mca_sources);
 	}
 out:
 	return psf;
-- 
2.17.1
