Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6AB76CA3A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Aug 2023 12:00:50 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8219A82EE0
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Aug 2023 12:00:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1690970450;
 b=stUwuiXZx91mxQ7jObFpqHYGs8jgPTmVutbr0AuVTlIPNE17E575qjgZgn+qbYhaJXO74
 LRhXgklQw65t3xJdYKnDQVmzVh2OQo8syzH2wsOCe7mFsizqNeUr6nZek9Qy/duIlo0kntc
 VOBMkUQ7KOPeJPxeGPpzmNoWn8FZzDM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1690970450; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=cp8aNmKkPK1G/eCMVnC1MCJezCYM/4KFFzuqlPrmn10=;
 b=C0R2zNJl81Sh51OBWZu0nup5BTMA/ws9U9eBE2EOWdEL2VItnhPggd5jHaBh2uzMzbfhE
 TqF+yuGR1HVZnHV0gz8y1OgaHySKaFBz3xdbBjcJrkXRPWVWoHmIsIyZ7WdxJA/AFgcMSWq
 aiDFALkwygIk4MYy5ou6Hjm8JULI6BU=
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
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E1B3D80053
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Aug 2023 12:00:27 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1690970428;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=cp8aNmKkPK1G/eCMVnC1MCJezCYM/4KFFzuqlPrmn10=;
	b=1NBXyM+7lXbIpg00ZVSDVO1lpwLyB12SLKIYxhyTmheAnbp1SyqMvn0aGmg5Q8W3aDdDo0
	+1UHd+dvWyNnYX74Tbo7ThvPr5wH8K6EK72SPh99IrzUsqJgQbjCrKnGL9Tm8PA1nf/dB0
	7DrYLuGLszcsSSIkujerb45krQR6fQM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=M1xWWy6S;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1690970428; a=rsa-sha256;
	cv=none;
	b=EPO5DDKco+zDVqOjtURbHdY/79nJ6YzF1Tpsr8GTCRl4VYKUK5lfA6UGNCiqIR6dni+vvn
	7pqep6ANVLwm9BtJp3iaH39Cj1q8LEkYQdNoLTd4k6kISwgT/85fYHZR71iF1qLKyDqtnl
	D758iFRKw0Wi4RbFyYFvJNneBuG0iUk=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1690970427;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=cp8aNmKkPK1G/eCMVnC1MCJezCYM/4KFFzuqlPrmn10=;
	b=M1xWWy6STx3gYzkaBzcxUCaCfEL0cXHV/sTv1z7YFZgLJF607RBxZ/fUeac+MSaFjF93/z
	23tYk9CCALR6Wwa/Ytr8ofgAy0DXEwmFQK29Q6noY7fJw8TNY2Lo0uObCy1uCw7cNxdtbu
	jJDr54PFLqUxbcX9MqUUiwoJ/Xh5sks=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 0/3] batman-adv: Drop ununused functions and localize when
 possible
Date: Wed, 02 Aug 2023 12:00:21 +0200
Message-Id: <20230802-cleanup_functions-v1-0-1f9bfb914696@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADUpymQC/x2MQQqAIBAAvyJ7TjCTyL4SEWpbLYSFZgTS35OOA
 zOTIWIgjNCzDAFvinT4AnXFwG3Gr8hpLgxSyEZ0QnK3o/HpnJbk3VXkyKVWrdIdWrQOSncGXOj
 5n8P4vh9E8bqDYwAAAA==
To: b.a.t.m.a.n@lists.open-mesh.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1031; i=sven@narfation.org;
 h=from:subject:message-id; bh=nWmsIG4ZvaJZpl3NiNtKWPQY6tVyOZXHbEBUhVRSxR8=;
 b=owEBbQKS/ZANAwAKAV2HCgfBJntGAcsmYgBkyik3cDeToSykFBvWOSe+uG/t6VXnUEaHizU0g
 Bx18davqceJAjMEAAEKAB0WIQQXXSuHYSVz3OMy4AJdhwoHwSZ7RgUCZMopNwAKCRBdhwoHwSZ7
 RjTOD/96Ayxzy3cHrjepYJ4TyOZC1fLHIstxbVqPtH1AYczdDvFO3wBVG6wT88pO6AOe20AWb4c
 MBxJf5uH/cHpDLrJ4911PDIOY/01uxQzYqLybudXqd3asYgBS4U63Ry68XcWdh34t6nLdJcVFtP
 qM7Bk52LD8c2IAPcv7ckkrnhemFrhVCQAtW65SN+eCVP37PF/0CF7T555VVaXib/hWH34APycvf
 +1FTDoOr0E1Hm0cHuypzLZqZWaIp9S3zkrH1zCfFKv/Nd0U1JhhKHwsRWIrE11X/k11VYYrvRdF
 glF8oPyZzdcqa9tMMuIpeUjIWCGEBcLD2kDurAoUN815A6+wEpYQ4KtWZfWMun3cdF/vAm2/7rv
 Cb08gZZlgswj43LINWX/Nn1ULQ6dqMD6QViI12Wgod9MNMx3bFFUhEOZNoP5EEO+2G8FRfHQH/b
 QIDmZ+O6MF8AzpaqHzLhrY234ZbjaDS+HbSISPXr5UtJyekTf+qwqg8nEsnM5OOp8oDQBSQxd9N
 3hXTVNyzSuAtKh+X64sfLwkfLhhjNMO5bS/vLCkkax3r1Ub1ZnJlk+LIVLcSXaF4OHCrmFd6dE0
 D3SedMbmP+9gBs+awCIigP8ZG+8MyIj49IYHNnExzogq0iK5mdKw0LfFRsQ+HljL5JGXscdvXr5
 wSWsh/SYKui1BPQ==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZTYFBP6ODL2WUQJMLWOH7NFEEJV4FYQA
X-Message-ID-Hash: ZTYFBP6ODL2WUQJMLWOH7NFEEJV4FYQA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZTYFBP6ODL2WUQJMLWOH7NFEEJV4FYQA/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

There were a couple of functions which were still compiled but not used
anymore since a while. Just drop them and make sure that other ones are
local only (to make it easier to spot them in the future).

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (3):
      batman-adv: Drop unused function batadv_gw_bandwidth_set
      batman-adv: Keep batadv_netlink_notify_* static
      batman-adv: Drop per algo GW section class code

 net/batman-adv/bat_iv_ogm.c     |   1 +
 net/batman-adv/bat_v.c          |  23 +-----
 net/batman-adv/gateway_common.c | 162 +---------------------------------------
 net/batman-adv/gateway_common.h |   7 --
 net/batman-adv/netlink.c        |  15 ++--
 net/batman-adv/netlink.h        |   6 --
 net/batman-adv/types.h          |   7 +-
 7 files changed, 13 insertions(+), 208 deletions(-)
---
base-commit: ed12d0c16556942c4fd52af122030182c11e60ef
change-id: 20230802-cleanup_functions-2946498ebebc

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>

