Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p6lUBSD3N2rtWAcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:37:20 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D516AB172
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:37:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ZugJ2qFY;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 948CB8440C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:37:19 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052639;
 b=LNrZ7dl/OhdjtYK/zoTQXD0cB2akhu+l4LH0lkEsbwmqcHOSRrrDseoDl6eaUFxZ6or4v
 y8W5rZpvN0AMK9tjCU4MB3hLpfPTG+DN2u8iOOJuiZgXGg7Zm8+gDbQjRHDQRl+TzVd2owR
 ArNtQKYXSUHrI49hO/Y+9yr7PlNjIAc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052639; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rdSOu636v6SEFNELc2pwhakDAdk+lSr4K5Mk5TRPhDM=;
 b=NhsswGCDwhFIR2cB8MXXlshT1CTghLxNsZXmR7mQYMpgxdx3QkVnaJA8THxooLqsQPQrO
 U2+PstgEMjV8wOsSL/dXaELxsVh/JGpF77So9u+6FT8YJM21GQSl/9KQscs0yWdE/ZrmaPY
 IChYxKE+a2PdHL5DNnzpeSq0g0HiA+Y=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 3A8BA841B6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:19 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051919;
	b=J/eKzg0Kv9Sn9mnvNy/qxPJ9wv3WO2GqIWQLZQNlp6AkFQGOiNXW2PqjuKqB7OavJLx42P
	Cv+GNfXTbtWQ85AyLFAUbJ4j929XZLnTQvKEsxiNUB1ZshYV3o1TcQw0cghzVgrOWTKSg6
	sAQ6BstlD2jMNHqbi2LWhfkVj1P2QKw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051919;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=rdSOu636v6SEFNELc2pwhakDAdk+lSr4K5Mk5TRPhDM=;
	b=cqf78siHs7ZNO2oh1izeXKqhuJn+KHpo4sHSVJHAlwSgjbMl0zOjwK2ttnzYV+eGTiF1kB
	GawqftWVOf90mcDbT2jyOzhqorrh0Dws+DfNSwzbiVdqly0PCNaanoJXf9ujwy6tOArumj
	SiX5LGBwqpHoAQjT5ahXViVP7bI0oIo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ZugJ2qFY;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id BAAE620131;
	Sun, 21 Jun 2026 14:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051918;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rdSOu636v6SEFNELc2pwhakDAdk+lSr4K5Mk5TRPhDM=;
	b=ZugJ2qFY+Funtsi3DwPgL6Tlv1+jUCRBcT9GIiaoO/ZM7CbogM6Vn3OT9eZgwR1KRAu7Zd
	2dixeCFN0CAR+vJfgSCZoHPv94zpaNzpjLnA/LRBrmG4Fz6Pc3R0PsUAU0NVi/Bfy+XbSl
	zFfgKf1H1m4oGv+6q/ErWHJByfDb/Aw=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:07 +0200
Subject: [PATCH 17/28] batctl: netlink: check for BATADV_ATTR_MESH_ADDRESS
 before accessing it
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-17-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=686; i=sven@narfation.org;
 h=from:subject:message-id; bh=qCeUnPDAofCnp2RRnuMMjBCVzCvJagTuLGFvG81ZeV8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX9imfLy4fv5V6WbeGgYuEdk73E/Sb7WcVfv3RbBBe
 NqL2Nl8HaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJHOBl+GfoMqWzyyN/WX3C
 jLWHuVsS7pnEeHPvvRZ4/nTiee+n5/0Y/ukeEy3eM3l3qpaXc0qsvsXDQ71vIwMFFc/+Xa8af0H
 5FQcA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: JDQY3P2PEY2QYDZDXPGRN736WFV4GXYP
X-Message-ID-Hash: JDQY3P2PEY2QYDZDXPGRN736WFV4GXYP
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JDQY3P2PEY2QYDZDXPGRN736WFV4GXYP/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B7D516AB172

info_callback expects the BATADV_ATTR_MESH_ADDRESS attribute to be set. But
it never checked if it is not NULL.

Fixes: d8dd1ff1a0fe ("batctl: Use netlink to replace some of debugfs")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 netlink.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/netlink.c b/netlink.c
index 5f78602..be92a9c 100644
--- a/netlink.c
+++ b/netlink.c
@@ -325,6 +325,7 @@ int netlink_stop_callback(struct nl_msg *msg, void *arg __maybe_unused)
 static const int info_mandatory[] = {
 	BATADV_ATTR_MESH_IFINDEX,
 	BATADV_ATTR_MESH_IFNAME,
+	BATADV_ATTR_MESH_ADDRESS,
 };
 
 static const int info_hard_mandatory[] = {

-- 
2.47.3

