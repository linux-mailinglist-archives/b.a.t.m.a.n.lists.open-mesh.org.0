Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6FC3469D4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Mar 2021 21:30:16 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 064AA807C0;
	Tue, 23 Mar 2021 21:30:15 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0EB558067B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Mar 2021 21:30:10 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EF7013EC03;
	Tue, 23 Mar 2021 21:30:09 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH maint] batman-adv: Fix order of kernel doc in batadv_priv
Date: Tue, 23 Mar 2021 21:30:07 +0100
Message-Id: <20210323203007.11014-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616531411; a=rsa-sha256;
	cv=none;
	b=BDF96zkMor6FgWKu+43kSZquiKnHNxjY3bmnWiuYbHL+gSCN0wunbAEHXH30q0MNZTR1rB
	z5pb7g2vlL0oxLbHar6WyDOySAAJ1g0OwbJQ2k94DF6SWVni36VngZFZI+UqjVib3OpO0O
	wdyTJMjFY84gVcJpKa3+qO/eO72h4JA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616531411;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=wcnag5qahUTMl9l3pmQaQxz49hM/HkEZsvkmy19yvNQ=;
	b=iVIYV0un+IGdnuKijR09+QMsJBAqf9404EXfIo73ozI1ZMA9YxBAFBE2/wZUbyz/e8CeNm
	QfSjtL2eqNQ2Nc4pSgnprBGAhjwk1YT8fLEYMafxUeZaHgMGtiM5UkvMWHmas5mcxWycgs
	dVZC6FRPAqYKfBNA0FyZTUtAbITHKyc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JJFXUKVVRZG3DMNAFQE4RACQI7SHG5BA
X-Message-ID-Hash: JJFXUKVVRZG3DMNAFQE4RACQI7SHG5BA
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JJFXUKVVRZG3DMNAFQE4RACQI7SHG5BA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

During the inlining process of kerneldoc some comments were placed at
the wrong struct members. Fixing this by reordering the comments.

Fixes: 6369b8e999af ("batman-adv: Use inline kernel-doc for enum/struct")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---

Note: checkpatch shows me a warning:

```
~/dev-priv/linux/linux/scripts/checkpatch.pl --strict ./0001-batman-adv-F=
ix-order-of-kernel-doc-in-batadv_priv.patch
CHECK: spinlock_t definition without comment
#35: FILE: net/batman-adv/types.h:1665:
+       spinlock_t forw_bat_list_lock;

CHECK: spinlock_t definition without comment
#39: FILE: net/batman-adv/types.h:1668:
+       spinlock_t forw_bcast_list_lock;

total: 0 errors, 0 warnings, 2 checks, 25 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or --fix-inpl=
ace.

./0001-batman-adv-Fix-order-of-kernel-doc-in-batadv_priv.patch has style =
problems, please review.
```

However it seems to be a false positive:

```
~/dev-priv/linux/linux/scripts/checkpatch.pl -f ./net/batman-adv/types.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ImportError: No module named git
total: 0 errors, 0 warnings, 2410 lines checked

NOTE: If any of the errors are false positives, please report
      them to the maintainer, see CHECKPATCH in MAINTAINERS.

./net/batman-adv/types.h has no obvious style problems and is ready for s=
ubmission.
```

Checkpatch version is: e0c755a45f6f from net-master


 net/batman-adv/types.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 2f96e96a..30c78e6e 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1658,19 +1658,19 @@ struct batadv_priv {
 	/** @tp_list: list of tp sessions */
 	struct hlist_head tp_list;
=20
-	/** @tp_num: number of currently active tp sessions */
-	struct batadv_hashtable *orig_hash;
-
 	/** @orig_hash: hash table containing mesh participants (orig nodes) */
-	spinlock_t forw_bat_list_lock;
+	struct batadv_hashtable *orig_hash;
=20
 	/** @forw_bat_list_lock: lock protecting forw_bat_list */
-	spinlock_t forw_bcast_list_lock;
+	spinlock_t forw_bat_list_lock;
=20
 	/** @forw_bcast_list_lock: lock protecting forw_bcast_list */
-	spinlock_t tp_list_lock;
+	spinlock_t forw_bcast_list_lock;
=20
 	/** @tp_list_lock: spinlock protecting @tp_list */
+	spinlock_t tp_list_lock;
+
+	/** @tp_num: number of currently active tp sessions */
 	atomic_t tp_num;
=20
 	/** @orig_work: work queue callback item for orig node purging */
--=20
2.30.1
