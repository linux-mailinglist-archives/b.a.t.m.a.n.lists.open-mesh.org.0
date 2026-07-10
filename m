Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y+fWLs9PUWrWCAMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 22:02:23 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0A973DFB0
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 22:02:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=w7Y9LZXA;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E3B068402D
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 22:02:22 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783713742;
 b=g6fgHEH9ZDZw0KXJnqB9w5Pr3ppgdMkynAQGxIjWIX9TQr5e7WoqaOUBku3MOqGfxX2pl
 33fP/KI2dCrTY9A+L0J0wfi6fbCYlRdKqAon4GunaPx+3Y2k25t0yFbqsP1Ci2u8B5jawW2
 PKcxH3j5AgFhL9O3u1a4wb8bku1GVmQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783713742; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=kRrEWefYNxBcNYPVf2vRR6UtmBhIIFCHQeeuP2v33R0=;
 b=xl3ncr5obSmmBAaqKJ87JUsIYQEb4YAzrPLoDTUGBGFuFf7Ie7H/38lTN/xdwAjCBTTOM
 OA1RDK/IX5+F39LMOGwLO6ZSmWIwruM6J7it/H5JVCQ43S3JIDcBZ0hDS6EVOVomPJ07iG6
 5xFKRq/+Z1stKepeyV0sIXNxWlXLNNc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id E5A7980F5F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Jul 2026 22:01:22 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783713688;
	b=JxRe1CjnCsM5eLsvZNymChKd4m/UHuZN2Ma8scZj2a0PuyJlCLOVmRfaI4+6UY+JsuIOzb
	cv1II2QyZ4FSwFGWmQPjgwqMmd0J1eW/9Z0iYgpp4gy3mWQ4JSx3qqEYBOZH5K3gg6t6Cl
	EidS6aQqNDxxedIEM/yH+HkRvUVR0HY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783713688;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=kRrEWefYNxBcNYPVf2vRR6UtmBhIIFCHQeeuP2v33R0=;
	b=If5o6Tr5ATc1ZH26mPFIm64M3puSSH3bORPvEbXxYkg/P3PPiLGUINRRHKc5FIpUW2BqUH
	a539y+w3rjZ7Sizmf+0xtAVYSp10utGRMp6n/AHd7dJRUhJndC49Vuy/zBK2TFzAYcYY2e
	c7hMVChTtEnze4viRIs4ccygjgzIo1o=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=w7Y9LZXA;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 2C13F1FDB1;
	Fri, 10 Jul 2026 20:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783713682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kRrEWefYNxBcNYPVf2vRR6UtmBhIIFCHQeeuP2v33R0=;
	b=w7Y9LZXAyl/nnTqZZh/YY+PWc+dHj0s7IxLkJc1FbGDMIBPduZmbVZe9X8CeV+R74Zqqjx
	gQnfnMt1t2VI16Ku3uS0I+ltCrN/71YiZvJXU3t74QQXJKbJD2oFxY7/gkp5o80DNHcruJ
	b3+ka2rhEu90GhczhYvhA55bHufsvJM=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv v2 0/3] batman-adv: mcast header creation bugs
Date: Fri, 10 Jul 2026 22:01:14 +0200
Message-Id: 
 <20260710-mcast-header-generation-bugs-v2-0-06cd83c0f534@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIpPUWoC/42OQQ6CMBBFr0Jm7ZiWCKgr72FYTNuh1EQwbWk0h
 Ltb6gVc/smb9/8Kgb3jANdqBc/JBTdPOdSHCvRIk2V0JmeoRd2KTlzwqSlEHJkMe7Q8saeYf1A
 tNqBiIzt9bqhVBFnx8jy4d9HfQVEkk6D/3cOiHqzj7t7J0YU4+0/ZkWTh/6tMEgXqTkspBzo1q
 r1N5IcCHGdvod+27QtwdYfW5gAAAA==
X-Change-ID: 20260709-mcast-header-generation-bugs-bed17c85a6ba
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>, Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1201; i=sven@narfation.org;
 h=from:subject:message-id; bh=swMlOYmKbTIWSYpYn3Yj5pmwk7lnE8QkNaZJVVkTQAw=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmB/n2nWNiknSYZdFV6PjA/sKNgCVfxc5ktxe+zdMuvt
 c9xebCgo5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjARM2OGPzwqjMGcG5wTBHrO
 lPSJyeRN1k474/Z107rtUTMv74lSUWT47xBdtFplzvpp3y68lcs+NWvhvaoXKoeD3lrNDI+Ykv3
 gLicA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: HAR62IUTHE6JU5PWY4CHW43B7PTTYWFU
X-Message-ID-Hash: HAR62IUTHE6JU5PWY4CHW43B7PTTYWFU
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HAR62IUTHE6JU5PWY4CHW43B7PTTYWFU/>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:sashiko-bot@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[narfation.org:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C0A973DFB0

The code which introduced the mcast packet format was expanding the skbuff
header in various places. But this broke the priority extraction and was
requiring various skb properties (linearized, unshared) but only in some
paths (forwarding of TVLV) ensured that this is actually the case while
forgetting in others (initial creation of an mcast packet).

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v2:
- call skb_linearize() in batadv_mcast_forw_expand_head() instead of
  batadv_mcast_forw_packet()
- Link to v1: https://patch.msgid.link/20260709-mcast-header-generation-bugs-v1-0-c7c111fa45b6@narfation.org

---
Sven Eckelmann (3):
      batman-adv: fix TX priority extraction for BATADV_FORW_MCAST
      batman-adv: mcast: ensure unshared skb for multicast packets
      batman-adv: mcast: linearize skbuff for packet generation

 net/batman-adv/mesh-interface.c | 7 +++++--
 net/batman-adv/multicast_forw.c | 7 +++++--
 2 files changed, 10 insertions(+), 4 deletions(-)
---
base-commit: 3e896c605413a63c60f44a7b0beef0e07e220d63
change-id: 20260709-mcast-header-generation-bugs-bed17c85a6ba

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

