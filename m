Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vwsNC/nNQ2rBigoAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:08:57 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CE16E53D1
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:08:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=I9aeYTkz;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A399980756
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:08:56 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782828536;
 b=kSNaoOFIJRx8HssnZw5aGAgqLX8IWzQOizDEpjMIYS5LjgfGTSuw6qjC6Mk65yoFz37vX
 JdfCBryPTIlmaGsbi1gjqCplxkG/hFYxX5wR2B2Tcqb98CmH57qkCkiV3n2SK9ZimWKR+ef
 iDI6BAhHZHaulMAXXOfuBbdPIUxZeIc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782828536; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=RML7WXnJKm0QCAIXXu6o7fujESjNPIoRg8QFFLLlkbU=;
 b=25ax5Yu5NXZthQeYEQufsGmXHwHm9nEK5zPujrh+FjG+srKhVoRx+U+R1WQP8wDjtIxyr
 c7sI18MGi4vkaenit+XqzWkF0y7DydwRSEpGp6umYrHNUnSGG8J0pxUa/CdeDguPTz4Vxir
 wKhIQTjJtkJ/UE92/d4HJbbwrrJDFgs=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B6FC0810A3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2026 16:06:25 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782828390;
	b=KV7or4Dnhai3qY1iL7rO3ndbTbyfFCD0Jl+84wXLU9QcENSS0XalK+mV6q9/rKqlpDg99m
	nB+9ShQQwyHc/VO3u0cOvAfy8sRhEzIMT5MtMG0JXcW7Y57hX8rZuaVSJQEJx8qqMVnmBp
	0r9ot7fo6Cx76vl1wACBPjRsboLfFp4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782828390;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=RML7WXnJKm0QCAIXXu6o7fujESjNPIoRg8QFFLLlkbU=;
	b=F8gIjcsvI8tQGfDYmk9v/Mkb2ARac53Ik0kc+cQ4qHhgbGM5VEsiHtuPirN6HTi/hoDCGK
	g2yXTYJfmWPiBVNeOB9tWTvUBkIRFlWiVr5krmo03gAy6SfOa0wQzwI4dwJUAf3k17t7Mk
	We41WYAjMhLa3yz/OSDKB9PuHol7QsI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=I9aeYTkz;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1782828384;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RML7WXnJKm0QCAIXXu6o7fujESjNPIoRg8QFFLLlkbU=;
	b=I9aeYTkzmQugHZyHbSOxmQbBHfhCBE3wpKMbAzOuqMdNFiDQErANeChF3fCNehDgcmB781
	hBAx+RBlYDivhXhRxdiSpaK+aLYbJJOsyVd34S2Mp2sw0vJWC1YVQNjslp3lrR685+psAa
	Es/H1cWpv9vdiq6qZggoZmfao2oXbzbtCIK59lyUrX98L7mzFSCDXdXQc3eSx0o3OZP+UB
	6sAxZetzP7TUKMd8KDU9hndeAq+yVy8tpcPCpwn8PL+Jab+1Em66xAcPVtAKa0epdjPP33
	qSJycq2AuR/8v7eqbJmFJdVapL5T/4vcuFdZPJqsxZWrwCKFUQ2I8gyqbf0V8g==
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
 2026-06-30
Date: Tue, 30 Jun 2026 16:06:08 +0200
Message-ID: <20260630140623.88431-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 2EMHA2KJB7QHPUAQURSS4ZOEB44XZIK3
X-Message-ID-Hash: 2EMHA2KJB7QHPUAQURSS4ZOEB44XZIK3
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2EMHA2KJB7QHPUAQURSS4ZOEB44XZIK3/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:dkim,simonwunderlich.de:mid,simonwunderlich.de:from_mime,lists.open-mesh.org:from_smtp,open-mesh.org:url,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo];
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
X-Rspamd-Queue-Id: C6CE16E53D1

Dear net maintainers,

here is cleanup pull request of batman-adv to go into net-next.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 805185b7c7a1069e407b6f7b3bc98e44d415f484:

  Merge tag 'net-7.2-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net (2026-06-25 12:25:36 -0700)

are available in the Git repository at:

  https://git.open-mesh.org/batadv.git tags/batadv-next-pullrequest-20260630

for you to fetch changes up to 247691642fd4de7a029de253e47dba936542ce9f:

  batman-adv: tp_meter: delay allocation of unacked entry (2026-06-28 22:09:04 +0200)

----------------------------------------------------------------
This cleanup patchset includes the following patches:

 - drop hardif global list, by Nora Schiffer (2 patches)

 - make hard_iface->mesh_iface immutable, by Sven Eckelmann

 - further post-hardif global list cleanups,
   by Nora Schiffer (3 patches)

 - cleanups and simplifications depending on the hardif->mesh_iface
   immutability guarantee, by Sven Eckelmann (3 patches)

 - tvlv: extract tvlv header iterator, by Sven Eckelmann

 - tp_meter: improve unacked list handling,
   by Sven Eckelmann (5 patches)

----------------------------------------------------------------
Nora Schiffer (5):
      batman-adv: create hardif only for netdevs that are part of a mesh
      batman-adv: remove global hardif list
      batman-adv: remove BATADV_IF_NOT_IN_USE hardif state
      batman-adv: move hardif generation counter into batadv_priv
      batman-adv: drop unneeded goto and initialization from batadv_hardif_disable_interface()

Sven Eckelmann (10):
      batman-adv: make hard_iface->mesh_iface immutable
      batman-adv: drop NULL check for immutable hardif->mesh_iface
      Revert "batman-adv: v: stop OGMv2 on disabled interface"
      batman-adv: iv: drop migration check for batadv_hard_iface
      batman-adv: tvlv: extract tvlv header iterator
      batman-adv: tp_meter: simplify unordered ack calculation
      batman-adv: tp_meter: combine adjacent/overlapping unacked entries
      batman-adv: tp_meter: keep unacked list for receivers
      batman-adv: tp_meter: adjust name of receiver lock
      batman-adv: tp_meter: delay allocation of unacked entry

 net/batman-adv/bat_iv_ogm.c            |  12 +-
 net/batman-adv/bat_v_elp.c             |   9 +-
 net/batman-adv/bat_v_ogm.c             |  33 ++---
 net/batman-adv/bridge_loop_avoidance.c |   9 +-
 net/batman-adv/hard-interface.c        | 165 ++++++++-----------------
 net/batman-adv/hard-interface.h        |  10 +-
 net/batman-adv/main.c                  |   9 --
 net/batman-adv/main.h                  |   3 -
 net/batman-adv/mesh-interface.c        |  13 +-
 net/batman-adv/netlink.c               |   4 +-
 net/batman-adv/originator.c            |   4 -
 net/batman-adv/tp_meter.c              | 217 ++++++++++++++++++++-------------
 net/batman-adv/tvlv.c                  |  86 +++++++------
 net/batman-adv/types.h                 |  28 ++---
 14 files changed, 273 insertions(+), 329 deletions(-)
