Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /5mbD40ELGrQJgQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jun 2026 15:07:25 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D8823679A3E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jun 2026 15:07:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=fzun5LKa;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B6AFA807C8
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jun 2026 15:07:24 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781269644;
 b=xE1iWWOalTnHZeacxsvMle04YZWbR/lwDKPFMXCW+N2d0lmamL/50aHGGFTamxgFealKz
 UhAD1Uc4Ohn70+pXlwTgt/ldiJ8onTLONoOeSefIeAwUuHqrjSKEg5cq4VaDPhdp000JkOf
 lzdQeArG1cS9VUfnH9pGN+7WBLjPqc8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781269644; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=jEnOaz1AHfbcMz8D2JoaprZB5nwTIPFuu4Qoxx00SSc=;
 b=PdufDUeMxcxd2cuv8KIE/PWeiuUTF84kE5iWr39A40TggTLuhDhWap7hBIcdKm6Mgn4ih
 pw58lhkmC4DDtib2BMvv5GLU6vI45DA1izzg6jYbYiR0QdXDwH2G73sBBC4NfvIr8fAc3bV
 xpiOc4gvTnoNbmn0CnyAVEgAWng3eGM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 67A5184228
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 12 Jun 2026 15:04:33 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781269473;
	b=mGBouV01U7LCqcnQDiKhQV9zZfq8CVGCAmxMf2sGHxh+44Oae97rQrvMqfrQ5gtiNCCd2k
	zz75hyF7oTNjkYNmffq8FhsVY3ln8KwNANFy/QI6mvXLN8pIBjVPAkpExC3gw6DYeTa8LR
	EJ2ER4i60/ifVXyAkqOtTq7uiU/QagM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781269473;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jEnOaz1AHfbcMz8D2JoaprZB5nwTIPFuu4Qoxx00SSc=;
	b=mmeJK4Z1Jsg5JkE8ej0KNnGLS92+nP3I+Bag9WRtk7O5fXYhattqzi/q3TbG931lJC/OT2
	Hi0Ay9577nlw/vcCKEwL6JQLETILZDviuej9XlozAMwaA3LO+Hmcy4dB5FFtlFclbrncNm
	QZ28JI8zNsPjEIVtyz9RAoZLXOUfrZ0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=fzun5LKa;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Received: by dvalin.narfation.org (Postfix) id 0ED9D200FB;
	Fri, 12 Jun 2026 13:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781269473;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jEnOaz1AHfbcMz8D2JoaprZB5nwTIPFuu4Qoxx00SSc=;
	b=fzun5LKaRtrlKl5T5jFq0CTfgMQ/T9Y/s4vrB7h3Y6rsQuC1Epi036pEWvjNp/HDqBS92A
	dOf0xJDtgcQ4d3V2UCW+dRIUOIhO4vrZEdOmlKMWukAzAQ1joZEA8rgU9KyhqeC8In5Db3
	emBGteLbkX4BQIxTfo/0kM3BYXPx0zw=
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 12 Jun 2026 15:04:25 +0200
Subject: [PATCH batadv 3/3] batman-adv: correct batadv_recv_frag_packet()
 return kernel-doc
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260612-frag-ttl-v1-3-6b2f4dd9d5b6@narfation.org>
References: <20260612-frag-ttl-v1-0-6b2f4dd9d5b6@narfation.org>
In-Reply-To: <20260612-frag-ttl-v1-0-6b2f4dd9d5b6@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=977; i=sven@narfation.org;
 h=from:subject:message-id; bh=zOx+lP3PdTs3T7WQxsJz4GpkG/y4VGVIt6BmCkwA5tk=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFk6zDdDNW49/mhYeOroizOXPQ+G92+aEdJ/dJLTgq1rr
 v9dd2GKcEcpC4MYF4OsmCLLniv55zezv5X/PO3jUZg5rEwgQxi4OAVgIoZRjAzXu1fffK4nz2fD
 qrmk+7TClFNSa/ZydVwIuvZMJFPwg2YMw1/hqdL/ttuFuP+78LX34L03D/UWXjbfz9QUF1i4c4r
 weVFuAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: SCFMUCGNZFNR7GGX3OXMUXIHERAEPBPK
X-Message-ID-Hash: SCFMUCGNZFNR7GGX3OXMUXIHERAEPBPK
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SCFMUCGNZFNR7GGX3OXMUXIHERAEPBPK/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8823679A3E

The function batadv_recv_frag_packet() is always consuming the skb. The
NET_RX_DROP is only indicating whether there was direct visible problem
while processing it.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/routing.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index 46ba1c47..b105f7b1 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -1091,7 +1091,7 @@ int batadv_recv_unicast_tvlv(struct sk_buff *skb,
  * the assembled packet will exceed our MTU; 2) Buffer fragment, if we still
  * lack further fragments; 3) Merge fragments, if we have all needed parts.
  *
- * Return: NET_RX_DROP if the skb is not consumed, NET_RX_SUCCESS otherwise.
+ * Return: NET_RX_SUCCESS on success or NET_RX_DROP in case of failure
  */
 int batadv_recv_frag_packet(struct sk_buff *skb,
 			    struct batadv_hard_iface *recv_if)

-- 
2.47.3

