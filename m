Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u3qfAe7pNGrojwYAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 19 Jun 2026 09:04:14 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A21096A4350
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 19 Jun 2026 09:04:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=h6ql4ZWx;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7DAEF83F44
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 19 Jun 2026 09:04:13 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781852653;
 b=Dx+XNObZtXcLlXY8K7faaC9intA+r9IlnEAUTGQTqFf598ka4UlWVI2TIqyWI79wnLwXk
 v4cELJNeTe4pXvI/b0rOzZit0mkr8E9Gnwv7lBU97CSqpnCdaffWG4Tze1zNNZ1w4RgDcyA
 WNbvaYeCKkdXZVgX1bKepNYA9GT7op4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781852653; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=i1TkLzyUd1JwPopxOLN6MeiT5+G1+YihcZtxk0na7ro=;
 b=g1iXu6Qgv76hQufHNxf1L2Fti8MizisLf8oOfHY4Yz7Ny5AmGNMyDwslD+8+W4SI2FRbX
 ubJEcameRnRamMK+FbyMejCHnTI1tTlkMMQTaHubUA/YqYOaaDjWgz9wKOo0F0B2eEW+H5J
 56yfpNxxgVRRLtgTyTh7jmdlgDwybqY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E89C48308A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 19 Jun 2026 09:00:48 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781852454;
	b=zOkhg7TFS5Y/qUoZN7Vm4XaiUZUjW36YYSjoKobxICjhQ+ZxLZMyECu3g6Jrjhs4HGrZVr
	iXf9nEEZvpzUM3RWYi7r7WGWqEDJnT4/qlUOz0ug+W3gXhOERas1kVq1iShcyingwFXbDT
	2sRn19dtk4iwWFeP6wabEd/iVkkxqLw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781852454;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=i1TkLzyUd1JwPopxOLN6MeiT5+G1+YihcZtxk0na7ro=;
	b=nxpwc2x7ii9SraA9XK+hnZw3m6tO12ImKhLD1XOfUHBGRzlS3evqPnyTY+Lal8nVlwcYNn
	CZMzvRFwFE1yyAuh7EHD2BZQFxZ+eZlY0gAxFxaVIRAgqy3bvGzxiX8oZWOATJV5+PRup9
	z9mngBu39qMq/OKg3SL3FF20iBKd8ws=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=h6ql4ZWx;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1781852446;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=i1TkLzyUd1JwPopxOLN6MeiT5+G1+YihcZtxk0na7ro=;
	b=h6ql4ZWxeEWdYnFm1M3mQeM7XLANR3/OrTo0BibVg5XKaA2jrGcDTlCfhrKDHsCGM4eskA
	a9GGheNn3gp+OsmVgfmuiebwqXbiI8kpxye54C3HydJeN4e3InzAHzSY2zT4zJenVSVB4K
	x9oaLAI0T3zQckgdydd6ntHJayiEigiU4X5hbU6ds8yDF/154BdOV0kQiqXJKt1sgupeXi
	Dei5CEQEAgYm93WS0Ix+pOzBLeqSnAXj/Pid0bz1/l/5a/mnKeqIW5agmHxiy/hPlNvYYJ
	dGPfagCKL/JowiAPmRrqqIOXuQXWf1z3Du4PTzav9WqJARxfT/0QBDOO7DPlqw==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 00/15] pull request: batman-adv 2026-06-19
Date: Fri, 19 Jun 2026 09:00:30 +0200
Message-ID: <20260619070045.438101-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 7MVIMRBGAFQ5SASZ5UUV7YTOWL3BBMN4
X-Message-ID-Hash: 7MVIMRBGAFQ5SASZ5UUV7YTOWL3BBMN4
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7MVIMRBGAFQ5SASZ5UUV7YTOWL3BBMN4/>
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,simonwunderlich.de:dkim,simonwunderlich.de:mid,simonwunderlich.de:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,open-mesh.org:url];
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
X-Rspamd-Queue-Id: A21096A4350

Dear net maintainers,

here are some bugfixes for batman-adv which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit dad4d4b92a9b9f0edb8c66deda049da1b62f6089:

  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net (2026-06-11 14:33:35 -0700)

are available in the Git repository at:

  https://git.open-mesh.org/batadv.git tags/batadv-net-pullrequest-20260619

for you to fetch changes up to edb557b2ba38fea2c5eb710cf366c797e187218c:

  batman-adv: tvlv: avoid race of cifsnotfound handler state (2026-06-14 12:33:18 +0200)

----------------------------------------------------------------
Here are some batman-adv bugfixes, all by Sven Eckelmann:

- gw: don't deselect gateway with active hardif

- TTL fixes in bcast/mcast and fragmentation handling (4 patches)

- BATMAN V: prevent OGM aggregation on disabled hardif

- tp_meter: concurrency and range fixes, add cap to unacked list
  (4 patches)

- tt: fix unchecked VLAN ID in tt for local add and roam (2 patches)

- dat: check VLAN ID in the hash

- tvlv: enforce 2-byte alignment

- tvlv: avoid race of cifsnotfound handler state

----------------------------------------------------------------
Sven Eckelmann (15):
      batman-adv: gw: don't deselect gateway with active hardif
      batman-adv: ensure bcast is writable before modifying TTL
      batman-adv: fix (m|b)cast csum after decrementing TTL
      batman-adv: frag: ensure fragment is writable before modifying TTL
      batman-adv: frag: avoid underflow of TTL
      batman-adv: v: prevent OGM aggregation on disabled hardif
      batman-adv: tp_meter: restrict number of unacked list entries
      batman-adv: tp_meter: annotate last_recv_time access with READ/WRITE_ONCE
      batman-adv: tp_meter: prevent parallel modifications of last_recv
      batman-adv: tp_meter: handle overlapping packets
      batman-adv: tt: don't merge change entries with different VIDs
      batman-adv: tt: track roam count per VID
      batman-adv: dat: prevent false sharing between VLANs
      batman-adv: tvlv: enforce 2-byte alignment
      batman-adv: tvlv: avoid race of cifsnotfound handler state

 net/batman-adv/bat_iv_ogm.c            | 11 ++++-
 net/batman-adv/bat_v.c                 |  1 +
 net/batman-adv/bat_v_ogm.c             | 23 ++++++++++-
 net/batman-adv/distributed-arp-table.c | 12 ++++--
 net/batman-adv/fragmentation.c         | 22 +++++++++-
 net/batman-adv/fragmentation.h         |  3 +-
 net/batman-adv/hard-interface.c        | 28 +------------
 net/batman-adv/routing.c               | 73 +++++++++++++++++++++++++++++++--
 net/batman-adv/tp_meter.c              | 74 ++++++++++++++++++++++------------
 net/batman-adv/translation-table.c     | 12 +++++-
 net/batman-adv/tvlv.c                  | 69 ++++++++++++++++++++++++++++---
 net/batman-adv/types.h                 | 21 ++++++----
 12 files changed, 270 insertions(+), 79 deletions(-)
