Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DECA14F93
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jan 2025 13:46:24 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1817084211
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jan 2025 13:46:24 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1737117984;
 b=FN2G0/npOvc+r2aeu4ry5ivYuhN+Y+LNA5FjUU+jKbbAX5Vkpz2kYIsYljUn7pQANpJ5v
 he09v5KijHOOnn/UsuLxEKI1XesQkQaHHLUb8D51sQLZRv02vVCUVFzxIjh6cpkj6XhqSrV
 0chcTXWKGIRtjTtqJDNHIxXZUBC7+Xw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1737117984; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=5Vl31NON3ya0Jd4lbUv8xOHtBt0ptn6N5Pv2vU9U5I0=;
 b=FlkOO8gurwe0jTxKgtsaNHucNSEgcn47MbucnAeD2Kc8AItqGlQ+2L3tT3+dBkUb6HxRz
 ND5AAI/s4wUqVmJJbDlwiO5EQ+elx920htkJbojfgSu299QrvYOJ556ep06EfQJj6mpoFiH
 2P1d50TAJDVWxvjDQwa+SFP0b/t2HwI=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D33F984113
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Jan 2025 13:39:41 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1737117581;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5Vl31NON3ya0Jd4lbUv8xOHtBt0ptn6N5Pv2vU9U5I0=;
	b=k0zaR43Q/OcRiReX+yft/qmPvgaJ5Z7rHyaXKUBibSoYgRlp9Do5aKPqb+1IF8csOY3x9K
	kbWSakDcKzbgs1r2gfyslArCCc3l+YBeFZGFt/HDpZEegmMXvpjHTdq38ce5bCv+X3T4Hw
	XCrij/d+RUWE/pbrkh4Jf+XQQz35wfE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1737117581; a=rsa-sha256;
	cv=none;
	b=xUiKl7ELaWbGuEkVY2k6ihHU1n32NPCe3BKuZ3P+rLYO0+9Bsa23vPEyCSqlmBZR80Hphy
	ejzWYbABCyPDDuD+9rkRBNo96VUtW6IelbVlbStJw9+xmccAmc+2DeYRyemiZCFHuokyx7
	3cNspSoa1SI1M7DEBZUJwmMTRNbj9WA=
Received: from kero.packetmixer.de
 (p200300c5973c90d8A96DD71A2E03F697.dip0.t-ipconnect.de
 [IPv6:2003:c5:973c:90d8:a96d:d71a:2e03:f697])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 55B98FA368;
	Fri, 17 Jan 2025 13:39:41 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 08/10] mailmap: add entries for Sven Eckelmann
Date: Fri, 17 Jan 2025 13:39:08 +0100
Message-Id: <20250117123910.219278-9-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250117123910.219278-1-sw@simonwunderlich.de>
References: <20250117123910.219278-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: TAFVY7LFCDIPG2APBD5NQWHAC4N5JHI7
X-Message-ID-Hash: TAFVY7LFCDIPG2APBD5NQWHAC4N5JHI7
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TAFVY7LFCDIPG2APBD5NQWHAC4N5JHI7/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

Map the defunc mail addresses to the currently used mail address (listed in
MAINTAINERS).

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 .mailmap | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/.mailmap b/.mailmap
index efabe03f7849..41aca254671d 100644
--- a/.mailmap
+++ b/.mailmap
@@ -667,6 +667,11 @@ Sudarshan Rajagopalan <quic_sudaraja@quicinc.com> <sudaraja@codeaurora.org>
 Sudeep Holla <sudeep.holla@arm.com> Sudeep KarkadaNagesha <sudeep.karkadanagesha@arm.com>
 Sumit Semwal <sumit.semwal@ti.com>
 Surabhi Vishnoi <quic_svishnoi@quicinc.com> <svishnoi@codeaurora.org>
+Sven Eckelmann <sven@narfation.org> <seckelmann@datto.com>
+Sven Eckelmann <sven@narfation.org> <sven.eckelmann@gmx.de>
+Sven Eckelmann <sven@narfation.org> <sven.eckelmann@open-mesh.com>
+Sven Eckelmann <sven@narfation.org> <sven.eckelmann@openmesh.com>
+Sven Eckelmann <sven@narfation.org> <sven@open-mesh.com>
 Takashi YOSHII <takashi.yoshii.zj@renesas.com>
 Tamizh Chelvam Raja <quic_tamizhr@quicinc.com> <tamizhr@codeaurora.org>
 Taniya Das <quic_tdas@quicinc.com> <tdas@codeaurora.org>
-- 
2.39.5

