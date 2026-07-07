Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dOZ6MFVRTWoyyQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 21:19:49 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5344A71F20D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 21:19:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=eJRPYuqF;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2DC6D846D5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 21:19:49 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783451989;
 b=subS/l2uofKcVykv0l+Frb1JUbrgaYIKYo6L+36uZxXWJHVMW/wZOPmEg7+JsE9UxKpF6
 lsf8GxmeynTJCMHXkJl/xCCzvKJtuwBvAO+1LrJe4sXNxhCsoGDdxEEm/FtR1ISJ5DMLSGx
 O85QaXIj3b3Ipqx+WK6wa/YKNQH5A7M=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783451989; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=f/KtcJgaNkHCflPXkp8SqtuePVBeflEXIwIHcfUjd8Q=;
 b=h2YWWXhyCRiTCKxHIPg7w+dkov0+Mcy740QCYcvihhme50DOo1tsmYhig6R0mvarVcG4D
 jiA6G5wLCJnsKz11WWp6F6ei0Qcv179mM5n2o7TpCaId2Z7f//G2xBEQV6yPJKLsXcOhx2c
 CcMktm2aSDnTy21YeuN+LO7Kcie2LVc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 5E167810D5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 21:17:08 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783451838;
	b=Gsh7xZ230LJEWaOuP9QVaEI+3RQ789E6SYsJDtqBECI1Se6coVkdHL8L+9ubqipmzB/9rn
	LbbHj+VYdj1N9ZFZ3/fl+9oP5ArMV3Bp16Z9TQk2SsR3Mno/o+1YN4wBZG/bmvphglDWuf
	j67M2dpiQmWYsII00gXBxW/8NYnPwqs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783451838;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=f/KtcJgaNkHCflPXkp8SqtuePVBeflEXIwIHcfUjd8Q=;
	b=JkhG4KT3sFQ2rnQ3h9aF/dibSO769dQJQa0qjSJxsHDIfdB/lIHwPXMe5VCgcuodDIBfxh
	cohaVuqBmD1Zawaxyue1fieTPat9XhMlvBxYTNXSOOYeStSDkoG6zJQuf5wN9ywmj4MHUl
	BLt8KdHJvjTdTusytP4drY+XwW+KmqU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=eJRPYuqF;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id D3DBA20442;
	Tue, 07 Jul 2026 19:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783451827;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=f/KtcJgaNkHCflPXkp8SqtuePVBeflEXIwIHcfUjd8Q=;
	b=eJRPYuqFbmjyCtRm4fiF+aGq57QkrisZZbcRzxsazVnYRUB6cVoZM0x6Jr/RBTnOuUb19V
	NgLX9DdvW7gTdiBjX5f5tx8FvAmQelZZ1yjUcepF4DDyfwmMXPDriFKHWZlRTXWaIPST+j
	eILO+91c86r8et4hvCvbYDmTyG/ZT6M=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 0/5] batctl: tpmeter bugfixes
Date: Tue, 07 Jul 2026 21:16:59 +0200
Message-Id: <20260707-bugfixes-tpmeter-v1-0-78d96fb7b36c@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKtQTWoC/yXMQQqEMBBE0atIrw1Exyh4lcFFoqW2oCPpKAPi3
 Y26fFC/DhJ4hlCdHOSxs/BvicjShNrRLgMUd9GU67zUlS6U24ae/xAV1hkBXlnT4WMqZ0pkFLP
 V4xnE6tu8ls1NaMP9Q+d5AfOzefV0AAAA
X-Change-ID: 20260704-bugfixes-tpmeter-a5de357b56e1
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=942; i=sven@narfation.org;
 h=from:subject:message-id; bh=avL7OmvnPUeLa87JM0DRkdWQYEZnlcR/bjCqClvXJCs=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+AWvzdXLSKjZvk/lz9b7oRJ03Tn1Plp9eedo8undpp
 4pZiMS6jlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBE7FsYGbryBTOTzzzeueQ7
 25PAhOozE++bcT3bfH9jzNUdJ76Kz1BiZDilJFZh3WDmX+Vw3u2O/OfS33vuzp3im77ljd5N5mx
 +Rn4A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: OUFG6J653NT5MKMKWBMGNGSWGECATMHJ
X-Message-ID-Hash: OUFG6J653NT5MKMKWBMGNGSWGECATMHJ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OUFG6J653NT5MKMKWBMGNGSWGECATMHJ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5344A71F20D

I have now splitted the bugfixes for batctl in topic branches to make it a
little bit easier to review. Similar to the "random bugfixes 2026-06-21"
patchset, they are just various (mostly minor) problems which should be
tackled at some point.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (5):
      batctl: tpmeter: don't use negative errno as exit status
      batctl: tpmeter: abort result wait on receive errors
      batctl: tpmeter: reject invalid test duration argument
      batctl: tpmeter: report kernel errors via strerror
      batctl: tpmeter: don't cancel test from the signal handler

 throughputmeter.c | 58 ++++++++++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 51 insertions(+), 7 deletions(-)
---
base-commit: eb9597d4ca6db17c579f5ae9443c51b013e2fe65
change-id: 20260704-bugfixes-tpmeter-a5de357b56e1

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

