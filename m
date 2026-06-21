Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7Q/nNn33N2oHWQcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:38:53 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8692B6AB183
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:38:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=uAeKVRGn;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 623AD82534
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:38:53 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052733;
 b=yQBG/U+0uFv2IjLY5M9SkY6ZCFPL/Yiq8plg8z0MIPwPFNpCTsOYUWoHs3G/+gOwvShKs
 NeXYRnDUXhUZL35XeGCAy8Dr6j0jjehvTo1/sXH/WIt3naSa1IKisuH6aJ6m7xGzQc36RxB
 DlUu3UVb0rYOwZRDqvKz3Q3sU6UiNv8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052733; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=PRhugwfdfwN9hhfJGlzTy694sV3yrviulUNv7r1De4E=;
 b=a8AOwqykAQWsoWwiQwxWRnDe5JkkVmxH7R3gUHVzZmiII4OyWMWlsEobtBTDi71qUxPX/
 HCBiwLl5NXVKudapVjqVAlxUkHzpNbQUIStO4NeFhg23X9cJ7/Dl2zUy41c/n1zCY8Uxg3C
 wE7gN7wQFWyz6GXMN18xpHPiP4Xul94=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id F02A784234
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:40 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051941;
	b=jL9zRWvYGL+hlDFAnjEuBrQE31+Q8fMgBQXHVGdigu5VkPVGpHYzkT/ol4qtz6AU++V+Qw
	jdQJ8LESGDEOT5bMubnZOTgg780IU/54WTe/rCRhQFr0qPMoPGnfCssQkRBE27WBBMX9nU
	lb9s6O6X0Gurqgd7OsQO6WTQfV/fYGo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051941;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=PRhugwfdfwN9hhfJGlzTy694sV3yrviulUNv7r1De4E=;
	b=t3pYgiyMoALKM1WYkppLkvPmpCr9+xL+1gZ7U3KGtH2C8N2wNrUpBCuuo6gceTz8HCxVQa
	eER0l9SHrChLaCl+gbswwkuaXeLvhHdyOKGDri4lDzl3rN3l4T+dRheJAxuwWRP8i86/MC
	x3MaNTllasEtUX1/m325XWdjp14GVhs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=uAeKVRGn;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 71A8E20131;
	Sun, 21 Jun 2026 14:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051940;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PRhugwfdfwN9hhfJGlzTy694sV3yrviulUNv7r1De4E=;
	b=uAeKVRGnIJGJ8sJziK7+dSRBlM3x/8hBtqw9ffdAry3IsmuZZetbdajF3r8qxd+XtjKke0
	hL19mDvC378wIksrC4ipaCrvwSXutUpsmJyzaMq8S3vcOCSk87PVE5MRXw0AqmpVyP2up3
	fs+4IUR3Nm3Z3nl6nX6dXXm9GGZEIRc=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:09 +0200
Subject: [PATCH 19/28] batctl: netlink: always 0-terminate hardif name
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-19-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=950; i=sven@narfation.org;
 h=from:subject:message-id; bh=oTEDjzjrCWAUQ/MsrtHIebQq+9iCAhQGltrlvOgnd8g=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX9jFD2UbVnU9WhT4eW5tRexVo4yLGRwTTmrE+mXWZ
 Jb3T4zsKGVhEONikBVTZNlzJf/8Zva38p+nfTwKM4eVCWQIAxenAEwkeDnDX+Gw25Zz39RK5fNk
 LTjzqLvD/4GTrfPO14Xh4e/ffl+elMnIsO8le57t3bPmPxY1zuNJ5c7dtuiKUWm2lAh/N7MMS+U
 LdgA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: VPLSFU6PIC67UGYDWBD7QGHSMBOLE6I5
X-Message-ID-Hash: VPLSFU6PIC67UGYDWBD7QGHSMBOLE6I5
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VPLSFU6PIC67UGYDWBD7QGHSMBOLE6I5/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8692B6AB183

The kernel should not send non-0 terminated interface name name or an
interface name larger than IFNAMSIZ. Just to be on the safe side, still
force the last byte to the 0-delimiter.

Fixes: 426e48c8d9ca ("batctl: ping: Get outgoing ifname from netlink")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 netlink.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/netlink.c b/netlink.c
index 3a1c3a5..14100c3 100644
--- a/netlink.c
+++ b/netlink.c
@@ -822,7 +822,8 @@ static int get_nexthop_netlink_cb(struct nl_msg *msg, void *arg)
 
 	if (attrs[BATADV_ATTR_HARD_IFNAME]) {
 		ifname = nla_get_string(attrs[BATADV_ATTR_HARD_IFNAME]);
-		strncpy(opts->ifname, ifname, IFNAMSIZ);
+		strncpy(opts->ifname, ifname, IFNAMSIZ - 1);
+		opts->ifname[IFNAMSIZ - 1] = '\0';
 	} else {
 		/* compatibility for Linux < 5.14/batman-adv < 2021.2 */
 		ifname = if_indextoname(index, opts->ifname);

-- 
2.47.3

