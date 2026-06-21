Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5oqiHN/0N2oBWAcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:27:43 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BC76AB101
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:27:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=jifz29UQ;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E3577842D4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:27:42 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052062;
 b=ItVEjte2bcWMqhNzQYaFHDAi0IZvAYFuG7IekHaRLw88JHWRZWqNIHfpJCnbmdCwO33Fy
 mO8bC3QnsYlZGBhTDKCB01ghbOS7EA77+hI3+8wu63OjQ7a/VNzkDUxcgQtAMzZoIddLHOO
 fR0uFAwxNUF9dj4SD5CBMcA6V5EOLd8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052062; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=QAxI/5NG6CtY5Jnd1pOlRLK9ImdFVgpH/qBNcFnfK4M=;
 b=ironI0fymQrNNSPJjQ0pwRj5Rt7gIrKoYTcJD4bke6A5Hwq6Tr1Ywb9sL8EW3f4pQaEJd
 7od2GJtmf3MkmcQkWePNH7kWsH7ylb1yNsUryl3QeVYpqJSaKmd470I7yFj+lIo9wyinXRu
 epOieGsehzjYrHycAnpHo3GGhUQtRpQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 2C3BD83EC3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:24:14 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051864;
	b=rh+V0VjqKAH41Zp3vnDHzo7iAihtOdw015jvGoS+6BG/PF1GbEc+Ge2qoOzeXdSrQKOiMC
	RbDgs9wrO2fzLPAM0Fb2Sy68A+zAXcHm+ATkautPCCjrJ2wjuLSJv+fRznfXzvkBIOA1Ck
	eQgouxreEZVnEFS6qzUa877PKxmxgMM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051864;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=QAxI/5NG6CtY5Jnd1pOlRLK9ImdFVgpH/qBNcFnfK4M=;
	b=ngeVeZfsLQenVWICqRAu1HJmW5TD2kf5SF9LdK62JNaITv4mUhlq34keCLxF105lahfqak
	6wljmIjfExFdQPPJhHnp7IlNEOZBOA31OFHIL2WATafFWjQviGpdOWPfK25NWuh5Ma30SI
	Kect6LqctHz2EoUVoIjCbkOpwzcR5Ro=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=jifz29UQ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 6A171200C4;
	Sun, 21 Jun 2026 14:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QAxI/5NG6CtY5Jnd1pOlRLK9ImdFVgpH/qBNcFnfK4M=;
	b=jifz29UQkgGBsiQu0n6onWxzAdEonu7ZhBex08IV7KIgRKyR/7/kW1Jeyndix3D+WV/+5H
	O6w2+S19TuIUzLU1pz0SPFwREugG1T1B5fFpwLhb7Gq2koBq1rLMnrhE0HCzt5O1D08iVc
	QiYpappcc75s2QMwJKyAP6X9fkpJsOU=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 00/28] batctl: random bugfixes 2026-06-21
Date: Sun, 21 Jun 2026 16:23:50 +0200
Message-Id: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPbzN2oC/yXLyw5AMBCF4VeRWWtCQ11eRSy0HYwF0lGRSN9ds
 fxy/nMDoyNkaJMbHJ7EtK0ReZqAmYd1QkE2GmQmVaZkLrSfRrqQRV2VQ20L21htIOa7w2+Iddf
 /Zq8XNMf7hxAeBos1GmwAAAA=
X-Change-ID: 20260621-bugfixes-875a8d4d9dbc
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2848; i=sven@narfation.org;
 h=from:subject:message-id; bh=vWAeMLewZTJnTz/rdThWDNGozWb5LUoXm0lbpWN+lM8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmn/8/X3hNSO2Rvt6O1xo5u7Pen9a+ce3jPZF5Cr1XG
 QQcv2Wv6ihlYRDjYpAVU2TZcyX//Gb2t/Kfp308CjOHlQlkCAMXpwBM5FszI8POLibhDF+Xotfu
 b1+c7vrHJPbqW+O2K6rWHWySk4+uc4pj+CsQ1Ote+lBq1akFnZUrZmdny/3cI6t2kINFsVjA2T7
 sCTsA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: HLFGN3AZWE6S7XPVRIFCJLHIFFYRCRLZ
X-Message-ID-Hash: HLFGN3AZWE6S7XPVRIFCJLHIFFYRCRLZ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HLFGN3AZWE6S7XPVRIFCJLHIFFYRCRLZ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 12BC76AB101

This patchset batctl is just a bunch fixes without any specific topic in
mind. 

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (28):
      batctl: fix parsing of parameters with arguments
      batctl: originators: fix throughput lines with bat_hosts
      batctl: free header lines after error
      batctl: use strict interval/timeout parsing
      batctl: improve number parsing error handling
      batctl: traceroute: handle fast replies
      batctl: ping: count sent and not received pings
      batctl: return only initialized icmp destination unreached bytes
      batctl: tcpdump: fix coded packet mac dest mac addresses
      batctl: tcpdump: fix endianness of fragmentation sequence number
      batctl: tcpdump: correct output of VLAN IDs
      batctl: tcpdump: drop hardcoded IPv6 buffer sizes
      batctl: tcpdump: fix reported length for ICMP6_TIME_EXCEEDED
      batctl: tcpdump: handle TCP packet with bogus data offset
      batctl: tpmeter: fix Gbps output
      batctl: handle netlink callback object on error
      batctl: netlink: check for BATADV_ATTR_MESH_ADDRESS before accessing it
      batctl: netlink: consume until acks even on errors
      batctl: netlink: always 0-terminate hardif name
      batctl: version: don't strip newline for empty buffer
      batctl: rtnl: report correct error on kernel communication problem
      batct: bat-hosts: compare full path for deduplication
      batctl: mark file read only succesful on read line
      batctl: bisect_iv: avoid access of uninitialized loop magic
      batctl: bisect_iv: handle failed node_get for RT_FLAG_DELETE
      batctl: bisect_iv: avoid write before buffer whole tokenizing log
      batctl: bisect_iv: avoid out of bound access on short lines
      batctl: bisect_iv: drop dangling phantom event on OOM error

 bat-hosts.c        |  2 +-
 bisect_iv.c        | 44 ++++++++++++++++++++++++++------------------
 debug.c            |  4 ++--
 elp_interval.c     |  7 +++++--
 functions.c        | 11 ++++++-----
 gw_mode.c          |  8 ++++++--
 hop_penalty.c      |  7 +++++--
 icmp_helper.c      |  6 ++++++
 isolation_mark.c   |  8 ++++----
 main.c             |  4 ++--
 multicast_fanout.c |  7 +++++--
 netlink.c          | 16 ++++++++++------
 orig_interval.c    |  7 +++++--
 originators.c      |  4 ++--
 ping.c             | 14 ++++----------
 routing_algo.c     |  7 ++++++-
 sys.c              |  2 +-
 tcpdump.c          | 33 ++++++++++++++++-----------------
 throughputmeter.c  | 19 ++++++++++++-------
 traceroute.c       | 12 ++++++------
 20 files changed, 130 insertions(+), 92 deletions(-)
---
base-commit: ea57436f665805a6e93f496617e44dab8a2f33a4
change-id: 20260621-bugfixes-875a8d4d9dbc

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

