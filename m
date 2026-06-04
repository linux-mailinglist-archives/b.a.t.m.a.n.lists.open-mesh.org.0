Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SkKAJTPcIWoxPwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:12:35 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A0D643214
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:12:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=kChADJkR;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D5EEA854C7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:12:34 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780603954;
 b=yb4M5cEwOztqKc7S6PRCqNpIheCWd9zT68mcZu5IdW43oBdg4AGNbsfaF8GcTCa+GG+z8
 TWg3f9nABFEhvDiv28W2W19o5yIZbiJkx9ytinbz5ONSRmzCFvSXl5+U+WrLsY4OhCBZTe+
 u3WU17N2dDkwXrH+1hWWOaBXm8CTJeI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780603954; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=IMfP8JYXIWQ74usOgmVWM2wBGlEqAMUuXRZGcehS4qM=;
 b=vmyLiznpYyPUmxvsBWJGepRXlEtySi1/WHhIk5GPQYBnB4FPPQVuYwfhE83WArgNwLW+Y
 mxIMjSiAgfWASruOQOiavK/2t6kpdS59/bbaAnur3DfMRibFlzsZZDKvL4L+CfdzwRiDxej
 gC3I+WAiAJDMphXU9fgLIrIbML7RQNw=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 2E7FD844FD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 04 Jun 2026 22:08:48 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780603738;
	b=VKn8KKWTWAIIHlyTNC7Ohw4CpfvPN0SQZvd0ij+7igoB5711ekPNF6jKOkkoIeJUBbGb/t
	Q4hUAE6dLqdf6LDcxB5i1Oh2ukD5x4BAIkEWHY6q9nbx3bsjTnsNKSG5/u/o8/3dRqSKJv
	V462GTHS46/0f8wEZHiiwq5LEJEBdGw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=kChADJkR;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780603738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=IMfP8JYXIWQ74usOgmVWM2wBGlEqAMUuXRZGcehS4qM=;
	b=TdQ/HJQk+mBpbsKiJRHG8+Tpr0XUBnz3L+937+Zg7sgeTTNkHPHeKOD+WYEOsxxBhMImgF
	YVB5wcviUMIqc6G4aOXdkeVNiMNyOwpwNm99A9K290BS+zEfuc5+xfhcdaqiTV+odUYjBC
	ZGOk8t3WukmGjjDWYSEn5F48F6vsKZ0=
Received: by dvalin.narfation.org (Postfix) id 0F1901FEA8;
	Thu, 04 Jun 2026 20:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780603727;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=IMfP8JYXIWQ74usOgmVWM2wBGlEqAMUuXRZGcehS4qM=;
	b=kChADJkRg9fuU0qejRDnZPzBpaz4Gl4pgjzcpk9RbJajjz7jISRMfy3JZLQrQZ8OaPA/rd
	/QtIHD+JQa5UWkfub4gyt9LokI7qJT2zn/PgFq4Qn5Klptb6RhZSSMRM1L5Y+YsfJ7GTEH
	bFO73JfaeuUKcqnSQ8uJuhFX0csb9NU=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv 0/5] batman-adv: kernel-doc fixes 2026.2
Date: Thu, 04 Jun 2026 22:08:42 +0200
Message-Id: <20260604-kernel-doc-cleanup-v1-0-c4c4d4a77c31@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAErbIWoC/yWM0QqDMBAEf0XuuQcxioX+SulDclnbayVKoiKI/
 27a7tsszOyUkRSZbtVOCatmHWOB+lKRvFx8gjUUJmtsZzrT8gcpYuAwCssAF5eJUWZ9018bqam
 IU0Kv2y96J+9mF1Z6/P+8+Ddk/hbpOE6s3CYRfgAAAA==
X-Change-ID: 20260604-kernel-doc-cleanup-eeee2b3f73c1
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1818; i=sven@narfation.org;
 h=from:subject:message-id; bh=b07xgeDQ97MdiLNgl2oYALAaf+t5g5bfDtjeKJFRg9k=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmKt72rH6uG8XGbnW3J8V+xmeW+tWFowPpazedfG29oT
 rxw+/GFjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBEthUz/LNeOD2xTDQy99vr
 dQtZfootufJdgr3ayt28QUrC/dYBgUUMv5h//C9+Hf5GaHm0ETOP5F6DzX/1GmN/+2Ws49jBIBb
 owggA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZPBIZJJ2RFZ2ATASSG6WFKXDZVJOTCMU
X-Message-ID-Hash: ZPBIZJJ2RFZ2ATASSG6WFKXDZVJOTCMU
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZPBIZJJ2RFZ2ATASSG6WFKXDZVJOTCMU/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 03A0D643214

During the (recent) integration of various fixes and cleanups, some of the
kernel-docs weren't correctly updated. This patchset should sync the
kernel-doc again with the actual implementation. But at the same time, I've
noticed other (older) kernel-doc problems and just added fixes for these in
this patchset too.

The only common thing these patches have - they are kernel-doc changes :)

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (5):
      batman-adv: tp_meter: update stale kernel-doc after refactoring
      batman-adv: bla: update stale kernel-doc
      batman-adv: uapi: keep kernel-doc in struct member order
      batman-adv: fix batadv_v_ogm_packet_recv error handling kernel-doc
      batman-adv: fix kernel-doc typos and grammar errors

 include/uapi/linux/batadv_packet.h     |  6 +++---
 net/batman-adv/bat_v.c                 |  2 +-
 net/batman-adv/bat_v_ogm.c             | 10 +++++-----
 net/batman-adv/bitarray.c              |  2 +-
 net/batman-adv/bitarray.h              |  2 +-
 net/batman-adv/bridge_loop_avoidance.c |  2 +-
 net/batman-adv/bridge_loop_avoidance.h |  2 +-
 net/batman-adv/fragmentation.c         |  3 ++-
 net/batman-adv/hash.h                  |  4 ++--
 net/batman-adv/mesh-interface.c        |  6 +++---
 net/batman-adv/netlink.c               |  4 ++--
 net/batman-adv/originator.c            |  4 ++--
 net/batman-adv/tp_meter.c              | 16 ++++++++--------
 net/batman-adv/tvlv.c                  |  4 ++--
 net/batman-adv/types.h                 | 24 +++++++++++++++---------
 15 files changed, 49 insertions(+), 42 deletions(-)
---
base-commit: 7fb5fc7265f6ce4962357c5383873fd2ef9d50d4
change-id: 20260604-kernel-doc-cleanup-eeee2b3f73c1

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

