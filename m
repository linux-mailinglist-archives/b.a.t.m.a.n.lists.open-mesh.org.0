Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kCwwBtSoPmpWJwkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 26 Jun 2026 18:29:08 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C80B6CF0DB
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 26 Jun 2026 18:29:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=bPUua1zo;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 04C1083C55
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 26 Jun 2026 18:29:07 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782491347;
 b=Thy/BZ1x8OVHse2GrUekIxIlVNtZj2oq5a/BmmjapgMZX7FM8Bh0+sCM0rnQFJgQ8A1on
 BRctBtYrAJvn88iDaLLVod5p2GTfj5MiRjyYFR/KcJWqv/1dKcVOYt5dupqbxRwg6q3zwnu
 gvBjcJOe6/oYjyzo2NSUyCEEdiSxux0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782491347; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=72Zk8dbO01W/G9V7RTfIhJMaHjL/U33NH7/9+cJzd2U=;
 b=gwe/VWN07QNYgpl3cyFkvAVhbYtu5S0Q2rhx4DxnwXfZ80+DEVe+46J17RYE4yqKxXDf4
 QF1Sl8ARYgEUvX0DprblymwyO4i9pMZwlzqIm1EQcZPy79YF3+Zr8MVIktSQdMEerYjyEYT
 sRJKVrgUFlC6CYgOIaZ8Zd8hFniDvvg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 4B94580342
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 26 Jun 2026 18:28:39 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782491329;
	b=3Z9e1RHiPu2nlbsMvGp+CdryfvPnhauT+ih+LleByM0UYQE0rd856mlGRJaXX5PMFL3PHI
	+RZIa3oCdpsrfILZrDM1k+yJLBAgiLjkAyCJQbIocVmzxhXk3QWs2PCLEN43VeY7/bpIKY
	DUcPSjJhPQdkwyxY0yHkzu0Kd+m9ylg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782491329;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=72Zk8dbO01W/G9V7RTfIhJMaHjL/U33NH7/9+cJzd2U=;
	b=tH1Xkdbr/QHIC/BDKk43VzXrvz/9GKPbbMoJEf3Xlim1jlzRY4wGc3n7SFnrLJxIf/YZfz
	WUfEfPHLQReraECLUdy5t5EObDsiZbVpmgAXvcJ7eZNfOGj82Fd2vsRBBqbbfoFOyitXnV
	eqzVPpTDGwnNMkhH58fd0ycSfbrWbQQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=bPUua1zo;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id B4E3D203D3;
	Fri, 26 Jun 2026 16:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782491316;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=72Zk8dbO01W/G9V7RTfIhJMaHjL/U33NH7/9+cJzd2U=;
	b=bPUua1zoutXMX+1u786Q/1f+VP36Ah0zskR1DG8qZNzoVF3TV06y7Cl+0nmO3IVW3yMjDx
	vbFugGoTTIHCxGuhBNOWVLB7sdmHxZc4x2iepEUA9tUIiH/1N8Aqh+6WlcTWUDcyo4SaPz
	syeXAWFKcKcFUwpXq4ishgghAQXP6fU=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv v2 0/2] batman-adv: tt: use atomic flag
 modifications
Date: Fri, 26 Jun 2026 18:28:32 +0200
Message-Id: <20260626-tt-atomic-refactor-v2-0-b6b9c99d3bfb@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALCoPmoC/32OTQ6CMBCFr0Jm7RhasAZX3sOwGEoLYyI1bW00p
 He34N7l+5nvzQrBeDYBLtUK3iQO7JYi5KECPdMyGeSxaJC1VLUSDcaIFN2DNXpjSUfnsdPdIBt
 qRWMllMNnSfi9Q28wUKQxQf/zw2u4Gx034tacORTAZ19PYu//G0oCa+ysorOS+jTK9rqQtxTLz
 0fnJ+hzzl8FxnEi0gAAAA==
X-Change-ID: 20260613-tt-atomic-refactor-9c9b23a413f2
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1395; i=sven@narfation.org;
 h=from:subject:message-id; bh=Ifs86daZ5B7KVB5MAieA6U2fnTzikPYeOa+PEni84ao=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl2Kzaqz9+Terr9kt+UJr2IYhPpdYtXfd5fcbjzStp1Q
 abQm7MCOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQAT+WvDyPC2wkmv48vXamPF
 rCUVM29etMnamRii8YltfZbs7bW6wW6MDOfTDx7emuOoWPt67vSv7lv8TxXeYPvrGJi7WGF160f
 nCk4A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: TM3Z65DQDBPGJ5SJGC4ILCARTOML2B4F
X-Message-ID-Hash: TM3Z65DQDBPGJ5SJGC4ILCARTOML2B4F
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TM3Z65DQDBPGJ5SJGC4ILCARTOML2B4F/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C80B6CF0DB

The flags of translation table entries are modified in various places using
RMW operations like:

* read flags + add flag + store
* read flags + remove flag + store

These were done without making sure that no other context is doing a
similar operation at the same time. If another context does modify the
flags then it could happen that a store of the flag modifications is simply
lost. This problem can usually be fixed at a later point when the flags are
tried to be adjusted again.

To reduce the time the wrong flags are used, it is better to change the u16
flags type to use an atomic_t with its atomic helper to perform these
adjustments.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v2:
- rebase and drop already merged first fix
- remove RFC prefix
- Link to v1: https://patch.msgid.link/20260613-tt-atomic-refactor-v1-0-9f6a762c5d24@narfation.org

---
Sven Eckelmann (2):
      batman-adv: tt: use atomic flag modifications
      batman-adv: tt: simplify NEW flag transition code

 net/batman-adv/translation-table.c | 255 +++++++++++++++++++++++--------------
 net/batman-adv/types.h             |   2 +-
 2 files changed, 162 insertions(+), 95 deletions(-)
---
base-commit: 6f34546691685542e30c7f7a3a5612821e917560
change-id: 20260613-tt-atomic-refactor-9c9b23a413f2

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

