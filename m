Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SFI0BG/NQGoXiQkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 09:29:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A87036D35A7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 09:29:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=GsidzasE;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8405F80BB6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 09:29:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782631790;
 b=h0Png+d9KSMlO6/l3KJH665jPjjuuBdktd6Tk8grCO7RJKol/0p4TXybxHBlRWLCFZYqi
 KAFfgooQThDMo4Fdx5PojzshBRVzrftdmRSrn6qWjWe8RRmqCpnoMj5s3HjHnkJO3q9eCMV
 9lENlWmDpqKgGaQ3fwf6lMELuXB9CiU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782631790; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rmITnE0cXo8waVPczBYIMMwBi2D1iqNhAQrJzNfLo5c=;
 b=SoRotrZ3PHoTmFmqECFdOCv1USl6H4DaZk8F2qiXSbp0aQCxIlA8kwNM7Uw01w2U3zr11
 +UfY1vmXnFNNpMRgD1ZJPL+MvyHriqEScGZslKqgtB946vACktPODaT5gkedrd9XcBfVRBM
 2OVV/eRlOOnazg54nK88tfuUy9QUAd0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 26A3F809A8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Jun 2026 09:25:42 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782631552;
	b=uN12p738+PsVYOy3BXXBtogZpRhf/ONjnll7rFXrVRq2Dmd27vJHDB5ybuYjsjsTZ2nDFb
	tS72IMI7sWdlu2H1pwk9/OslXt+Lbox0MHiaAxegJLCR5Ut8gEIsK4A0aC32i7xulpOe1o
	lcNPmuGopkxLbsIVEzDnlDoNghk/7ik=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782631552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=rmITnE0cXo8waVPczBYIMMwBi2D1iqNhAQrJzNfLo5c=;
	b=aL4cVfPqUAVKZpK2zo7Bl36fmd6CVfEJYp5a5oF70cyxAwbzd7cvThygmKjO5heXULhBgs
	9x6Urx/23xw/k6gFhoDvI/8wiIT2cR+GEwoejxd5CnS2ikYSt79rrH3p2bDOqYCYvVq0Rk
	EEPayQ0MkA3je3Gx0gxJbXjC8SKRQqQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=GsidzasE;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 73CF51FECA;
	Sun, 28 Jun 2026 07:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782631541;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rmITnE0cXo8waVPczBYIMMwBi2D1iqNhAQrJzNfLo5c=;
	b=GsidzasEOe0/WLj72lADKAa4tLUOIRSW16WVZ/KoxUDDEL3UTzaPKQCmV70KgpAmpg6OI+
	vr1gEuQjlAZ/pvmFylJuurH+eLmuHSEyaP+DDYou/8bPbCE9mZ+GOw0ogKIh2xQGqeyWG3
	ulnEsAe4284yd1a9RBxiIlfSZpLWB68=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv v2 0/5] batman-adv: reacquire pointers to skb buffer
 data
Date: Sun, 28 Jun 2026 09:25:33 +0200
Message-Id: <20260628-skb-post-realloc-v2-0-59a58f5a471b@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG3MQGoC/3WOTQ6DIBCFr2JmXRqBSE1XvUfjAmRQWiOGoaSN8
 e5Fu+7yvXzvZwXC6JHgWq0QMXvyYS5CnCroRz0PyLwtGkQtVK1Ey+hp2BIosYh6mkLPOJqG26Z
 urZRQYktE599H5R2MTtpm6H4+vcwD+7T37eToKYX4ObYzP/j/M5kzzpTgrXPmwpWUt1lHp1P5e
 w5xgG7bti+M1I97zgAAAA==
X-Change-ID: 20260628-skb-post-realloc-1eb51d508d33
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>, Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1688; i=sven@narfation.org;
 h=from:subject:message-id; bh=OjMC7lmXqooepAI6t8GX6IeKjj3DUjzPziKOWWbGe8g=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkOZwrOn3tiN+NEo9K/V6FnLe/xci3cnVRY9Tn4x69TJ
 VzTFdmXdpSyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAmYh/B8IcnPtfFdHZL/RNZ
 R/VZmnf1N3xK0Lr6utPbau6Ecwf0FxQx/Pe3fMi7V+e7Q9iboy9Ewx7ePLaL81hRZPuVrfslu3Z
 pfWQAAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZGCM4P67M6MHS6LU5GMMCW67FJRNJ5MS
X-Message-ID-Hash: ZGCM4P67M6MHS6LU5GMMCW67FJRNJ5MS
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZGCM4P67M6MHS6LU5GMMCW67FJRNJ5MS/>
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
	DKIM_TRACE(0.00)[narfation.org:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A87036D35A7

When a function is called which reallocated the skbuff, it is necessary to
reacquire the pointers into the skb data. Otherwise they might cause an
use-after-free.

There are multiple such cases in the batman-adv code - some of them are
hard to find because they are only indirectly calling pskb_may_pull. To
ease the situation, annotate these functions. And based on this
information, restructure the callers to avoid the potential use-after-free
scenarios.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v2:
- drop already merged first patch
- add fixes for indirect callers of pskb_may_pull
- annotate non-skb-consuming functions which might reallocate the skb
- Link to v1: https://patch.msgid.link/20260628-skb-post-realloc-v1-1-6218ffb71633@narfation.org

---
Sven Eckelmann (5):
      batman-adv: access unicast_ttvn skb->data only after skb realloc
      batman-adv: gw: acquire ethernet header only after skb realloc
      batman-adv: dat: acquire ARP hw source only after skb realloc
      batman-adv: bla: reacquire gw address after skb realloc
      batman-adv: annotate functions which may reallocate the skbuff

 net/batman-adv/bridge_loop_avoidance.c | 10 ++++++++
 net/batman-adv/distributed-arp-table.c | 45 +++++++++++++++++++++++++++++++++-
 net/batman-adv/gateway_client.c        |  9 +++++--
 net/batman-adv/main.c                  |  5 ++++
 net/batman-adv/routing.c               |  8 +++++-
 5 files changed, 73 insertions(+), 4 deletions(-)
---
base-commit: 6f34546691685542e30c7f7a3a5612821e917560
change-id: 20260628-skb-post-realloc-1eb51d508d33

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

