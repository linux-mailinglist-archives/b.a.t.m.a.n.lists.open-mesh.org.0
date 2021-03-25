Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1193496CF
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Mar 2021 17:31:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8A86E83DFF;
	Thu, 25 Mar 2021 17:31:17 +0100 (CET)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6C9AC81DA8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 17:17:18 +0100 (CET)
Received: by mail-pf1-x433.google.com with SMTP id m11so2542221pfc.11
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 09:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1YKOwVF39ZTTzbyAo8u7usvbT5+xzO3yXDKEUkzGlsw=;
        b=DUIW+xSxF357iMWcXG4I9XqUnAJx7Z5gkVMuACRpAv2PjD3DHTIgA6Z3I+5AAX97kr
         P1CE9gYVwzRaJFvPy9rtG4s8GgoYqkEvepH2EH/4780iU8L6R4NzmIG+fRwPYV8eZcmA
         zKtgBS7IY2IaHtINd4L4pRr6FWHN7fJ3gllTIzlSLIeJqdmCh0LC4qLhVrqq3V9zdxIr
         U14aTuBhM/mJ6OrsdX492eit4/ej2iK7Qn13g2gsfdh+lCt6LgIns9qdWhLWnG8uZz51
         oQZvyOtsMctjcSb1eRTle+npnGN06YrNCDuUyiZtwFJ1RPAJROtZzVjYLsw0Os+bDtUz
         s1Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1YKOwVF39ZTTzbyAo8u7usvbT5+xzO3yXDKEUkzGlsw=;
        b=jhycjkWkvlZ17BwKZ4WLd2DNk9Id0wsNCxRrUfFd161urIKKXrnte6myfp1fZhvuEz
         TxuxadbFMk6FYTnCSWfkQKPy5u70RTxswVI6pHofrizVBUCIOJ2kSMexc9q6yT3Xr6p/
         7I+s+ujuTnEsyiCNFzqOvGSS+v4xKgarT0SBOdS2/jOgg//Sxg/djwi1VX+tkX1rdGEl
         rmnR6gbm0PsohslKc9iPhGvQTC36EPvmO2XDmDXIGHEo0TPTk1RDowh03Hck5tIWfh9y
         Z1uoyA4qbdxW77QBwkB1AWQFHi2p1MI/D+ethd/EPRGmzW0n/oO2fYpMg0Iza/K8L8pd
         6FNA==
X-Gm-Message-State: AOAM531fPiQdgVGBL68B14CVQaChK7XLqppjMx+GmFwT7TNVM9XvewlM
	87kUD3QUjIjupjEQFzPtosc=
X-Google-Smtp-Source: ABdhPJzsPKqDE1OdRHMR/aXl0mVEn7qMk3C8bKuW/OmihEnDN6hvmhhrBOcbyT6kYJz1Hr+Qd/BUUQ==
X-Received: by 2002:aa7:96aa:0:b029:222:4029:7408 with SMTP id g10-20020aa796aa0000b029022240297408mr2027206pfk.74.1616689036758;
        Thu, 25 Mar 2021 09:17:16 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
        by smtp.gmail.com with ESMTPSA id s15sm6416917pgs.28.2021.03.25.09.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:17:16 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: netdev@vger.kernel.org,
	davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v3 1/7] mld: convert from timer to delayed work
Date: Thu, 25 Mar 2021 16:16:51 +0000
Message-Id: <20210325161657.10517-2-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210325161657.10517-1-ap420073@gmail.com>
References: <20210325161657.10517-1-ap420073@gmail.com>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616689038; a=rsa-sha256;
	cv=none;
	b=WCqywi3oIjKQnfme0+Y3CKckbciwW9ly2cTExY3b6uAFPq5tZKwKDt5hyMEpQrjHIr9901
	kWAj09h/VvZ4pJBmaSqzheHF/SHw1ztX3vr3HLaMKbW9RHL5bHP43Heubyz0wVzxrKzsDq
	39118hTTzLXjIu7dRmfYZigjSE05/BI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=DUIW+xSx;
	spf=pass (diktynna.open-mesh.org: domain of ap420073@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ap420073@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616689038;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:in-reply-to:in-reply-to:references:references:  dkim-signature;
	bh=1YKOwVF39ZTTzbyAo8u7usvbT5+xzO3yXDKEUkzGlsw=;
	b=iYJAYBvxF8clUupAwxz1MjsOBhpeNDYXYWpta4OjRCbTef2s130Mwb5zDrEMUDiS32oINz
	oqnd5tIWEx0Dd2Pbm4aSjDCzSahJA3vYg0PNmusdlSpWoL+WEw39RZLwL9bUKob4O2qEAS
	1MjeluBQialE+Fmjsvpb8A5Z5cVJf3A=
X-MailFrom: ap420073@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: KYSMRXJU5XXD3DZFQCDKLNTUEUHJXIT2
X-Message-ID-Hash: KYSMRXJU5XXD3DZFQCDKLNTUEUHJXIT2
X-Mailman-Approved-At: Thu, 25 Mar 2021 16:31:11 +0100
CC: ap420073@gmail.com, jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KYSMRXJU5XXD3DZFQCDKLNTUEUHJXIT2/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

mcast.c has several timers for delaying works.
Timer's expire handler is working under atomic context so it can't use
sleepable things such as GFP_KERNEL, mutex, etc.
In order to use sleepable APIs, it converts from timers to delayed work.
But there are some critical sections, which is used by both process
and BH context. So that it still uses spin_lock_bh() and rwlock.

Suggested-by: Cong Wang <xiyou.wangcong@gmail.com>
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
v2 -> v3:
 - Do not use msecs_to_jiffies()
 - Do not add unnecessary rtnl_lock and rtnl_unlock
v1 -> v2:
 - Separated from previous big one patch.

 include/net/if_inet6.h |   8 +--
 net/ipv6/mcast.c       | 140 +++++++++++++++++++++++------------------
 2 files changed, 83 insertions(+), 65 deletions(-)

diff --git a/include/net/if_inet6.h b/include/net/if_inet6.h
index 8bf5906073bc..af5244c9ca5c 100644
--- a/include/net/if_inet6.h
+++ b/include/net/if_inet6.h
@@ -120,7 +120,7 @@ struct ifmcaddr6 {
 	unsigned int		mca_sfmode;
 	unsigned char		mca_crcount;
 	unsigned long		mca_sfcount[2];
-	struct timer_list	mca_timer;
+	struct delayed_work	mca_work;
 	unsigned int		mca_flags;
 	int			mca_users;
 	refcount_t		mca_refcnt;
@@ -179,9 +179,9 @@ struct inet6_dev {
 	unsigned long		mc_qri;		/* Query Response Interval */
 	unsigned long		mc_maxdelay;
 
-	struct timer_list	mc_gq_timer;	/* general query timer */
-	struct timer_list	mc_ifc_timer;	/* interface change timer */
-	struct timer_list	mc_dad_timer;	/* dad complete mc timer */
+	struct delayed_work	mc_gq_work;	/* general query work */
+	struct delayed_work	mc_ifc_work;	/* interface change work */
+	struct delayed_work	mc_dad_work;	/* dad complete mc work */
 
 	struct ifacaddr6	*ac_list;
 	rwlock_t		lock;
diff --git a/net/ipv6/mcast.c b/net/ipv6/mcast.c
index 6c8604390266..692a6dec8959 100644
--- a/net/ipv6/mcast.c
+++ b/net/ipv6/mcast.c
@@ -29,7 +29,6 @@
 #include <linux/socket.h>
 #include <linux/sockios.h>
 #include <linux/jiffies.h>
-#include <linux/times.h>
 #include <linux/net.h>
 #include <linux/in.h>
 #include <linux/in6.h>
@@ -42,6 +41,7 @@
 #include <linux/slab.h>
 #include <linux/pkt_sched.h>
 #include <net/mld.h>
+#include <linux/workqueue.h>
 
 #include <linux/netfilter.h>
 #include <linux/netfilter_ipv6.h>
@@ -67,14 +67,13 @@ static int __mld2_query_bugs[] __attribute__((__unused__)) = {
 	BUILD_BUG_ON_ZERO(offsetof(struct mld2_grec, grec_mca) % 4)
 };
 
+static struct workqueue_struct *mld_wq;
 static struct in6_addr mld2_all_mcr = MLD2_ALL_MCR_INIT;
 
 static void igmp6_join_group(struct ifmcaddr6 *ma);
 static void igmp6_leave_group(struct ifmcaddr6 *ma);
-static void igmp6_timer_handler(struct timer_list *t);
+static void mld_mca_work(struct work_struct *work);
 
-static void mld_gq_timer_expire(struct timer_list *t);
-static void mld_ifc_timer_expire(struct timer_list *t);
 static void mld_ifc_event(struct inet6_dev *idev);
 static void mld_add_delrec(struct inet6_dev *idev, struct ifmcaddr6 *pmc);
 static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *pmc);
@@ -713,7 +712,7 @@ static void igmp6_group_dropped(struct ifmcaddr6 *mc)
 		igmp6_leave_group(mc);
 
 	spin_lock_bh(&mc->mca_lock);
-	if (del_timer(&mc->mca_timer))
+	if (cancel_delayed_work(&mc->mca_work))
 		refcount_dec(&mc->mca_refcnt);
 	spin_unlock_bh(&mc->mca_lock);
 }
@@ -854,7 +853,7 @@ static struct ifmcaddr6 *mca_alloc(struct inet6_dev *idev,
 	if (!mc)
 		return NULL;
 
-	timer_setup(&mc->mca_timer, igmp6_timer_handler, 0);
+	INIT_DELAYED_WORK(&mc->mca_work, mld_mca_work);
 
 	mc->mca_addr = *addr;
 	mc->idev = idev; /* reference taken by caller */
@@ -1027,48 +1026,48 @@ bool ipv6_chk_mcast_addr(struct net_device *dev, const struct in6_addr *group,
 	return rv;
 }
 
-static void mld_gq_start_timer(struct inet6_dev *idev)
+static void mld_gq_start_work(struct inet6_dev *idev)
 {
 	unsigned long tv = prandom_u32() % idev->mc_maxdelay;
 
 	idev->mc_gq_running = 1;
-	if (!mod_timer(&idev->mc_gq_timer, jiffies+tv+2))
+	if (!mod_delayed_work(mld_wq, &idev->mc_gq_work, tv + 2))
 		in6_dev_hold(idev);
 }
 
-static void mld_gq_stop_timer(struct inet6_dev *idev)
+static void mld_gq_stop_work(struct inet6_dev *idev)
 {
 	idev->mc_gq_running = 0;
-	if (del_timer(&idev->mc_gq_timer))
+	if (cancel_delayed_work(&idev->mc_gq_work))
 		__in6_dev_put(idev);
 }
 
-static void mld_ifc_start_timer(struct inet6_dev *idev, unsigned long delay)
+static void mld_ifc_start_work(struct inet6_dev *idev, unsigned long delay)
 {
 	unsigned long tv = prandom_u32() % delay;
 
-	if (!mod_timer(&idev->mc_ifc_timer, jiffies+tv+2))
+	if (!mod_delayed_work(mld_wq, &idev->mc_ifc_work, tv + 2))
 		in6_dev_hold(idev);
 }
 
-static void mld_ifc_stop_timer(struct inet6_dev *idev)
+static void mld_ifc_stop_work(struct inet6_dev *idev)
 {
 	idev->mc_ifc_count = 0;
-	if (del_timer(&idev->mc_ifc_timer))
+	if (cancel_delayed_work(&idev->mc_ifc_work))
 		__in6_dev_put(idev);
 }
 
-static void mld_dad_start_timer(struct inet6_dev *idev, unsigned long delay)
+static void mld_dad_start_work(struct inet6_dev *idev, unsigned long delay)
 {
 	unsigned long tv = prandom_u32() % delay;
 
-	if (!mod_timer(&idev->mc_dad_timer, jiffies+tv+2))
+	if (!mod_delayed_work(mld_wq, &idev->mc_dad_work, tv + 2))
 		in6_dev_hold(idev);
 }
 
-static void mld_dad_stop_timer(struct inet6_dev *idev)
+static void mld_dad_stop_work(struct inet6_dev *idev)
 {
-	if (del_timer(&idev->mc_dad_timer))
+	if (cancel_delayed_work(&idev->mc_dad_work))
 		__in6_dev_put(idev);
 }
 
@@ -1080,21 +1079,20 @@ static void igmp6_group_queried(struct ifmcaddr6 *ma, unsigned long resptime)
 {
 	unsigned long delay = resptime;
 
-	/* Do not start timer for these addresses */
+	/* Do not start work for these addresses */
 	if (ipv6_addr_is_ll_all_nodes(&ma->mca_addr) ||
 	    IPV6_ADDR_MC_SCOPE(&ma->mca_addr) < IPV6_ADDR_SCOPE_LINKLOCAL)
 		return;
 
-	if (del_timer(&ma->mca_timer)) {
+	if (cancel_delayed_work(&ma->mca_work)) {
 		refcount_dec(&ma->mca_refcnt);
-		delay = ma->mca_timer.expires - jiffies;
+		delay = ma->mca_work.timer.expires - jiffies;
 	}
 
 	if (delay >= resptime)
 		delay = prandom_u32() % resptime;
 
-	ma->mca_timer.expires = jiffies + delay;
-	if (!mod_timer(&ma->mca_timer, jiffies + delay))
+	if (!mod_delayed_work(mld_wq, &ma->mca_work, delay))
 		refcount_inc(&ma->mca_refcnt);
 	ma->mca_flags |= MAF_TIMER_RUNNING;
 }
@@ -1305,10 +1303,10 @@ static int mld_process_v1(struct inet6_dev *idev, struct mld_msg *mld,
 	if (v1_query)
 		mld_set_v1_mode(idev);
 
-	/* cancel MLDv2 report timer */
-	mld_gq_stop_timer(idev);
-	/* cancel the interface change timer */
-	mld_ifc_stop_timer(idev);
+	/* cancel MLDv2 report work */
+	mld_gq_stop_work(idev);
+	/* cancel the interface change work */
+	mld_ifc_stop_work(idev);
 	/* clear deleted report items */
 	mld_clear_delrec(idev);
 
@@ -1398,7 +1396,7 @@ int igmp6_event_query(struct sk_buff *skb)
 			if (mlh2->mld2q_nsrcs)
 				return -EINVAL; /* no sources allowed */
 
-			mld_gq_start_timer(idev);
+			mld_gq_start_work(idev);
 			return 0;
 		}
 		/* mark sources to include, if group & source-specific */
@@ -1482,14 +1480,14 @@ int igmp6_event_report(struct sk_buff *skb)
 		return -ENODEV;
 
 	/*
-	 *	Cancel the timer for this group
+	 *	Cancel the work for this group
 	 */
 
 	read_lock_bh(&idev->lock);
 	for (ma = idev->mc_list; ma; ma = ma->next) {
 		if (ipv6_addr_equal(&ma->mca_addr, &mld->mld_mca)) {
 			spin_lock(&ma->mca_lock);
-			if (del_timer(&ma->mca_timer))
+			if (cancel_delayed_work(&ma->mca_work))
 				refcount_dec(&ma->mca_refcnt);
 			ma->mca_flags &= ~(MAF_LAST_REPORTER|MAF_TIMER_RUNNING);
 			spin_unlock(&ma->mca_lock);
@@ -2103,21 +2101,23 @@ void ipv6_mc_dad_complete(struct inet6_dev *idev)
 		mld_send_initial_cr(idev);
 		idev->mc_dad_count--;
 		if (idev->mc_dad_count)
-			mld_dad_start_timer(idev,
-					    unsolicited_report_interval(idev));
+			mld_dad_start_work(idev,
+					   unsolicited_report_interval(idev));
 	}
 }
 
-static void mld_dad_timer_expire(struct timer_list *t)
+static void mld_dad_work(struct work_struct *work)
 {
-	struct inet6_dev *idev = from_timer(idev, t, mc_dad_timer);
+	struct inet6_dev *idev = container_of(to_delayed_work(work),
+					      struct inet6_dev,
+					      mc_dad_work);
 
 	mld_send_initial_cr(idev);
 	if (idev->mc_dad_count) {
 		idev->mc_dad_count--;
 		if (idev->mc_dad_count)
-			mld_dad_start_timer(idev,
-					    unsolicited_report_interval(idev));
+			mld_dad_start_work(idev,
+					   unsolicited_report_interval(idev));
 	}
 	in6_dev_put(idev);
 }
@@ -2416,12 +2416,12 @@ static void igmp6_join_group(struct ifmcaddr6 *ma)
 	delay = prandom_u32() % unsolicited_report_interval(ma->idev);
 
 	spin_lock_bh(&ma->mca_lock);
-	if (del_timer(&ma->mca_timer)) {
+	if (cancel_delayed_work(&ma->mca_work)) {
 		refcount_dec(&ma->mca_refcnt);
-		delay = ma->mca_timer.expires - jiffies;
+		delay = ma->mca_work.timer.expires - jiffies;
 	}
 
-	if (!mod_timer(&ma->mca_timer, jiffies + delay))
+	if (!mod_delayed_work(mld_wq, &ma->mca_work, delay))
 		refcount_inc(&ma->mca_refcnt);
 	ma->mca_flags |= MAF_TIMER_RUNNING | MAF_LAST_REPORTER;
 	spin_unlock_bh(&ma->mca_lock);
@@ -2458,25 +2458,29 @@ static void igmp6_leave_group(struct ifmcaddr6 *ma)
 	}
 }
 
-static void mld_gq_timer_expire(struct timer_list *t)
+static void mld_gq_work(struct work_struct *work)
 {
-	struct inet6_dev *idev = from_timer(idev, t, mc_gq_timer);
+	struct inet6_dev *idev = container_of(to_delayed_work(work),
+					      struct inet6_dev,
+					      mc_gq_work);
 
 	idev->mc_gq_running = 0;
 	mld_send_report(idev, NULL);
 	in6_dev_put(idev);
 }
 
-static void mld_ifc_timer_expire(struct timer_list *t)
+static void mld_ifc_work(struct work_struct *work)
 {
-	struct inet6_dev *idev = from_timer(idev, t, mc_ifc_timer);
+	struct inet6_dev *idev = container_of(to_delayed_work(work),
+					      struct inet6_dev,
+					      mc_ifc_work);
 
 	mld_send_cr(idev);
 	if (idev->mc_ifc_count) {
 		idev->mc_ifc_count--;
 		if (idev->mc_ifc_count)
-			mld_ifc_start_timer(idev,
-					    unsolicited_report_interval(idev));
+			mld_ifc_start_work(idev,
+					   unsolicited_report_interval(idev));
 	}
 	in6_dev_put(idev);
 }
@@ -2486,22 +2490,23 @@ static void mld_ifc_event(struct inet6_dev *idev)
 	if (mld_in_v1_mode(idev))
 		return;
 	idev->mc_ifc_count = idev->mc_qrv;
-	mld_ifc_start_timer(idev, 1);
+	mld_ifc_start_work(idev, 1);
 }
 
-static void igmp6_timer_handler(struct timer_list *t)
+static void mld_mca_work(struct work_struct *work)
 {
-	struct ifmcaddr6 *ma = from_timer(ma, t, mca_timer);
+	struct ifmcaddr6 *ma = container_of(to_delayed_work(work),
+					    struct ifmcaddr6, mca_work);
 
 	if (mld_in_v1_mode(ma->idev))
 		igmp6_send(&ma->mca_addr, ma->idev->dev, ICMPV6_MGM_REPORT);
 	else
 		mld_send_report(ma->idev, ma);
 
-	spin_lock(&ma->mca_lock);
+	spin_lock_bh(&ma->mca_lock);
 	ma->mca_flags |=  MAF_LAST_REPORTER;
 	ma->mca_flags &= ~MAF_TIMER_RUNNING;
-	spin_unlock(&ma->mca_lock);
+	spin_unlock_bh(&ma->mca_lock);
 	ma_put(ma);
 }
 
@@ -2537,12 +2542,12 @@ void ipv6_mc_down(struct inet6_dev *idev)
 	for (i = idev->mc_list; i; i = i->next)
 		igmp6_group_dropped(i);
 
-	/* Should stop timer after group drop. or we will
-	 * start timer again in mld_ifc_event()
+	/* Should stop work after group drop. or we will
+	 * start work again in mld_ifc_event()
 	 */
-	mld_ifc_stop_timer(idev);
-	mld_gq_stop_timer(idev);
-	mld_dad_stop_timer(idev);
+	mld_ifc_stop_work(idev);
+	mld_gq_stop_work(idev);
+	mld_dad_stop_work(idev);
 	read_unlock_bh(&idev->lock);
 }
 
@@ -2579,11 +2584,11 @@ void ipv6_mc_init_dev(struct inet6_dev *idev)
 	write_lock_bh(&idev->lock);
 	spin_lock_init(&idev->mc_lock);
 	idev->mc_gq_running = 0;
-	timer_setup(&idev->mc_gq_timer, mld_gq_timer_expire, 0);
+	INIT_DELAYED_WORK(&idev->mc_gq_work, mld_gq_work);
 	idev->mc_tomb = NULL;
 	idev->mc_ifc_count = 0;
-	timer_setup(&idev->mc_ifc_timer, mld_ifc_timer_expire, 0);
-	timer_setup(&idev->mc_dad_timer, mld_dad_timer_expire, 0);
+	INIT_DELAYED_WORK(&idev->mc_ifc_work, mld_ifc_work);
+	INIT_DELAYED_WORK(&idev->mc_dad_work, mld_dad_work);
 	ipv6_mc_reset(idev);
 	write_unlock_bh(&idev->lock);
 }
@@ -2596,7 +2601,7 @@ void ipv6_mc_destroy_dev(struct inet6_dev *idev)
 {
 	struct ifmcaddr6 *i;
 
-	/* Deactivate timers */
+	/* Deactivate works */
 	ipv6_mc_down(idev);
 	mld_clear_delrec(idev);
 
@@ -2763,7 +2768,7 @@ static int igmp6_mc_seq_show(struct seq_file *seq, void *v)
 		   &im->mca_addr,
 		   im->mca_users, im->mca_flags,
 		   (im->mca_flags&MAF_TIMER_RUNNING) ?
-		   jiffies_to_clock_t(im->mca_timer.expires-jiffies) : 0);
+		   jiffies_to_clock_t(im->mca_work.timer.expires - jiffies) : 0);
 	return 0;
 }
 
@@ -3002,7 +3007,19 @@ static struct pernet_operations igmp6_net_ops = {
 
 int __init igmp6_init(void)
 {
-	return register_pernet_subsys(&igmp6_net_ops);
+	int err;
+
+	err = register_pernet_subsys(&igmp6_net_ops);
+	if (err)
+		return err;
+
+	mld_wq = create_workqueue("mld");
+	if (!mld_wq) {
+		unregister_pernet_subsys(&igmp6_net_ops);
+		return -ENOMEM;
+	}
+
+	return err;
 }
 
 int __init igmp6_late_init(void)
@@ -3013,6 +3030,7 @@ int __init igmp6_late_init(void)
 void igmp6_cleanup(void)
 {
 	unregister_pernet_subsys(&igmp6_net_ops);
+	destroy_workqueue(mld_wq);
 }
 
 void igmp6_late_cleanup(void)
-- 
2.17.1
