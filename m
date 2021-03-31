Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7162B3496DA
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Mar 2021 17:32:01 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 49CDF83DF6;
	Thu, 25 Mar 2021 17:31:59 +0100 (CET)
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D6A5883DC0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 17:17:47 +0100 (CET)
Received: by mail-pj1-x102e.google.com with SMTP id a22-20020a17090aa516b02900c1215e9b33so2913269pjq.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 09:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Rt8EZ4CLv98yPevsSeAo1rBzT1dZwZeYiD0Ugsbxs88=;
        b=qAVGSbUYfoGx1xv20OxW0DoKTiD+5gaN6K3LVBDYW2fVAX9aHDah0/McUVC5kikC7z
         CPI8MoDgn6m++c+hcphN7xvnjENjHHpJuQj4E2FPbS9ViawyeKTcnpz+AwFWOHZ6uian
         Lny8oaOxCBQCimm0KgcWL1um+Cz2Howz6F52cJ1WmpLBfplPF48lGTCw/ZcF4ZdH11CH
         EduOG23pOmA8wPPZZRQluSqQL7JpxdpVLfP/krz3YMANZLKIg6Une62MWP8KEVg7dDNS
         bU2u1V9qRdUlUUGZgYk2DmNoW5Chs9AnNj2UJO7ufVY+Plg6Mz5xl9EcCM+/KAXrIACH
         4fsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Rt8EZ4CLv98yPevsSeAo1rBzT1dZwZeYiD0Ugsbxs88=;
        b=S80cili44vgDILwQer+fvyQtq/TQ7CSFCTrSr1ey26guGiv4vNjYXnFsTR8/AQr4LS
         krdI63bPWcJyZdRC/alvATHYLp+qysIu9J41bszuQUJ/u+Hwy9I9lkgpTGcUZIWao1qQ
         60TDM/QAftA/kTxZ7wBtUeR5O7KRcsbLGhA1YIbXDYrM8Nnbm2JBPHkSC0dC7SL1rRuA
         1V4j3h5/O7FedkQbeCVQshzKIB+WfYtdwmKvBo1zSL4L6cyPS3QZJ76uq43IJd52S3jc
         FIBU5l0SDr09fbgZaAK9UKHKP5DTRNUKqzny9zBSKllG3ztRdL6goPmNYKbIGcKpnhi/
         IG0w==
X-Gm-Message-State: AOAM532mQKjfSofz3IaIFkmDT5As6fCleyb8s3yAmvrqgXDBUiaKs2I+
	hCzt5Q0fFNu2eiaB2lZYhSY=
X-Google-Smtp-Source: ABdhPJxSbU0G3dj03+I6/AcPzoTLb1Dh81w0tPtYMpd8EWY7/scDyAaW0hjx4oPcmQ0SRgrTuRoZDg==
X-Received: by 2002:a17:90a:9309:: with SMTP id p9mr9848578pjo.174.1616689066064;
        Thu, 25 Mar 2021 09:17:46 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
        by smtp.gmail.com with ESMTPSA id s15sm6416917pgs.28.2021.03.25.09.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:17:45 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: netdev@vger.kernel.org,
	davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v3 7/7] mld: add mc_lock for protecting per-interface mld data
Date: Thu, 25 Mar 2021 16:16:57 +0000
Message-Id: <20210325161657.10517-8-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210325161657.10517-1-ap420073@gmail.com>
References: <20210325161657.10517-1-ap420073@gmail.com>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616689068; a=rsa-sha256;
	cv=none;
	b=p66z9612E2O57WGQir7G5NvSveohzMbs1Nvshmst27fVPTJQ7K0j0mXWEAbFgJKenwdovQ
	YYARuSluuzd/MwQoG9BbEkxNaCjpObtAl87h4OzcNCQphv0SAFzPfVhQ3Zam+JvJzUqDO5
	eqTbcLdtUP5xw67xX9Rpus0iQ/xf3AM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=qAVGSbUY;
	spf=pass (diktynna.open-mesh.org: domain of ap420073@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ap420073@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616689068;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:in-reply-to:in-reply-to:references:references:  dkim-signature;
	bh=Rt8EZ4CLv98yPevsSeAo1rBzT1dZwZeYiD0Ugsbxs88=;
	b=Ovz1BS/pjNOaWSa5UDR4XisPiSJbxYc60G/SOnGoKGgHsNLljuJb2a5OkGlEvGnvPUkoSy
	zYU8bVwzTEQ3xQw9EA+j5jSC08LRn64O/Rtnl3pMNoVg2aMZWGTt8txGGn3PMLgTV4u5jC
	TwrjfzXkFFeeQGvbRFIcE6WN247/PGY=
X-MailFrom: ap420073@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: JDJS4P7QAX73DAC6A3ULPCTQO3FHB3N6
X-Message-ID-Hash: JDJS4P7QAX73DAC6A3ULPCTQO3FHB3N6
X-Mailman-Approved-At: Thu, 25 Mar 2021 16:31:11 +0100
CC: ap420073@gmail.com, jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JDJS4P7QAX73DAC6A3ULPCTQO3FHB3N6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The purpose of this lock is to avoid a bottleneck in the query/report
event handler logic.

By previous patches, almost all mld data is protected by RTNL.
So, the query and report event handler, which is data path logic
acquires RTNL too. Therefore if a lot of query and report events
are received, it uses RTNL for a long time.
So it makes the control-plane bottleneck because of using RTNL.
In order to avoid this bottleneck, mc_lock is added.

mc_lock protect only per-interface mld data and per-interface mld
data is used in the query/report event handler logic.
So, no longer rtnl_lock is needed in the query/report event handler logic.
Therefore bottleneck will be disappeared by mc_lock.

Suggested-by: Cong Wang <xiyou.wangcong@gmail.com>
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
v3:
 - Initial patch

 include/net/if_inet6.h |   1 +
 net/ipv6/mcast.c       | 309 +++++++++++++++++++++++++----------------
 2 files changed, 194 insertions(+), 116 deletions(-)

diff --git a/include/net/if_inet6.h b/include/net/if_inet6.h
index 882e0f88756f..71bb4cc4d05d 100644
--- a/include/net/if_inet6.h
+++ b/include/net/if_inet6.h
@@ -190,6 +190,7 @@ struct inet6_dev {
 
 	spinlock_t		mc_query_lock;	/* mld query queue lock */
 	spinlock_t		mc_report_lock;	/* mld query report lock */
+	struct mutex		mc_lock;	/* mld global lock */
 
 	struct ifacaddr6	*ac_list;
 	rwlock_t		lock;
diff --git a/net/ipv6/mcast.c b/net/ipv6/mcast.c
index 3ad754388933..49b0cebfdcdc 100644
--- a/net/ipv6/mcast.c
+++ b/net/ipv6/mcast.c
@@ -111,6 +111,8 @@ int sysctl_mld_qrv __read_mostly = MLD_QRV_DEFAULT;
 /*
  *	socket join on multicast group
  */
+#define mc_dereference(e, idev) \
+	rcu_dereference_protected(e, lockdep_is_held(&(idev)->mc_lock))
 
 #define for_each_pmc_rtnl(np, pmc)				\
 	for (pmc = rtnl_dereference((np)->ipv6_mc_list);	\
@@ -122,10 +124,10 @@ int sysctl_mld_qrv __read_mostly = MLD_QRV_DEFAULT;
 	     pmc;						\
 	     pmc = rcu_dereference(pmc->next))
 
-#define for_each_psf_rtnl(mc, psf)				\
-	for (psf = rtnl_dereference((mc)->mca_sources);		\
+#define for_each_psf_mclock(mc, psf)				\
+	for (psf = mc_dereference((mc)->mca_sources, mc->idev);	\
 	     psf;						\
-	     psf = rtnl_dereference(psf->sf_next))
+	     psf = mc_dereference(psf->sf_next, mc->idev))
 
 #define for_each_psf_rcu(mc, psf)				\
 	for (psf = rcu_dereference((mc)->mca_sources);		\
@@ -133,14 +135,14 @@ int sysctl_mld_qrv __read_mostly = MLD_QRV_DEFAULT;
 	     psf = rcu_dereference(psf->sf_next))
 
 #define for_each_psf_tomb(mc, psf)				\
-	for (psf = rtnl_dereference((mc)->mca_tomb);		\
+	for (psf = mc_dereference((mc)->mca_tomb, mc->idev);	\
 	     psf;						\
-	     psf = rtnl_dereference(psf->sf_next))
+	     psf = mc_dereference(psf->sf_next, mc->idev))
 
-#define for_each_mc_rtnl(idev, mc)				\
-	for (mc = rtnl_dereference((idev)->mc_list);		\
+#define for_each_mc_mclock(idev, mc)				\
+	for (mc = mc_dereference((idev)->mc_list, idev);	\
 	     mc;						\
-	     mc = rtnl_dereference(mc->next))
+	     mc = mc_dereference(mc->next, idev))
 
 #define for_each_mc_rcu(idev, mc)				\
 	for (mc = rcu_dereference((idev)->mc_list);             \
@@ -148,9 +150,9 @@ int sysctl_mld_qrv __read_mostly = MLD_QRV_DEFAULT;
 	     mc = rcu_dereference(mc->next))
 
 #define for_each_mc_tomb(idev, mc)				\
-	for (mc = rtnl_dereference((idev)->mc_tomb);		\
+	for (mc = mc_dereference((idev)->mc_tomb, idev);	\
 	     mc;						\
-	     mc = rtnl_dereference(mc->next))
+	     mc = mc_dereference(mc->next, idev))
 
 static int unsolicited_report_interval(struct inet6_dev *idev)
 {
@@ -268,11 +270,12 @@ int ipv6_sock_mc_drop(struct sock *sk, int ifindex, const struct in6_addr *addr)
 			if (dev) {
 				struct inet6_dev *idev = __in6_dev_get(dev);
 
-				(void) ip6_mc_leave_src(sk, mc_lst, idev);
+				ip6_mc_leave_src(sk, mc_lst, idev);
 				if (idev)
 					__ipv6_dev_mc_dec(idev, &mc_lst->addr);
-			} else
-				(void) ip6_mc_leave_src(sk, mc_lst, NULL);
+			} else {
+				ip6_mc_leave_src(sk, mc_lst, NULL);
+			}
 
 			atomic_sub(sizeof(*mc_lst), &sk->sk_omem_alloc);
 			kfree_rcu(mc_lst, rcu);
@@ -329,11 +332,12 @@ void __ipv6_sock_mc_close(struct sock *sk)
 		if (dev) {
 			struct inet6_dev *idev = __in6_dev_get(dev);
 
-			(void) ip6_mc_leave_src(sk, mc_lst, idev);
+			ip6_mc_leave_src(sk, mc_lst, idev);
 			if (idev)
 				__ipv6_dev_mc_dec(idev, &mc_lst->addr);
-		} else
-			(void) ip6_mc_leave_src(sk, mc_lst, NULL);
+		} else {
+			ip6_mc_leave_src(sk, mc_lst, NULL);
+		}
 
 		atomic_sub(sizeof(*mc_lst), &sk->sk_omem_alloc);
 		kfree_rcu(mc_lst, rcu);
@@ -376,6 +380,7 @@ int ip6_mc_source(int add, int omode, struct sock *sk,
 
 	err = -EADDRNOTAVAIL;
 
+	mutex_lock(&idev->mc_lock);
 	for_each_pmc_rtnl(inet6, pmc) {
 		if (pgsr->gsr_interface && pmc->ifindex != pgsr->gsr_interface)
 			continue;
@@ -469,6 +474,7 @@ int ip6_mc_source(int add, int omode, struct sock *sk,
 	/* update the interface list */
 	ip6_mc_add_src(idev, group, omode, 1, source, 1);
 done:
+	mutex_unlock(&idev->mc_lock);
 	if (leavegroup)
 		err = ipv6_sock_mc_drop(sk, pgsr->gsr_interface, group);
 	return err;
@@ -529,25 +535,33 @@ int ip6_mc_msfilter(struct sock *sk, struct group_filter *gsf,
 			psin6 = (struct sockaddr_in6 *)list;
 			newpsl->sl_addr[i] = psin6->sin6_addr;
 		}
+		mutex_lock(&idev->mc_lock);
 		err = ip6_mc_add_src(idev, group, gsf->gf_fmode,
-			newpsl->sl_count, newpsl->sl_addr, 0);
+				     newpsl->sl_count, newpsl->sl_addr, 0);
 		if (err) {
+			mutex_unlock(&idev->mc_lock);
 			sock_kfree_s(sk, newpsl, IP6_SFLSIZE(newpsl->sl_max));
 			goto done;
 		}
+		mutex_unlock(&idev->mc_lock);
 	} else {
 		newpsl = NULL;
-		(void) ip6_mc_add_src(idev, group, gsf->gf_fmode, 0, NULL, 0);
+		mutex_lock(&idev->mc_lock);
+		ip6_mc_add_src(idev, group, gsf->gf_fmode, 0, NULL, 0);
+		mutex_unlock(&idev->mc_lock);
 	}
 
+	mutex_lock(&idev->mc_lock);
 	psl = rtnl_dereference(pmc->sflist);
 	if (psl) {
-		(void) ip6_mc_del_src(idev, group, pmc->sfmode,
-			psl->sl_count, psl->sl_addr, 0);
+		ip6_mc_del_src(idev, group, pmc->sfmode,
+			       psl->sl_count, psl->sl_addr, 0);
 		atomic_sub(IP6_SFLSIZE(psl->sl_max), &sk->sk_omem_alloc);
 		kfree_rcu(psl, rcu);
-	} else
-		(void) ip6_mc_del_src(idev, group, pmc->sfmode, 0, NULL, 0);
+	} else {
+		ip6_mc_del_src(idev, group, pmc->sfmode, 0, NULL, 0);
+	}
+	mutex_unlock(&idev->mc_lock);
 	rcu_assign_pointer(pmc->sflist, newpsl);
 	pmc->sfmode = gsf->gf_fmode;
 	err = 0;
@@ -650,6 +664,7 @@ bool inet6_mc_check(struct sock *sk, const struct in6_addr *mc_addr,
 	return rv;
 }
 
+/* called with mc_lock */
 static void igmp6_group_added(struct ifmcaddr6 *mc)
 {
 	struct net_device *dev = mc->idev->dev;
@@ -684,6 +699,7 @@ static void igmp6_group_added(struct ifmcaddr6 *mc)
 	mld_ifc_event(mc->idev);
 }
 
+/* called with mc_lock */
 static void igmp6_group_dropped(struct ifmcaddr6 *mc)
 {
 	struct net_device *dev = mc->idev->dev;
@@ -711,6 +727,7 @@ static void igmp6_group_dropped(struct ifmcaddr6 *mc)
 
 /*
  * deleted ifmcaddr6 manipulation
+ * called with mc_lock
  */
 static void mld_add_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 {
@@ -735,13 +752,13 @@ static void mld_add_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 		struct ip6_sf_list *psf;
 
 		rcu_assign_pointer(pmc->mca_tomb,
-				   rtnl_dereference(im->mca_tomb));
+				   mc_dereference(im->mca_tomb, idev));
 		rcu_assign_pointer(pmc->mca_sources,
-				   rtnl_dereference(im->mca_sources));
+				   mc_dereference(im->mca_sources, idev));
 		RCU_INIT_POINTER(im->mca_tomb, NULL);
 		RCU_INIT_POINTER(im->mca_sources, NULL);
 
-		for_each_psf_rtnl(pmc, psf)
+		for_each_psf_mclock(pmc, psf)
 			psf->sf_crcount = pmc->mca_crcount;
 	}
 
@@ -749,6 +766,7 @@ static void mld_add_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 	rcu_assign_pointer(idev->mc_tomb, pmc);
 }
 
+/* called with mc_lock */
 static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 {
 	struct ip6_sf_list *psf, *sources, *tomb;
@@ -772,15 +790,15 @@ static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 		im->idev = pmc->idev;
 		if (im->mca_sfmode == MCAST_INCLUDE) {
 			tomb = rcu_replace_pointer(im->mca_tomb,
-						   rtnl_dereference(pmc->mca_tomb),
-						   lockdep_rtnl_is_held());
+						   mc_dereference(pmc->mca_tomb, pmc->idev),
+						   lockdep_is_held(&im->idev->mc_lock));
 			rcu_assign_pointer(pmc->mca_tomb, tomb);
 
 			sources = rcu_replace_pointer(im->mca_sources,
-						      rtnl_dereference(pmc->mca_sources),
-						      lockdep_rtnl_is_held());
+						      mc_dereference(pmc->mca_sources, pmc->idev),
+						      lockdep_is_held(&im->idev->mc_lock));
 			rcu_assign_pointer(pmc->mca_sources, sources);
-			for_each_psf_rtnl(im, psf)
+			for_each_psf_mclock(im, psf)
 				psf->sf_crcount = idev->mc_qrv;
 		} else {
 			im->mca_crcount = idev->mc_qrv;
@@ -791,28 +809,29 @@ static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
 	}
 }
 
+/* called with mc_lock */
 static void mld_clear_delrec(struct inet6_dev *idev)
 {
 	struct ifmcaddr6 *pmc, *nextpmc;
 
-	pmc = rtnl_dereference(idev->mc_tomb);
+	pmc = mc_dereference(idev->mc_tomb, idev);
 	RCU_INIT_POINTER(idev->mc_tomb, NULL);
 
 	for (; pmc; pmc = nextpmc) {
-		nextpmc = rtnl_dereference(pmc->next);
+		nextpmc = mc_dereference(pmc->next, idev);
 		ip6_mc_clear_src(pmc);
 		in6_dev_put(pmc->idev);
 		kfree_rcu(pmc, rcu);
 	}
 
 	/* clear dead sources, too */
-	for_each_mc_rtnl(idev, pmc) {
+	for_each_mc_mclock(idev, pmc) {
 		struct ip6_sf_list *psf, *psf_next;
 
-		psf = rtnl_dereference(pmc->mca_tomb);
+		psf = mc_dereference(pmc->mca_tomb, idev);
 		RCU_INIT_POINTER(pmc->mca_tomb, NULL);
 		for (; psf; psf = psf_next) {
-			psf_next = rtnl_dereference(psf->sf_next);
+			psf_next = mc_dereference(psf->sf_next, idev);
 			kfree_rcu(psf, rcu);
 		}
 	}
@@ -851,6 +870,7 @@ static void ma_put(struct ifmcaddr6 *mc)
 	}
 }
 
+/* called with mc_lock */
 static struct ifmcaddr6 *mca_alloc(struct inet6_dev *idev,
 				   const struct in6_addr *addr,
 				   unsigned int mode)
@@ -902,10 +922,12 @@ static int __ipv6_dev_mc_inc(struct net_device *dev,
 		return -ENODEV;
 	}
 
-	for_each_mc_rtnl(idev, mc) {
+	mutex_lock(&idev->mc_lock);
+	for_each_mc_mclock(idev, mc) {
 		if (ipv6_addr_equal(&mc->mca_addr, addr)) {
 			mc->mca_users++;
 			ip6_mc_add_src(idev, &mc->mca_addr, mode, 0, NULL, 0);
+			mutex_unlock(&idev->mc_lock);
 			in6_dev_put(idev);
 			return 0;
 		}
@@ -913,6 +935,7 @@ static int __ipv6_dev_mc_inc(struct net_device *dev,
 
 	mc = mca_alloc(idev, addr, mode);
 	if (!mc) {
+		mutex_unlock(&idev->mc_lock);
 		in6_dev_put(idev);
 		return -ENOMEM;
 	}
@@ -924,6 +947,7 @@ static int __ipv6_dev_mc_inc(struct net_device *dev,
 
 	mld_del_delrec(idev, mc);
 	igmp6_group_added(mc);
+	mutex_unlock(&idev->mc_lock);
 	ma_put(mc);
 	return 0;
 }
@@ -935,7 +959,7 @@ int ipv6_dev_mc_inc(struct net_device *dev, const struct in6_addr *addr)
 EXPORT_SYMBOL(ipv6_dev_mc_inc);
 
 /*
- *	device multicast group del
+ * device multicast group del
  */
 int __ipv6_dev_mc_dec(struct inet6_dev *idev, const struct in6_addr *addr)
 {
@@ -943,8 +967,9 @@ int __ipv6_dev_mc_dec(struct inet6_dev *idev, const struct in6_addr *addr)
 
 	ASSERT_RTNL();
 
+	mutex_lock(&idev->mc_lock);
 	for (map = &idev->mc_list;
-	     (ma = rtnl_dereference(*map));
+	     (ma = mc_dereference(*map, idev));
 	     map = &ma->next) {
 		if (ipv6_addr_equal(&ma->mca_addr, addr)) {
 			if (--ma->mca_users == 0) {
@@ -952,14 +977,17 @@ int __ipv6_dev_mc_dec(struct inet6_dev *idev, const struct in6_addr *addr)
 
 				igmp6_group_dropped(ma);
 				ip6_mc_clear_src(ma);
+				mutex_unlock(&idev->mc_lock);
 
 				ma_put(ma);
 				return 0;
 			}
+			mutex_unlock(&idev->mc_lock);
 			return 0;
 		}
 	}
 
+	mutex_unlock(&idev->mc_lock);
 	return -ENOENT;
 }
 
@@ -1019,6 +1047,7 @@ bool ipv6_chk_mcast_addr(struct net_device *dev, const struct in6_addr *group,
 	return rv;
 }
 
+/* called with mc_lock */
 static void mld_gq_start_work(struct inet6_dev *idev)
 {
 	unsigned long tv = prandom_u32() % idev->mc_maxdelay;
@@ -1028,6 +1057,7 @@ static void mld_gq_start_work(struct inet6_dev *idev)
 		in6_dev_hold(idev);
 }
 
+/* called with mc_lock */
 static void mld_gq_stop_work(struct inet6_dev *idev)
 {
 	idev->mc_gq_running = 0;
@@ -1035,6 +1065,7 @@ static void mld_gq_stop_work(struct inet6_dev *idev)
 		__in6_dev_put(idev);
 }
 
+/* called with mc_lock */
 static void mld_ifc_start_work(struct inet6_dev *idev, unsigned long delay)
 {
 	unsigned long tv = prandom_u32() % delay;
@@ -1043,6 +1074,7 @@ static void mld_ifc_start_work(struct inet6_dev *idev, unsigned long delay)
 		in6_dev_hold(idev);
 }
 
+/* called with mc_lock */
 static void mld_ifc_stop_work(struct inet6_dev *idev)
 {
 	idev->mc_ifc_count = 0;
@@ -1050,6 +1082,7 @@ static void mld_ifc_stop_work(struct inet6_dev *idev)
 		__in6_dev_put(idev);
 }
 
+/* called with mc_lock */
 static void mld_dad_start_work(struct inet6_dev *idev, unsigned long delay)
 {
 	unsigned long tv = prandom_u32() % delay;
@@ -1080,6 +1113,7 @@ static void mld_report_stop_work(struct inet6_dev *idev)
 
 /*
  * IGMP handling (alias multicast ICMPv6 messages)
+ * called with mc_lock
  */
 static void igmp6_group_queried(struct ifmcaddr6 *ma, unsigned long resptime)
 {
@@ -1103,7 +1137,9 @@ static void igmp6_group_queried(struct ifmcaddr6 *ma, unsigned long resptime)
 	ma->mca_flags |= MAF_TIMER_RUNNING;
 }
 
-/* mark EXCLUDE-mode sources */
+/* mark EXCLUDE-mode sources
+ * called with mc_lock
+ */
 static bool mld_xmarksources(struct ifmcaddr6 *pmc, int nsrcs,
 			     const struct in6_addr *srcs)
 {
@@ -1111,7 +1147,7 @@ static bool mld_xmarksources(struct ifmcaddr6 *pmc, int nsrcs,
 	int i, scount;
 
 	scount = 0;
-	for_each_psf_rtnl(pmc, psf) {
+	for_each_psf_mclock(pmc, psf) {
 		if (scount == nsrcs)
 			break;
 		for (i = 0; i < nsrcs; i++) {
@@ -1132,6 +1168,7 @@ static bool mld_xmarksources(struct ifmcaddr6 *pmc, int nsrcs,
 	return true;
 }
 
+/* called with mc_lock */
 static bool mld_marksources(struct ifmcaddr6 *pmc, int nsrcs,
 			    const struct in6_addr *srcs)
 {
@@ -1144,7 +1181,7 @@ static bool mld_marksources(struct ifmcaddr6 *pmc, int nsrcs,
 	/* mark INCLUDE-mode sources */
 
 	scount = 0;
-	for_each_psf_rtnl(pmc, psf) {
+	for_each_psf_mclock(pmc, psf) {
 		if (scount == nsrcs)
 			break;
 		for (i = 0; i < nsrcs; i++) {
@@ -1370,7 +1407,7 @@ static void __mld_query_work(struct sk_buff *skb)
 	int len, err;
 
 	if (!pskb_may_pull(skb, sizeof(struct in6_addr)))
-		goto out;
+		goto kfree_skb;
 
 	/* compute payload length excluding extension headers */
 	len = ntohs(ipv6_hdr(skb)->payload_len) + sizeof(struct ipv6hdr);
@@ -1387,11 +1424,11 @@ static void __mld_query_work(struct sk_buff *skb)
 	    ipv6_hdr(skb)->hop_limit != 1 ||
 	    !(IP6CB(skb)->flags & IP6SKB_ROUTERALERT) ||
 	    IP6CB(skb)->ra != htons(IPV6_OPT_ROUTERALERT_MLD))
-		goto out;
+		goto kfree_skb;
 
-	idev = __in6_dev_get(skb->dev);
+	idev = in6_dev_get(skb->dev);
 	if (!idev)
-		goto out;
+		goto kfree_skb;
 
 	mld = (struct mld_msg *)icmp6_hdr(skb);
 	group = &mld->mld_mca;
@@ -1442,11 +1479,11 @@ static void __mld_query_work(struct sk_buff *skb)
 	}
 
 	if (group_type == IPV6_ADDR_ANY) {
-		for_each_mc_rtnl(idev, ma) {
+		for_each_mc_mclock(idev, ma) {
 			igmp6_group_queried(ma, max_delay);
 		}
 	} else {
-		for_each_mc_rtnl(idev, ma) {
+		for_each_mc_mclock(idev, ma) {
 			if (!ipv6_addr_equal(group, &ma->mca_addr))
 				continue;
 			if (ma->mca_flags & MAF_TIMER_RUNNING) {
@@ -1468,6 +1505,8 @@ static void __mld_query_work(struct sk_buff *skb)
 	}
 
 out:
+	in6_dev_put(idev);
+kfree_skb:
 	consume_skb(skb);
 }
 
@@ -1495,10 +1534,10 @@ static void mld_query_work(struct work_struct *work)
 	}
 	spin_unlock_bh(&idev->mc_query_lock);
 
-	rtnl_lock();
+	mutex_lock(&idev->mc_lock);
 	while ((skb = __skb_dequeue(&q)))
 		__mld_query_work(skb);
-	rtnl_unlock();
+	mutex_unlock(&idev->mc_lock);
 
 	if (!rework)
 		in6_dev_put(idev);
@@ -1530,22 +1569,22 @@ int igmp6_event_report(struct sk_buff *skb)
 
 static void __mld_report_work(struct sk_buff *skb)
 {
-	struct ifmcaddr6 *ma;
 	struct inet6_dev *idev;
+	struct ifmcaddr6 *ma;
 	struct mld_msg *mld;
 	int addr_type;
 
 	/* Our own report looped back. Ignore it. */
 	if (skb->pkt_type == PACKET_LOOPBACK)
-		goto out;
+		goto kfree_skb;
 
 	/* send our report if the MC router may not have heard this report */
 	if (skb->pkt_type != PACKET_MULTICAST &&
 	    skb->pkt_type != PACKET_BROADCAST)
-		goto out;
+		goto kfree_skb;
 
 	if (!pskb_may_pull(skb, sizeof(*mld) - sizeof(struct icmp6hdr)))
-		goto out;
+		goto kfree_skb;
 
 	mld = (struct mld_msg *)icmp6_hdr(skb);
 
@@ -1553,17 +1592,17 @@ static void __mld_report_work(struct sk_buff *skb)
 	addr_type = ipv6_addr_type(&ipv6_hdr(skb)->saddr);
 	if (addr_type != IPV6_ADDR_ANY &&
 	    !(addr_type&IPV6_ADDR_LINKLOCAL))
-		goto out;
+		goto kfree_skb;
 
-	idev = __in6_dev_get(skb->dev);
+	idev = in6_dev_get(skb->dev);
 	if (!idev)
-		goto out;
+		goto kfree_skb;
 
 	/*
 	 *	Cancel the work for this group
 	 */
 
-	for_each_mc_rtnl(idev, ma) {
+	for_each_mc_mclock(idev, ma) {
 		if (ipv6_addr_equal(&ma->mca_addr, &mld->mld_mca)) {
 			if (cancel_delayed_work(&ma->mca_work))
 				refcount_dec(&ma->mca_refcnt);
@@ -1573,7 +1612,8 @@ static void __mld_report_work(struct sk_buff *skb)
 		}
 	}
 
-out:
+	in6_dev_put(idev);
+kfree_skb:
 	consume_skb(skb);
 }
 
@@ -1600,10 +1640,10 @@ static void mld_report_work(struct work_struct *work)
 	}
 	spin_unlock_bh(&idev->mc_report_lock);
 
-	rtnl_lock();
+	mutex_lock(&idev->mc_lock);
 	while ((skb = __skb_dequeue(&q)))
 		__mld_report_work(skb);
-	rtnl_unlock();
+	mutex_unlock(&idev->mc_lock);
 
 	if (!rework)
 		in6_dev_put(idev);
@@ -1659,7 +1699,7 @@ mld_scount(struct ifmcaddr6 *pmc, int type, int gdeleted, int sdeleted)
 	struct ip6_sf_list *psf;
 	int scount = 0;
 
-	for_each_psf_rtnl(pmc, psf) {
+	for_each_psf_mclock(pmc, psf) {
 		if (!is_in(pmc, psf, type, gdeleted, sdeleted))
 			continue;
 		scount++;
@@ -1833,6 +1873,7 @@ static struct sk_buff *add_grhead(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 
 #define AVAILABLE(skb)	((skb) ? skb_availroom(skb) : 0)
 
+/* called with mc_lock */
 static struct sk_buff *add_grec(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 				int type, int gdeleted, int sdeleted,
 				int crsend)
@@ -1878,12 +1919,12 @@ static struct sk_buff *add_grec(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 	}
 	first = 1;
 	psf_prev = NULL;
-	for (psf = rtnl_dereference(*psf_list);
+	for (psf = mc_dereference(*psf_list, idev);
 	     psf;
 	     psf = psf_next) {
 		struct in6_addr *psrc;
 
-		psf_next = rtnl_dereference(psf->sf_next);
+		psf_next = mc_dereference(psf->sf_next, idev);
 
 		if (!is_in(pmc, psf, type, gdeleted, sdeleted) && !crsend) {
 			psf_prev = psf;
@@ -1931,10 +1972,10 @@ static struct sk_buff *add_grec(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 			if ((sdeleted || gdeleted) && psf->sf_crcount == 0) {
 				if (psf_prev)
 					rcu_assign_pointer(psf_prev->sf_next,
-							   rtnl_dereference(psf->sf_next));
+							   mc_dereference(psf->sf_next, idev));
 				else
 					rcu_assign_pointer(*psf_list,
-							   rtnl_dereference(psf->sf_next));
+							   mc_dereference(psf->sf_next, idev));
 				kfree_rcu(psf, rcu);
 				continue;
 			}
@@ -1964,13 +2005,14 @@ static struct sk_buff *add_grec(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 	return skb;
 }
 
+/* called with mc_lock */
 static void mld_send_report(struct inet6_dev *idev, struct ifmcaddr6 *pmc)
 {
 	struct sk_buff *skb = NULL;
 	int type;
 
 	if (!pmc) {
-		for_each_mc_rtnl(idev, pmc) {
+		for_each_mc_mclock(idev, pmc) {
 			if (pmc->mca_flags & MAF_NOREPORT)
 				continue;
 			if (pmc->mca_sfcount[MCAST_EXCLUDE])
@@ -1992,23 +2034,24 @@ static void mld_send_report(struct inet6_dev *idev, struct ifmcaddr6 *pmc)
 
 /*
  * remove zero-count source records from a source filter list
+ * called with mc_lock
  */
-static void mld_clear_zeros(struct ip6_sf_list __rcu **ppsf)
+static void mld_clear_zeros(struct ip6_sf_list __rcu **ppsf, struct inet6_dev *idev)
 {
 	struct ip6_sf_list *psf_prev, *psf_next, *psf;
 
 	psf_prev = NULL;
-	for (psf = rtnl_dereference(*ppsf);
+	for (psf = mc_dereference(*ppsf, idev);
 	     psf;
 	     psf = psf_next) {
-		psf_next = rtnl_dereference(psf->sf_next);
+		psf_next = mc_dereference(psf->sf_next, idev);
 		if (psf->sf_crcount == 0) {
 			if (psf_prev)
 				rcu_assign_pointer(psf_prev->sf_next,
-						   rtnl_dereference(psf->sf_next));
+						   mc_dereference(psf->sf_next, idev));
 			else
 				rcu_assign_pointer(*ppsf,
-						   rtnl_dereference(psf->sf_next));
+						   mc_dereference(psf->sf_next, idev));
 			kfree_rcu(psf, rcu);
 		} else {
 			psf_prev = psf;
@@ -2016,6 +2059,7 @@ static void mld_clear_zeros(struct ip6_sf_list __rcu **ppsf)
 	}
 }
 
+/* called with mc_lock */
 static void mld_send_cr(struct inet6_dev *idev)
 {
 	struct ifmcaddr6 *pmc, *pmc_prev, *pmc_next;
@@ -2024,10 +2068,10 @@ static void mld_send_cr(struct inet6_dev *idev)
 
 	/* deleted MCA's */
 	pmc_prev = NULL;
-	for (pmc = rtnl_dereference(idev->mc_tomb);
+	for (pmc = mc_dereference(idev->mc_tomb, idev);
 	     pmc;
 	     pmc = pmc_next) {
-		pmc_next = rtnl_dereference(pmc->next);
+		pmc_next = mc_dereference(pmc->next, idev);
 		if (pmc->mca_sfmode == MCAST_INCLUDE) {
 			type = MLD2_BLOCK_OLD_SOURCES;
 			dtype = MLD2_BLOCK_OLD_SOURCES;
@@ -2041,8 +2085,8 @@ static void mld_send_cr(struct inet6_dev *idev)
 			}
 			pmc->mca_crcount--;
 			if (pmc->mca_crcount == 0) {
-				mld_clear_zeros(&pmc->mca_tomb);
-				mld_clear_zeros(&pmc->mca_sources);
+				mld_clear_zeros(&pmc->mca_tomb, idev);
+				mld_clear_zeros(&pmc->mca_sources, idev);
 			}
 		}
 		if (pmc->mca_crcount == 0 &&
@@ -2059,7 +2103,7 @@ static void mld_send_cr(struct inet6_dev *idev)
 	}
 
 	/* change recs */
-	for_each_mc_rtnl(idev, pmc) {
+	for_each_mc_mclock(idev, pmc) {
 		if (pmc->mca_sfcount[MCAST_EXCLUDE]) {
 			type = MLD2_BLOCK_OLD_SOURCES;
 			dtype = MLD2_ALLOW_NEW_SOURCES;
@@ -2181,6 +2225,7 @@ static void igmp6_send(struct in6_addr *addr, struct net_device *dev, int type)
 	goto out;
 }
 
+/* called with mc_lock */
 static void mld_send_initial_cr(struct inet6_dev *idev)
 {
 	struct sk_buff *skb;
@@ -2191,7 +2236,7 @@ static void mld_send_initial_cr(struct inet6_dev *idev)
 		return;
 
 	skb = NULL;
-	for_each_mc_rtnl(idev, pmc) {
+	for_each_mc_mclock(idev, pmc) {
 		if (pmc->mca_sfcount[MCAST_EXCLUDE])
 			type = MLD2_CHANGE_TO_EXCLUDE;
 		else
@@ -2204,6 +2249,7 @@ static void mld_send_initial_cr(struct inet6_dev *idev)
 
 void ipv6_mc_dad_complete(struct inet6_dev *idev)
 {
+	mutex_lock(&idev->mc_lock);
 	idev->mc_dad_count = idev->mc_qrv;
 	if (idev->mc_dad_count) {
 		mld_send_initial_cr(idev);
@@ -2212,6 +2258,7 @@ void ipv6_mc_dad_complete(struct inet6_dev *idev)
 			mld_dad_start_work(idev,
 					   unsolicited_report_interval(idev));
 	}
+	mutex_unlock(&idev->mc_lock);
 }
 
 static void mld_dad_work(struct work_struct *work)
@@ -2219,8 +2266,7 @@ static void mld_dad_work(struct work_struct *work)
 	struct inet6_dev *idev = container_of(to_delayed_work(work),
 					      struct inet6_dev,
 					      mc_dad_work);
-
-	rtnl_lock();
+	mutex_lock(&idev->mc_lock);
 	mld_send_initial_cr(idev);
 	if (idev->mc_dad_count) {
 		idev->mc_dad_count--;
@@ -2228,10 +2274,11 @@ static void mld_dad_work(struct work_struct *work)
 			mld_dad_start_work(idev,
 					   unsolicited_report_interval(idev));
 	}
-	rtnl_unlock();
+	mutex_unlock(&idev->mc_lock);
 	in6_dev_put(idev);
 }
 
+/* called with mc_lock */
 static int ip6_mc_del1_src(struct ifmcaddr6 *pmc, int sfmode,
 	const struct in6_addr *psfsrc)
 {
@@ -2239,7 +2286,7 @@ static int ip6_mc_del1_src(struct ifmcaddr6 *pmc, int sfmode,
 	int rv = 0;
 
 	psf_prev = NULL;
-	for_each_psf_rtnl(pmc, psf) {
+	for_each_psf_mclock(pmc, psf) {
 		if (ipv6_addr_equal(&psf->sf_addr, psfsrc))
 			break;
 		psf_prev = psf;
@@ -2255,16 +2302,16 @@ static int ip6_mc_del1_src(struct ifmcaddr6 *pmc, int sfmode,
 		/* no more filters for this source */
 		if (psf_prev)
 			rcu_assign_pointer(psf_prev->sf_next,
-					   rtnl_dereference(psf->sf_next));
+					   mc_dereference(psf->sf_next, idev));
 		else
 			rcu_assign_pointer(pmc->mca_sources,
-					   rtnl_dereference(psf->sf_next));
+					   mc_dereference(psf->sf_next, idev));
 
 		if (psf->sf_oldin && !(pmc->mca_flags & MAF_NOREPORT) &&
 		    !mld_in_v1_mode(idev)) {
 			psf->sf_crcount = idev->mc_qrv;
 			rcu_assign_pointer(psf->sf_next,
-					   rtnl_dereference(pmc->mca_tomb));
+					   mc_dereference(pmc->mca_tomb, idev));
 			rcu_assign_pointer(pmc->mca_tomb, psf);
 			rv = 1;
 		} else {
@@ -2274,6 +2321,7 @@ static int ip6_mc_del1_src(struct ifmcaddr6 *pmc, int sfmode,
 	return rv;
 }
 
+/* called with mc_lock */
 static int ip6_mc_del_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 			  int sfmode, int sfcount, const struct in6_addr *psfsrc,
 			  int delta)
@@ -2285,7 +2333,7 @@ static int ip6_mc_del_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 	if (!idev)
 		return -ENODEV;
 
-	for_each_mc_rtnl(idev, pmc) {
+	for_each_mc_mclock(idev, pmc) {
 		if (ipv6_addr_equal(pmca, &pmc->mca_addr))
 			break;
 	}
@@ -2294,9 +2342,8 @@ static int ip6_mc_del_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 
 	sf_markstate(pmc);
 	if (!delta) {
-		if (!pmc->mca_sfcount[sfmode]) {
+		if (!pmc->mca_sfcount[sfmode])
 			return -EINVAL;
-		}
 
 		pmc->mca_sfcount[sfmode]--;
 	}
@@ -2317,16 +2364,19 @@ static int ip6_mc_del_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 		pmc->mca_sfmode = MCAST_INCLUDE;
 		pmc->mca_crcount = idev->mc_qrv;
 		idev->mc_ifc_count = pmc->mca_crcount;
-		for_each_psf_rtnl(pmc, psf)
+		for_each_psf_mclock(pmc, psf)
 			psf->sf_crcount = 0;
 		mld_ifc_event(pmc->idev);
-	} else if (sf_setstate(pmc) || changerec)
+	} else if (sf_setstate(pmc) || changerec) {
 		mld_ifc_event(pmc->idev);
+	}
+
 	return err;
 }
 
 /*
  * Add multicast single-source filter to the interface list
+ * called with mc_lock
  */
 static int ip6_mc_add1_src(struct ifmcaddr6 *pmc, int sfmode,
 	const struct in6_addr *psfsrc)
@@ -2334,7 +2384,7 @@ static int ip6_mc_add1_src(struct ifmcaddr6 *pmc, int sfmode,
 	struct ip6_sf_list *psf, *psf_prev;
 
 	psf_prev = NULL;
-	for_each_psf_rtnl(pmc, psf) {
+	for_each_psf_mclock(pmc, psf) {
 		if (ipv6_addr_equal(&psf->sf_addr, psfsrc))
 			break;
 		psf_prev = psf;
@@ -2355,12 +2405,13 @@ static int ip6_mc_add1_src(struct ifmcaddr6 *pmc, int sfmode,
 	return 0;
 }
 
+/* called with mc_lock */
 static void sf_markstate(struct ifmcaddr6 *pmc)
 {
 	struct ip6_sf_list *psf;
 	int mca_xcount = pmc->mca_sfcount[MCAST_EXCLUDE];
 
-	for_each_psf_rtnl(pmc, psf) {
+	for_each_psf_mclock(pmc, psf) {
 		if (pmc->mca_sfcount[MCAST_EXCLUDE]) {
 			psf->sf_oldin = mca_xcount ==
 				psf->sf_count[MCAST_EXCLUDE] &&
@@ -2371,6 +2422,7 @@ static void sf_markstate(struct ifmcaddr6 *pmc)
 	}
 }
 
+/* called with mc_lock */
 static int sf_setstate(struct ifmcaddr6 *pmc)
 {
 	struct ip6_sf_list *psf, *dpsf;
@@ -2379,7 +2431,7 @@ static int sf_setstate(struct ifmcaddr6 *pmc)
 	int new_in, rv;
 
 	rv = 0;
-	for_each_psf_rtnl(pmc, psf) {
+	for_each_psf_mclock(pmc, psf) {
 		if (pmc->mca_sfcount[MCAST_EXCLUDE]) {
 			new_in = mca_xcount == psf->sf_count[MCAST_EXCLUDE] &&
 				!psf->sf_count[MCAST_INCLUDE];
@@ -2398,10 +2450,12 @@ static int sf_setstate(struct ifmcaddr6 *pmc)
 				if (dpsf) {
 					if (prev)
 						rcu_assign_pointer(prev->sf_next,
-								   rtnl_dereference(dpsf->sf_next));
+								   mc_dereference(dpsf->sf_next,
+										  pmc->idev));
 					else
 						rcu_assign_pointer(pmc->mca_tomb,
-								   rtnl_dereference(dpsf->sf_next));
+								   mc_dereference(dpsf->sf_next,
+										  pmc->idev));
 					kfree_rcu(dpsf, rcu);
 				}
 				psf->sf_crcount = qrv;
@@ -2424,7 +2478,7 @@ static int sf_setstate(struct ifmcaddr6 *pmc)
 					continue;
 				*dpsf = *psf;
 				rcu_assign_pointer(dpsf->sf_next,
-						   rtnl_dereference(pmc->mca_tomb));
+						   mc_dereference(pmc->mca_tomb, pmc->idev));
 				rcu_assign_pointer(pmc->mca_tomb, dpsf);
 			}
 			dpsf->sf_crcount = qrv;
@@ -2436,6 +2490,7 @@ static int sf_setstate(struct ifmcaddr6 *pmc)
 
 /*
  * Add multicast source filter list to the interface list
+ * called with mc_lock
  */
 static int ip6_mc_add_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 			  int sfmode, int sfcount, const struct in6_addr *psfsrc,
@@ -2448,7 +2503,7 @@ static int ip6_mc_add_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 	if (!idev)
 		return -ENODEV;
 
-	for_each_mc_rtnl(idev, pmc) {
+	for_each_mc_mclock(idev, pmc) {
 		if (ipv6_addr_equal(pmca, &pmc->mca_addr))
 			break;
 	}
@@ -2484,7 +2539,7 @@ static int ip6_mc_add_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 
 		pmc->mca_crcount = idev->mc_qrv;
 		idev->mc_ifc_count = pmc->mca_crcount;
-		for_each_psf_rtnl(pmc, psf)
+		for_each_psf_mclock(pmc, psf)
 			psf->sf_crcount = 0;
 		mld_ifc_event(idev);
 	} else if (sf_setstate(pmc)) {
@@ -2493,21 +2548,22 @@ static int ip6_mc_add_src(struct inet6_dev *idev, const struct in6_addr *pmca,
 	return err;
 }
 
+/* called with mc_lock */
 static void ip6_mc_clear_src(struct ifmcaddr6 *pmc)
 {
 	struct ip6_sf_list *psf, *nextpsf;
 
-	for (psf = rtnl_dereference(pmc->mca_tomb);
+	for (psf = mc_dereference(pmc->mca_tomb, pmc->idev);
 	     psf;
 	     psf = nextpsf) {
-		nextpsf = rtnl_dereference(psf->sf_next);
+		nextpsf = mc_dereference(psf->sf_next, pmc->idev);
 		kfree_rcu(psf, rcu);
 	}
 	RCU_INIT_POINTER(pmc->mca_tomb, NULL);
-	for (psf = rtnl_dereference(pmc->mca_sources);
+	for (psf = mc_dereference(pmc->mca_sources, pmc->idev);
 	     psf;
 	     psf = nextpsf) {
-		nextpsf = rtnl_dereference(psf->sf_next);
+		nextpsf = mc_dereference(psf->sf_next, pmc->idev);
 		kfree_rcu(psf, rcu);
 	}
 	RCU_INIT_POINTER(pmc->mca_sources, NULL);
@@ -2516,7 +2572,7 @@ static void ip6_mc_clear_src(struct ifmcaddr6 *pmc)
 	pmc->mca_sfcount[MCAST_EXCLUDE] = 1;
 }
 
-
+/* called with mc_lock */
 static void igmp6_join_group(struct ifmcaddr6 *ma)
 {
 	unsigned long delay;
@@ -2546,19 +2602,27 @@ static int ip6_mc_leave_src(struct sock *sk, struct ipv6_mc_socklist *iml,
 
 	psl = rtnl_dereference(iml->sflist);
 
+	if (idev)
+		mutex_lock(&idev->mc_lock);
+
 	if (!psl) {
 		/* any-source empty exclude case */
 		err = ip6_mc_del_src(idev, &iml->addr, iml->sfmode, 0, NULL, 0);
 	} else {
 		err = ip6_mc_del_src(idev, &iml->addr, iml->sfmode,
-				psl->sl_count, psl->sl_addr, 0);
+				     psl->sl_count, psl->sl_addr, 0);
 		RCU_INIT_POINTER(iml->sflist, NULL);
 		atomic_sub(IP6_SFLSIZE(psl->sl_max), &sk->sk_omem_alloc);
 		kfree_rcu(psl, rcu);
 	}
+
+	if (idev)
+		mutex_unlock(&idev->mc_lock);
+
 	return err;
 }
 
+/* called with mc_lock */
 static void igmp6_leave_group(struct ifmcaddr6 *ma)
 {
 	if (mld_in_v1_mode(ma->idev)) {
@@ -2578,10 +2642,10 @@ static void mld_gq_work(struct work_struct *work)
 					      struct inet6_dev,
 					      mc_gq_work);
 
-	rtnl_lock();
+	mutex_lock(&idev->mc_lock);
 	mld_send_report(idev, NULL);
 	idev->mc_gq_running = 0;
-	rtnl_unlock();
+	mutex_unlock(&idev->mc_lock);
 
 	in6_dev_put(idev);
 }
@@ -2592,7 +2656,7 @@ static void mld_ifc_work(struct work_struct *work)
 					      struct inet6_dev,
 					      mc_ifc_work);
 
-	rtnl_lock();
+	mutex_lock(&idev->mc_lock);
 	mld_send_cr(idev);
 
 	if (idev->mc_ifc_count) {
@@ -2601,10 +2665,11 @@ static void mld_ifc_work(struct work_struct *work)
 			mld_ifc_start_work(idev,
 					   unsolicited_report_interval(idev));
 	}
-	rtnl_unlock();
+	mutex_unlock(&idev->mc_lock);
 	in6_dev_put(idev);
 }
 
+/* called with mc_lock */
 static void mld_ifc_event(struct inet6_dev *idev)
 {
 	if (mld_in_v1_mode(idev))
@@ -2619,14 +2684,14 @@ static void mld_mca_work(struct work_struct *work)
 	struct ifmcaddr6 *ma = container_of(to_delayed_work(work),
 					    struct ifmcaddr6, mca_work);
 
-	rtnl_lock();
+	mutex_lock(&ma->idev->mc_lock);
 	if (mld_in_v1_mode(ma->idev))
 		igmp6_send(&ma->mca_addr, ma->idev->dev, ICMPV6_MGM_REPORT);
 	else
 		mld_send_report(ma->idev, ma);
 	ma->mca_flags |=  MAF_LAST_REPORTER;
 	ma->mca_flags &= ~MAF_TIMER_RUNNING;
-	rtnl_unlock();
+	mutex_unlock(&ma->idev->mc_lock);
 
 	ma_put(ma);
 }
@@ -2639,8 +2704,10 @@ void ipv6_mc_unmap(struct inet6_dev *idev)
 
 	/* Install multicast list, except for all-nodes (already installed) */
 
-	for_each_mc_rtnl(idev, i)
+	mutex_lock(&idev->mc_lock);
+	for_each_mc_mclock(idev, i)
 		igmp6_group_dropped(i);
+	mutex_unlock(&idev->mc_lock);
 }
 
 void ipv6_mc_remap(struct inet6_dev *idev)
@@ -2649,14 +2716,15 @@ void ipv6_mc_remap(struct inet6_dev *idev)
 }
 
 /* Device going down */
-
 void ipv6_mc_down(struct inet6_dev *idev)
 {
 	struct ifmcaddr6 *i;
 
+	mutex_lock(&idev->mc_lock);
 	/* Withdraw multicast list */
-	for_each_mc_rtnl(idev, i)
+	for_each_mc_mclock(idev, i)
 		igmp6_group_dropped(i);
+	mutex_unlock(&idev->mc_lock);
 
 	/* Should stop work after group drop. or we will
 	 * start work again in mld_ifc_event()
@@ -2687,10 +2755,12 @@ void ipv6_mc_up(struct inet6_dev *idev)
 	/* Install multicast list, except for all-nodes (already installed) */
 
 	ipv6_mc_reset(idev);
-	for_each_mc_rtnl(idev, i) {
+	mutex_lock(&idev->mc_lock);
+	for_each_mc_mclock(idev, i) {
 		mld_del_delrec(idev, i);
 		igmp6_group_added(i);
 	}
+	mutex_unlock(&idev->mc_lock);
 }
 
 /* IPv6 device initialization. */
@@ -2709,6 +2779,7 @@ void ipv6_mc_init_dev(struct inet6_dev *idev)
 	skb_queue_head_init(&idev->mc_report_queue);
 	spin_lock_init(&idev->mc_query_lock);
 	spin_lock_init(&idev->mc_report_lock);
+	mutex_init(&idev->mc_lock);
 	ipv6_mc_reset(idev);
 }
 
@@ -2722,7 +2793,9 @@ void ipv6_mc_destroy_dev(struct inet6_dev *idev)
 
 	/* Deactivate works */
 	ipv6_mc_down(idev);
+	mutex_lock(&idev->mc_lock);
 	mld_clear_delrec(idev);
+	mutex_unlock(&idev->mc_lock);
 	mld_clear_query(idev);
 	mld_clear_report(idev);
 
@@ -2736,12 +2809,14 @@ void ipv6_mc_destroy_dev(struct inet6_dev *idev)
 	if (idev->cnf.forwarding)
 		__ipv6_dev_mc_dec(idev, &in6addr_linklocal_allrouters);
 
-	while ((i = rtnl_dereference(idev->mc_list))) {
-		rcu_assign_pointer(idev->mc_list, rtnl_dereference(i->next));
+	mutex_lock(&idev->mc_lock);
+	while ((i = mc_dereference(idev->mc_list, idev))) {
+		rcu_assign_pointer(idev->mc_list, mc_dereference(i->next, idev));
 
 		ip6_mc_clear_src(i);
 		ma_put(i);
 	}
+	mutex_unlock(&idev->mc_lock);
 }
 
 static void ipv6_mc_rejoin_groups(struct inet6_dev *idev)
@@ -2750,12 +2825,14 @@ static void ipv6_mc_rejoin_groups(struct inet6_dev *idev)
 
 	ASSERT_RTNL();
 
+	mutex_lock(&idev->mc_lock);
 	if (mld_in_v1_mode(idev)) {
-		for_each_mc_rtnl(idev, pmc)
+		for_each_mc_mclock(idev, pmc)
 			igmp6_join_group(pmc);
 	} else {
 		mld_send_report(idev, NULL);
 	}
+	mutex_unlock(&idev->mc_lock);
 }
 
 static int ipv6_mc_netdev_event(struct notifier_block *this,
-- 
2.17.1
