Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PHM/HfP6T2rZrQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Jul 2026 21:48:03 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 140917352B1
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Jul 2026 21:48:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=B0RnuuSk;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E5DAD842BA
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Jul 2026 21:48:02 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783626482;
 b=lK5xN7brn0AwxWOjn9bMdiU4B1XcLDUSLIpSB5WKc8ygJg02TDKa1bVfRCEQptRhVIoh9
 6ZSwjbfZyK8nNQso/bWvVa8fx6BPOmRHEL8K7B9N9ovVS3QVHJLKpnNK9+4+izh4GNi/SF2
 P9qgaNeH3NZV6D7/tUNkHkpZXE9cey8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783626482; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=tgiiIc1fhcNyjC1WNVhrPfJ8RlfLZ5lpAjVRma8jkS0=;
 b=px8jbEdkE0WV9DYxZnJ1XWANpwJg0m8wELLOSQbL0BekQOiMfskiL+4mXCz8icDrXk8+m
 rAjxs7R3kYkGupxN9u+E9/y8mdgX+GuP6dY7MvQnaL5tjtOJTKmW6ZAvqF7HgPX9xYGDAP1
 hUUozHS03g1eZdHBeA7ihkzEYj9tmHk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 863B383E95
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 09 Jul 2026 21:46:15 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783626385;
	b=VOsTO470aDN0JCa5Oj3rp65DMVDowzhgfo6igpkJucTrYWeiyURCDiNDMp71h9DthlDnFT
	yBE37PdknGyz3WxiWKZwk+fhDFPER/PAzy1/XmvG1d5ALVGd9Q32Ih39lgRHjscxGEo1v7
	BM8WvfiRN0ppJp4GsB7sUbtito1FSqo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783626385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=tgiiIc1fhcNyjC1WNVhrPfJ8RlfLZ5lpAjVRma8jkS0=;
	b=YYHaBYb5B4G2+pcLKTImTlx80wqbUpL1NDOkMxJwaWkr7qq8b6qW5DdJksiozoHe1rTjUv
	8NmWRGMIKmYk2ryNknfeN1vLgTvta6RZx9fmAgvyB1lkf9NT3aVDLjbwJUsGDRVQ4DJZR6
	umuRJAT37gAyHk/Fg5J80o7JjaIWDRA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=B0RnuuSk;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 60B542041E;
	Thu, 09 Jul 2026 19:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783626374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=tgiiIc1fhcNyjC1WNVhrPfJ8RlfLZ5lpAjVRma8jkS0=;
	b=B0RnuuSkw3ibALY0QxE4iNDfwDbDX8TQPQBHg3eixQZ2Q4sYLSnDIsnqo5aaE4M4iB2DPM
	7WGGmFYscSc7UNpccxrP+fG8epcQR9qYCndY10ThaxZlehxy8PcECMCDglc4vmcVHl6OtH
	FOgPMBX2e38ht4NEPhEBCKYgmfv3L6Y=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv 0/3] batman-adv: mcast header creation bugs
Date: Thu, 09 Jul 2026 21:45:54 +0200
Message-Id: 
 <20260709-mcast-header-generation-bugs-v1-0-c7c111fa45b6@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHL6T2oC/yXMUQrCMBCE4auUfXYhLdharyI+bJIxTcEo2bQUS
 u9u1Md/YL6dFDlC6drslLFGja9Uoz015CZJARx9bepM15vBjPx0ooUniEfmgIQspX7YLkHZwre
 Du5ylt0KVeGc84vbjb2SliF/p/t91sTNc+dp0HB/jf7vPiAAAAA==
X-Change-ID: 20260709-mcast-header-generation-bugs-bed17c85a6ba
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>, Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=970; i=sven@narfation.org;
 h=from:subject:message-id; bh=WAwAEQa0Q9b9A482oFy9dGqWqa7rGVkBB6n5owHuQWQ=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFn+v0pdbaWO25o9rfFKC7zZVCPdPb/wTZfSty3Z8xcWN
 5jarlHtKGVhEONikBVTZNlzJf/8Zva38p+nfTwKM4eVCWQIAxenAEzEtZWRYb9r968t2/7vPPj/
 A/uTF3rKK23CnX6mFMYabq6+Uf52IifDb/YcwfBfC6fqSJgqpe9mjv9r/8/9SpPwXuHPT5wnRnX
 MYQMA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: MTTLO4X2VO2PK3UHJ6PYVU5ZV2NOANU7
X-Message-ID-Hash: MTTLO4X2VO2PK3UHJ6PYVU5ZV2NOANU7
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MTTLO4X2VO2PK3UHJ6PYVU5ZV2NOANU7/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 140917352B1

The code which introduced the mcast packet format was expanding the skbuff
header in various places. But this broke the priority extraction and was
requiring various skb properties (linearized, unshared) but only in some
paths (forwarding of TVLV) ensured that this is actually the case while
forgetting in others (initial creation of an mcast packet).

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (3):
      batman-adv: fix TX priority extraction for BATADV_FORW_MCAST
      batman-adv: mcast: ensure unshared skb for multicast packets
      batman-adv: mcast: linearize skbuff for packet generation

 net/batman-adv/mesh-interface.c | 7 +++++--
 net/batman-adv/multicast_forw.c | 9 +++++----
 2 files changed, 10 insertions(+), 6 deletions(-)
---
base-commit: 6628ab4bc899bff39637008ebb5ef89372efd9d3
change-id: 20260709-mcast-header-generation-bugs-bed17c85a6ba

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

