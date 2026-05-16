Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEKLDMVkCGromgMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 May 2026 14:36:21 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A2A55BCC7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 May 2026 14:36:20 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8C77A85DAF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 May 2026 14:36:20 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778934980;
 b=BeETkf/+P+fN4YoIW2XvzJQyE7z/nNpa+TpJFCoRLFDe02K4SOZ1WNZmCgk9fme3tiuOR
 wQL5SZy3X+TuBv6KFP8mFTfnb8jhQFHq8+HW8YKea1qtJF+WwLifhwSLIYSFjSaYSYga+ZR
 QLOLd6NravfzQjQmFyn5KfekciYALi8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778934980; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=UGB6yYAzMHwUwgMqivbsqIqn866x7NB5V1DXSM9qG7g=;
 b=npCeu7YupOKOpdyft0EMtrwb3ozVDZLtd1Xnn/lP2SOhpb+wggme2xYpQMQq9P8RUiydy
 PYe4UmazIKtG/zLkvWrL55MQDcZNLvXAEtCGoEpBqrKwlVtTrbIzP6JUdcr+3tAoicsKvmB
 D98CR7oA1LaCmWJ4hfHBF1OMVfLKwoM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 026EC80080
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 May 2026 14:35:27 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778934938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=UGB6yYAzMHwUwgMqivbsqIqn866x7NB5V1DXSM9qG7g=;
	b=Hd49LHAoy3tZp6ODGfC4AqOq5dkjlD3jX4d+EPThB88lX2Pop/qKCkb9NcgAgvy7mY3lUb
	KSHUZXyjKDEcXXv7uQx/WQMz0LC1VqUf9QMkN770MD1Zxx8gQKL/v2R68o8Ch2aTh/v7kQ
	u3nX64HFd/pOSDr84eTq5Imnu7DNoa8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=2kOyrkQy;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778934938;
	b=VcZurzO/bQgGsGv/WdW8U1v3MMlYJ2FF3pafKGL+9l7IaZ5rRqe0GizisrMfwedhO2q08i
	DZZK1FkncgsHvBs/SMx6Gb4m94Dudqg5+uBXGMEzt6bmu77Wimf35EqzYrLiivEOtNBGF1
	znbMtATz9MLE/nxEN1TtT3uiq3wBpgA=
Received: by dvalin.narfation.org (Postfix) id E669420101;
	Sat, 16 May 2026 12:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778934927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UGB6yYAzMHwUwgMqivbsqIqn866x7NB5V1DXSM9qG7g=;
	b=2kOyrkQy2e8VP7iLtCXk2tp8daHJ0IjK+fkzyyteAmuGXAXQSQjW9VPmIMH/J/8ez8UjXT
	jNavnWVcIr58LWS03eqbr9FO85htwB9rA1AeH24/vNFXmE0NkC5ad9DzfkrdqjrY7qkNYG
	W+qVUD2VPmo0kWDmMJUkYFo0Hg3+bZI=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH RFC batadv 0/5] batman-adv: allow to specify limits for
 remote learned objects
Date: Sat, 16 May 2026 14:35:17 +0200
Message-Id: <20260516-resource-limit-v1-0-6f597360ed2b@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIVkCGoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDU0Mz3aLU4vzSouRU3ZzM3MwSXdNkw0RjIwtLizTzZCWgpoKi1LTMCrC
 B0UpBbs4gsaTEksSUMqVYiHRxaVJWanIJyFCl2loA2qW6roEAAAA=
X-Change-ID: 20260516-resource-limit-5c1a32898f7c
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2252; i=sven@narfation.org;
 h=from:subject:message-id; bh=SOAnDVfGasgIXrJ1h3mPNntVvUEwRByeWPyUOBfPt2o=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkcKe35KdVLDxwNq/KVXBgQkvGy+v2lRVNOJ7i9vxV6f
 5XMfhXmjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBE0joYGVYXBf1YKHJ46mdR
 Du2PZko5K7n990qtPfDOwNC3eq9UWh/DP9PqrXLtFUGRU7epnFvQIVT2Mmgp00lpWe7GH03rWFt
 F2QE=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: SPSAZ24AOSTDSFY4I5EON2YTI6L3LDI3
X-Message-ID-Hash: SPSAZ24AOSTDSFY4I5EON2YTI6L3LDI3
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SPSAZ24AOSTDSFY4I5EON2YTI6L3LDI3/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: C0A2A55BCC7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

There are some concerns that an external entity could spam the batman-adv
related interfaces with random mac addresses. The batman-adv would use more
and more resources to safe things like neighbors, originators, TT, ... and
would at some point run out of resources.

One idea is to limit the number of entries for each resource type could
have. Things which might need limits

* orig_node
* neigh_node
* tt_local_entry
* dat_entry
* bla_backbone_gw
* bla_claim

Things which are limited by other things (maybe)

* hardif_neigh_node
* gw_node
* orig_node_vlan
* orig_info

Unknown how to handle overly large tt_global_entries:

* tt_global_entry

This approach is also used for the bridge since commit bdb4dfda3b41 ("net:
bridge: Track and limit dynamically learned FDB entries"). And it is also
disabled by default.

For the moment, I just want to demonstrate how this might work with some
example code. I didn't invest any time to actually check out the other
items in the list. So, please consider these lists as vague suggestions.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (5):
      batman-adv: limit numbers of parallel learned neighbors
      batman-adv: limit numbers of parallel learned originators
      batman-adv: limit numbers of parallel learned DAT entries
      batman-adv: limit numbers of parallel learned BLA backbones
      batman-adv: limit numbers of parallel learned BLA claims

 include/uapi/linux/batman_adv.h        | 30 ++++++++++++++++++++
 net/batman-adv/bat_iv_ogm.c            | 13 ++++++++-
 net/batman-adv/bat_v_ogm.c             | 11 ++++++++
 net/batman-adv/bridge_loop_avoidance.c | 22 +++++++++++++++
 net/batman-adv/distributed-arp-table.c | 11 ++++++++
 net/batman-adv/mesh-interface.c        | 15 ++++++++++
 net/batman-adv/netlink.c               | 51 ++++++++++++++++++++++++++++++++++
 net/batman-adv/originator.c            | 14 ++++++++++
 net/batman-adv/types.h                 | 30 ++++++++++++++++++++
 9 files changed, 196 insertions(+), 1 deletion(-)
---
base-commit: 7700c90cbd12d04b8aabb62fe031ce6b31d6a4d9
change-id: 20260516-resource-limit-5c1a32898f7c

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

