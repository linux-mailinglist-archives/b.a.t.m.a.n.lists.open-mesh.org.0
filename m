Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FA0B192EC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  3 Aug 2025 08:49:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EB8F984B74
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  3 Aug 2025 08:49:31 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1754203771;
 b=I7HhhgogbAmKVK7Kg0l2goIJd3pugjVEqQAiCaqTqum6UMZ1chSHtRnBrY2PvZDC5YL54
 LPie8rBc/V9k5S20VpUoWohRbVQfCNMZct1JQHaY2JShEgU7cGm0nqmRLUfUsYovBGI1ksT
 POXmvIYk2sqJlP/M2ccduv9YOsu4TY0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1754203771; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=AYsIZ3LA/h7cSatGWGGLdVDc2GDFYxm/MNZeQ3ZyUQA=;
 b=2U2HbbMfUC9geJ7ffwGXYJAW6ICIMyjL6p8SELgw/QIPPZSUbAKuVrx3QkEzSlUhC3NYN
 4dvoHtfltmqfLy8k2IPZJ4u9jwvk8o9mGlkt2KxBtO5CroxLC6XWvIAbvzIZc3qUVoBa9yg
 +pL06WCxqsBF/6jufD85/bUYg8YnYPo=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 8598A81AB7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  3 Aug 2025 08:48:58 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1754203738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=AYsIZ3LA/h7cSatGWGGLdVDc2GDFYxm/MNZeQ3ZyUQA=;
	b=tn+pL4JNF3MTSGUa9aKQbBYQ6dOUJm+lQuf7sS5kzXohOPWfrvFm0IfKYDlndBQihhbvuR
	M/PmjiZ5LOGmvggIa/LICuKtgeQ6ZALM/VoUWRFhKvdyk6A+lj7HsZyQNnV+j2Prs111eS
	kykdqNtjyI0VaZDAWDT1hBIVDlo/5YQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=HrK4oGtR;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1754203738; a=rsa-sha256;
	cv=none;
	b=ntrNAuG2/EZwd9EGg+ioWPkFcDRl5FPF+x5jRRH9Lk/3jbbPRoFogsqyeQB+0GtQIJwwdQ
	wCVBrIlS8sDLI8F3YycvrFfx1Dq8jI/IiFvdyvS4PhJNxeMQ7rNVOSqD2k7NNmAjgUre8a
	UIhwIZvPzRL2VpDUQ+vU22MohLf3q5M=
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1d86:99fc::8c24])
	by dvalin.narfation.org (Postfix) with UTF8SMTPSA id 73DF62070F;
	Sun,  3 Aug 2025 06:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1754203737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AYsIZ3LA/h7cSatGWGGLdVDc2GDFYxm/MNZeQ3ZyUQA=;
	b=HrK4oGtRKGQtNb41atsLFyn5aDwQ6R9KZPp20TYdXHRadocrLgcMTN6M3JuB988dqT0nDn
	5cD5cPAymnha8GCy2Tcd3zt8NEsD7h8tGjEYoLw5w7WddQUy4yAZMjf8Tg852LFlKkl+Lh
	3g6Y05e10qDzSj80j4TU9O3BrF1DU14=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/2] batctl: event: Fix direct parsing on hardif for
 set_hardif
Date: Sun,  3 Aug 2025 08:48:40 +0200
Message-ID: <20250803064840.702003-1-sven@narfation.org>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250803-various-bugfixes-v1-0-017f917ea98c@narfation.org>
References: <20250803-various-bugfixes-v1-0-017f917ea98c@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: XMGGQQHSUA4I62N5OLYL6WQ6SD66GGK4
X-Message-ID-Hash: XMGGQQHSUA4I62N5OLYL6WQ6SD66GGK4
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XMGGQQHSUA4I62N5OLYL6WQ6SD66GGK4/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The code to get the hard interface name for an even was accidentally
checking for BATADV_ATTR_MESH_IFNAME instead of BATADV_ATTR_HARD_IFNAME. As
result, the fallback code was always used when BATADV_ATTR_MESH_IFNAME
would have not been available.

Luckily, at the moment, BATADV_ATTR_HARD_IFNAME is always available when
BATADV_ATTR_MESH_IFNAME is set BATADV_CMD_SET_HARDIF events.

Fixes: d12322eeb361 ("batctl: event: Get ifname from netlink message")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 event.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/event.c b/event.c
index 33764e3..85234ce 100644
--- a/event.c
+++ b/event.c
@@ -319,7 +319,7 @@ static void event_parse_set_hardif(struct nlattr **attrs)
 			return;
 	}
 
-	if (attrs[BATADV_ATTR_MESH_IFNAME]) {
+	if (attrs[BATADV_ATTR_HARD_IFNAME]) {
 		hardif_name = nla_get_string(attrs[BATADV_ATTR_HARD_IFNAME]);
 	} else {
 		/* compatibility for Linux < 5.14/batman-adv < 2021.2 */
-- 
2.47.2

