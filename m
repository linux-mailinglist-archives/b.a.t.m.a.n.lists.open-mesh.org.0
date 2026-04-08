Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJoKDjk21mlZBwgAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Apr 2026 13:04:25 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D7F3BB108
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Apr 2026 13:04:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A4ADA81FD5
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Apr 2026 13:04:24 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1775646264;
 b=SoMFzPtY7gtQ5wVEJ4PtBEluSDbCHAAVrOgmtdZtZlVJhgzkNY8QxrYS4AYChi0XjVNe/
 9t+6AbSVEjeO3Plsby63GwiqjGhrPCas7MmycUYp5ZUM3RRA4hXOL60mxWh9i+zOssYZ5eO
 d6nesrs24+3ZqJ2u5hyyaxqWKuvUoe8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1775646264; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=EiD/I9JLAgaiEHPTSYMk70AntE8XVl+GewE0tXnVpDI=;
 b=P6+fCPwdv0JFRWNmOWLPVgkfnomGycciDOizOZKCqxxbPk4N3wsp9mMrENepmIUCBt2gi
 4UzFJSSbPUOoleWADflAOszYL3yB3MxLUCbVRC8ajHuBFszneIz0dfxjPF06Vc6WVzCK5HT
 dSM5CZHCMnK4M959QA5NERRsCuM36N4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C340781712
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Apr 2026 13:03:09 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1775646189;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=EiD/I9JLAgaiEHPTSYMk70AntE8XVl+GewE0tXnVpDI=;
	b=a27ltWuyKEYCbkumVY8HkUcuyD1dksbXRYiwrp5vQ7G/7YH7M4SOKW1C/CUHKyZltAvDHz
	8PwozE1OtQCvsvDC8gFgECy0YHXFEHudC8PGtFQJoUftYZDK6eGggDlH5oknBN/BILlq65
	A7aYNBJh7kgvq+L8gn0RK/B+kKScm0s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=JR79XSfT;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1775646189;
	b=uiHwWMJ/3Ed7MPycT3GHupiedEic1FWlXa92tCxiaaLDqbPoDXKcNdht1jsowFvTZTMKAe
	ZKVHGp+Q/1YYbLzZPt+HZ/LZIGbPjV+et0ZDjVqVQK0aW+LAzLW2HNiOF4cDW/N2b00aid
	HShgAwnwnmVnrYrODiYTvQsTdw+ahBs=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1775646188;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EiD/I9JLAgaiEHPTSYMk70AntE8XVl+GewE0tXnVpDI=;
	b=JR79XSfTzK7KzWTU4trA4DXkN5Ci8Mx4PicNz6Vdj2uuQHPsfZ9OQGqCzQJ3BlICvg7GJh
	LcQFG9TtZGjyJJzwmMTC4YkggyDjeyaaNoED9venR9bswImr4akeRqiQrDnvQscLRVAQl2
	B1RhM7T5SKEuiBrKUrfIGceojCW3adcZLANakiwyiESdWpBjeuGMgJ6wwrtvYqMKRH/BYG
	PVrIrF2aSKxywJYEqfVNiQRvSvWJYaLrqJmhSenvRh5d8RQqx2yNwsKn6fswWSnSoA9DuP
	BXr0aMB9XO87jM+qbrgVNCAA/fnFrrJCDfZXQo2ItL7TlqouWvhW/5QZ2/vRkg==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Ruide Cao <caoruide123@gmail.com>,
	stable@vger.kernel.org,
	Yifan Wu <yifanwucs@gmail.com>,
	Juefei Pu <tomapufckgml@gmail.com>,
	Yuan Tan <yuantan098@gmail.com>,
	Xin Liu <bird@lzu.edu.cn>,
	Ren Wei <enjou1224z@gmail.com>,
	Ren Wei <n05ec@lzu.edu.cn>,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 1/2] batman-adv: reject oversized global TT response
 buffers
Date: Wed,  8 Apr 2026 13:02:54 +0200
Message-ID: <20260408110255.976389-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260408110255.976389-1-sw@simonwunderlich.de>
References: <20260408110255.976389-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 3C2VPCMDISANVZDW6ZPBCJ56F4EZW5QD
X-Message-ID-Hash: 3C2VPCMDISANVZDW6ZPBCJ56F4EZW5QD
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3C2VPCMDISANVZDW6ZPBCJ56F4EZW5QD/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.open-mesh.org,gmail.com,lzu.edu.cn,narfation.org,simonwunderlich.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid,lzu.edu.cn:email,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: C9D7F3BB108
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ruide Cao <caoruide123@gmail.com>

batadv_tt_prepare_tvlv_global_data() builds the allocation length for a
global TT response in 16-bit temporaries. When a remote originator
advertises a large enough global TT, the TT payload length plus the VLAN
header offset can exceed 65535 and wrap before kmalloc().

The full-table response path still uses the original TT payload length when
it fills tt_change, so the wrapped allocation is too small and
batadv_tt_prepare_tvlv_global_data() writes past the end of the heap object
before the later packet-size check runs.

Fix this by rejecting TT responses whose TVLV value length cannot fit in
the 16-bit TVLV payload length field.

Fixes: 7ea7b4a14275 ("batman-adv: make the TT CRC logic VLAN specific")
Cc: stable@vger.kernel.org
Reported-by: Yifan Wu <yifanwucs@gmail.com>
Reported-by: Juefei Pu <tomapufckgml@gmail.com>
Co-developed-by: Yuan Tan <yuantan098@gmail.com>
Signed-off-by: Yuan Tan <yuantan098@gmail.com>
Suggested-by: Xin Liu <bird@lzu.edu.cn>
Tested-by: Ren Wei <enjou1224z@gmail.com>
Signed-off-by: Ruide Cao <caoruide123@gmail.com>
Signed-off-by: Ren Wei <n05ec@lzu.edu.cn>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/translation-table.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 6e95e883c2bf0..05cddcf994f65 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -798,8 +798,8 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 {
 	u16 num_vlan = 0;
 	u16 num_entries = 0;
-	u16 change_offset;
-	u16 tvlv_len;
+	u16 tvlv_len = 0;
+	unsigned int change_offset;
 	struct batadv_tvlv_tt_vlan_data *tt_vlan;
 	struct batadv_orig_node_vlan *vlan;
 	u8 *tt_change_ptr;
@@ -816,6 +816,11 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 	if (*tt_len < 0)
 		*tt_len = batadv_tt_len(num_entries);
 
+	if (change_offset > U16_MAX || *tt_len > U16_MAX - change_offset) {
+		*tt_len = 0;
+		goto out;
+	}
+
 	tvlv_len = *tt_len;
 	tvlv_len += change_offset;
 
-- 
2.47.3

