Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0vkJMBNKTWrtxgEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:48:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CD771EBB0
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:48:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=g+nJnnmE;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 44AB3849F2
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:48:51 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783450131;
 b=rEUth1ZEQ4ebjZX4kJaTw8hkELHsC1Wchm6tmoiUEE/7u6x+50i3oRTUVBlnpmm1D77Z4
 /sjm2qXHcc+dKpy8i7B+u9KkjC5yC9k/oH04mNGWEu1bHXTp0C4re3QClHhBMuVJr9M0cP0
 sWsP9+YSTyruQ8O6QifRLD2oPkRlgUw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783450131; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=scPE1j+bKUMKu0GStzI99RS336Ln/5PAYYRouv7x2JE=;
 b=VbgoWjV+0i7ayNTlZNoa5NSHw/nHldwiZreEOaR9xhgkNQPVGn5GD9lA88yhb8XQloFLw
 ACEYxpVpaY9tzc9/gKYdHOSCXV8YSRfHO5ympxXZg6EthHTzdIEQObqICQCFN5665nHgnkj
 MgZPIT3gABFIntJUjNO6mOtliaY16+4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 2797483454
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 20:46:51 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783450021;
	b=ncWzqudilDgXHa357ywaYI5CTN5J0P7QbPXMT5BQEkUyU7/Rz5wjKzMgb7VJZtBT7l8qKw
	WJfdTUfV1PT+iIyV0AGVuhXtO978w1EXZ+zHBEf+/AoXtl8xpffkaM5SJL+zfSnDpHovTU
	gR+fxK6DXBpuI9HllsMA4/jxqU8VpqA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783450021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=scPE1j+bKUMKu0GStzI99RS336Ln/5PAYYRouv7x2JE=;
	b=1TSZLXIm55Y64QqfpYYgnLoy3MIXilrtbaJAfNi+8XoPu+592BWV9a0YvF1Wgaw9J/yZ9q
	tvPNNVS9S3NfgROOzlBuNE/ohAX7QdsYZ3BmKsIVlTbPq5TeMijD2nxQGmaswcY0cgy8Qe
	wsKz5m6GdKvwwhJauy9zz8IOgI2DNV4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=g+nJnnmE;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 4F1E620442;
	Tue, 07 Jul 2026 18:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783450010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=scPE1j+bKUMKu0GStzI99RS336Ln/5PAYYRouv7x2JE=;
	b=g+nJnnmEI0nIFty78VSuyrMpbfZkDdTcipFsGZ8MbFcVEF0tLfGsxBKt/+P5/MA7ilbrCl
	wf4GMk18eH8Z+s7ifukiGSURCRqv3D9E7OUKV5vXShtMRgFdyerPTtsZRCroP9gNSoPxS3
	E2ObfWdZmdVWSYqGneWy8/QZYyLLwUg=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 00/11] batctl: traceroute/ping bugfixes
Date: Tue, 07 Jul 2026 20:46:42 +0200
Message-Id: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJJJTWoC/yXMyw5AMBCF4VeRWWvS1t2riAXtYCQu6SAS8e6K5
 ZeT/1zA6AgZyuAChwcxLbOHCgMwQzP3KMh6g5Y6lZmMRbv3HZ3Igsy0ijxRNoq7ItfKgm9Wh9/
 qk6r+zXs7otneE7jvB7qzh41xAAAA
X-Change-ID: 20260704-bugfixes-icmp-851d34f9821d
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1462; i=sven@narfation.org;
 h=from:subject:message-id; bh=GoEqoc1qv+GheujJ/0BS5V1XKA8TmD62Ahau5n+k9Us=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+nlO/T5Hk7bHerdurfeBc7IUXsiKJay83NG60+nrUO
 eDM/YCWjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBEmh4x/BX78becZ+u2qtqD
 tq+jtn0P6N77VELUT//68+K/ny5psn1gZGgvaDmn31Ilraf55T5zqYVB8oF7u5M+VSUL1M5olzo
 byAcA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 72Z4ZEI5F5E4YAMT4O7UQ4ALDM73H4CB
X-Message-ID-Hash: 72Z4ZEI5F5E4YAMT4O7UQ4ALDM73H4CB
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/72Z4ZEI5F5E4YAMT4O7UQ4ALDM73H4CB/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67CD771EBB0

I have now splitted the bugfixes for batctl in topic branches to make it a
little bit easier to review. Similar to the "random bugfixes 2026-06-21"
patchset, they are just various (mostly minor) problems which should be
tackled at some point.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (11):
      batctl: traceroute: return EXIT_NOSUCCESS when destination not reached
      batctl: icmp_helper: return proper errno on syscall failures
      batctl: ping: count sent and not received pings
      batctl: ping/traceroute: don't restart RTT timer on stray replies
      batctl: traceroute: probe the advertised maximum number of hops
      batctl: ping: keep huge '-i' intervals from turning into a flood ping
      batctl: ping: reject invalid packet count argument
      batctl: ping: reject invalid timeout argument
      batctl: ping: fix rtt minimum tracking when a sample is 0.0
      batctl: icmp_helper: fail send when the primary mac is unknown
      batctl: icmp_helper: attach socket filter before packets can arrive

 icmp_helper.c | 47 ++++++++++++++++++++++++++++++-----------------
 ping.c        | 44 +++++++++++++++++++++++++++++++++-----------
 traceroute.c  |  9 ++++++---
 3 files changed, 69 insertions(+), 31 deletions(-)
---
base-commit: eb9597d4ca6db17c579f5ae9443c51b013e2fe65
change-id: 20260704-bugfixes-icmp-851d34f9821d

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

