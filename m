Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +M1pJXoKGmo70wgAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 23:51:54 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C4E6090AD
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 23:51:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E657F83F68
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 23:51:53 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780091513;
 b=DBLWH4deP3l/CNjw9fMEKF+9cfy0amjGZS1MHB6ZP2FmIxWwq6VEgKUTeYWuqPbk87TV8
 zd45gpYL6URanb0pOexjj0WDVljtbXmzYfcSvpAyM7ww3758UePTat8s7cDV55sRV9xvcV3
 Q1QzNdTRrX6ZJ16qwPUVYh2B0OXBARE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780091513; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=K3tvs7VV/5iKvq7D7J4v0Yb0r1z9ksa/qbBOuU0ZmAc=;
 b=SQTNbMvYWrwmN3/JcKkoiEyLVTO1DeuGiHiKhOuenHAxNN9P9xKy6/TLjg+xQXhCDcAbg
 LlEVOF2u4G3yCZ52TBODUsL9IG6WZTfw7R7vI6EUuM7rVxlY9tm1tRa4WIhKElD5FDPbq7A
 4vke8y4I8DNG5o8gQG8Oip6yl+QJ2Ic=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id EBC7881824
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 29 May 2026 23:51:21 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780091492;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=K3tvs7VV/5iKvq7D7J4v0Yb0r1z9ksa/qbBOuU0ZmAc=;
	b=NKnvBcB7ClkdWhmgiI1/kdqZPeQYaMMJDy7/K8h+k7Unrt4AcEYO8ODlSfVvfS4nMc8dEv
	/lxc1h9zQftdPNJN9AQMccGuht4irwD6BrFfreNtMCFkNnbr9s0ULz0clyX5aAWQFVRlIx
	K9mLmyg3MlpNfSp0q1JLoCCVzbk8Ags=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780091492;
	b=EPP9VKu2QKYvBTPMXgcH8x0h5BLQmdekUr1pfmxflr6Pd/j1FVfjdEUAtYlwL9Txk6wCL6
	Od2eQfxRqPsSE2qeGnmWJaPg4XuJ1MV3Rt0/zfcJiBkDY0jIbNttIkDPyFp81Db6IiUIhN
	jr1Y4/bPMqvnGPGtuOzc+PbdXh3UHpk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=zIbJd3Lg;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 7E5B81FF62;
	Fri, 29 May 2026 21:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780091479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=K3tvs7VV/5iKvq7D7J4v0Yb0r1z9ksa/qbBOuU0ZmAc=;
	b=zIbJd3LgiCeMjqQoG9TG3oGbFAVbohJn+8bSeQQ15rRiVEoAr94YkOkgsz80Rfq2YmyEau
	K4AY7qQ9af9DsROlYawxUr1pr+Nz8NROu5/Nrzx16FD+yPGadxO7qYqJfVLWm/QZGToo79
	H55f9jdtH7s4KglRCcdibOCDsvZ5UrA=
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 29 May 2026 23:51:12 +0200
Subject: [PATCH batadv] batman-adv: prevent ELP transmission interval
 underflow
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260529-jitter-underflow-v1-1-576f46981df6@narfation.org>
X-B4-Tracking: v=1; b=H4sIAE8KGmoC/yWMwQrCMBAFf6W8s4E0pAX9FfGwTba6RVLZpK1Q+
 u9GPc7AzI7MKpxxaXYor5JlThXaU4PwoHRnI7EynHW97dzZTFIKq1lSZB2f82Ys+eB933pyHWr
 2Uh7l/VteMVChuOL293kZJg7l+8NxfABdkiw2fAAAAA==
X-Change-ID: 20260529-jitter-underflow-0a4c44614a25
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1706; i=sven@narfation.org;
 h=from:subject:message-id; bh=x4Lt6OcxgI9+WnjA1iFkmmrEHovk1HJvX+Vk9zPMfVU=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFlSXAGzIz1956zefrfBoOnV1EtTeud2POWZ29gyWV1d/
 soz7eobHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJzHJnZNinUBFRss+tojnz
 3x0mk3PezO2cb1b2tN3Sqe78xGL6xpDhf8VpCZntLx8+2qk2/UqG4/eKR2+2d8Q+FIrhL2Kc/k4
 xnB0A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 3ZSXA6AARUDQCQCPM7AIQGZ3KHUMKC3P
X-Message-ID-Hash: 3ZSXA6AARUDQCQCPM7AIQGZ3KHUMKC3P
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3ZSXA6AARUDQCQCPM7AIQGZ3KHUMKC3P/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Queue-Id: 32C4E6090AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

batadv_v_elp_start_timer() enqeues a delayed work. The time when it starts
is randomly chosen between (elp_interval - BATADV_JITTER) and
(elp_interval + BATADV_JITTER). The configured elp_interval must therefore
be larger or equal to BATADV_JITTER to avoid that it causes an underflow of
the unsigned integer. If this would happen, then a "fast" ELP interval
would turn into a "day long" delay.

At the same time, it must not be larger than the maximum value the variable
can store.

Fixes: 914db9648ed5 ("batman-adv: Add elp_interval hardif genl configuration")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/netlink.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index e52f44e7..c8f7a2b2 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -917,9 +917,15 @@ static int batadv_netlink_set_hardif(struct sk_buff *skb,
 #ifdef CONFIG_BATMAN_ADV_BATMAN_V
 
 	if (info->attrs[BATADV_ATTR_ELP_INTERVAL]) {
-		attr = info->attrs[BATADV_ATTR_ELP_INTERVAL];
+		u32 elp_interval;
 
-		atomic_set(&hard_iface->bat_v.elp_interval, nla_get_u32(attr));
+		attr = info->attrs[BATADV_ATTR_ELP_INTERVAL];
+		elp_interval = nla_get_u32(attr);
+
+		elp_interval = min_t(u32, elp_interval, INT_MAX);
+		elp_interval = max_t(u32, elp_interval, BATADV_JITTER);
+
+		atomic_set(&hard_iface->bat_v.elp_interval, elp_interval);
 	}
 
 	if (info->attrs[BATADV_ATTR_THROUGHPUT_OVERRIDE]) {

---
base-commit: 80ee59dc80a8d6287b2af80dad4e7e1c04d3a2cf
change-id: 20260529-jitter-underflow-0a4c44614a25

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

