Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJIHKQK3nmnwWwQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 25 Feb 2026 09:46:58 +0100
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8211945F2
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 25 Feb 2026 09:46:58 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0FAC6859E6
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 25 Feb 2026 09:46:58 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1772009218;
 b=O50kGOAq7kerMiaPKHnxnlLV+eZ1Kw7xA2QqRO9D8xowdfgNeuphFKlP/rRZcgqH+0rt/
 LEWsKZeKA5qFsKc9+udVTS7DYUBxUlLivlAJ84fSVVtbB0CkakihWzgGdmqU0bZrG+JlSI1
 bLmoIzkkN6gPadTKUZxUrw27mJZbrgg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1772009218; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9+r/aLXNcZUbizaqmSJ4N85bkD5HLrXYGZvg1TDdi7c=;
 b=XcFicjK63jhpCmFj95Fr7mT/C5toKjO+C+YMspS4iBOvLlWh20ypX6/sVV4NRx6i+YSjU
 veNb5qKLPGgfWYoR20UFKj0j696xSE4xcxMxhHcpXRnXp8uUXPlnHQvOnT+TtU6rbT1CI8a
 Hf8lVpeMvue8Z8mfTgX/4Mx7iI5OeZY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=fail;
 arc=pass;
 dmarc=fail header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CDD5984220
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 25 Feb 2026 09:46:19 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1772009190;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9+r/aLXNcZUbizaqmSJ4N85bkD5HLrXYGZvg1TDdi7c=;
	b=YqbGcqEALqfWfmP69ppG6+VqOW1eW3GURJYDB2dQMkZIxRJifuvOLSeREaF3GGri/twP4U
	Q/z2Rni0fllrkd1xI66n62WIOkk78Xx0D3AvY7eBtQRDtxlCpdNJ2cvHsyfLz21oCpKGs9
	BwLnGvlp6eOCqGhJg41SpFRxhTsaa0c=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1772009190;
	b=Ldjsoy/9MrKcNbBaU8B+LkWrqaRavd8WCuTNGOkDDdOs4JOIRC5kvOa9+JW8FB0rN5RDP2
	X0YaxM+u32nKnxb1XQWFf1IpNYpXo2cufE4o5bvvhwW100e/w9ynq229Ykfm1Y5jTTlwCN
	V9EnHCpbYtVbncmCSmR6XWmtMX0zL0U=
Received: from kero.packetmixer.de
 (p200300c5970D83d820CE3bc4f6Cb317e.dip0.t-ipconnect.de
 [IPv6:2003:c5:970d:83d8:20ce:3bc4:f6cb:317e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 274A6FA12C;
	Wed, 25 Feb 2026 09:46:18 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 0/1] pull request: batman-adv 2025-05-09
Date: Wed, 25 Feb 2026 09:46:13 +0100
Message-ID: <20260225084614.229077-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Message-ID-Hash: CIHHXYJ5Z6YEXF4UDBH3T6BURVYGCR5C
X-Message-ID-Hash: CIHHXYJ5Z6YEXF4UDBH3T6BURVYGCR5C
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
Archived-At: <>
List-Archive: <>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[simonwunderlich.de : No valid SPF, No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.997];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[open-mesh.org:url,simonwunderlich.de:mid]
X-Rspamd-Queue-Id: 4D8211945F2
X-Rspamd-Action: no action

Hi David, hi Jakub,

here is a bugfix for batman-adv which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 8f7aa3d3c7323f4ca2768a9e74ebbe359c4f8f88:

  Merge tag 'net-next-6.19' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next (2025-12-03 17:24:33 -0800)

are available in the Git repository at:

  https://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-20260225

for you to fetch changes up to cfc83a3c71517b59c1047db57da31e26a9dc2f33:

  batman-adv: Avoid double-rtnl_lock ELP metric worker (2026-02-21 13:01:55 +0100)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - Avoid double-rtnl_lock ELP metric worker, by Sven Eckelmann

----------------------------------------------------------------
Sven Eckelmann (1):
      batman-adv: Avoid double-rtnl_lock ELP metric worker

 net/batman-adv/bat_v_elp.c      | 10 +++++++++-
 net/batman-adv/hard-interface.c |  8 ++++----
 net/batman-adv/hard-interface.h |  1 +
 3 files changed, 14 insertions(+), 5 deletions(-)
