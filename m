Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8mDxDOusTmroSAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:02:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9EB72A10A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:02:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=JrAoQ6eF;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AA1BE85487
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:02:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783540970;
 b=Bk28oCwdcz4cZAmcG9qQJko+yoZGDbMUIdxa9GGfPKHb4V+wrx7hiLWLPP5kcQVIqcytV
 UPwJ2boL3GClWuVV2Gv/AIQGEce0QjoIMdMsxahDcDbg/9N1wbgHfoAtbp9AmyPey5eWgjb
 aomAAFQOX4eZclX5JxIicfzXgCXwUsM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783540970; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=E9IbOydMl1P6Ehdc9hav9/DvycbGLHIWj6vM26DN2r0=;
 b=4HEYdVZzm63PJ0uwx3cOKMiwUZBMqGkLNqPihNe3or2QauixSDucQM8SDN48nMhHWOF8L
 4nbAB6Z8hGpGBZ66afnoxZ4PH1PwmCW51LucpAPsN2I9VMYXXsr2g6Z/URImYjy6/CQilMT
 puHy5wb4wz7LKOi9P+W3IsYmp4LYPSg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 71D0B83BC5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:00:24 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540829;
	b=we9R26IDd5B8aR7qGR6j0s8Im3+HVB2vrmBB30qQSrwvUkL3qu567ImSPme0JjLv/OxMIp
	3j+1JW12dYR+upqCbjueMLRbIotV+41uNhBIMfe3uauZZJmlBUt3C37OxGe5xMj9V446WW
	grq05wy4Vs/vidCBkAXuBbo40meYbjk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540829;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=E9IbOydMl1P6Ehdc9hav9/DvycbGLHIWj6vM26DN2r0=;
	b=tdHnwXEiF4GrK4UnE9ESwL9QgH1eW9iwHC+iPRMLC9rUa25o1xhfhfHTL6ltVzwdrVRJ4P
	0sdmHA6HD8xvAgpHFCuB5mS0hCnVOkWTt4jSAJ9djH0GqVR+ednlH4M98DRW6O1zIo9CWz
	hi3fH7z/DwHRL0GBA5TwCd2XbNd56Ag=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=JrAoQ6eF;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 125F01FD9C;
	Wed, 08 Jul 2026 20:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540824;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E9IbOydMl1P6Ehdc9hav9/DvycbGLHIWj6vM26DN2r0=;
	b=JrAoQ6eFRsVF2EoWQPXOQr24uTQJD+P4yGCG19eRLh86fI2cPeUiSk0GUJidQR/ekONapD
	P36IKzOGIh/Sb4EVDVw01U5w244/SufIJsG/f0UmZ0+iKAagByi7RFyH7MNiDRGE+WH/Fz
	TW3d/tsEFW0IRANyVUZ82S2N+jHKuMo=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jul 2026 22:00:08 +0200
Subject: [PATCH 02/12] batctl: netlink: abort netlink_print_common when
 message allocation fails
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-bugfixes-netlink-v1-2-8ce03e37f17b@narfation.org>
References: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
In-Reply-To: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1100; i=sven@narfation.org;
 h=from:subject:message-id; bh=aHTICtuFFoD55zbzJtoBz3jzkPZS0hqLFX4m2kA8n8U=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+azx4ucwWnz4Y2ci7Yb5BcUvS1gkzbULfsT7N/qDnH
 FHTEXy6o5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjCRFAmG/xX1rtnzZ3te3lB7
 a3Po8eYpXHleO/ZxHzvyavmV4/rZNx0Y/kecU+dZwvx6cz3HfT79gCeJGmavlvT0sJ49/v9kgtP
 SBywA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: FG7VRZF5N55SOMBW63Y4SO4J7L767HGS
X-Message-ID-Hash: FG7VRZF5N55SOMBW63Y4SO4J7L767HGS
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FG7VRZF5N55SOMBW63Y4SO4J7L767HGS/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC9EB72A10A

When nlmsg_alloc() fails, netlink_print_common() just continues. In
one-shot mode this leaves the loop with the stale last_err of 0 and the
command reports success even though nothing was queried or printed. In
watch mode the loop retries immediately without the usleep() pause and
leaks the header that netlink_get_info() prepared in the previous
iteration.

Treat the allocation failure as -ENOMEM and leave the query loop.

Fixes: d8dd1ff1a0fe ("batctl: Use netlink to replace some of debugfs")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 netlink.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/netlink.c b/netlink.c
index 4a3ab60..cb65655 100644
--- a/netlink.c
+++ b/netlink.c
@@ -567,8 +567,10 @@ int netlink_print_common(struct state *state, char *orig_iface, int read_opt,
 								 header);
 
 		msg = nlmsg_alloc();
-		if (!msg)
-			continue;
+		if (!msg) {
+			last_err = -ENOMEM;
+			break;
+		}
 
 		genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, state->batadv_family,
 			    0, NLM_F_DUMP, nl_cmd, 1);

-- 
2.47.3

