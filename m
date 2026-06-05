Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eZSQHZB5Imo/YAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:24:00 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FBB645ED6
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:24:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=LcIl2QsH;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E888683D9C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:23:59 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780644239;
 b=G+dIuyQueVV4hcSK84KKRASLT2pbS272U6Yz+EhEPv3j1sKJZwmNhmj8rX698Npc9HM6U
 eZdqiY63MOkvAIOnhAKtqUA7+IyapwEHkhXeJRuza6obuJP7nvFOcCwXPDLNPpVkp1o1gm1
 risFzWPNGHqgUa7lPwD4pkhQ2J3p8Do=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780644239; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=8Z3e0PI28LeGcMYG8odw5Z/Z//UT2Tl+ozm0Mg/7nqE=;
 b=RydItRv6zQzUA6ZF/wh9ky/ns4MlHsLtdfY++Cack44Oa7Ct7LCyqt66XtqXz4+rdSESX
 dymqpNMTncR9B6z4hyJyROGR8smqCoqUanEym3wJ4AwNGD0MZVpZZWypSySJsy7CzJgpH5H
 qNxgG+oZDxNz58V4Kd3GRm47Ssqovz0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5B410810BF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 05 Jun 2026 09:20:17 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780644017;
	b=rDHuduCiqsnfK/In/i9Y8+I0RBLU8AGEb8mxbKAwczZk+lMvlWTEOJwxirT72hKMPl7wIg
	Xa6FG4IZAofxjLj0nWcTaQsCu2uWfBJSeQu7RLbfHGHk3bTJQ3l+jJVRmKRwnBQwWuWNuZ
	Lf8EH5B7AFVSMpSseMGaRK3iOmgJ/XI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=LcIl2QsH;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780644017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8Z3e0PI28LeGcMYG8odw5Z/Z//UT2Tl+ozm0Mg/7nqE=;
	b=Eru8yEs4a90lqC5XlmTyolFFBM+SsQsZaVVPm8sU45HKO+n1a4zpdlIEyPk4uYHGK3zizO
	qeU2ou33tKGwSqRHFVl/w/GufVsgPV55wByOLrUmAgJTOe6aVF9P/pxGdFJ6dfgQTFG8qP
	UvmF2OTibHBqYEfzpXom9uN976OIZpQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780644014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8Z3e0PI28LeGcMYG8odw5Z/Z//UT2Tl+ozm0Mg/7nqE=;
	b=LcIl2QsHTdsLYxV/GZ5xPeL2W2u0vR4HHxqSzoAsROkZZqSU+qzUFsBeT/NfSvYIwNWt7m
	qbIbDlBVGdipyNX0d689qoitud/P1z9XGQgqGSIWvoGebFEoF/y8BXQ7TY2Qy62Gs/Iuy3
	oOqEkxjcUKh2U3dQoAPy7WX9sOoSYvyFQ05QEAFRAH5/uifRNwdopc/007UHK/y/geS4aT
	KPgHu+HFNJlYxQA9SGQtKoDnbuU3/MxDZHEbwCEPPvHkCo/I9f6m18bq1UqNY4b8XldSG8
	XnBqNgIsr13vWUDaozQ0mGjd+DMpoytRB9fVFzmCfWOa36AgJkfnSN38HF0uOA==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 05/11] batman-adv: document cleanup of
 batadv_wifi_net_devices entries
Date: Fri,  5 Jun 2026 09:19:59 +0200
Message-ID: <20260605072005.490368-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260605072005.490368-1-sw@simonwunderlich.de>
References: <20260605072005.490368-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: IVMJAJBZAO3RTUGPOU6TCN7YGZDXKOQI
X-Message-ID-Hash: IVMJAJBZAO3RTUGPOU6TCN7YGZDXKOQI
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IVMJAJBZAO3RTUGPOU6TCN7YGZDXKOQI/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,simonwunderlich.de:mid,simonwunderlich.de:dkim,simonwunderlich.de:from_mime,simonwunderlich.de:email,narfation.org:email];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 15FBB645ED6

From: Sven Eckelmann <sven@narfation.org>

It doesn't seem to be obvious how the entries from the
batadv_wifi_net_devices rhashtable are getting removed before the actual
rhashtable is destroyed. Document the idea behind the process and which
steps are involved.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 04b227ec80525..e2c85bd8dbb53 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -1185,5 +1185,9 @@ int __init batadv_wifi_net_devices_init(void)
  */
 void batadv_wifi_net_devices_deinit(void)
 {
+	/* just destroy table. entries should have been removed by
+	 * unregister_netdevice_notifier() and the corresponding
+	 * NETDEV_UNREGISTER events
+	 */
 	rhashtable_destroy(&batadv_wifi_net_devices);
 }
-- 
2.47.3

