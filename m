Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 490FA99DF64
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 15 Oct 2024 09:40:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DD0AA83FAF
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 15 Oct 2024 09:40:34 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1728978034;
 b=GmcxvLh6A2UGdnbLc6jcqqpHapyESRsDPtZdrqizFAq4bucjNi1EUcBNq/u6xjm/JtAHX
 xV8U5BNIl5xj4TKA4Boy54mDJZmsfqqj/6beo+jyFKkAtqGKH+j44w/ioRb9kf8Q4l5t+sC
 twwz2Xi0XYbhTKOs/dGdbyTNf/NOb/U=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1728978034; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=o15IjSjSEbc45+xTmKhS0JErs0wEkqd/wxgOrWgoUeU=;
 b=z4D1JU05eQZ7btv+bcQtZJEAifKC3EkqjeeUn04GRWgr+ZFnxLalBs370rO2WHp4Heqk5
 SzauS4fx1G/brvqWcL3QW8VJn9lGA2DhU+OBM1eGOOInzep5k1sihpj5E1/zH831mkDHpeV
 YwaqD4Z7h7ytbGxyVSKBnlJcJzwQcu8=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail (ARC-Seal[1] did not validate);
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail;
 arc=fail (ARC-Seal[1] did not validate);
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EE9EA8164E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 15 Oct 2024 09:39:48 +0200 (CEST)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1728977989; a=rsa-sha256;
	cv=none;
	b=fuL8zh88uV8DE854IwHcEsl/cqrc5xT9OS7SlclwNFA5t+gKpbxDz/7xYKd8jLY5QyyJca
	aCpAzSKgsFhPri3Mi0mIrC9bnJHy7ISieF4FdEE4iFPb9aGjCURqNzx1+kX49Z739ErotD
	NIxFeh46xb3NqDjl1Ian7FuCGhxgPCY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1728977989;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o15IjSjSEbc45+xTmKhS0JErs0wEkqd/wxgOrWgoUeU=;
	b=F2b6XkouKvspbZquRMThnpL7CvW/azTUA06CIH4kFwhNE39QYm3Ek/nk8icu/G7JbvXW+W
	opvJ/thi5H/2BeAuYrkm5np/DIAgHFk75ot0tPEAEs+m44AaPCh2vWhYPb7JSJGOFyz3Xf
	ilxlNNj808JF6pVZFLwoH0Qa/al7Tw8=
Received: from kero.packetmixer.de (p5480b09e.dip0.t-ipconnect.de
 [84.128.176.158])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 95D0CFA181;
	Tue, 15 Oct 2024 09:39:48 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 1/4] batman-adv: Start new development cycle
Date: Tue, 15 Oct 2024 09:39:43 +0200
Message-Id: <20241015073946.46613-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241015073946.46613-1-sw@simonwunderlich.de>
References: <20241015073946.46613-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 23W3GUH42BEQKEU2WJVIJ4JLASPZCADU
X-Message-ID-Hash: 23W3GUH42BEQKEU2WJVIJ4JLASPZCADU
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/23W3GUH42BEQKEU2WJVIJ4JLASPZCADU/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This version will contain all the (major or even only minor) changes for
Linux 6.13.

The version number isn't a semantic version number with major and minor
information. It is just encoding the year of the expected publishing as
Linux -rc1 and the number of published versions this year (starting at 0).

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 3d4c36ae2e1a..97ea71a052f8 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
 
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2024.2"
+#define BATADV_SOURCE_VERSION "2024.3"
 #endif
 
 /* B.A.T.M.A.N. parameters */
-- 
2.39.5

