Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s+2EEfoCIWqW+QAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:45:46 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E53C963CDD3
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:45:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=FlVnlyJd;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CBC9984A1E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:45:45 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780548345;
 b=MVq3iN924QoQkC5FtLn00A74rVjxV807Xdd02CWIwquNFfIfefB1ZNyDYumnAeJiJdkFp
 8YbTIYapVwKj8KrFiInzNptLB8XVD6i8euSBPdMNO+AkYkkSkJU9GohKlbtaZNR5DZDLFnP
 QZweu9PTyFhNKMeee4aFq9nqdmZhtho=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780548345; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=jATcNv/X5XSIn4dbTZ4f55sihpASI671jRk9XVQOOcg=;
 b=TImw2iYvtYxQ/JW9/LDubCbo91Cq1VG6pwX2poryezLtvWlmxZhY25L0cChAphnvk3TYk
 il+oJjbOODivbL+8xRt7416+XV1mXAmarsRqjrB4hcQ2mJO2F05dTidzJd5ylGoyLHa8lHu
 efWP5Mt/W+gsjfxtskoFuWB7ogWKdXs=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 9197981F65
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 04 Jun 2026 06:41:16 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780548076;
	b=uwPGPkKbyXaOGmPmVQ1mcdrCu3+NxJNSxxJnWMoW+Zeq0KXr0FW73GDlFriRDUEz295E4Z
	+dHshBs1iXWnJbPLj8hQUMjpoJl/Cz1g5whrXIItnuhOTgvdxMbXXDY6jbAorjmC54dkMs
	lXXxkwXQWKeNKNbV8DABMvfV6DKLAaE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=FlVnlyJd;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780548076;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jATcNv/X5XSIn4dbTZ4f55sihpASI671jRk9XVQOOcg=;
	b=Xc42v2S2IezaC5/40vT9GjuD0aOcA8jA/72V2cOJ9NyIzxj+DETpZDQC7/IGMxaHNfNQ9D
	PQIrI6Po6WBD96o66QprNVZTSoKotwBZp0SgGrnTGvFDdneW2JE00i+sWMCNqt/T0jhRp/
	NFfvUEIk1Bqx6bbdFf0HJXgc30rAaxo=
Received: by dvalin.narfation.org (Postfix) id 1AD211FEF0;
	Thu, 04 Jun 2026 04:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780548076;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jATcNv/X5XSIn4dbTZ4f55sihpASI671jRk9XVQOOcg=;
	b=FlVnlyJdI1bS8p75YKTBRE9M0oo1w7RytbfRKKWgtMaM/4ORe+Q4P1Dlhh8nRdWzIGARD6
	xM3qDTmDYNCy/GVi4iCwXV2/8t0YUPa55qydZbGJU9RPMXmAk59V0WA3wEWKj6tECgDlms
	qYvAqOYaztsHIeUzr/c8fa7nwCeRBJg=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 04 Jun 2026 06:40:51 +0200
Subject: [PATCH batadv v2 2/4] batman-adv: document cleanup of
 batadv_wifi_net_devices entries
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-wifi-cache-cleanup-v2-2-c89d32c02471@narfation.org>
References: <20260604-wifi-cache-cleanup-v2-0-c89d32c02471@narfation.org>
In-Reply-To: <20260604-wifi-cache-cleanup-v2-0-c89d32c02471@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=904; i=sven@narfation.org;
 h=from:subject:message-id; bh=ruDUOsoy1eGu0K1F1znyoFRb2Iyt07kBia4IPb7hMjE=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmKjJeXP9u4h4lDqq8tWFi2q6BszukvTzccXvL7hCv/h
 02eLg9WdJSyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAmoqnC8L/m/NWbueVhfWct
 9UolVY4u2dr/s+tRXcmvRuuL8XmfnjUz/M8VKNnSoLMk2fF7Vfm5a9sXc56sLImMzItistLMX9C
 3kRcA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: UUC55OYNXTSQZMCRBHJDTWR6JB6Q2L42
X-Message-ID-Hash: UUC55OYNXTSQZMCRBHJDTWR6JB6Q2L42
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UUC55OYNXTSQZMCRBHJDTWR6JB6Q2L42/>
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
X-Rspamd-Queue-Id: E53C963CDD3

It doesn't seem to be obvious how the entries from the
batadv_wifi_net_devices rhashtable are getting removed before the actual
rhashtable is destroyed. Document the idea behind the process and which
steps are involved.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index d4a351b0..694d6c47 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -1186,5 +1186,9 @@ int __init batadv_wifi_net_devices_init(void)
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

