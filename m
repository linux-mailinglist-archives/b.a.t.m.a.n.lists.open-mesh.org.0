Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xS/BFn3IQ2oXhwoAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 15:45:33 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FC36E5010
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 15:45:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=wYd2D1cD;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D24898078B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 15:45:32 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782827132;
 b=xpNeD/YDrXRVGdt6OJ1kXvOFTXCCu3Qw9t97cUo8p/u/OsOI3Cncj96Q2/6DSGkaOqkkG
 /2KjcaVudyRE/9ZbXR8G1oUK8o3bBW3xvx68ZrYEAXuTchUZRB3qaWqCDEyByiKmLzKsUKw
 Mb/EZuSvqG256mmw7fifoknORtfOAOw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782827132; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=chPXv7++l38ngSLvkWCokAnOz0yB1awOLYQnYMHr4js=;
 b=039zCDtxI2zE+v5aOmVcSwcShXCVVgX1ttT1ok1cgx6MHx17mVreGPz9/az0coo0Y4TSV
 JPDuVi/HEbcJ0VD68ghpU9BFZHNBVbm2C5t2GtqodqyZ6b98gu7qcfF0yjqatn2cUCluMSy
 E/NPov/7e3Yje4hwqtvY7lmZte8T9q0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C703980C21
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2026 15:44:33 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782827073;
	b=TCvplGV9CXfSFK7AuRaJgpqZuoidfJW4NNBagJ6E87vaUbuAQ2VJkExXPbKoVlFW9kzO64
	MQJpqTIBR9B5Sp+0ELNXtWG7RskdXlb4Y925bDCzMGJgwOBC1IYtX7pyZ4WqBA393aR9Q5
	Z2aSjjYhM/UoaorWXxyxgqdffKcxRvA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782827073;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=chPXv7++l38ngSLvkWCokAnOz0yB1awOLYQnYMHr4js=;
	b=yeJt9cPe/YRJGyBvvfbaTrIqBapq+l41yypKyOLukDhZKvZyIjYflNFDmv/615Iw532f6a
	dLamfHV4WVSgYV5NqNtEk2+X0NliL3VEHvOVWZAAAWAbX0FOt9Un7rIqI+6294jcrUvBw1
	sTVobWIcc+ohPp0PnxkJBRuq/ULcdO8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=wYd2D1cD;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1782827071;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=chPXv7++l38ngSLvkWCokAnOz0yB1awOLYQnYMHr4js=;
	b=wYd2D1cDDBHMXhRtV125IjhreNgzEkma9b8QF9y8aERTZX18kz/zd99boU6xPGFX5VjHFX
	J2kBaipvq1qLTOtXh7ch2IuHp8yBKlAhpKOE1L2F3C59vCiSSrC6+CnhmuEjwi0lpubU9Y
	uCNbOAzh6ciOGVR3SQY1Suam1jN4Xban/kExSjtjz/l03vvuj6iysv5SV+7ClNPdgmVxdk
	Z0fVPP8pJpdC3GE2IiBy0MIJ2s3ZwQVzZwfeE/CKkysViE2evhxyB0cNwWQ+RcnglBS9wU
	/RARVCvmu9RtgpmPw8AgpPG4r83ZH7Hav1ny8pOBAq/d2l3qX3cNjX6ngllsRw==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 0/6] pull request: batman-adv 2026-06-30
Date: Tue, 30 Jun 2026 15:44:24 +0200
Message-ID: <20260630134430.85786-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: SFR4PBUDPFMHA245NMCOI4EV7CD7B2IM
X-Message-ID-Hash: SFR4PBUDPFMHA245NMCOI4EV7CD7B2IM
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SFR4PBUDPFMHA245NMCOI4EV7CD7B2IM/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp,simonwunderlich.de:dkim,simonwunderlich.de:mid,simonwunderlich.de:from_mime,open-mesh.org:url];
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
X-Rspamd-Queue-Id: 00FC36E5010

Dear net maintainers,

here are a couple of bugfixes for batman-adv which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 805185b7c7a1069e407b6f7b3bc98e44d415f484:

  Merge tag 'net-7.2-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net (2026-06-25 12:25:36 -0700)

are available in the Git repository at:

  https://git.open-mesh.org/batadv.git tags/batadv-net-pullrequest-20260630

for you to fetch changes up to 26560c4a03dc4d607331600c187f59ab2df5f341:

  batman-adv: dat: ensure accessible eth_hdr proto field (2026-06-28 11:49:04 +0200)

----------------------------------------------------------------
Here are some batman-adv bugfix, all by Sven Eckelmann:

 - fix pointers after potential skb reallocs (5 patches)

 - dat: ensure accessible eth_hdr proto field

----------------------------------------------------------------
Sven Eckelmann (6):
      batman-adv: retrieve ethhdr after potential skb realloc on RX
      batman-adv: access unicast_ttvn skb->data only after skb realloc
      batman-adv: gw: acquire ethernet header only after skb realloc
      batman-adv: dat: acquire ARP hw source only after skb realloc
      batman-adv: bla: reacquire gw address after skb realloc
      batman-adv: dat: ensure accessible eth_hdr proto field

 net/batman-adv/distributed-arp-table.c | 28 +++++++++++++++++++++++++++-
 net/batman-adv/gateway_client.c        |  3 ++-
 net/batman-adv/main.c                  |  3 +++
 net/batman-adv/mesh-interface.c        |  1 +
 net/batman-adv/routing.c               |  3 ++-
 5 files changed, 35 insertions(+), 3 deletions(-)
