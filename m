Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC0B8455FF
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Feb 2024 12:09:09 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 935DA841CD
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Feb 2024 12:09:09 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1706785749;
 b=HWZv2EBWy4G8w8/EKmoqlz+7GA7rwbROLlpHEBe/+38qoCMd/ds+ikVye91w/b6l7omym
 tE+boNE6NW6zDnc6B/zXddVmducPRno9KuZ7vrb66qI9lKpVvcFUSqAuWstGpy4eIQzJaO5
 jEQqU8azRZiKW61zESezt79BhZc+uYw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1706785749; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pmYKqYyE1JR0P18Lszc5tmf8kQcs3uw5FoMPrCryMt8=;
 b=TahAilj2jPTVM5B/kjuje5lW85T5evtSaNqvUVh16QSwmoQQMGVoWPdxPyXmXutBiN/zu
 2MLtfAyKuUYTL/mSn2mw9UNUdcetnit0spiqqRh25LB8M27EeCBjL4IzTB7UrNQ+JXq4rVN
 BSRlxrEKFsLYG5XNf1o5JmvmyCJbTSA=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A4A5480B42
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  1 Feb 2024 12:07:59 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1706785679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pmYKqYyE1JR0P18Lszc5tmf8kQcs3uw5FoMPrCryMt8=;
	b=y1nv0o86YjzRhfcbanOakEAhDhATt6NL1dXjWytBVh6fP+j1CsUJyArLfVC8h4Nm6kQJgj
	oA7nNP5agq37QFznifnEQmiz1L/lzsU1RyPdKXxyruY5Q0joKEZhO4hvaLpiQSND/TwCee
	+5wnVau6aiw0rWXyny7Rlz7985HZcTs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1706785679; a=rsa-sha256;
	cv=none;
	b=v47mIL+BqYVp6NmurctLBEcEcZXJbgAmmVFQ3Upgg4rvez2bP26A6WBcvzKuShrFyewGu2
	fjQazi+Ku1q/9ouULoDKiKwZGU38EJDunjc9hleLD5EfynSYUbL8TRcfmIvbGgMiuHnmnx
	YWxCgYCcB/bQgH0er3UEUQershQMMFo=
Received: from kero.packetmixer.de
 (p200300C59712c7d8d89318fb9d63b559.dip0.t-ipconnect.de
 [IPv6:2003:c5:9712:c7d8:d893:18fb:9d63:b559])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 701F8FA9B3;
	Thu,  1 Feb 2024 12:07:59 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 1/4] batman-adv: Start new development cycle
Date: Thu,  1 Feb 2024 12:07:53 +0100
Message-Id: <20240201110756.29728-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240201110756.29728-1-sw@simonwunderlich.de>
References: <20240201110756.29728-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: BL3EPTNUZKSPMINYQHS5FLK2AKDPSPEW
X-Message-ID-Hash: BL3EPTNUZKSPMINYQHS5FLK2AKDPSPEW
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BL3EPTNUZKSPMINYQHS5FLK2AKDPSPEW/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This version will contain all the (major or even only minor) changes for
Linux 6.9.

The version number isn't a semantic version number with major and minor
information. It is just encoding the year of the expected publishing as
Linux -rc1 and the number of published versions this year (starting at 0).

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 870dcd7f1786..8ca854a75a32 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
 
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2024.0"
+#define BATADV_SOURCE_VERSION "2024.1"
 #endif
 
 /* B.A.T.M.A.N. parameters */
-- 
2.39.2

