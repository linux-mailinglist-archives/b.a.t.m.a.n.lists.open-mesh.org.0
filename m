Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E323CC2C3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 17 Jul 2021 13:11:57 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5FDAB824C3;
	Sat, 17 Jul 2021 13:11:49 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 47F0B81575
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 17 Jul 2021 13:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1626519693;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RiYXewCksOckQYVDxVxk2bz+XsFVVij4eSzjhJVORPs=;
	b=RyPBJb1OmWWHqBuZGzcJ7gJqwRG2oT7Z7UZYId661+ojiQ3opBzbptLWWOpSDrqXMO2nD6
	KpADx0/ycCNLDs/OaXVtQqh19Q1rYA1eQOnbr+oijWLwu/+zHcjTgf4gRGDpZZnuJT7dKW
	kuczLtDbbgf3kmDZE6r27kW/zQHuVyI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 4/9] batctl: man: Use native list support
Date: Sat, 17 Jul 2021 13:01:24 +0200
Message-Id: <20210717110129.25539-5-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210717110129.25539-1-sven@narfation.org>
References: <20210717110129.25539-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1626520275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=RiYXewCksOckQYVDxVxk2bz+XsFVVij4eSzjhJVORPs=;
	b=i1YSieVMDkXzqP719xP7lkWOZKUkdP4NKnam+GMagPbr4korWbAPBMTjsoLxac+gImejao
	Qw3JsLH8SMJxrgcBjtN1RSLPFtet2JGQh5LKlXrcyKUhhqxDYz8DITITeisg3UpeMjXdHz
	E8HxIz/Va/DX+bYaIyMTXEgqOak86tw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1626520275; a=rsa-sha256;
	cv=none;
	b=NgJt5sq7ziqq/JFFPZkpSamJPf4PxW+iq9HEmSwA7CAKfO4biRI0ILbSKYsXfopK8dy1Ei
	eSHAE/LBvDq0EiiAF6dVhf7e0e6CX19Hdott3F7++YE55zpV3Sb8MHYqtTeAwWWnQ25W9o
	/+7QwNMtwvhjugPJJsd0+leRm29C2O0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=RyPBJb1O;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: AZRUNHDA3BKBWE7C7XV54DTUB3MLUIAH
X-Message-ID-Hash: AZRUNHDA3BKBWE7C7XV54DTUB3MLUIAH
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AZRUNHDA3BKBWE7C7XV54DTUB3MLUIAH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The lists were manually implemented by shifting the content to the right =
and
then adding a prefix to it. This turned out to be the source of various
errors which affected the whole document after the "list".

The .IP list macro can be used instead to simplify these kind of lists.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 man/batctl.8 | 110 +++++++++++++++++++++------------------------------
 1 file changed, 44 insertions(+), 66 deletions(-)

diff --git a/man/batctl.8 b/man/batctl.8
index 39fac88..831a7e8 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -263,33 +263,24 @@ is printed.
 The local and global translation tables also support the "\-u" and "\-m"=
 option to only display unicast or multicast translation table announceme=
nts respectively.
=20
 List of debug tables:
-.RS 10
-\- neighbors|n
-.RE
-.RS 10
-\- originators|o
-.RE
-.RS 10
-\- gateways|gwl
-.RE
-.RS 10
-\- translocal|tl
-.RE
-.RS 10
-\- transglobal|tg
-.RE
-.RS 10
-\- claimtable|cl (compile time option)
-.RE
-.RS 10
-\- backbonetable|bbt (compile time option)
-.RE
-.RS 10
-\- dat_cache|dc (compile time option)
-.RE
-.RS 10
-\- mcast_flags|mf (compile time option)
-.RE
+.IP \(bu 2
+neighbors|n
+.IP \(bu 2
+originators|o
+.IP \(bu 2
+gateways|gwl
+.IP \(bu 2
+translocal|tl
+.IP \(bu 2
+transglobal|tg
+.IP \(bu 2
+claimtable|cl (compile time option)
+.IP \(bu 2
+backbonetable|bbt (compile time option)
+.IP \(bu 2
+dat_cache|dc (compile time option)
+.IP \(bu 2
+mcast_flags|mf (compile time option)
 .RE
 .br
 .br
@@ -303,45 +294,32 @@ the freeform debug tables or the native netlink mes=
sages.
=20
 .RS 7
 List of available JSON queries:
-.RS 10
-\- bla_backbone_json|bbj
-.RE
-.RS 10
-\- bla_claim_json|clj
-.RE
-.RS 10
-\- dat_cache_json|dcj
-.RE
-.RS 10
-\- gateways_json|gwj
-.RE
-.RS 10
-\- hardif_json|hj
-.RE
-.RS 10
-\- hardifs_json|hj
-.RE
-.RS 10
-\- mcast_flags_json|mfj
-.RE
-.RS 10
-\- mesh_json|mj
-.RE
-.RS 10
-\- neighbors_json|nj
-.RE
-.RS 10
-\- originators_json|oj
-.RE
-.RS 10
-\- transtable_global_json|tgj
-.RE
-.RS 10
-\- transtable_local_json|tlj
-.RE
-.RS 10
-\- vlan_json|vj
-.RE
+.IP \(bu 2
+bla_backbone_json|bbj
+.IP \(bu 2
+bla_claim_json|clj
+.IP \(bu 2
+dat_cache_json|dcj
+.IP \(bu 2
+gateways_json|gwj
+.IP \(bu 2
+hardif_json|hj
+.IP \(bu 2
+hardifs_json|hj
+.IP \(bu 2
+mcast_flags_json|mfj
+.IP \(bu 2
+mesh_json|mj
+.IP \(bu 2
+neighbors_json|nj
+.IP \(bu 2
+originators_json|oj
+.IP \(bu 2
+transtable_global_json|tgj
+.IP \(bu 2
+transtable_local_json|tlj
+.IP \(bu 2
+vlan_json|vj
 .RE
 .TP
 [\fBmeshif <netdev>\fP] \fBtranslate\fP|\fBt\fP \fBMAC_address\fP|\fBbat=
\-host_name\fP|\fBhost_name\fP|\fBIP_address\fP
--=20
2.30.2
