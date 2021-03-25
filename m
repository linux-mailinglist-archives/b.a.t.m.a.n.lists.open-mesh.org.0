Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB663496CE
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Mar 2021 17:31:15 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9141482817;
	Thu, 25 Mar 2021 17:31:14 +0100 (CET)
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D641B806DD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 17:17:13 +0100 (CET)
Received: by mail-pg1-x535.google.com with SMTP id m7so2275719pgj.8
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Mar 2021 09:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BSzjAGgCw63gBBm4851CZ2FBYt1vflt0KQxjA+y8wUo=;
        b=lcVi/cV2vXS+/+f3hRNhK81O78ARTTqAuWrWGAMkiOCwQYEdjy+xlqmd5vuG5K/GA/
         XpKacLB/fMoDNJphO5CchycguOUi/UNlWMhmVH8It0j7KyrxeN/EIdfZyX23JDcvgx0I
         3kV7LHka8Ieluffj8mTZVnMixvKoPjRnfQJLf4/yrfp30LAzQWE3bZ2MfM1OZ1cMXWcI
         vVTDwy2jWB0p3U04mTEQlAM613XnmZ+JnArZCqyPdrhy8r3yU4Yh42K0wv67z5L2UghM
         eqdTpCRMFhoIS+5qdWwmALYz5xTchZ8e0H98XvkDb32VutJwKDQzV7bp5V9E90JKUj1m
         /b+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BSzjAGgCw63gBBm4851CZ2FBYt1vflt0KQxjA+y8wUo=;
        b=nSKNZ0MWD0weYESlfjoF1f3ywVTRdhqFx0f9Au/zi196SFLz+gTFLhss423V5zWgi3
         2hhDCUT/gJSdwJ0kj0G8NyS4MyzLa+RxhPVbsxX5VmP0EvvDqAM9y+oIUu2pbrLfNFkG
         cLkEEwkZYr6WE/O7w6Twuz0V1fEwV03ctv2O6mPz9LUleq6q+P53/DYX+DJLDQ82lTab
         JWi8HlNuHN2WoSbXBuMxqxw72mLsbt9Q5pvrF/HvCVbYdLY+MSoJHtQxUnwp4OSD36/v
         Lz9rdMzIonSEpTjTRK0P4xRo9hKOd7gFPJqmRShxzXRk1TdRFZ67Hem3Y7Am2Lr54fav
         bLBw==
X-Gm-Message-State: AOAM533VneJxeGnay/ZhesMI/LtDpfMq6qmC2dfYkhbAyu9FmcD079MO
	XpO3ngK9dgcc/VFzMcz/adY=
X-Google-Smtp-Source: ABdhPJxUN5QK9MbeZl03qj8GTUvsg+nKRCCQ4r8AhliZsCKa7Xp2xRICo0IQVMfx1mXyi/pqhXLMsg==
X-Received: by 2002:a17:902:da81:b029:e5:de44:af5b with SMTP id j1-20020a170902da81b02900e5de44af5bmr10472610plx.27.1616689031898;
        Thu, 25 Mar 2021 09:17:11 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
        by smtp.gmail.com with ESMTPSA id s15sm6416917pgs.28.2021.03.25.09.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:17:11 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: netdev@vger.kernel.org,
	davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v3 0/7] mld: change context from atomic to sleepable
Date: Thu, 25 Mar 2021 16:16:50 +0000
Message-Id: <20210325161657.10517-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616689033; a=rsa-sha256;
	cv=none;
	b=0nI+0fKDbZ6SZIUKLwrlyH02UGYsohVc1dfQ4Wi1r57IYfvzVZmem4JZj8WwXbdrmI9Trg
	GIqudBKWx4s3cjuAHyMkHwOskq5wl5s/8S9ujDFfeRBaDSBOxwQObMp1ocfyjpf2oBvzyF
	Ax0pYDILLCapv5sb/p5/5KCb73MgkZU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b="lcVi/cV2";
	spf=pass (diktynna.open-mesh.org: domain of ap420073@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ap420073@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616689033;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:dkim-signature; bh=BSzjAGgCw63gBBm4851CZ2FBYt1vflt0KQxjA+y8wUo=;
	b=EoBoFjwkhuyxZXIM17qhG/YqByRD+OZNSj45brS+T9jgpBFQDGEYAs2uiGAJ20vj0debnY
	AWeKYUUJttHNhknes4W4WBsigUsSRZ9uUkKt50rSZHt12GUgQcRyNPl2+iOWZ+NshPE/S9
	g18MZYZQnujdXoLduEC6fEobk0pa03c=
X-MailFrom: ap420073@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: DXFAD3LXI4MWH2TYLOUWPB2TKNVZOUKM
X-Message-ID-Hash: DXFAD3LXI4MWH2TYLOUWPB2TKNVZOUKM
X-Mailman-Approved-At: Thu, 25 Mar 2021 16:31:10 +0100
CC: ap420073@gmail.com, jwi@linux.ibm.com, kgraul@linux.ibm.com, hca@linux.ibm.com, gor@linux.ibm.com, borntraeger@de.ibm.com, mareklindner@neomailbox.ch, a@unstable.cc, yoshfuji@linux-ipv6.org, dsahern@kernel.org, linux-s390@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DXFAD3LXI4MWH2TYLOUWPB2TKNVZOUKM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This patchset changes the context of MLD module.
Before this patchset, MLD functions are atomic context so it couldn't use
sleepable functions and flags.

There are several reasons why MLD functions are under atomic context.
1. It uses timer API.
Timer expiration functions are executed in the atomic context.
2. atomic locks
MLD functions use rwlock and spinlock to protect their own resources.

So, in order to switch context, this patchset converts resources to use
RCU and removes atomic locks and timer API.

1. The first patch convert from the timer API to delayed work.
Timer API is used for delaying some works.
MLD protocol has a delay mechanism, which is used for replying to a query.
If a listener receives a query from a router, it should send a response
after some delay. But because of timer expire function is executed in
the atomic context, this patch convert from timer API to the delayed work.

2. The fourth patch deletes inet6_dev->mc_lock.
The mc_lock has protected inet6_dev->mc_tomb pointer.
But this pointer is already protected by RTNL and it isn't be used by
datapath. So, it isn't be needed and because of this, many atomic context
critical sections are deleted.

3. The fifth patch convert ip6_sf_socklist to RCU.
ip6_sf_socklist has been protected by ipv6_mc_socklist->sflock(rwlock).
But this is already protected by RTNL So if it is converted to use RCU
in order to be used in the datapath, the sflock is no more needed.
So, its control path context can be switched to sleepable.

4. The sixth patch convert ip6_sf_list to RCU.
The reason for this patch is the same as the previous patch.

5. The seventh patch convert ifmcaddr6 to RCU.
The reason for this patch is the same as the previous patch.

6. Add new workqueues for processing query/report event.
By this patch, query and report events are processed by workqueue
So context is sleepable, not atomic.
While this logic, it acquires RTNL.

7. Add new mc_lock.
The purpose of this lock is to protect per-interface mld data.
Per-interface mld data is usually used by query/report event handler.
So, query/report event workers need only this lock instead of RTNL.
Therefore, it could reduce bottleneck.

Changelog:
v2 -> v3:
1. Do not use msecs_to_jiffies().
(by Cong Wang)
2. Do not add unnecessary rtnl_lock() and rtnl_unlock().
(by Cong Wang)
3. Fix sparse warnings because of rcu annotation.
(by kernel test robot)
   - Remove some rcu_assign_pointer(), which was used for non-rcu pointer.
   - Add union for rcu pointer.
   - Use rcu API in mld_clear_zeros().
   - Remove remained rcu_read_unlock().
   - Use rcu API for tomb resources.
4. withdraw prevopus 2nd and 3rd patch.
   - "separate two flags from ifmcaddr6->mca_flags"
   - "add a new delayed_work, mc_delrec_work"
5. Add 6th and 7th patch.

v1 -> v2:
1. Withdraw unnecessary refactoring patches.
(by Cong Wang, Eric Dumazet, David Ahern)
    a) convert from array to list.
    b) function rename.
2. Separate big one patch into small several patches.
3. Do not rename 'ifmcaddr6->mca_lock'.
In the v1 patch, this variable was changed to 'ifmcaddr6->mca_work_lock'.
But this is actually not needed.
4. Do not use atomic_t for 'ifmcaddr6->mca_sfcount' and
'ipv6_mc_socklist'->sf_count'.
5. Do not add mld_check_leave_group() function.
6. Do not add ip6_mc_del_src_bulk() function.
7. Do not add ip6_mc_add_src_bulk() function.
8. Do not use rcu_read_lock() in the qeth_l3_add_mcast_rtnl().
(by Julian Wiedmann)

Taehee Yoo (7):
  mld: convert from timer to delayed work
  mld: get rid of inet6_dev->mc_lock
  mld: convert ipv6_mc_socklist->sflist to RCU
  mld: convert ip6_sf_list to RCU
  mld: convert ifmcaddr6 to RCU
  mld: add new workqueues for process mld events
  mld: add mc_lock for protecting per-interface mld data

 drivers/s390/net/qeth_l3_main.c |    6 +-
 include/net/if_inet6.h          |   37 +-
 include/net/mld.h               |    3 +
 net/batman-adv/multicast.c      |    6 +-
 net/ipv6/addrconf.c             |    9 +-
 net/ipv6/addrconf_core.c        |    2 +-
 net/ipv6/af_inet6.c             |    2 +-
 net/ipv6/icmp.c                 |    4 +-
 net/ipv6/mcast.c                | 1080 ++++++++++++++++++-------------
 9 files changed, 678 insertions(+), 471 deletions(-)

-- 
2.17.1
