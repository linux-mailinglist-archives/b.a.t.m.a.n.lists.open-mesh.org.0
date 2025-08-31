Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1668FB3D431
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 Aug 2025 17:40:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DEC6D82E69
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 Aug 2025 17:40:17 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1756654817;
 b=Yo/WgMpgtuVCXNjCg+woe2gsHmdz/rQzZh7MSRJDC6bWY2DfkSvqTOB9v9r/Jo0v1ls3g
 3+iGXEtk6n0gz+K2oLM+foVyTiWH1V9n/0CFa5odb/NDJrz39SA1bpRyXQDSQqcmoz3K5eH
 QNi74HwBCexybKi2wTC7Zw4xKoSLYcg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1756654817; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=zNsdMWDesUp3yWZaZEeubhjRrHXK0NNp5HJ800lXcAE=;
 b=xvo4hQMoigIMgRU8bZwYYt5y0Z36G2nKjtr1gjTcCDbKRyDnggNC7xk+JIus9aJ1NVoxq
 6JF8PI8sVI/SVHpUUbjcrLEY/usgm9BWP6scL9vrzB/xs20/lUpnCe+4Nt7ifTbPLW0YgQ1
 CIOa+pfzNEFwbicIYfO+oMw7rPvfpt0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0DACD8195D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 31 Aug 2025 17:40:11 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1756654812;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=zNsdMWDesUp3yWZaZEeubhjRrHXK0NNp5HJ800lXcAE=;
	b=mOWNd0pJatrhy8tpxraD65bABzdIAVcrQkHizZWpTqYG3suXK2fG2aIHAFDmyCbBnMfKQB
	HTeQrcN00vUcS8vvXvVc8UCjkORrQFAPXsjtKGU7R09u9lgqp3O6ytq0GW3wpe7p9amLNB
	BirqYcpsyrgRebnUY0aK8KTzs9CaJQc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yLwecegF;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1756654812; a=rsa-sha256;
	cv=none;
	b=iT0kXjYwz7EVY8cUQ62Ge4YBEfMCL5XbW3x03i8k8NBhNX8eSUnFPHUqOPU9E5IYohtL+U
	OjPiH1sxnHCfBd03GI3DVfUwwwjBkbNbwkaeh36i0xVJPD22JVcQaRHuHV1TDfj2r6xA4t
	PUNFNSPg3SELyrTAVmfwJmaqK5V3rNU=
Received: by dvalin.narfation.org (Postfix) id 027EF204FB;
	Sun, 31 Aug 2025 15:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1756654811;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=zNsdMWDesUp3yWZaZEeubhjRrHXK0NNp5HJ800lXcAE=;
	b=yLwecegFt9xE5+7BPNqwusngTKoewtU2RuiPJ5G0KeEa9DdU+Qy34HicCzmT7fkrHPwh2W
	VUwWD7PyissUyMxQGtY/wTAX+dvczEZiYbrqHmppNRfr9lREokx/q2MRMA5T9xlCyv81+N
	g7VxxLJidsUUiQz/p/ONskK2XtwIJro=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 0/2] batman-adv: remove network coding support
Date: Sun, 31 Aug 2025 17:40:00 +0200
Message-Id: <20250831-drop-catwoman-v1-0-1071bb2a159a@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANBstGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDCyML3ZSi/ALd5MSS8vzcxDxdw0RDS2Njg0Rjo6REJaCegqLUtMwKsHn
 RsbW1AEdVNGFfAAAA
X-Change-ID: 20250828-drop-catwoman-1a19330a32ba
To: b.a.t.m.a.n@lists.open-mesh.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2681; i=sven@narfation.org;
 h=from:subject:message-id; bh=Qid9VNxh3YPCl+DK6w7RQL1LZRWALZd58XnzcFTJ/Yo=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDBlbcq5onzk0N/f53j7Jklkqky/+3bHvZtlUr9+trxZ71
 Tvqyp4I6ihlYRDjYpAVU2TZcyX//Gb2t/Kfp308CjOHlQlkCAMXpwBMJCSPkaHBVPV58SOe1hmR
 vfpKL+z8M2S5FmXPctw9d+4iJZtD4TqMDFuPKr7JibjyQmhVw8pl3IYv83X2Hpbp8H6XHBx71qh
 7NxMA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: F7L4X2LHMWPTNPYLMZDWDSTSV5ILJ47E
X-Message-ID-Hash: F7L4X2LHMWPTNPYLMZDWDSTSV5ILJ47E
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/F7L4X2LHMWPTNPYLMZDWDSTSV5ILJ47E/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The Network Coding feature was introduced in 2013 as a GSoC project,
based on the master thesis "Inter-Flow Network Coding for Wireless Mesh
Networks". It relied on the assumption that neighboring mesh nodes could
reliably overhear each other's transmissions in promiscuous mode, allowing
packets to be combined to reduce forwarding overhead.

This assumption no longer holds for modern wireless mesh networks, which
are heterogeneous and make overhearing increasingly unreliable. Factors
such as multiple spatial streams, varying data rates, beamforming, and
OFDMA all prevent nodes from consistently overhearing each other. The current
implementation in batman-adv is not able to detect these conditions and would
require a more complex layer beyond its neighbor discovery process to do so.

In addition, the feature has been unmaintained for years and is discouraged 
for use. None of the current maintainers have the required test
setup to verify its functionality, and known issues remain in its data
structures (reference counting, RCU usage, and cleanup handling). Its
continued presence also blocks necessary refactoring of the core originator
infrastructure.

This patchset will remove the network coding support and adds minimal
cleanup changes on top.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (2):
      batman-adv: remove network coding support
      batman-adv: keep skb crc32 helper local in BLA

 Makefile                               |    3 -
 README.external.rst                    |    1 -
 gen-compat-autoconf.sh                 |    1 -
 net/batman-adv/Kconfig                 |   13 -
 net/batman-adv/Makefile                |    1 -
 net/batman-adv/bat_iv_ogm.c            |    5 -
 net/batman-adv/bridge_loop_avoidance.c |   34 +
 net/batman-adv/log.h                   |    3 -
 net/batman-adv/main.c                  |   50 -
 net/batman-adv/main.h                  |    3 -
 net/batman-adv/mesh-interface.c        |   14 -
 net/batman-adv/netlink.c               |   17 -
 net/batman-adv/network-coding.c        | 1878 --------------------------------
 net/batman-adv/network-coding.h        |  106 --
 net/batman-adv/originator.c            |    6 -
 net/batman-adv/routing.c               |    9 +-
 net/batman-adv/send.c                  |   16 +-
 net/batman-adv/translation-table.c     |    4 +-
 net/batman-adv/types.h                 |  216 ----
 19 files changed, 38 insertions(+), 2342 deletions(-)
---
base-commit: 383aa6a8cac023401378079fc516477d86e3c854
change-id: 20250828-drop-catwoman-1a19330a32ba

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>

