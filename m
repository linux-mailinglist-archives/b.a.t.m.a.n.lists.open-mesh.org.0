Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7481F3CC2BD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 17 Jul 2021 13:11:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6CBDF82111;
	Sat, 17 Jul 2021 13:11:19 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8211181535
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 17 Jul 2021 13:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1626519691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JnqKvBk3Pl+zDzXyO2+N3Mr8wzUJs/ROwp/sFqcNlnw=;
	b=CbiH4etfU+o6aWdMlxUrxMinCPzfrc4dF19UnWrkLpSxEWhdO8OLVowkVc8JxukjIpJBg/
	umM6+kPBST02BTX8JSgr81Yt7INkyZuH4q3M7qMYo4o9MbAs53PfqQZ+vejxX2XQb3ComL
	hmg/jiflXtnGDTz1RYU8YALQKiVWCIY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/9] batctl: man: Fix alignment after json list
Date: Sat, 17 Jul 2021 13:01:21 +0200
Message-Id: <20210717110129.25539-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210717110129.25539-1-sven@narfation.org>
References: <20210717110129.25539-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1626520274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JnqKvBk3Pl+zDzXyO2+N3Mr8wzUJs/ROwp/sFqcNlnw=;
	b=0rqVWmD76V4+EOuR8kWeRFtVVAdpua5RAsq21S7G2bdYkfyHwCo0vVKBXW9e/QgKauggJl
	/IpTAw4m1HbCQqb4QqYYqdWlij5cX99gD0b4nJ9BOgmK3vr0C0yODnmn+D3/AxO5ZWocNh
	FBgF6ENNYekqPi7gfG99tLkQ1Ba5+x0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1626520274; a=rsa-sha256;
	cv=none;
	b=VinpqdlSs4WNE3Rt3YR7gQqvJGDnCDrzhcbD8xwWqNcOdq//FeNB1OO8mNfq3huHOsQIPw
	FXMdj9ic/IqqdyR9tNCzkaZvVdtfluG6wNH9d+VLH7qpKAVM6ngPH7n84D4Bw0GJ2DZr1/
	toSToUaHw1fgoiJ/RniGU3eGCDyiiq0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=CbiH4etf;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: B3OWKQCOG7R2QGT6UA6GGEJXFX5AVGU5
X-Message-ID-Hash: B3OWKQCOG7R2QGT6UA6GGEJXFX5AVGU5
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/B3OWKQCOG7R2QGT6UA6GGEJXFX5AVGU5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The manpage uses RS macro to indent elements of a list and the resets the
indentation again with RE. ut the usage of these macros were mixed up for
the last entries. This caused a misalignment of the following entries.

Fixes: 20086d207940 ("batctl: Add transtable_local_json command")
Fixes: 35d8327f9d98 ("batctl: Add vlan_json command")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 man/batctl.8 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man/batctl.8 b/man/batctl.8
index 80077bb..a820e6e 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -338,13 +338,13 @@ List of available JSON queries:
 .RS 10
 \- transtable_global_json|tgj
 .RE
-.RE
+.RS 10
 \- transtable_local_json|tlj
 .RE
-.RE
+.RS 10
 \- vlan_json|vj
 .RE
-.RS 10
+.RE
 .br
 .IP "[\fBmeshif <netdev>\fP] \fBtranslate\fP|\fBt\fP \fBMAC_address\fP|\=
fBbat\-host_name\fP|\fBhost_name\fP|\fBIP_address\fP"
=20
--=20
2.30.2
