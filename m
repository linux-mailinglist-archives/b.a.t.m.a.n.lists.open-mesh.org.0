Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BDA3496D9
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Mar 2021 17:31:55 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D590A83E1F;
	Thu, 25 Mar 2021 17:31:52 +0100 (CET)
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 02F0C806E8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 17:17:42 +0100 (CET)
Received: by mail-pg1-x531.google.com with SMTP id v186so2284652pgv.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 09:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=11pRZ9mnGxvCut8AZRSFu7CAwdpMoECmSIZ9/PK9hSs=;
        b=B4zltxK7fhc1nMNIuUBqtO2YNjvEoPMAwT8elAXtdWfql/w4RKVjTn9u2mr9Wuw3n/
         fmqY+QWpLwF0hpCQEmQTCVcX9bRdHu+PxqtMrwDn/1JdTRmhLy6Apc+lUL9r3+NPEjju
         etG4Y88MtehPzLtg9+CQxGmt013ynyaA5NsD36y9CyaeOPM4JhSVEuOq/N7MMIEt1h4i
         T9uFdd/F4B4wdey4xtntuAK5xFicR9u3yQSVe0garmOH+CmAgdmNjcO1huHVEtjaSzdl
         sF5l3gCHqNflL83N2twfLEZ7kpLfra8qPRR050LJWxkrK/tMSiNed1IEOVDcgpgUH6hf
         gCVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=11pRZ9mnGxvCut8AZRSFu7CAwdpMoECmSIZ9/PK9hSs=;
        b=hCjiH7p/NSsr6rh8zPBm3a5MSZfZeNZzvKQ+89LfCB8u3nLbeKNxD2GX8wXMVzW3JO
         wrjS8SwDDCvlRKkfPKRGAod+oWTF2vM8/tqDvIrAiPtqwWcwTMZrWmWB1e+yZy3CtiOi
         4ehm3bn0GUvxSElUThZf2KcE2ZakR7ypRE3QkrpWUB1CrSfBicR/WmG3HmiYUFOJewG6
         wwqwRVf9VA8BUdGkYVyP/cqPAePsv2F4QOT/NoH1BufvQTcqko9S5vKB3JVvl4IghaAJ
         RVC+ZLOx6dLOpeXE1XEKEUG62Q5Upj/lHnaoLMWOt9mTfSz3HagqROPt0cufzRcExrDj
         tATA==
X-Gm-Message-State: AOAM530p1wSGTd2NQaYwzB1qARDhzS3/WKzopZg6jNfEob38/eeHqmED
	8PLDdZxYKZrjXoHZ40pggQE=
X-Google-Smtp-Source: ABdhPJx6/qiqRyoox6Qri5KWEKBso3eySEW1SZvAPQ9TToX6iWjibUNb6zFcG8RTQEYe7DIyplmYMA==
X-Received: by 2002:a63:3744:: with SMTP id g4mr7989173pgn.387.1616689061081;
        Thu, 25 Mar 2021 09:17:41 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
        by smtp.gmail.com with ESMTPSA id s15sm6416917pgs.28.2021.03.25.09.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:17:40 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: netdev@vger.kernel.org,
	davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v3 6/7] mld: add new workqueues for process mld events
Date: Thu, 25 Mar 2021 16:16:56 +0000
Message-Id: <20210325161657.10517-7-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210325161657.10517-1-ap420073@gmail.com>
References: <20210325161657.10517-1-ap420073@gmail.com>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616689063; a=rsa-sha256;
	cv=none;
	b=LmHLGmUIP9lAbSvPVRQFFSbXNU57YCNasq1A7DLVGJykop66sNrRAf0YtreSMZqiAoNNB9
	nljlVefUj1VV2f4edALduUtWqLWmraG9K872XHVEA/xEs/kUgdraxk/sS/OgQ9B1j9uscT
	zHNnJ7VOHi4InFc3EBqdYhgz810YpEM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=B4zltxK7;
	spf=pass (diktynna.open-mesh.org: domain of ap420073@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ap420073@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616689063;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:in-reply-to:in-reply-to:references:references:  dkim-signature;
	bh=11pRZ9mnGxvCut8AZRSFu7CAwdpMoECmSIZ9/PK9hSs=;
	b=Ls+rF4uyhHTb16dIYdcCLmEXuIblw7TuoNy0FNAkYt/QN6LEQaJC/JhGBKITt/BgGJt8kF
	Ork+WYayvMEIrieWkdbK0fwDP/UHmJSECK4bEJ35iuCzOYaZKr2tm2sLT1Dnyu215d8WjS
	5EfDTDlH6m5A4Bg+8PbvX63Q/LnR1j0=
X-MailFrom: ap420073@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 4LYUDIZOCILNBEQCABLSXQVQ2VRXZBN4
X-Message-ID-Hash: 4LYUDIZOCILNBEQCABLSXQVQ2VRXZBN4
X-Mailman-Approved-At: Thu, 25 Mar 2021 16:31:11 +0100
CC: ap420073@gmail.com, jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4LYUDIZOCILNBEQCABLSXQVQ2VRXZBN4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

When query/report packets are received, mld module processes them.
But they are processed under BH context so it couldn't use sleepable
functions. So, in order to switch context, the two workqueues are
added which processes query and report event.

In the struct inet6_dev, mc_{query | report}_queue are added so it
is per-interface queue.
And mc_{query | report}_work are workqueue structure.

When the query or report event is received, skb is queued to proper
queue and worker function is scheduled immediately.
Workqueues and queues are protected by spinlock, which is
mc_{query | report}_lock, and worker functions are protected by RTNL.

Suggested-by: Cong Wang <xiyou.wangcong@gmail.com>
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
v3:
 - Initial patch

 include/net/if_inet6.h |   9 +-
 include/net/mld.h      |   3 +
 net/ipv6/icmp.c        |   4 +-
 net/ipv6/mcast.c       | 280 +++++++++++++++++++++++++++++------------
 4 files changed, 210 insertions(+), 86 deletions(-)

diff --git a/include/net/if_inet6.h b/include/net/if_inet6.h
index 521158e05c18..882e0f88756f 100644
--- a/include/net/if_inet6.h
+++ b/include/net/if_inet6.h
@@ -125,7 +125,6 @@ struct ifmcaddr6 {
 	unsigned int		mca_flags;
 	int			mca_users;
 	refcount_t		mca_refcnt;
-	spinlock_t		mca_lock;
 	unsigned long		mca_cstamp;
 	unsigned long		mca_tstamp;
 	struct rcu_head		rcu;
@@ -183,6 +182,14 @@ struct inet6_dev {
 	struct delayed_work	mc_gq_work;	/* general query work */
 	struct delayed_work	mc_ifc_work;	/* interface change work */
 	struct delayed_work	mc_dad_work;	/* dad complete mc work */
+	struct delayed_work	mc_query_work;	/* mld query work */
+	struct delayed_work	mc_report_work;	/* mld report work */
+
+	struct sk_buff_head	mc_query_queue;		/* mld query queue */
+	struct sk_buff_head	mc_report_queue;	/* mld report queue */
+
+	spinlock_t		mc_query_lock;	/* mld query queue lock */
+	spinlock_t		mc_report_lock;	/* mld query report lock */
 
 	struct ifacaddr6	*ac_list;
 	rwlock_t		lock;
diff --git a/include/net/mld.h b/include/net/mld.h
index 496bddb59942..c07359808493 100644
--- a/include/net/mld.h
+++ b/include/net/mld.h
@@ -92,6 +92,9 @@ struct mld2_query {
 #define MLD_EXP_MIN_LIMIT	32768UL
 #define MLDV1_MRD_MAX_COMPAT	(MLD_EXP_MIN_LIMIT - 1)
 
+#define MLD_MAX_QUEUE		8
+#define MLD_MAX_SKBS		32
+
 static inline unsigned long mldv2_mrc(const struct mld2_query *mlh2)
 {
 	/* RFC3810, 5.1.3. Maximum Response Code */
diff --git a/net/ipv6/icmp.c b/net/ipv6/icmp.c
index fd1f896115c1..29d38d6b55fb 100644
--- a/net/ipv6/icmp.c
+++ b/net/ipv6/icmp.c
@@ -944,11 +944,11 @@ static int icmpv6_rcv(struct sk_buff *skb)
 
 	case ICMPV6_MGM_QUERY:
 		igmp6_event_query(skb);
-		break;
+		return 0;
 
 	case ICMPV6_MGM_REPORT:
 		igmp6_event_report(skb);
-		break;
+		return 0;
 
 	case ICMPV6_MGM_REDUCTION:
 	case ICMPV6_NI_QUERY:
diff --git a/net/ipv6/mcast.c b/net/ipv6/mcast.c
index 75541cf53153..3ad754388933 100644
--- a/net/ipv6/mcast.c
+++ b/net/ipv6/mcast.c
@@ -439,7 +439,7 @@ int ip6_mc_source(int add, int omode, struct sock *sk,
 
 		if (psl)
 			count += psl->sl_max;
-		newpsl = sock_kmalloc(sk, IP6_SFLSIZE(count), GFP_ATOMIC);
+		newpsl = sock_kmalloc(sk, IP6_SFLSIZE(count), GFP_KERNEL);
 		if (!newpsl) {
 			err = -ENOBUFS;
 			goto done;
@@ -517,7 +517,7 @@ int ip6_mc_msfilter(struct sock *sk, struct group_filter *gsf,
 	}
 	if (gsf->gf_numsrc) {
 		newpsl = sock_kmalloc(sk, IP6_SFLSIZE(gsf->gf_numsrc),
-							  GFP_ATOMIC);
+							  GFP_KERNEL);
 		if (!newpsl) {
 			err = -ENOBUFS;
 			goto done;
@@ -659,13 +659,11 @@ static void igmp6_group_added(struct ifmcaddr6 *mc)
 	    IPV6_ADDR_SCOPE_LINKLOCAL)
 		return;
 
-	spin_lock_bh(&mc->mca_lock);
 	if (!(mc->mca_flags&MAF_LOADED)) {
 		mc->mca_flags |= MAF_LOADED;
 		if (ndisc_mc_map(&mc->mca_addr, buf, dev, 0) == 0)
 			dev_mc_add(dev, buf);
 	}
-	spin_unlock_bh(&mc->mca_lock);
 
 	if (!(dev->flags & IFF_UP) || (mc->mca_flags & MAF_NOREPORT))
 		return;
@@ -695,24 +693,20 @@ static void igmp6_group_dropped(struct ifmcaddr6 *mc)
 	    IPV6_ADDR_SCOPE_LINKLOCAL)
 		return;
 
-	spin_lock_bh(&mc->mca_lock);
 	if (mc->mca_flags&MAF_LOADED) {
 		mc->mca_flags &= ~MAF_LOADED;
 		if (ndisc_mc_map(&mc->mca_addr, buf, dev, 0) == 0)
 			dev_mc_del(dev, buf);
 	}
 
-	spin_unlock_bh(&mc->mca_lock);
 	if (mc->mca_flags & MAF_NOREPORT)
 		return;
 
 	if (!mc->idev->dead)
 		igmp6_leave_group(mc);
 
-	spin_lock_bh(&mc->mca_lock);
 	if (cancel_delayed_work(&mc->mca_work))
 		refcount_dec(&mc->mca_refcnt);
-	spin_unlock_bh(&mc->mca_lock);
 }
 
 /*
@@ -728,12 +722,10 @@ static void mld_add_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 	 * for deleted items allows change reports to use common code with
 	 * non-deleted or query-response MCA's.
 	 */
-	pmc = kzalloc(sizeof(*pmc), GFP_ATOMIC);
+	pmc = kzalloc(sizeof(*pmc), GFP_KERNEL);
 	if (!pmc)
 		return;
 
-	spin_lock_bh(&im->mca_lock);
-	spin_lock_init(&pmc->mca_lock);
 	pmc->idev = im->idev;
 	in6_dev_hold(idev);
 	pmc->mca_addr = im->mca_addr;
@@ -752,7 +744,6 @@ static void mld_add_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 		for_each_psf_rtnl(pmc, psf)
 			psf->sf_crcount = pmc->mca_crcount;
 	}
-	spin_unlock_bh(&im->mca_lock);
 
 	rcu_assign_pointer(pmc->next, idev->mc_tomb);
 	rcu_assign_pointer(idev->mc_tomb, pmc);
@@ -777,7 +768,6 @@ static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 			rcu_assign_pointer(idev->mc_tomb, pmc->next);
 	}
 
-	spin_lock_bh(&im->mca_lock);
 	if (pmc) {
 		im->idev = pmc->idev;
 		if (im->mca_sfmode == MCAST_INCLUDE) {
@@ -799,7 +789,6 @@ static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 		ip6_mc_clear_src(pmc);
 		kfree_rcu(pmc, rcu);
 	}
-	spin_unlock_bh(&im->mca_lock);
 }
 
 static void mld_clear_delrec(struct inet6_dev *idev)
@@ -820,10 +809,8 @@ static void mld_clear_delrec(struct inet6_dev *idev)
 	for_each_mc_rtnl(idev, pmc) {
 		struct ip6_sf_list *psf, *psf_next;
 
-		spin_lock_bh(&pmc->mca_lock);
 		psf = rtnl_dereference(pmc->mca_tomb);
 		RCU_INIT_POINTER(pmc->mca_tomb, NULL);
-		spin_unlock_bh(&pmc->mca_lock);
 		for (; psf; psf = psf_next) {
 			psf_next = rtnl_dereference(psf->sf_next);
 			kfree_rcu(psf, rcu);
@@ -831,6 +818,26 @@ static void mld_clear_delrec(struct inet6_dev *idev)
 	}
 }
 
+static void mld_clear_query(struct inet6_dev *idev)
+{
+	struct sk_buff *skb;
+
+	spin_lock_bh(&idev->mc_query_lock);
+	while ((skb = __skb_dequeue(&idev->mc_query_queue)))
+		kfree_skb(skb);
+	spin_unlock_bh(&idev->mc_query_lock);
+}
+
+static void mld_clear_report(struct inet6_dev *idev)
+{
+	struct sk_buff *skb;
+
+	spin_lock_bh(&idev->mc_report_lock);
+	while ((skb = __skb_dequeue(&idev->mc_report_queue)))
+		kfree_skb(skb);
+	spin_unlock_bh(&idev->mc_report_lock);
+}
+
 static void mca_get(struct ifmcaddr6 *mc)
 {
 	refcount_inc(&mc->mca_refcnt);
@@ -850,7 +857,7 @@ static struct ifmcaddr6 *mca_alloc(struct inet6_dev *idev,
 {
 	struct ifmcaddr6 *mc;
 
-	mc = kzalloc(sizeof(*mc), GFP_ATOMIC);
+	mc = kzalloc(sizeof(*mc), GFP_KERNEL);
 	if (!mc)
 		return NULL;
 
@@ -862,7 +869,6 @@ static struct ifmcaddr6 *mca_alloc(struct inet6_dev *idev,
 	/* mca_stamp should be updated upon changes */
 	mc->mca_cstamp = mc->mca_tstamp = jiffies;
 	refcount_set(&mc->mca_refcnt, 1);
-	spin_lock_init(&mc->mca_lock);
 
 	mc->mca_sfmode = mode;
 	mc->mca_sfcount[mode] = 1;
@@ -995,7 +1001,6 @@ bool ipv6_chk_mcast_addr(struct net_device *dev, const struct in6_addr *group,
 			if (src_addr && !ipv6_addr_any(src_addr)) {
 				struct ip6_sf_list *psf;
 
-				spin_lock_bh(&mc->mca_lock);
 				for_each_psf_rcu(mc, psf) {
 					if (ipv6_addr_equal(&psf->sf_addr, src_addr))
 						break;
@@ -1006,7 +1011,6 @@ bool ipv6_chk_mcast_addr(struct net_device *dev, const struct in6_addr *group,
 						mc->mca_sfcount[MCAST_EXCLUDE];
 				else
 					rv = mc->mca_sfcount[MCAST_EXCLUDE] != 0;
-				spin_unlock_bh(&mc->mca_lock);
 			} else
 				rv = true; /* don't filter unspecified source */
 		}
@@ -1060,6 +1064,20 @@ static void mld_dad_stop_work(struct inet6_dev *idev)
 		__in6_dev_put(idev);
 }
 
+static void mld_query_stop_work(struct inet6_dev *idev)
+{
+	spin_lock_bh(&idev->mc_query_lock);
+	if (cancel_delayed_work(&idev->mc_query_work))
+		__in6_dev_put(idev);
+	spin_unlock_bh(&idev->mc_query_lock);
+}
+
+static void mld_report_stop_work(struct inet6_dev *idev)
+{
+	if (cancel_delayed_work_sync(&idev->mc_report_work))
+		__in6_dev_put(idev);
+}
+
 /*
  * IGMP handling (alias multicast ICMPv6 messages)
  */
@@ -1093,7 +1111,7 @@ static bool mld_xmarksources(struct ifmcaddr6 *pmc, int nsrcs,
 	int i, scount;
 
 	scount = 0;
-	for_each_psf_rcu(pmc, psf) {
+	for_each_psf_rtnl(pmc, psf) {
 		if (scount == nsrcs)
 			break;
 		for (i = 0; i < nsrcs; i++) {
@@ -1126,7 +1144,7 @@ static bool mld_marksources(struct ifmcaddr6 *pmc, int nsrcs,
 	/* mark INCLUDE-mode sources */
 
 	scount = 0;
-	for_each_psf_rcu(pmc, psf) {
+	for_each_psf_rtnl(pmc, psf) {
 		if (scount == nsrcs)
 			break;
 		for (i = 0; i < nsrcs; i++) {
@@ -1317,19 +1335,42 @@ static int mld_process_v2(struct inet6_dev *idev, struct mld2_query *mld,
 
 /* called with rcu_read_lock() */
 int igmp6_event_query(struct sk_buff *skb)
+{
+	struct inet6_dev *idev = __in6_dev_get(skb->dev);
+
+	if (!idev)
+		return -EINVAL;
+
+	if (idev->dead) {
+		kfree_skb(skb);
+		return -ENODEV;
+	}
+
+	spin_lock_bh(&idev->mc_query_lock);
+	if (skb_queue_len(&idev->mc_query_queue) < MLD_MAX_SKBS) {
+		__skb_queue_tail(&idev->mc_query_queue, skb);
+		if (!mod_delayed_work(mld_wq, &idev->mc_query_work, 0))
+			in6_dev_hold(idev);
+	}
+	spin_unlock_bh(&idev->mc_query_lock);
+
+	return 0;
+}
+
+static void __mld_query_work(struct sk_buff *skb)
 {
 	struct mld2_query *mlh2 = NULL;
-	struct ifmcaddr6 *ma;
 	const struct in6_addr *group;
 	unsigned long max_delay;
 	struct inet6_dev *idev;
+	struct ifmcaddr6 *ma;
 	struct mld_msg *mld;
 	int group_type;
 	int mark = 0;
 	int len, err;
 
 	if (!pskb_may_pull(skb, sizeof(struct in6_addr)))
-		return -EINVAL;
+		goto out;
 
 	/* compute payload length excluding extension headers */
 	len = ntohs(ipv6_hdr(skb)->payload_len) + sizeof(struct ipv6hdr);
@@ -1346,11 +1387,11 @@ int igmp6_event_query(struct sk_buff *skb)
 	    ipv6_hdr(skb)->hop_limit != 1 ||
 	    !(IP6CB(skb)->flags & IP6SKB_ROUTERALERT) ||
 	    IP6CB(skb)->ra != htons(IPV6_OPT_ROUTERALERT_MLD))
-		return -EINVAL;
+		goto out;
 
 	idev = __in6_dev_get(skb->dev);
 	if (!idev)
-		return 0;
+		goto out;
 
 	mld = (struct mld_msg *)icmp6_hdr(skb);
 	group = &mld->mld_mca;
@@ -1358,59 +1399,56 @@ int igmp6_event_query(struct sk_buff *skb)
 
 	if (group_type != IPV6_ADDR_ANY &&
 	    !(group_type&IPV6_ADDR_MULTICAST))
-		return -EINVAL;
+		goto out;
 
 	if (len < MLD_V1_QUERY_LEN) {
-		return -EINVAL;
+		goto out;
 	} else if (len == MLD_V1_QUERY_LEN || mld_in_v1_mode(idev)) {
 		err = mld_process_v1(idev, mld, &max_delay,
 				     len == MLD_V1_QUERY_LEN);
 		if (err < 0)
-			return err;
+			goto out;
 	} else if (len >= MLD_V2_QUERY_LEN_MIN) {
 		int srcs_offset = sizeof(struct mld2_query) -
 				  sizeof(struct icmp6hdr);
 
 		if (!pskb_may_pull(skb, srcs_offset))
-			return -EINVAL;
+			goto out;
 
 		mlh2 = (struct mld2_query *)skb_transport_header(skb);
 
 		err = mld_process_v2(idev, mlh2, &max_delay);
 		if (err < 0)
-			return err;
+			goto out;
 
 		if (group_type == IPV6_ADDR_ANY) { /* general query */
 			if (mlh2->mld2q_nsrcs)
-				return -EINVAL; /* no sources allowed */
+				goto out; /* no sources allowed */
 
 			mld_gq_start_work(idev);
-			return 0;
+			goto out;
 		}
 		/* mark sources to include, if group & source-specific */
 		if (mlh2->mld2q_nsrcs != 0) {
 			if (!pskb_may_pull(skb, srcs_offset +
 			    ntohs(mlh2->mld2q_nsrcs) * sizeof(struct in6_addr)))
-				return -EINVAL;
+				goto out;
 
 			mlh2 = (struct mld2_query *)skb_transport_header(skb);
 			mark = 1;
 		}
 	} else {
-		return -EINVAL;
+		goto out;
 	}
 
 	if (group_type == IPV6_ADDR_ANY) {
-		for_each_mc_rcu(idev, ma) {
-			spin_lock_bh(&ma->mca_lock);
+		for_each_mc_rtnl(idev, ma) {
 			igmp6_group_queried(ma, max_delay);
-			spin_unlock_bh(&ma->mca_lock);
 		}
 	} else {
-		for_each_mc_rcu(idev, ma) {
+		for_each_mc_rtnl(idev, ma) {
 			if (!ipv6_addr_equal(group, &ma->mca_addr))
 				continue;
-			spin_lock_bh(&ma->mca_lock);
 			if (ma->mca_flags & MAF_TIMER_RUNNING) {
 				/* gsquery <- gsquery && mark */
 				if (!mark)
@@ -1425,16 +1463,72 @@ int igmp6_event_query(struct sk_buff *skb)
 			if (!(ma->mca_flags & MAF_GSQUERY) ||
 			    mld_marksources(ma, ntohs(mlh2->mld2q_nsrcs), mlh2->mld2q_srcs))
 				igmp6_group_queried(ma, max_delay);
-			spin_unlock_bh(&ma->mca_lock);
 			break;
 		}
 	}
 
-	return 0;
+out:
+	consume_skb(skb);
+}
+
+static void mld_query_work(struct work_struct *work)
+{
+	struct inet6_dev *idev = container_of(to_delayed_work(work),
+					      struct inet6_dev,
+					      mc_query_work);
+	struct sk_buff_head q;
+	struct sk_buff *skb;
+	bool rework = false;
+	int cnt = 0;
+
+	skb_queue_head_init(&q);
+
+	spin_lock_bh(&idev->mc_query_lock);
+	while ((skb = __skb_dequeue(&idev->mc_query_queue))) {
+		__skb_queue_tail(&q, skb);
+
+		if (++cnt >= MLD_MAX_QUEUE) {
+			rework = true;
+			schedule_delayed_work(&idev->mc_query_work, 0);
+			break;
+		}
+	}
+	spin_unlock_bh(&idev->mc_query_lock);
+
+	rtnl_lock();
+	while ((skb = __skb_dequeue(&q)))
+		__mld_query_work(skb);
+	rtnl_unlock();
+
+	if (!rework)
+		in6_dev_put(idev);
 }
 
 /* called with rcu_read_lock() */
 int igmp6_event_report(struct sk_buff *skb)
+{
+	struct inet6_dev *idev = __in6_dev_get(skb->dev);
+
+	if (!idev)
+		return -EINVAL;
+
+	if (idev->dead) {
+		kfree_skb(skb);
+		return -ENODEV;
+	}
+
+	spin_lock_bh(&idev->mc_report_lock);
+	if (skb_queue_len(&idev->mc_report_queue) < MLD_MAX_SKBS) {
+		__skb_queue_tail(&idev->mc_report_queue, skb);
+		if (!mod_delayed_work(mld_wq, &idev->mc_report_work, 0))
+			in6_dev_hold(idev);
+	}
+	spin_unlock_bh(&idev->mc_report_lock);
+
+	return 0;
+}
+
+static void __mld_report_work(struct sk_buff *skb)
 {
 	struct ifmcaddr6 *ma;
 	struct inet6_dev *idev;
@@ -1443,15 +1537,15 @@ int igmp6_event_report(struct sk_buff *skb)
 
 	/* Our own report looped back. Ignore it. */
 	if (skb->pkt_type == PACKET_LOOPBACK)
-		return 0;
+		goto out;
 
 	/* send our report if the MC router may not have heard this report */
 	if (skb->pkt_type != PACKET_MULTICAST &&
 	    skb->pkt_type != PACKET_BROADCAST)
-		return 0;
+		goto out;
 
 	if (!pskb_may_pull(skb, sizeof(*mld) - sizeof(struct icmp6hdr)))
-		return -EINVAL;
+		goto out;
 
 	mld = (struct mld_msg *)icmp6_hdr(skb);
 
@@ -1459,28 +1553,60 @@ int igmp6_event_report(struct sk_buff *skb)
 	addr_type = ipv6_addr_type(&ipv6_hdr(skb)->saddr);
 	if (addr_type != IPV6_ADDR_ANY &&
 	    !(addr_type&IPV6_ADDR_LINKLOCAL))
-		return -EINVAL;
+		goto out;
 
 	idev = __in6_dev_get(skb->dev);
 	if (!idev)
-		return -ENODEV;
+		goto out;
 
 	/*
 	 *	Cancel the work for this group
 	 */
 
-	for_each_mc_rcu(idev, ma) {
+	for_each_mc_rtnl(idev, ma) {
 		if (ipv6_addr_equal(&ma->mca_addr, &mld->mld_mca)) {
-			spin_lock(&ma->mca_lock);
 			if (cancel_delayed_work(&ma->mca_work))
 				refcount_dec(&ma->mca_refcnt);
 			ma->mca_flags &= ~(MAF_LAST_REPORTER |
 					   MAF_TIMER_RUNNING);
-			spin_unlock(&ma->mca_lock);
 			break;
 		}
 	}
-	return 0;
+
+out:
+	consume_skb(skb);
+}
+
+static void mld_report_work(struct work_struct *work)
+{
+	struct inet6_dev *idev = container_of(to_delayed_work(work),
+					      struct inet6_dev,
+					      mc_report_work);
+	struct sk_buff_head q;
+	struct sk_buff *skb;
+	bool rework = false;
+	int cnt = 0;
+
+	skb_queue_head_init(&q);
+	spin_lock_bh(&idev->mc_report_lock);
+	while ((skb = __skb_dequeue(&idev->mc_report_queue))) {
+		__skb_queue_tail(&q, skb);
+
+		if (++cnt >= MLD_MAX_QUEUE) {
+			rework = true;
+			schedule_delayed_work(&idev->mc_report_work, 0);
+			break;
+		}
+	}
+	spin_unlock_bh(&idev->mc_report_lock);
+
+	rtnl_lock();
+	while ((skb = __skb_dequeue(&q)))
+		__mld_report_work(skb);
+	rtnl_unlock();
+
+	if (!rework)
+		in6_dev_put(idev);
 }
 
 static bool is_in(struct ifmcaddr6 *pmc, struct ip6_sf_list *psf, int type,
@@ -1847,22 +1973,18 @@ static void mld_send_report(struct inet6_dev *idev, struct ifmcaddr6 *pmc)
 		for_each_mc_rtnl(idev, pmc) {
 			if (pmc->mca_flags & MAF_NOREPORT)
 				continue;
-			spin_lock_bh(&pmc->mca_lock);
 			if (pmc->mca_sfcount[MCAST_EXCLUDE])
 				type = MLD2_MODE_IS_EXCLUDE;
 			else
 				type = MLD2_MODE_IS_INCLUDE;
 			skb = add_grec(skb, pmc, type, 0, 0, 0);
-			spin_unlock_bh(&pmc->mca_lock);
 		}
 	} else {
-		spin_lock_bh(&pmc->mca_lock);
 		if (pmc->mca_sfcount[MCAST_EXCLUDE])
 			type = MLD2_MODE_IS_EXCLUDE;
 		else
 			type = MLD2_MODE_IS_INCLUDE;
 		skb = add_grec(skb, pmc, type, 0, 0, 0);
-		spin_unlock_bh(&pmc->mca_lock);
 	}
 	if (skb)
 		mld_sendpack(skb);
@@ -1938,7 +2060,6 @@ static void mld_send_cr(struct inet6_dev *idev)
 
 	/* change recs */
 	for_each_mc_rtnl(idev, pmc) {
-		spin_lock_bh(&pmc->mca_lock);
 		if (pmc->mca_sfcount[MCAST_EXCLUDE]) {
 			type = MLD2_BLOCK_OLD_SOURCES;
 			dtype = MLD2_ALLOW_NEW_SOURCES;
@@ -1958,7 +2079,6 @@ static void mld_send_cr(struct inet6_dev *idev)
 			skb = add_grec(skb, pmc, type, 0, 0, 0);
 			pmc->mca_crcount--;
 		}
-		spin_unlock_bh(&pmc->mca_lock);
 	}
 	if (!skb)
 		return;
@@ -2072,13 +2192,11 @@ static void mld_send_initial_cr(struct inet6_dev *idev)
 
 	skb = NULL;
 	for_each_mc_rtnl(idev, pmc) {
-		spin_lock_bh(&pmc->mca_lock);
 		if (pmc->mca_sfcount[MCAST_EXCLUDE])
 			type = MLD2_CHANGE_TO_EXCLUDE;
 		else
 			type = MLD2_ALLOW_NEW_SOURCES;
 		skb = add_grec(skb, pmc, type, 0, 0, 1);
-		spin_unlock_bh(&pmc->mca_lock);
 	}
 	if (skb)
 		mld_sendpack(skb);
@@ -2104,13 +2222,13 @@ static void mld_dad_work(struct work_struct *work)
 
 	rtnl_lock();
 	mld_send_initial_cr(idev);
-	rtnl_unlock();
 	if (idev->mc_dad_count) {
 		idev->mc_dad_count--;
 		if (idev->mc_dad_count)
 			mld_dad_start_work(idev,
 					   unsolicited_report_interval(idev));
 	}
+	rtnl_unlock();
 	in6_dev_put(idev);
 }
 
@@ -2173,12 +2291,10 @@ static int ip6_mc_del_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 	}
 	if (!pmc)
 		return -ESRCH;
-	spin_lock_bh(&pmc->mca_lock);
 
 	sf_markstate(pmc);
 	if (!delta) {
 		if (!pmc->mca_sfcount[sfmode]) {
-			spin_unlock_bh(&pmc->mca_lock);
 			return -EINVAL;
 		}
 
@@ -2206,7 +2322,6 @@ static int ip6_mc_del_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 		mld_ifc_event(pmc->idev);
 	} else if (sf_setstate(pmc) || changerec)
 		mld_ifc_event(pmc->idev);
-	spin_unlock_bh(&pmc->mca_lock);
 	return err;
 }
 
@@ -2225,7 +2340,7 @@ static int ip6_mc_add1_src(struct ifmcaddr6 *pmc, int sfmode,
 		psf_prev = psf;
 	}
 	if (!psf) {
-		psf = kzalloc(sizeof(*psf), GFP_ATOMIC);
+		psf = kzalloc(sizeof(*psf), GFP_KERNEL);
 		if (!psf)
 			return -ENOBUFS;
 
@@ -2304,7 +2419,7 @@ static int sf_setstate(struct ifmcaddr6 *pmc)
 				    &psf->sf_addr))
 					break;
 			if (!dpsf) {
-				dpsf = kmalloc(sizeof(*dpsf), GFP_ATOMIC);
+				dpsf = kmalloc(sizeof(*dpsf), GFP_KERNEL);
 				if (!dpsf)
 					continue;
 				*dpsf = *psf;
@@ -2339,7 +2454,6 @@ static int ip6_mc_add_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 	}
 	if (!pmc)
 		return -ESRCH;
-	spin_lock_bh(&pmc->mca_lock);
 
 	sf_markstate(pmc);
 	isexclude = pmc->mca_sfmode == MCAST_EXCLUDE;
@@ -2376,7 +2490,6 @@ static int ip6_mc_add_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 	} else if (sf_setstate(pmc)) {
 		mld_ifc_event(idev);
 	}
-	spin_unlock_bh(&pmc->mca_lock);
 	return err;
 }
 
@@ -2415,7 +2528,6 @@ static void igmp6_join_group(struct ifmcaddr6 *ma)
 
 	delay = prandom_u32() % unsolicited_report_interval(ma->idev);
 
-	spin_lock_bh(&ma->mca_lock);
 	if (cancel_delayed_work(&ma->mca_work)) {
 		refcount_dec(&ma->mca_refcnt);
 		delay = ma->mca_work.timer.expires - jiffies;
@@ -2424,7 +2536,6 @@ static void igmp6_join_group(struct ifmcaddr6 *ma)
 	if (!mod_delayed_work(mld_wq, &ma->mca_work, delay))
 		refcount_inc(&ma->mca_refcnt);
 	ma->mca_flags |= MAF_TIMER_RUNNING | MAF_LAST_REPORTER;
-	spin_unlock_bh(&ma->mca_lock);
 }
 
 static int ip6_mc_leave_src(struct sock *sk, struct ipv6_mc_socklist *iml,
@@ -2469,9 +2580,8 @@ static void mld_gq_work(struct work_struct *work)
 
 	rtnl_lock();
 	mld_send_report(idev, NULL);
-	rtnl_unlock();
-
 	idev->mc_gq_running = 0;
+	rtnl_unlock();
 
 	in6_dev_put(idev);
 }
@@ -2484,7 +2594,6 @@ static void mld_ifc_work(struct work_struct *work)
 
 	rtnl_lock();
 	mld_send_cr(idev);
-	rtnl_unlock();
 
 	if (idev->mc_ifc_count) {
 		idev->mc_ifc_count--;
@@ -2492,6 +2601,7 @@ static void mld_ifc_work(struct work_struct *work)
 			mld_ifc_start_work(idev,
 					   unsolicited_report_interval(idev));
 	}
+	rtnl_unlock();
 	in6_dev_put(idev);
 }
 
@@ -2514,12 +2624,10 @@ static void mld_mca_work(struct work_struct *work)
 		igmp6_send(&ma->mca_addr, ma->idev->dev, ICMPV6_MGM_REPORT);
 	else
 		mld_send_report(ma->idev, ma);
-	rtnl_unlock();
-
-	spin_lock_bh(&ma->mca_lock);
 	ma->mca_flags |=  MAF_LAST_REPORTER;
 	ma->mca_flags &= ~MAF_TIMER_RUNNING;
-	spin_unlock_bh(&ma->mca_lock);
+	rtnl_unlock();
+
 	ma_put(ma);
 }
 
@@ -2553,6 +2661,9 @@ void ipv6_mc_down(struct inet6_dev *idev)
 	/* Should stop work after group drop. or we will
 	 * start work again in mld_ifc_event()
 	 */
+	synchronize_net();
+	mld_query_stop_work(idev);
+	mld_report_stop_work(idev);
 	mld_ifc_stop_work(idev);
 	mld_gq_stop_work(idev);
 	mld_dad_stop_work(idev);
@@ -2592,6 +2703,12 @@ void ipv6_mc_init_dev(struct inet6_dev *idev)
 	idev->mc_ifc_count = 0;
 	INIT_DELAYED_WORK(&idev->mc_ifc_work, mld_ifc_work);
 	INIT_DELAYED_WORK(&idev->mc_dad_work, mld_dad_work);
+	INIT_DELAYED_WORK(&idev->mc_query_work, mld_query_work);
+	INIT_DELAYED_WORK(&idev->mc_report_work, mld_report_work);
+	skb_queue_head_init(&idev->mc_query_queue);
+	skb_queue_head_init(&idev->mc_report_queue);
+	spin_lock_init(&idev->mc_query_lock);
+	spin_lock_init(&idev->mc_report_lock);
 	ipv6_mc_reset(idev);
 }
 
@@ -2606,6 +2723,8 @@ void ipv6_mc_destroy_dev(struct inet6_dev *idev)
 	/* Deactivate works */
 	ipv6_mc_down(idev);
 	mld_clear_delrec(idev);
+	mld_clear_query(idev);
+	mld_clear_report(idev);
 
 	/* Delete all-nodes address. */
 	/* We cannot call ipv6_dev_mc_dec() directly, our caller in
@@ -2795,14 +2914,12 @@ static inline struct ip6_sf_list *igmp6_mcf_get_first(struct seq_file *seq)
 
 		im = rcu_dereference(idev->mc_list);
 		if (likely(im)) {
-			spin_lock_bh(&im->mca_lock);
 			psf = rcu_dereference(im->mca_sources);
 			if (likely(psf)) {
 				state->im = im;
 				state->idev = idev;
 				break;
 			}
-			spin_unlock_bh(&im->mca_lock);
 		}
 	}
 	return psf;
@@ -2814,7 +2931,6 @@ static struct ip6_sf_list *igmp6_mcf_get_next(struct seq_file *seq, struct ip6_s
 
 	psf = rcu_dereference(psf->sf_next);
 	while (!psf) {
-		spin_unlock_bh(&state->im->mca_lock);
 		state->im = rcu_dereference(state->im->next);
 		while (!state->im) {
 			state->dev = next_net_device_rcu(state->dev);
@@ -2829,7 +2945,6 @@ static struct ip6_sf_list *igmp6_mcf_get_next(struct seq_file *seq, struct ip6_s
 		}
 		if (!state->im)
 			break;
-		spin_lock_bh(&state->im->mca_lock);
 		psf = rcu_dereference(state->im->mca_sources);
 	}
 out:
@@ -2868,10 +2983,8 @@ static void igmp6_mcf_seq_stop(struct seq_file *seq, void *v)
 {
 	struct igmp6_mcf_iter_state *state = igmp6_mcf_seq_private(seq);
 
-	if (likely(state->im)) {
-		spin_unlock_bh(&state->im->mca_lock);
+	if (likely(state->im))
 		state->im = NULL;
-	}
 	if (likely(state->idev))
 		state->idev = NULL;
 
@@ -2955,6 +3068,7 @@ static int __net_init igmp6_net_init(struct net *net)
 	}
 
 	inet6_sk(net->ipv6.igmp_sk)->hop_limit = 1;
+	net->ipv6.igmp_sk->sk_allocation = GFP_KERNEL;
 
 	err = inet_ctl_sock_create(&net->ipv6.mc_autojoin_sk, PF_INET6,
 				   SOCK_RAW, IPPROTO_ICMPV6, net);
-- 
2.17.1
