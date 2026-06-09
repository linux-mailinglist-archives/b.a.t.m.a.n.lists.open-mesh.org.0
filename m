Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I6FTIJQ4KGqhAQMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 09 Jun 2026 18:00:20 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 110C966214D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 09 Jun 2026 18:00:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="roG+/6DB";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C8DA084296
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 09 Jun 2026 18:00:19 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781020819;
 b=hRsb8rHyCBB8/1NZJkL+OxlkSoAi92ftBB0fzEEG2QvjKqeVsMSV6QiWRAxYBPCghvJIb
 EtYnpBW5SzMYsEL9avmBqYtVtqK2xnc6KkG/HRJZ7pyGHynbhtWJEShgwj/OrFj5IJuTcEZ
 iScrhByunQH7rbIt8dg5pNKlsKuzgTg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781020819; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=/lT+K/jqJYBm22+VtydUp4iBycJTPhNyh7Nu5n7NPf4=;
 b=iU44sQJ9bhmWXzNCKn4h+3IMwCVhSfuXF7rwVNie9uWEhJE1eCnOwIeRA3ZwvQSC8NfHx
 eVavZsYV7i5O0KBNCf0gzQOtdeqsYaCNezAUpaEyIZ6Z416xORl2Stdfa+JcqtPCm86naQN
 IeyjAsiPqYJ3nPiB/fz5DPFJE/D3fC0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id CF61C83EE9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 09 Jun 2026 17:57:47 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781020677;
	b=tuGN1hXOuyOIZ7y2e06SvqScbgDvja7+3/TNn8AyZGft82nBgAMVCG66TD25KqkWMJjCBX
	62VpsU1o8x/vomlEUGaEIdJxh+Eq5gVPW3o7ZW7Gj9G4aR2sP9cZREHfdl3Bi7jnWgDpNx
	QeYyZg+ho6z9ZuWfIvk21Gxtu2OR8HM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781020677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=/lT+K/jqJYBm22+VtydUp4iBycJTPhNyh7Nu5n7NPf4=;
	b=P8xm+6XZpXvutHGsjGSkU05OjluRfuUa4wZr03SSiHU5tDsO18+ZmxvluwPowmXriif94d
	tS1Ba/0ihPAbXS38vT+21+dIeATpDkqWEGffldJO4f7S894fEHs1/KgbqXnUNvMMXRCXNZ
	qypgW1Zqr7XWDDsVZtrjA30QgH6ERp8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="roG+/6DB";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Received: by dvalin.narfation.org (Postfix) id AAB7C1FE9B;
	Tue, 09 Jun 2026 15:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781020665;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/lT+K/jqJYBm22+VtydUp4iBycJTPhNyh7Nu5n7NPf4=;
	b=roG+/6DBMTY1a2CHJBFb3uTqt3UsgZeufNTcDlkds5iyUphurWOvEUyKlHC2xlyHvLDc4Z
	wnLa5ZG7H7VLPJLDf1iv+QkWx3GUXRoeV0SZ2yw+995vO6+MlMYsxipyVt2Czpz1vJZb1p
	Tb85yIZ9ve8YQOYwXtJnIFIiyt7Ds9s=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv 0/2] batman-adv: cleanup variable declarations
Date: Tue, 09 Jun 2026 17:57:39 +0200
Message-Id: <20260609-reverse-xmas-v1-0-e8ccef99b87b@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPM3KGoC/yWMQQ6CQBAEv0L67CYLh13wK8bDAI0OiUh2kJAQ/
 u6Kx+p01Q5jUhquxY7EVU3fU4byUqB7yvSg0z4zKl8FH3zt8onJ6LaXmAulbyTGyKEWZGVOHHQ
 7cze0ski/4v7f7dOO7JZfC8fxBTGuMzJ4AAAA
X-Change-ID: 20260608-reverse-xmas-6109a777ef8a
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2983; i=sven@narfation.org;
 h=from:subject:message-id; bh=JFrQSf1OZMkN9rxgLHWr06yGRw503oDG5/IyT9CbEy4=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFka5l+fTSrmU5LQuCcpktw7Z2rIOeludtMZjf0Nb9lCr
 Tk2FXt1lLIwiHExyIopsuy5kn9+M/tb+c/TPh6FmcPKBDKEgYtTACZykJuR4QpL5MK2trmh51/n
 5E6PluL+sOj4+TVz5hx6/MHmX9MXKR2G/5Fluf+nC63JuHEy0nmvxbamYgup4I0XDkypz+CaYt7
 FyQsA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: QDOIVCNPCNU4H7FOCF6BTESHUWSAEA5K
X-Message-ID-Hash: QDOIVCNPCNU4H7FOCF6BTESHUWSAEA5K
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QDOIVCNPCNU4H7FOCF6BTESHUWSAEA5K/>
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 110C966214D

The Linux coding style suggests to use single variable declarations per
line. This suggestion turned out to make reviewing patches easier when
single variable declarations are modified. Instead of having to search for
the modified variable, it is directly visible as a line change in the diff.

Most functions are already using this style. The remaining ones are just
adjusted by splitting the lines without ensuring the reverse x-mas tree
order because this makes it easier to check the modification. The latter is
handled in a second patch.

The network related code should use for local variable declarations an
ordering scheme which orders lines longest to shortest. Initializations
should only be kept in the declarations when the dependencies between them
are not preventing the reverse x-mas tree order.

Many functions are already using this order. The remaining ones were
supposed to slowly convert to the x-mas tree order when working on them.
But this never happened because the patches tried to only modify the
relevant lines. Instead of getting better, the order often just became
worse.

Just fix the remaining offending functions to finally solve this coding
style (minor) problem.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (2):
      batman-adv: split multiple declarations per line
      batman-adv: switch var declarations to reverse x-mas tree order

 net/batman-adv/bat_algo.c              |   6 +-
 net/batman-adv/bat_iv_ogm.c            | 145 +++++++++++++----------
 net/batman-adv/bat_v.c                 |  39 +++---
 net/batman-adv/bat_v_elp.c             |  19 +--
 net/batman-adv/bat_v_ogm.c             |  34 +++---
 net/batman-adv/bridge_loop_avoidance.c |  98 ++++++++-------
 net/batman-adv/distributed-arp-table.c | 105 ++++++++++-------
 net/batman-adv/fragmentation.c         |  34 +++---
 net/batman-adv/gateway_client.c        |  29 +++--
 net/batman-adv/gateway_common.c        |   6 +-
 net/batman-adv/hard-interface.c        |  12 +-
 net/batman-adv/hash.h                  |   8 +-
 net/batman-adv/log.h                   |  16 ++-
 net/batman-adv/main.c                  |  18 +--
 net/batman-adv/mesh-interface.c        |  45 +++----
 net/batman-adv/multicast.c             |  33 +++---
 net/batman-adv/multicast_forw.c        |  15 ++-
 net/batman-adv/netlink.c               |   8 +-
 net/batman-adv/originator.c            |  53 +++++----
 net/batman-adv/routing.c               |  63 ++++++----
 net/batman-adv/send.c                  |   7 +-
 net/batman-adv/tp_meter.c              |  49 +++++---
 net/batman-adv/translation-table.c     | 210 +++++++++++++++++++--------------
 net/batman-adv/tvlv.c                  |  24 ++--
 24 files changed, 621 insertions(+), 455 deletions(-)
---
base-commit: 385b248dd4e46c4ce022adeb1b13e547d1954901
change-id: 20260608-reverse-xmas-6109a777ef8a

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

