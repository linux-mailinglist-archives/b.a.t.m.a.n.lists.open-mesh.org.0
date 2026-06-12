Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p1vIKwcELGqlJgQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jun 2026 15:05:11 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8666799CF
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jun 2026 15:05:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=qWhiQ4FO;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 33DB584306
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jun 2026 15:05:11 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781269511;
 b=GwBnx6ZlRZHxRaWgWBxHSClybAB4yF3uDbnsycQfeuOjIXhluCHvP1ds0ur/nbNBK5IMt
 s+VNSbu0O+WMxd/1YtRa25bugnWuvywAT3KiOGpFoRWOLEbsi4DBKaG8tkfTJ4/i7n60tVp
 acGzGINGyltNVMCihSRpGhcgmI1D3xA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781269511; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=v1shCHggpKGOmBIMDFTG7fXFyg/VEpAGzlXkGnBzjsQ=;
 b=MphI9UEq8vtZFFa/rFuPm+JDGXwKH6rzS6YH5UNHkZThlEJYFheDmRcCbUJ/QefUvI8ls
 gcZT9wsf+1L/itzuXn+jvGr0OhP8yo7pRNaBBYpFCV5EIaeTXJegXtDB1osSrdLUOgchSnJ
 188OJa0eI8eaUthA01drgqdRtTcGDlU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 58C2780C21
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 12 Jun 2026 15:04:27 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781269468;
	b=an1F3vm1NxYfwEr6IYCxpL8A7Ycyz98hsZtGb0mj1REnIKxySpt2UCY7byRqNyw1zGdel1
	Ai3F0rxUIBy1XV6yVD/aXbqj401weAuiZJW1e+vtRutvHl39krq0AkE8mYbEa1g8uNV3Gs
	hxuUjkcJnSLuP1eZOSIfdEkTqA9+tl4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781269468;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=v1shCHggpKGOmBIMDFTG7fXFyg/VEpAGzlXkGnBzjsQ=;
	b=H038fSAoVVd7jAytYzt+kr6V4dgyaunzvDcXN3+Ed77lROAldpngfONAFdffZarBEdkYsR
	HD2+9i2oyCe0WJU0H1N+wHbmlC5mEXBc7oMvA7OYXgK3cOUbcArPYlbmu5jbZzXv8UHnRS
	E3SOxjTQ46Vt9y3pv1PhXMxTk96sTj4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=qWhiQ4FO;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Received: by dvalin.narfation.org (Postfix) id 1F4B6200FB;
	Fri, 12 Jun 2026 13:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781269467;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=v1shCHggpKGOmBIMDFTG7fXFyg/VEpAGzlXkGnBzjsQ=;
	b=qWhiQ4FOi218XUCMjKrUAcKPkYw9CnS69gXo/Ik1PIVP/P4TFeFfB9EtNVYZuKkqxdrmdA
	3uouVaWZBGYFqY34YDV8MeDV5pDOme+62ssze1wPxSjDkF9X/vuqWvV03MLHf2m8aBUx1C
	1tj8FcaWZZKNS0dU5wVSMtPQkEOsfZc=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv 0/3] batman-adv: frag: fix handling of TTL
Date: Fri, 12 Jun 2026 15:04:22 +0200
Message-Id: <20260612-frag-ttl-v1-0-6b2f4dd9d5b6@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANYDLGoC/yWMQQqDMBQFryJv3YA/RRdepbhI4ov9RawkqRTEu
 zdtlzMMcyAzKTOG5kDirlmfawW5NAh3t840OlWGbW3f9iImJjebUhYTaaULlO5Kj5pviVHfv9U
 N3hU37Rj/Pr/8g6F8PzjPDyzngSR0AAAA
X-Change-ID: 20260611-frag-ttl-fe215ce153eb
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1028; i=sven@narfation.org;
 h=from:subject:message-id; bh=vmSbPDVUSOlWJrX2yH2tcCBwuAfUa7ZQKDpyccOxRF0=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFk6zDemZ9X33pqkknp67nyX2q0Mtw5OOaAhut2F7/Dv8
 /oVezb/7ChlYRDjYpAVU2TZcyX//Gb2t/Kfp308CjOHlQlkCAMXpwBMZOsaRobmfH0/z48Gz0Me
 +Uu8KWvOOjCb70G1O3/8A+07P7R+8WYz/LOo2Jy2TMTvy/WnRZcurNt++8C1+q9Gsm6bhV0MDwb
 NTWUEAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: XZ7LI4X54C33FAHX4YRFHAH4AVYPJ3O4
X-Message-ID-Hash: XZ7LI4X54C33FAHX4YRFHAH4AVYPJ3O4
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XZ7LI4X54C33FAHX4YRFHAH4AVYPJ3O4/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A8666799CF

Unlike other packet code, the TTL was modified without any actual reader.
Unfortunately, the modification was also done on potential shared buffers.

To avoid problems with the shared buffers and to keep the TTL handling in
sync with other packet code, modify batadv_frag_skb_fwd() to unshare the
packets and handle low TTL values before forwarding the fragment to the
next neighbor.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (3):
      batman-adv: frag: ensure fragment is writable before modifying TTL
      batman-adv: frag: avoid underflow of TTL
      batman-adv: correct batadv_recv_frag_packet() return kernel-doc

 net/batman-adv/fragmentation.c | 22 +++++++++++++++++++++-
 net/batman-adv/fragmentation.h |  3 ++-
 net/batman-adv/routing.c       |  5 ++---
 3 files changed, 25 insertions(+), 5 deletions(-)
---
base-commit: 385b248dd4e46c4ce022adeb1b13e547d1954901
change-id: 20260611-frag-ttl-fe215ce153eb

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

