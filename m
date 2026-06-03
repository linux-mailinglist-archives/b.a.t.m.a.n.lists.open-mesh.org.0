Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Wgq+CxXXH2pSqwAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:26:13 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1056352F0
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:26:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=ktaJSYfV;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A447F817DA
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 09:26:12 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780471572;
 b=wIRt9PHZZEsCCnVVzYevfM7aNQSCEw6OOVaBVrxkiEOimDFoWbY43gHxQMeijkADrOnTh
 rbTy1O/w4oiffzYv17dlKs7iyMnvLKl2AJTsGTBpGHwi8EH3ZX2Go4vk4l+2Qdbl0XIctCc
 yz7BaNrnietx8NQfJd6H7msMw8MGY2A=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780471572; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=1sxZPgU99qOXY+5M+wANcE85GhLL1lWamNFd4yIpqUI=;
 b=l5pxAqsipHs6F6awr8TZ4qDUZzG6lbwp4kNj+E12gBF41JP7+TYLeA/p6SSQf2tunuWVV
 uzbopzWLPzGNEdCOcgRU0KKvc75TfhgRB6l4gK3ILq7sKwc5JNuKTLu53JFjehskvGh5Nr0
 83/MA1MLY8GoniEFYoSP+oT3gzKMVdc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D1CA980CFF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 09:25:29 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780471530;
	b=Je872YmWPsqmjeEKtIJ24cCrEUwP9YcsnSs0jPk544ktN1EoHcRRbiLdQBb+nPSem+sEJV
	Itclb9bJ+YL2fPXfGIN7lj/eXYg33RtTjuiXCt8Ze8L2xnc3tJav6QcM2s5bFZUUeXhxqh
	lnSBXJhsluU+lxbW/R0LPtPlJ75Nztc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=ktaJSYfV;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780471530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=1sxZPgU99qOXY+5M+wANcE85GhLL1lWamNFd4yIpqUI=;
	b=BsspvsXhhhiMdHKFG7z6n/N0uyY5PfdqpgBExT5JX9k4ONNfjh4dP3rdcSurOAe5vpflpN
	7RSfDOE4FFqJ8krQ9IdRiC0hVEuARbgNduu6sMpoJIzCBkRbPLximX959lqGXxa5pkd7NZ
	ytHCTIhdJClYNZDe4xIq8hxH4qsZ8Ik=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780471528;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=1sxZPgU99qOXY+5M+wANcE85GhLL1lWamNFd4yIpqUI=;
	b=ktaJSYfVJdGU6SVFMJBv7Y5EIB/tPeulo7JNNbgfceV4d1cKNABUOjYjHbWf2d3GjNaOWN
	KT4tncoCpOyynvRsqY8wmOAt+TSHC7+OpZMvBnWTh8ZbIovrKHdJL5WuBbaTEvOQ5a/2tT
	1NKjId+CFZa6qMIlGEH21Z6wNQnk6JRDeYb4VVwcF6VFxZ/XiSbEi6kQHR+pHHNj3n+E/Z
	vbzdbQuwaEZN84mxQIw4CR0oeQIdGKCYHqn3AcBe5xaZzMj3y6oF7K9h730xMkH0tmMbxF
	trkF3vpti48pV3X93lj39kJfqaGk+lZD4gcPDcpRPUovo1HRDlI1EBKkC43avA==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 00/15] pull request for net-next: batman-adv
 2026-06-03
Date: Wed,  3 Jun 2026 09:25:11 +0200
Message-ID: <20260603072527.174487-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: RLLOJ3NIOBQQ6M3HK7XMDHJN4CUSBSGK
X-Message-ID-Hash: RLLOJ3NIOBQQ6M3HK7XMDHJN4CUSBSGK
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RLLOJ3NIOBQQ6M3HK7XMDHJN4CUSBSGK/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:mid,simonwunderlich.de:from_mime,simonwunderlich.de:dkim,open-mesh.org:url,lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BF1056352F0

Dear net maintainers,

here is another cleanup pull request of batman-adv to go into net-next.

Note that this pull request includes multiple fixes which we consider
non-critical and/or minor, and therefore want to send them via net-next
instead of net as per Linus' direction [1].

Please pull or let me know of any problem!

Thank you,
      Simon

[1] https://lore.kernel.org/lkml/CAHk-=wjt1NiKOdyAMz_DT7NmZ++SizPOhRSi492ukdTnpDzHQw@mail.gmail.com/T/#u

The following changes since commit 3bd64ca11d9a1672d67d3130a7264c2cf7f93cdf:

  batman-adv: use neigh_node's orig_node only as id (2026-06-01 14:22:03 +0200)

are available in the Git repository at:

  https://git.open-mesh.org/batadv.git tags/batadv-next-pullrequest-20260603

for you to fetch changes up to 626fd14371614b7a8177f79b357fd323a7b91032:

  batman-adv: tt: directly retrieve wifi flags of net_device (2026-06-03 08:27:17 +0200)

----------------------------------------------------------------
This cleanup patchset includes the following patches, all by
Sven Eckelmann:

- tp_meter: fix various minor issues (8 patches)

- tp_meter: split generic session type in sender and receiver type

- tp_meter: consolidate locking for congestion control (2 patches)

- bla: annotate lasttime access with READ/WRITE_ONCE

- elp: prevent transmission interval underflow

- tt: sync local and global tvlv preparation return values

- tt: directly retrieve wifi flags of net_device

----------------------------------------------------------------
Sven Eckelmann (15):
      batman-adv: tp_meter: keep unacked list in ascending ordered
      batman-adv: tp_meter: initialize dup_acks explicitly
      batman-adv: tp_meter: initialize dec_cwnd explicitly
      batman-adv: tp_meter: avoid window underflow
      batman-adv: tp_meter: avoid divide-by-zero for dec_cwnd
      batman-adv: tp_meter: fix fast recovery precondition
      batman-adv: tp_meter: handle seqno wrap-around for fast recovery detection
      batman-adv: tp_meter: add only finished tp_vars to lists
      batman-adv: tp_meter: split vars into sender and receiver types
      batman-adv: tp_meter: use locking for all congestion control variables
      batman-adv: tp_meter: consolidate congestion control variables
      batman-adv: bla: annotate lasttime access with READ/WRITE_ONCE
      batman-adv: prevent ELP transmission interval underflow
      batman-adv: tt: sync local and global tvlv preparation return values
      batman-adv: tt: directly retrieve wifi flags of net_device

 net/batman-adv/bridge_loop_avoidance.c |  28 +-
 net/batman-adv/hard-interface.c        |  25 +-
 net/batman-adv/hard-interface.h        |   1 +
 net/batman-adv/main.c                  |   3 +-
 net/batman-adv/netlink.c               |   8 +-
 net/batman-adv/tp_meter.c              | 739 +++++++++++++++++++--------------
 net/batman-adv/translation-table.c     |  32 +-
 net/batman-adv/types.h                 | 141 ++++---
 8 files changed, 572 insertions(+), 405 deletions(-)
