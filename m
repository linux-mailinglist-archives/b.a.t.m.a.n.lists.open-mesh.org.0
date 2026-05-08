Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NTyDRcF/mm7mAAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 08 May 2026 17:45:27 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CE79C4F8EDD
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 08 May 2026 17:45:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A598D85B65
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 08 May 2026 17:45:26 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778255126;
 b=CZ/NBL3ANTQRz5V1XisuWsm8XMgtBZp1I33BjWIE408kSgvaQ5aLOlVI3SIvYkhD0tLDM
 4xYVcORk7fN2ad/o60NVvJy5TzCu9kefzXLyc5BEzbnrfvRfOKsUMJGQ+ERgtjWYltwa7O8
 DcfYSJ3XQWBqaqBOibhbbKtKAZmHFgQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778255126; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=8zhRPnfLe2NDUY+iSHXVns7vYjJltQ03OVMAkw18IsM=;
 b=GPlDPNZHalnlpKuJ6ARJOT75Cg6kgOyMGX0pVbC1jVdsTqKPlNAZqqC02neIsSoJG6DIo
 Sb88CMs5K64N79soHk7mQaMUKkbS8UdFJ4GbVL8EHvjrlis795Zahb59QamuFZMCwFdEl4C
 HHFigtlqR9EY7z8v+XPN1C+oxjuj/3k=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4C41B85471
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 08 May 2026 17:43:28 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778255013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=8zhRPnfLe2NDUY+iSHXVns7vYjJltQ03OVMAkw18IsM=;
	b=qBmG7QDCgFaeMj5Ug62WVDYuKURZrDTXSk8EAxx5Fd6lL81/JQPhl97EMB7XV5fUtE0dkI
	FMbXSMyxcNSL0ms/KmmHwjRQQ9n05t81+0AGrdyuQbXT+Ja2mQTQMPWMgJ+v+YQVX6MPca
	ML5lsx1KSqYPAHtAvkKNKn780HCDv3E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=eMQSS70w;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778255013;
	b=eDReLGbyKLVEjeM7gm9GgneX+aZmZRTefrUT2qYoPBh21Uxeiwq/8lMr4D7t8+rUyo9sP0
	XuHOY8zuAdEWem+LnodspkEJfOVwtZRNNx5UyHkX3pEJU97vCZAyyjAtdpGHENdp1uS+Gq
	H6B+SlhiJsWeD5UVDx9T87FOr9tLOY0=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1778255006;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8zhRPnfLe2NDUY+iSHXVns7vYjJltQ03OVMAkw18IsM=;
	b=eMQSS70w0o8Hxn0SN1KG+7odxp01shVyfDXNODrtYMZWnf2If0W19IfQ9EVzbHACsHuHU9
	DvSM2KX39r5gtgTs4g7zex5T7uGXw48/XScBjk0jv137ceubkYzDqrscSX3SptKyyRlMD6
	Ij1Rer/hNkJsbPusM3sFnj4UYylMqJSWuLorp8tIqaQHu1zxtVlJyEseBTyfqLmECR0jy7
	ozMGnLj3QCU2iY9PZdLsCdt2nZm94YuGixFSzUOqnxeiTrLmbXi4QLhWkw6wDaDrcBlDwM
	f2kTbsr8vLDRhw4u1jXe9qyYaO/9KQIPpXTAW+3T4GW79KOf3Rn2vkP2T2VlJw==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 0/8] pull request: batman-adv 2026-05-08
Date: Fri,  8 May 2026 17:43:06 +0200
Message-ID: <20260508154314.12817-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: SGV6P54VZXPGFYUN55IX2MX3FDJPTMAX
X-Message-ID-Hash: SGV6P54VZXPGFYUN55IX2MX3FDJPTMAX
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SGV6P54VZXPGFYUN55IX2MX3FDJPTMAX/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: CE79C4F8EDD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,simonwunderlich.de:mid,simonwunderlich.de:dkim,open-mesh.org:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Action: no action

Dear net maintainers,

here are a couple of bugfixes for batman-adv which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 1f5ffc672165ff851063a5fd044b727ab2517ae3:

  Fix mismerge of the arm64 / timer-core interrupt handling changes (2026-04-14 23:03:02 -0700)

are available in the Git repository at:

  https://git.open-mesh.org/batadv.git tags/batadv-net-pullrequest-20260508

for you to fetch changes up to ba9d20ee9076dac32c371116bacbe72480eb356c:

  batman-adv: bla: put backbone reference on failed claim hash insert (2026-05-08 14:29:02 +0200)

----------------------------------------------------------------
Here are some batman-adv bugfixes:

- fix integer overflow on buff_pos, by Lyes Bourennani

- fix invalid tp_meter access during teardown, by Jiexun Wang (2 patches)

- stop caching unowned originator pointers in BAT IV, by Jiexun Wang

- tp_meter: fix tp_num leak on kmalloc failure, by Sven Eckelmann

- fix BLA refcounting issues, by Sven Eckelmann (3 patches)

----------------------------------------------------------------
Jiexun Wang (3):
      batman-adv: reject new tp_meter sessions during teardown
      batman-adv: stop tp_meter sessions during mesh teardown
      batman-adv: stop caching unowned originator pointers in BAT IV

Lyes Bourennani (1):
      batman-adv: fix integer overflow on buff_pos

Sven Eckelmann (4):
      batman-adv: tp_meter: fix tp_num leak on kmalloc failure
      batman-adv: bla: prevent use-after-free when deleting claims
      batman-adv: bla: only purge non-released claims
      batman-adv: bla: put backbone reference on failed claim hash insert

 net/batman-adv/bat_iv_ogm.c            |  85 +++++++++++++++++-------
 net/batman-adv/bridge_loop_avoidance.c |  11 +++-
 net/batman-adv/main.c                  |   1 +
 net/batman-adv/tp_meter.c              | 116 +++++++++++++++++++++++++++------
 net/batman-adv/tp_meter.h              |   1 +
 net/batman-adv/types.h                 |   4 ++
 6 files changed, 172 insertions(+), 46 deletions(-)
