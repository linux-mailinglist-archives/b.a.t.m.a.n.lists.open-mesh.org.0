Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e7+ZG8n6T2rQrQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Jul 2026 21:47:21 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B567352A7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Jul 2026 21:47:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="tCt/Lz6Z";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D6E8684865
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Jul 2026 21:47:20 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783626440;
 b=d6vWwhPRndGiw1myPibBo0BcfRbl3xtu/UN0I36CiGHDzkpiCjlNe6L9pwYmEnaU/92QR
 uvN96VbA0HLDv2zqhyYqsaf7L7h0Arob6PSbwl+8gcwMxtEzsVJR/4uC50vrTRzU1I8RS5+
 GnRNa9Iwrseg/WhOQFFliW/aE8LIScE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783626440; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=YXIz1hYiz0lr/xtOufy8wl1ky0U0QAO9oX4d5+y4rqI=;
 b=2s1b+/6QRO5OcDKuvIJyJsAkRFU5FLynG8FJj6c+k0GDTBAFBr4hqeZ2mszc6q187ZPKW
 Km3F23/KVYBRgpm4Q4GAYqql4WXNicoOLw+qmToBlOJcdpy0SsPQuh17Lxav410jrGag7BH
 rRyGnOerGdlw0VdwU4t6ixrAoL4D2fI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 45C1E80454
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 09 Jul 2026 21:46:24 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783626384;
	b=P6sfWYVMmHgLnFbrx9ACS8Jk9t2VUdBeCfPGN/rY3FgGgZSgdzWWZrLvxJF6/q2WzPl6zz
	3x3IuMFS+C79ASF2gVT5H8bCgCVbNZJZ0eNlhjZMW9uIrVQOt/CH8yof98SqxPXOKGEBKh
	7OlV+Bw9dnMryVPwk9+SPQzEyXu+wHo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783626384;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=YXIz1hYiz0lr/xtOufy8wl1ky0U0QAO9oX4d5+y4rqI=;
	b=WUVG8CSE/adAoodgqPkx/WLUAhV2qLiv0j/KWODhSBsT/7fqIqk0E0onwHXCL/0lU4HByG
	qYlFdaV9IazsDY2UIrwPIj2zbaZvDccNx3FENLFFFXBVNXjCfKSknxAITZaE2+0oQdCuI5
	yM3HQLuTg3ymnGkLNkaExwhfwoHNpds=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="tCt/Lz6Z";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 461502055F;
	Thu, 09 Jul 2026 19:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783626383;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YXIz1hYiz0lr/xtOufy8wl1ky0U0QAO9oX4d5+y4rqI=;
	b=tCt/Lz6Zn1JXuQOOilVnX0kQoy/1SnYIN1zsm2vpKjyeuQ67axpwKcdH2r60ud0Ss0H5mU
	oPI60pFgKtRyKqi7NVb2wKHAZl9Z7Wq4tKnbNZZm//MQHXkxjN0P0b7jQWfLfCf3OC4Ui5
	qxNCi2YzKMK24bfdRiqLcsd//RNKAa0=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 09 Jul 2026 21:45:57 +0200
Subject: [PATCH batadv 3/3] batman-adv: mcast: linearize skbuff for packet
 generation
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: 
 <20260709-mcast-header-generation-bugs-v1-3-c7c111fa45b6@narfation.org>
References: 
 <20260709-mcast-header-generation-bugs-v1-0-c7c111fa45b6@narfation.org>
In-Reply-To: 
 <20260709-mcast-header-generation-bugs-v1-0-c7c111fa45b6@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>, Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1307; i=sven@narfation.org;
 h=from:subject:message-id; bh=GJ06g5NQW3AZJoDt5PX9eJ0DGsP3S2GySD5ccxiCA2c=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFn+v8q4fE9eupxysMxjxtWq5d//Mk0OEdWJ3mLb0rU4s
 ljV8PHWjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBEInYw/JWIlOwP26Jo/u/4
 7X9zBB8/uVi0aKtm9d15GQl3Xp5pDC5mZOgX0eicfcc47dJj48NSy7Q5tf7+i3Zb02W3flWdY4d
 JAj8A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: DYJLSLR5FTWIWJDW22XAWBCTWBODDCUP
X-Message-ID-Hash: DYJLSLR5FTWIWJDW22XAWBCTWBODDCUP
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DYJLSLR5FTWIWJDW22XAWBCTWBODDCUP/>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_THREE(0.00)[3];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 04B567352A7

batadv_mcast_forw_packet() is not only called by the unsharing+linearizing
batadv_recv_mcast_packet() handler. When it is called by
batadv_mcast_forw_mcsend() then it will be unshared but not linearized. The
SKB_LINEAR_ASSERT() can therefore cause a fatal BUG().

The batadv_mcast_forw_packet() must handle the linearization itself.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Fixes: 8ed36122d709 ("batman-adv: mcast: implement multicast packet reception and forwarding")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/multicast_forw.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/multicast_forw.c b/net/batman-adv/multicast_forw.c
index c5b8e2e3..9fbd2876 100644
--- a/net/batman-adv/multicast_forw.c
+++ b/net/batman-adv/multicast_forw.c
@@ -937,8 +937,10 @@ static int batadv_mcast_forw_packet(struct batadv_priv *bat_priv,
 	u8 *dest;
 	int ret;
 
-	/* (at least) TVLV part needs to be linearized */
-	SKB_LINEAR_ASSERT(skb);
+	/* packet needs to be linearized to access the tvlv content */
+	ret = skb_linearize(skb);
+	if (ret < 0)
+		return -ENOMEM;
 
 	/* check if batadv_tvlv_mcast_tracker header is within skb length */
 	if (sizeof(*mcast_tracker) > skb_network_header_len(skb))

-- 
2.47.3

