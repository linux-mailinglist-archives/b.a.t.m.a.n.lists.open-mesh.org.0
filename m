Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A6521758FF3
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 19 Jul 2023 10:16:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5D2DE82213
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 19 Jul 2023 10:16:07 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1689754567;
 b=HoE+r0Ns3FoNhq0dz6PgsKDRmJDLm/B4Dvaw1GzE8drqHQdcPcjQcTS6r5D0w2SfnN+75
 NL4Q87TK1i/WmsZ28HwRqdlxVLY5L43CAvGtRrn4h4gcekJc63E+qT2qGs+pPPW9V+L6hEi
 4PKZc9jeJGKNL+qO0Qxjm2Zcl9L9Qhc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1689754567; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=c6j1+KqOI0fNe1l53utEwgQ+1M9BdfKVpW+q98tlznE=;
 b=nnbKa2GlhlTuC1wfXMbGlPi9ez1eK7hLA8OtfT9146yuTnf3lsK5S890J8cUciVPCLUGj
 bmneSd3E10x4q8q1b3WVnkegPu5jBY0u62/PzbegJmFcqXqVx9rvYn1WHUN6VwaXF8bz2nY
 MAYuEYyPZZs0lLSJeoOKwcXDkzUTt9E=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1AF5D806FC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 19 Jul 2023 10:15:30 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1689754530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=c6j1+KqOI0fNe1l53utEwgQ+1M9BdfKVpW+q98tlznE=;
	b=Pp6MrBFgjRMhSnqCG+bbHxxa0CbGPUZ3iNrAAU6nQC/1ODR5qLnUBpmUG1VbNyzgHhOL0q
	bNPPoisBLM4GVyhrxwy6w/gGXaB4TbuwCfIrT7YqnZdGjdXkj2G+exuyD9QVoTOtzhlpdO
	qLdD5E6gLmHXNN3SAocvDNEXyEWKT7c=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1689754530; a=rsa-sha256;
	cv=none;
	b=m9+fW1jf+tpAIKIu4DEIPSkuKwORKSYHX6r2cgHdHgDV8h1TJmiuYsTDD0mT5WCUewxAy4
	Vh79yEkWc7SM90OZ6Tfx39AK9B9ltEIktRyttzepwPpR3ntTSd2pIvviaWIPUKF57/3NQR
	YXOIWUi0W8PYPvkoWRGNlCk65pCsbao=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=caGTLGoY;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1689754529;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=c6j1+KqOI0fNe1l53utEwgQ+1M9BdfKVpW+q98tlznE=;
	b=caGTLGoYsGkwqGKQHnfmVzLQYuUGSlsVUAfbm5Bmr/04SLRg5IiTENmgDq9rlldIcxHpgj
	yniSpqooQVc1h5R0L/Ja8Bj5CePx4Ukhi9BCrVSpgLgLXKGVjAnkoiTV58ki+goHTLMfHX
	jZm+ULsvT/Jm5dMhW5xGrUqQmUqpeEg=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 0/2] batman-adv: Fix MTU handling
Date: Wed, 19 Jul 2023 10:15:04 +0200
Message-Id: <20230719-mtu-v1-0-48fd024f0f56@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIibt2QC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2MDc0NL3dySUt1U07Q0c8Nks5QUc3MloMqCotS0zAqwKdGxtbUA+kTsCFU
 AAAA=
To: b.a.t.m.a.n@lists.open-mesh.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=896; i=sven@narfation.org;
 h=from:subject:message-id; bh=1lIFEbxYOo0ohXTefqBXAVCzErDAosZgsbqaIKMLl1I=;
 b=owEBbQKS/ZANAwAKAV2HCgfBJntGAcsmYgBkt5ueVWpg6iCNYNySvV8GZNo6p06NuW2TkI4iD
 LWpqEgueGKJAjMEAAEKAB0WIQQXXSuHYSVz3OMy4AJdhwoHwSZ7RgUCZLebngAKCRBdhwoHwSZ7
 RpWUEADS9uLAuBDZRvlX/lzUuteb338SyO7t2E9BQYIBeMdmJyi5OONHozRTaP5bBSdU5TVmgdO
 eC1JEh7puqudfGGIi1lDdrzy9KF/2i2/krQ0M2NZZlMHUEsU0ZBl6OQuJSHR6MXUa6kEV6onEQz
 57OJP//Tli93GTUiaDoVAQz+UsIJMenqlrkYXcoBfpE4x2dkR7CPH3Mm1QTKr+ph/QY1B5KcRhq
 PsMHHfsrVJbNc+q4fjcBN1fHLRPKVltyUk3pzfcPZQQNuT4IWpGq6qqFFwbnaL5IRWfbbBu1xpj
 gwWER55599XXzGx4K27jHmXECgxGWLBx0ZCjrWKHyXXM/Qfd9ZyHE4Jjt0jy6w1mDqBBaBn+iqC
 nIFID8wb1RyLdI2DwFuaYz5ShBDe5bixxYoLO1b3N9VDWYIhD7TWB2uas/vLVP+Smeowpl4dh2j
 jZVKt0jOk8KFTFaEUDgC6HZ3gq68auzqe7vP861Sw3kd6tFsZdRDq3KsfkPC6XrDJ4KgYBPkQZU
 MQY9b8C/aQS/vfFLWEMgbLkkHb/GK+oDtcgncxiJJmxIOVdlYgQKBOIvxs5YwpYk3GN4fYkmSBF
 Ps/dYnIHbm3PfIzplS9H9HO+7hCAHT0A4Iddz54IN91Ob+pfjFEKwfHw0O3TlmVJet5x0wB846h
 9W9oAxENxjhBEDQ==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: BM7TXKMO62S4NMABQTBFTW7N622B6ZIN
X-Message-ID-Hash: BM7TXKMO62S4NMABQTBFTW7N622B6ZIN
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BM7TXKMO62S4NMABQTBFTW7N622B6ZIN/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

It was noticed (while proposing a starting point/patch for
https://www.open-mesh.org/issues/365 ) that the auto-adjusting MTU handling
in batman-adv looks rather odd.

* events for pre-MTU change and (post) MTU change were not triggered for an
  auto-adjust
* user set (lower) MTUs were always overwritten when a hard-interface
  became active

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (2):
      batman-adv: Trigger events for auto adjusted MTU
      batman-adv: Don't increase MTU when set by user

 net/batman-adv/hard-interface.c | 14 +++++++++++++-
 net/batman-adv/soft-interface.c |  3 +++
 net/batman-adv/types.h          |  6 ++++++
 3 files changed, 22 insertions(+), 1 deletion(-)
---
base-commit: 8924adbdf993cd0521f9d0024b43e3b23af5114f
change-id: 20230719-mtu-e5ff71c6dd77

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>

