Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Qm2UKeKtH2qBogAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:30:26 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F52A63425F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:30:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nVKLBLqP;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0FF858161B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:30:26 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780461026;
 b=FfdHCYFkei/rPoIU6cmyue2UDpJoQMtotvTu5z8JpCnoGj8MVWs+vAflyY9geipfohKR7
 hTVPhGwdXho3ycxhs/gNaAQ3tG74GmAHKxyfb4DDJQRMSXjIy++FyZcvonEfzaHX+dpxiB9
 uDf4BSeyZ/0oEbMIBybeoZRed50V99I=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780461026; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=6X1aQnbDbVTThl3dSzsccbRB8y1El+ULxx1VXc8IfuY=;
 b=WwvswCZF+PEKO3MNDxnMPKbRBeSxc0k9RQyT2mrEhXxvOgKaLbdfFuPaKZwoM2OpW0v18
 IIctlZQJjAnskeVfEgC9GZN5aMFJ6PXpaQyWWnfMYDXCm2WnDu0fT7OeSaKf2tXDEhlh71S
 1n96DqxTl39IonojuXPBxAMcrnLn+A0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id D30E680888
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 06:22:00 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780460520;
	b=FEJOFjX+Pm+40jhQLQC6AQV/pAkdKMdFFEpXmP/v6DVAU1XK0oxZq9P3em2bG1Bt45a10T
	v/5f4uugHCwdr9nSQItuS04qkCVYdcdq4k5R02HYfVHaLxb3hvd2KsJQwVf2cAyxLMnB1C
	ezE9zK+SOe+s0lWPnNrA3poW8jcHvcE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nVKLBLqP;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780460520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=6X1aQnbDbVTThl3dSzsccbRB8y1El+ULxx1VXc8IfuY=;
	b=VrYGbvnCEXterjBlnzyC+UQ9GqFR4p/MaqiBsqYarjhIkzCAIk8cYKLGEBAEBXcV1T1aJW
	X3lQVWZbk0DszFp/R3axM2vlfmt8dEtRYH5J+IM+aazT8PcPzQ+GtE/hJd6GDUI2fYFFZW
	su23VxcaBlfHm80qMtc8rticfiz5THA=
Received: by dvalin.narfation.org (Postfix) id 98CDC1FEA4;
	Wed, 03 Jun 2026 04:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780460520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6X1aQnbDbVTThl3dSzsccbRB8y1El+ULxx1VXc8IfuY=;
	b=nVKLBLqPf2Euqwz3dh1EDAA1qeyy/Pn4SSyoEG+aSIL57laB/BO2bFnyVcBk7qSG/g/WOg
	fayaeVsgg504bgwtznlHAqnIourSXqUSj5uh39VGSzv+f84J/TgmbwnU2rZPfQ6SLOr2Ok
	CcaXQwTGDvPm/okL38PAkpc1jmH3KJY=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 03 Jun 2026 06:21:40 +0200
Subject: [PATCH batadv 3/3] batman-adv: use GFP_KERNEL allocations for the
 wifi detection cache
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-wifi-cache-cleanup-v1-3-d5ed08075c96@narfation.org>
References: <20260603-wifi-cache-cleanup-v1-0-d5ed08075c96@narfation.org>
In-Reply-To: <20260603-wifi-cache-cleanup-v1-0-d5ed08075c96@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1083; i=sven@narfation.org;
 h=from:subject:message-id; bh=yoSEJWujxT3OBjgrWQ0oAH03KYeo+kCZ8ASaMhGEEiY=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnyqy9HvU25NXPDna7s8tmyG+5yMzAZvZj//dMEDuXIy
 4JHa6tedZSyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAmkn2KkeFEpJXKVu3+yzV9
 pZzL56lvWOKWveGmz0VBoXMubx5tnvaH4TebzMLWv+t3m7Zvu74+6MOa+mN3wmMs/Rw2l/jdt+Y
 5cooLAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: FE47RWMJZUQY3L52C456VTGVBFP2NA22
X-Message-ID-Hash: FE47RWMJZUQY3L52C456VTGVBFP2NA22
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FE47RWMJZUQY3L52C456VTGVBFP2NA22/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F52A63425F

The batadv_wifi_net_device_insert() is called with ASSERT_RTNL() held, but
not inside a spinlock or another context which prevents "might_sleep"
functions. To relax the requirements for the allocator, use GFP_KERNEL.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 80eaac0e..63caabf5 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -972,11 +972,11 @@ batadv_wifi_net_device_insert(struct net_device *net_dev, u32 wifi_flags)
 
 	ASSERT_RTNL();
 
-	device_state = kzalloc_obj(*device_state, GFP_ATOMIC);
+	device_state = kzalloc_obj(*device_state, GFP_KERNEL);
 	if (!device_state)
 		return -ENOMEM;
 
-	netdev_hold(net_dev, &device_state->dev_tracker, GFP_ATOMIC);
+	netdev_hold(net_dev, &device_state->dev_tracker, GFP_KERNEL);
 	device_state->netdev = net_dev;
 	WRITE_ONCE(device_state->wifi_flags, wifi_flags);
 

-- 
2.47.3

