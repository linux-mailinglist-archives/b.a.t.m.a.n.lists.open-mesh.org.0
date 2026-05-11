Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APdKE30SAmqIngEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2026 19:31:41 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC8B5137FF
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2026 19:31:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4426485C9F
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2026 19:31:40 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778520700;
 b=GNM4/EmNCKYBTn5N5HgFouvmsJpDBnAlfkLrd3CiTbIdPm9A6QyfroyxO2xyixe1ZKKEP
 ODihwF2GUFcODHIk6XalfwHYbcymQFmhiBrxmnE3PwZmL9qPv/NoDOuTYwx/iLAQgN+dxWY
 +r6fQu/WHLIYiw0KSaaH25NVJIb59K8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778520700; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=FmR3v8EeN1uF1+ab08eOwN+ILbqX02a9NCRtKOl2gOg=;
 b=GarPBd+/w3VTFxw6hH9NJ0X0DsVKXgrDUnzVc8hvEzHyyA8B/aMDl6nreOTPUb8Oy0BfT
 BZKNTxsJNMxCvZWS+ugkCfB6Tq6tP1mz+iJZ20Bmn3FMZwwdaCu4R5P2zHe4OQNDqTKXBq9
 XRQyytIyzGSJmkJWywSi4b4wq7xykt4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 03E15853E0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 May 2026 19:30:10 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778520611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=FmR3v8EeN1uF1+ab08eOwN+ILbqX02a9NCRtKOl2gOg=;
	b=YWWwC9PNSoQKrgI/ST/JREZphuQvjx2i5IE5BSz4oMN99jW69rXxVk/VinLM51GhPve07o
	+W6Pm3j68fDEofuwWHMoL74TPjFa5JKf6FhY+EO9bUXvZ8q2S5TG3euzONYhpO0zOkR/9X
	8Eqn98iktiLQvxQLt4E6hbC4bZaitmg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=LS9UqZSa;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778520611;
	b=ocMRqPJihE7KfvjRz0kYQ5vGU7qNnWWpMChKvmDRxqIvE/RwA3MjjUeYUDx270fNus449d
	cfOKyPkN541dQUqJR1k5h2BnCxeGn91F/LVsXGhcspQXzo3xPpqGWpUQ/Ll/Z4YucG0/6o
	FvZT9oo8k48XzHYCVjjd7hrIFBVP5go=
Received: by dvalin.narfation.org (Postfix) id 40B3D21550;
	Mon, 11 May 2026 17:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778520610;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FmR3v8EeN1uF1+ab08eOwN+ILbqX02a9NCRtKOl2gOg=;
	b=LS9UqZSaoPlShxaCIrbsU6vFiFJWXann6OJSmYei3H6J4BrL2lRQG43VBWme8hp07SdE5W
	YRHU/voMOfhazzDIM0H5CcEViD/dFQNGJoEYoKDKS+Y6Awovfi5Cc78G9UiD1Qu+H7/Yrm
	DoS8LCZ54MjWZFPKApRnAM4e85E+H7k=
From: Sven Eckelmann <sven@narfation.org>
Date: Mon, 11 May 2026 19:29:59 +0200
Subject: [PATCH batadv 1/5] batman-adv: dat: handle forward allocation
 error
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-yuantan098-bugfixes-v1-1-6adf6965f2b3@narfation.org>
References: <20260511-yuantan098-bugfixes-v1-0-6adf6965f2b3@narfation.org>
In-Reply-To: <20260511-yuantan098-bugfixes-v1-0-6adf6965f2b3@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Yuan Tan <yuantan098@gmail.com>, Sven Eckelmann <sven@narfation.org>,
 stable@kernel.org, Yifan Wu <yifanwucs@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Xin Liu <bird@lzu.edu.cn>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1388; i=sven@narfation.org;
 h=from:subject:message-id; bh=58f2Z4y63ArOhS8V6snD3emYy/yeDBo/DhIxBWYYRnc=;
 b=kA0DAAoWTQ93K9MU9csByyZiAGoCEhqionL4SgFa9v1DRjxw/KFUsudH0LBsNRE5+9nf8NBNr
 Yh1BAAWCgAdFiEEvNRvz7MH7R/zlvHFTQ93K9MU9csFAmoCEhoACgkQTQ93K9MU9cvOwAD/bJ4x
 ri7k7WT+tW54RemuKVinmN57QwaqKg7/oKgXLFMA/iubZa2YQqtrR53u5gi079wHwoLwiIOexYH
 V12hQvpUL
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: DOI6NQMPYGH6VDN6VXOZGBPC255YUQU2
X-Message-ID-Hash: DOI6NQMPYGH6VDN6VXOZGBPC255YUQU2
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DOI6NQMPYGH6VDN6VXOZGBPC255YUQU2/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: EAC8B5137FF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[gmail.com,narfation.org,kernel.org,lzu.edu.cn];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[narfation.org:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Action: no action

batadv_dat_forward_data() calls pskb_copy_for_clone() to duplicate an skb
for each DHT candidate, but does not check the return value before passing
it to batadv_send_skb_prepare_unicast_4addr(). That function dereferences
the skb unconditionally, so a failed allocation triggers a NULL pointer
dereference.

Skip forwarding to the current DHT candidate on allocation failure.

Cc: stable@kernel.org
Fixes: 785ea1144182 ("batman-adv: Distributed ARP Table - create DHT helper functions")
Reported-by: Yuan Tan <yuantan098@gmail.com>
Reported-by: Yifan Wu <yifanwucs@gmail.com>
Reported-by: Juefei Pu <tomapufckgml@gmail.com>
Reported-by: Xin Liu <bird@lzu.edu.cn>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/distributed-arp-table.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index 3efc4cf5..0a8bd95e 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -696,6 +696,9 @@ static bool batadv_dat_forward_data(struct batadv_priv *bat_priv,
 			goto free_orig;
 
 		tmp_skb = pskb_copy_for_clone(skb, GFP_ATOMIC);
+		if (!tmp_skb)
+			goto free_neigh;
+
 		if (!batadv_send_skb_prepare_unicast_4addr(bat_priv, tmp_skb,
 							   cand[i].orig_node,
 							   packet_subtype)) {

-- 
2.47.3

