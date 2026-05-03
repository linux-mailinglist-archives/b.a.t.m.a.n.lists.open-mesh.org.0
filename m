Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPrZLJc+92k2dwIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 14:24:55 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 510064B5B86
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 14:24:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B66E685AE2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 14:24:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777811094;
 b=yznY0OYYFkMeDOnM96QATIHXoygJae54y210qXmaHocKhVTlG+Y4KBKWauGWf3BI1F7ts
 KDJics7+VBgZw+I23Qv8ECypuAFddC4o3L0/saz63NWs8nmLub8cvS9b0RyN9SYfg5HpszR
 pBuWn35hdC3mHAPjPHSePoTQGVoDvBI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777811094; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JXg+3Cal2NtyoJqcb3yDaa8t1VMNblT1GtrYRFv3BPE=;
 b=xsig6R/QE73h9EILYqbF91u5Z2IFyYixl83YX4SzCl5aCd1mZ2xAQHCZazFK5kv13SwK9
 Ri64Jw05nG8mbfqLEdoQX8mFFANnROELrzRVp6NQSDmPBCh0clFrr+KYdIp9D4uQC5Th52L
 5Zdow54ScZZo8s1ApTjoYiUvOekLLwU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 9DB0084511
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 03 May 2026 14:22:58 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777810979;
	b=0fQuJmWSR0O4OMzYwti9SnbEK7V4t0QkzKeaWHPMyfCrEp+6ZMDFYAFPTmPJOb9cRSOkuj
	rU7SS+w6X01WHm9+yooWe5g2YYcm3nKXvtZhDOYxZQm320B6puJHTCtRc9FKhtrrkzELmo
	SHyO5FH6wfjvvJQO2JDg67+lk12H5G4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=dPwQUm4r;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777810979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=JXg+3Cal2NtyoJqcb3yDaa8t1VMNblT1GtrYRFv3BPE=;
	b=Ned2pzUxvvkvGxef1f7b5Hb22oDo+gazDHVR9QhasbNJNSNy7rKv8uyZX/ycLpXPVHiK/t
	C+y5gfoczru5X6pLXxWxOZAUKGakmcLy8AqQwLPwScgWFCYbP/5JrgBDU3dkOcTvEHkeno
	JQ323t0YJyxlS2t9W+4ZMvj7bOTsX7M=
Received: by dvalin.narfation.org (Postfix) id E17FC1FF1D;
	Sun, 03 May 2026 12:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777810978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JXg+3Cal2NtyoJqcb3yDaa8t1VMNblT1GtrYRFv3BPE=;
	b=dPwQUm4r1zmvSCCZACP/qOyu8qAsKjOa/a7WRloaTnqYBkOeTDFXclPnTnWwGRIkO9Hf+h
	du3m2RZ4/t/NBWQ9gbGPHknOAdFALsOyiEeGHhGOvnQJoSCOSn/G1vFr8Xr0irNYQL6i7e
	lkAxJsOL2MprkLD1LX7tIwCIsYhw6Wc=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv 0/8] batman-adv: follow up fixes
Date: Sun, 03 May 2026 14:22:33 +0200
Message-Id: <20260503-fixes-followup-v1-0-4313278918d3@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAk+92kC/yWM0Q6CMBAEf4Xss03OajH6K8aHFq56hlDSAzQh/
 LsFH2eyswuUs7DiVi3IPItK6gscDxWal++fbKQtDEu2JkcnE+XLamLquvSZBkP1ma42XGJ0DiU
 aMu+L0twR/OjbGY+/1ym8uRm3N6zrD+DKpc96AAAA
X-Change-ID: 20260503-fixes-followup-064092b7ff55
To: Marek Lindner <marek.lindner@mailbox.org>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <antonio@mandelbit.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ao Zhou <n05ec@lzu.edu.cn>,
 Haoze Xie <royenheart@gmail.com>, Jiexun Wang <wangjiexun2025@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Luxing Yin <tr0jan@lzu.edu.cn>,
 Ren Wei <n05ec@lzu.edu.cn>, Ruide Cao <caoruide123@gmail.com>,
 Xin Liu <bird@lzu.edu.cn>, Yifan Wu <yifanwucs@gmail.com>,
 Yuan Tan <yuantan098@gmail.com>, Sven Eckelmann <sven@narfation.org>,
 stable@kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1661; i=sven@narfation.org;
 h=from:subject:message-id; bh=rVVDrd6KHlHSie/lH7b8n2cV8jhyUDO+nWJ9m1jRh8E=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJnf7WSWzm5ee/nI1wvz3xSpbIrTLGMTiNUviTYQfjvz3
 rxVuppbOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATqahjZPj6Z8FmQU/9dU6n
 j6QFpss4+19M/l/ygcfBjZvBX17r0UKGP5yZYhuln6Ru5vw1ay//99OPTaZy/jLcxFm2pijlece
 CKfwA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-size;
 news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: JWEV4QXO5ZMYK5KVMATNW7O5QC4XTYTN
X-Message-ID-Hash: JWEV4QXO5ZMYK5KVMATNW7O5QC4XTYTN
X-Mailman-Approved-At: Sun, 03 May 2026 14:24:15 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JWEV4QXO5ZMYK5KVMATNW7O5QC4XTYTN/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 510064B5B86
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.open-mesh.org,vger.kernel.org,lzu.edu.cn,gmail.com,narfation.org,kernel.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,narfation.org:email,narfation.org:dkim,narfation.org:mid,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]

While reviewing the fixes submitted to batman-adv in the recent weeks,
further problems in similar or adjecent code was identified. This was either
noticed in the manual review or reported by sashiko.dev.

Especially in the TT code, you have the global and the local translation
table. But when a bug was fixed, often only one of the two codepaths was
fixed. It was now tried to sync the TVLV preparation code between to of
them - not style wise but fixes wise. Besides the hardening, it will also
make the code less confusing.

The BLA and TP fixes are just some reference counting fixes - either
reference leak fixes or missing reference handling.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (8):
      batman-adv: tp_meter: fix tp_num leak on kmalloc failure
      batman-adv: bla: prevent use-after-free when deleting claims
      batman-adv: bla: only purge non-released claims
      batman-adv: tt: fix negative tt_buff_len
      batman-adv: tt: reject oversized local TVLV buffers
      batman-adv: tt: fix TOCTOU race for reported vlans
      batman-adv: tt: avoid empty VLAN responses
      batman-adv: tt: prevent TVLV entry number overflow

 net/batman-adv/bridge_loop_avoidance.c | 10 ++++++-
 net/batman-adv/tp_meter.c              |  5 +++-
 net/batman-adv/translation-table.c     | 55 +++++++++++++++++++++++++++-------
 net/batman-adv/types.h                 |  2 +-
 4 files changed, 58 insertions(+), 14 deletions(-)
---
base-commit: 3d3cf6a7314aca4df0a6dde28ce784a2a30d0166
change-id: 20260503-fixes-followup-064092b7ff55

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

