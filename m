Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D29656DA3
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 27 Dec 2022 18:46:03 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2FE2F847AC;
	Tue, 27 Dec 2022 18:46:02 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5DB64846DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 27 Dec 2022 18:45:59 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672163159;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KeUJNb/SdVc6PoywmhRP7mULtSIRq+IJ6vgN5EonDV0=;
	b=LWhj4MylYm1wGYvXG9tyopGykkzn2Lqz2OvOG4Ss6CPT8IBiDcfWj7J2qrKtEkpi/KzntC
	/BszlDDntv7CpH7WUOBds7xbj9TEoGfR7SXjoay4Q5nGA7WS3KQo92tUplkwAtTuEpp/cI
	ieLbsReTsWW/WQA2E//zfDRJv8xKtow=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672163159; a=rsa-sha256;
	cv=none;
	b=yTx3RWvUpFwatLdGmjObqccPgkhtTvPGEme7jfFJRyuHX+v9NPas4Ae/bqeueTT4cKuKE6
	7zqY8icwtIy+uJurHkvTN863IJqi2GDVQPUP2j8ZXORymNqfZcxFGU+d6ekZ/sIcZxBtgb
	gJlZIh2TR+jw80k0IvTBXgtcSJCyMzA=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 627913EC75;
	Tue, 27 Dec 2022 18:45:58 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH] build_test: don't warn about "Macro argument reuse" in multicast_forw.c
Date: Tue, 27 Dec 2022 18:45:54 +0100
Message-Id: <20221227174554.13168-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.3
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 4YKTZAVSRSBEOBMVJJZIM3BIN5BLQABF
X-Message-ID-Hash: 4YKTZAVSRSBEOBMVJJZIM3BIN5BLQABF
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4YKTZAVSRSBEOBMVJJZIM3BIN5BLQABF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

It's tricky to avoid reusing an argument in a for-each like macro. This i=
s
to silence the following warning:

  CHECK: Macro argument reuse 'num_dests' - possible side-effects?
  #789: FILE: net/batman-adv/multicast_forw.c:35:
  +#define batadv_mcast_forw_tracker_for_each_dest(dest, num_dests) \
  +	for (; num_dests; num_dests--, (dest) +=3D ETH_ALEN)

  CHECK: Macro argument reuse 'num_dests' - possible side-effects?
  #792: FILE: net/batman-adv/multicast_forw.c:38:
  +#define batadv_mcast_forw_tracker_for_each_dest_rev(dest, num_dests) \
  +	for (; num_dests; num_dests--, (dest) -=3D ETH_ALEN)

Later, once < 5.18 is out of our compat range we can rely on C99 syntax
and use variable declarations inside a for loop, readd the check and
rewrite the macro to something like this:

  #define batadv_mcast_forw_tracker_for_each_dest(dest, num_dests)       =
 \
          for (typeof(num_dests) __batadv_forw_num_dests =3D num_dests;  =
   \
               *__batadv_forw_num_dests;                                 =
 \
               (*__batadv_forw_num_dests)--, (dest) +=3D ETH_ALEN)

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 checkstuff.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/checkstuff.sh b/checkstuff.sh
index 207652ce4fbe..be49709dcb3b 100755
--- a/checkstuff.sh
+++ b/checkstuff.sh
@@ -191,7 +191,7 @@ test_checkpatch()
 			continue
 		fi
=20
-		if [ "${fname}" =3D "log.h" ]; then
+		if [ "${fname}" =3D "log.h" -o "${fname}" =3D "multicast_forw.c" ]; th=
en
 			cp_extra_params=3D"${cp_extra_params} --ignore MACRO_ARG_REUSE"
 		fi
=20
--=20
2.39.0
