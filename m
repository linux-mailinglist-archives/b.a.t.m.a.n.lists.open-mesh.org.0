Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IQnCJSUDIWqY+QAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:46:29 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4E363CDD7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:46:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=g2x6ukFM;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1B97480BB8
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:46:29 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780548389;
 b=VBOtzPqZNW2LD6nWCb9JqiX215dGZ46F9Dul4ySZ92YoaShbO3Res2+CB+xrGP/fTva5k
 fyFjP/kP20oV5aah1FHks5o5IHNCYRH5Hgqlud+CUvYFduYO4Mqdv7vAjD87xTE7Mjb15IO
 IdsDst0tM3z8k4VWKFz6fNWGs2l6lWg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780548389; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=yzbRpAb/LDZLFEBB1Tcmics7h1w8e3X0v6iWNxKO7Dk=;
 b=ZJyvgz1d0m3SsT2yCjjKKgQR1x7VfEPtpuLyF/DHrR8mTimO8IZ/wPF/XiP3f0DskE2QR
 VH/gzxEkcKO7ubUl6TCln9heQ2cposeJan0zLnaVoqppWmC8CgI2V16nbDbwhfqKVAbvLge
 FdRvz6yBB/iw3e2ptGJWc+R+1s5FKrQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id B4D30818EB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 04 Jun 2026 06:41:18 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780548078;
	b=BSw6m0GTYIH6EKYbeG8XpykUaSDW1DcYosloqSReGmM0ylqkkx0fXdv0Hr3R5/OP4wWOy/
	PIOKdWSMOrB8EHcjo++Ur9yUENr08udQXaQWs4M4wOfM46ZFcTZYnkg4ttR+/SPiLWYckh
	6RvTXbYcWBork/dIMFo9PjGCVHtJMRo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=g2x6ukFM;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780548078;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=yzbRpAb/LDZLFEBB1Tcmics7h1w8e3X0v6iWNxKO7Dk=;
	b=Cl6ez6rkxx+m9YbJ1vIlLOfPXvb4fp+S14ISm8nVY+uFXLyFmP5ubFDo8KrcL0fChgKFNF
	FBzSjZGzsehy1YvH7ErG8mBTaJLJ5rB3/6PNOe3FUaD+a537MiZFgVqlauH4cZuwDQK6BV
	tm1NHDrkCaoWKp9xXpldd5HQKR8XGXs=
Received: by dvalin.narfation.org (Postfix) id 6E36F1FEF0;
	Thu, 04 Jun 2026 04:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780548078;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yzbRpAb/LDZLFEBB1Tcmics7h1w8e3X0v6iWNxKO7Dk=;
	b=g2x6ukFMdfMw+tZx7IRgVcfkfe49hF2NIqFQ1+20RAfmoBxKAr+pSvAA7mdWoSOVHw7TnM
	SGhj86gl9z5K6NSIFLUau91zRdlwXFMTYkPoBFLNcn55gvJ1ls9fr8L03tuII845306PA/
	ChS2GUAaYbzTteGXvEq2mcB/1Iv/7Cc=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 04 Jun 2026 06:40:52 +0200
Subject: [PATCH batadv v2 3/4] batman-adv: drop duplicated wifi_flags
 assignments
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-wifi-cache-cleanup-v2-3-c89d32c02471@narfation.org>
References: <20260604-wifi-cache-cleanup-v2-0-c89d32c02471@narfation.org>
In-Reply-To: <20260604-wifi-cache-cleanup-v2-0-c89d32c02471@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=874; i=sven@narfation.org;
 h=from:subject:message-id; bh=U9LvpEVJjOuDv2ONwJrr7fKjbzOH071SgYob7v7sBpc=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmKjJdPBzw3mm7Qs8zDbt3Otnvhzbn/glrS9F24p+1l3
 vZPzK24o5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjCRfY2MDP1i+5y2vl9sx3jA
 d8fn6S/2aBdcvRrxefNfMZVcvXaOSB1GhhmqR41smO0NOyeuNtHpiT53XK/5kPiDeyUzj6u82L1
 3KxMA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 2RW4AZCBDCDLAMT67CD3YXEXZTZBZXK2
X-Message-ID-Hash: 2RW4AZCBDCDLAMT67CD3YXEXZTZBZXK2
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2RW4AZCBDCDLAMT67CD3YXEXZTZBZXK2/>
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F4E363CDD7

During the initialization of the batadv_wifi_net_device_state, it is enough
to write the wifi_flags once before the batadv_wifi_net_device_state is
added to the batadv_wifi_net_devices rhashtable.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 694d6c47..041df554 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -987,7 +987,6 @@ batadv_wifi_net_device_insert(struct net_device *net_dev, u32 wifi_flags)
 	if (!device_state)
 		return -ENOMEM;
 
-	device_state->wifi_flags = wifi_flags;
 	netdev_hold(net_dev, &device_state->dev_tracker, GFP_ATOMIC);
 	device_state->netdev = net_dev;
 	WRITE_ONCE(device_state->wifi_flags, wifi_flags);

-- 
2.47.3

