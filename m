Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WkzKFL8BIWp6+QAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:40:31 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id F003763CD90
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:40:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nY93gRe7;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C8DC680E38
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 06:40:30 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780548030;
 b=ObX53Q2MJt4PNC2i9o5OElQprfZbQ0bRz5StK27G0ThoRGGWB1XObcVt92e1EaXXt/Kri
 z2xyidixedWzCtvSW9TKjyD5Jn1xCxSMgUwCz5JG8jnE8+9Y4zND7XRSigkhG0V0JEPiHPU
 UPAGYMTBaPyJfkiNSqhERex0GrIByvA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780548030; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=bXng/Crrd1uBckiTxg+OPVTE0Nk+Za0zBjNUXVi9fu8=;
 b=WX2yHVBPIzbfnVEYy1OjawnZiC8VqfKT7N49ecYyHCgzt3t80mEwgULFezQpE5tJqaBq4
 +/BTtPzotkhRt7BXn9/N7JvcpvvUY8nJTcAk2lxCpWzC0KmPDloFu0GDdD5UJMTqP4xrZwd
 n6eOzphUxRf7rLXGwW6R0eGUG7KkfpE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id AB16182587
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 04 Jun 2026 06:39:36 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780547986;
	b=oNPrmwVO8KgKRwl23kwxJqP+nSoP//eC7Qil/ZHkvMF8262jXM+O1YVSU8HNbAzDuhrMv/
	yT5LfZyFlve5IJrfrOP/EIOkgOLn5DaklND7dHE+Kotw0CX0yz5QdBAH6sTV3b3tGAYrH1
	a63hHU2pLhqZdJ2JkGr9ycHAuSmuWHI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nY93gRe7;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780547986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=bXng/Crrd1uBckiTxg+OPVTE0Nk+Za0zBjNUXVi9fu8=;
	b=mEjV5iHp+8++b0Xrl2K6QuM3fXObqCsqfIS+cUvDTFvgLPMY3hch5UE0JvEjvudNp97NRZ
	zRxUYMwUkxGjNPV8Amp2T/uXqX1BIMN+wsM4Tz3C4uy3t0ehKgbRfQwlD5Z59g6+VwsY9C
	RqpyGBoEtGpmigSTyulC8vZy0UBLk5Q=
Received: by dvalin.narfation.org (Postfix) id C66201FF78;
	Thu, 04 Jun 2026 04:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780547975;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bXng/Crrd1uBckiTxg+OPVTE0Nk+Za0zBjNUXVi9fu8=;
	b=nY93gRe767CRSgir1jhwXvtcYnux9bY74wJmM3YuzzIXWhtFHF/vaKvo/exhAkllAdEDf8
	we6v5IcAYQ4Dxg+trm/tA66Kn6Zo1Tfheqd32liwiHn6+ju3tayw7DR0s2WMY9zldKTUKA
	+A3sfDNQPz3vmkIJB2v8LjVNGLHejRs=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH RFC batadv v3 0/4] batman-adv: drop global hard interface
 list
Date: Thu, 04 Jun 2026 06:39:28 +0200
Message-Id: <20260604-drop-hardif-list-v3-0-e0dfa8c7d602@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIABIWoC/2VQy2rDMBD8laBzZWTJ8qOnQKEf0GvJYSXt2gqNH
 VaKaQn+98ruscfZYef1FAk5YhKvp6dgXGOKy1yAeTkJP8E8ooyhYKGVbpU1tQy83OUEHCLJr5i
 ydJ76WgdohxBEebszUvw+JD/Fx/vbfnOQIazi8kenh7uiz7vsThIvN5knRjiclNOttQ0QgtXK9
 FoRINWBXDP0QJ01BgZnQ1V3Tdf2nVVNNcZc3ZKfIhHy+THHFTmhJPB54Z9qxrwbTSVugUfXVR/
 5jlqtMv9rrVoqaakbel17MMacZ2CCXPapFh7FZdu2XxvlPZE+AQAA
X-Change-ID: 20260531-drop-hardif-list-bcf812da69dd
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>,
 Nora Schiffer <neocturne@universe-factory.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3396; i=sven@narfation.org;
 h=from:subject:message-id; bh=2x23lJaXOE0lmGycwnnbWmNOEXIIAlmYv8CMQ06b9Bw=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmKjI07b6/9vdJ3ms3F8C28U1LeVAhGtz+ZlDp95uGol
 BLWf5GfOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATYZ/A8N/DlnHymtk//vOL
 r3k0adHzLYHJG1TnubFsnntpV0t8/dlKhv/eNgaKcherp9esjyxMmvHuj2jMiefmaeEfyy+KfV3
 4dD8fAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: NMJ3JDL7BCNUHAXNPCLOAWUHKC6NTICD
X-Message-ID-Hash: NMJ3JDL7BCNUHAXNPCLOAWUHKC6NTICD
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NMJ3JDL7BCNUHAXNPCLOAWUHKC6NTICD/>
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
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:neocturne@universe-factory.net,s:lists@lfdr.de];
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email,lists.open-mesh.org:from_smtp,msgid.link:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F003763CD90

The global hard interface list was used in the past to provide and sysfs
(debugfs, procfs) based configuration interface. This requirement is gone
after it was switched to generic netlink and NETLINK_ROUTE. And after the
wifi-flags cache was introduced, it is also no longer used to get
non-batman-adv attached interface information (for ap_isolation and
re-broadcast configuration).

But this odd net_devices list (batadv_hardif_list) stayed and caused some
headaches:

* memory requirement increased (useless) for each network interface of the
  system
* massive increase of various ethernet operations due to the O(n) nature of
  this global list
* the code had to handle switch of a batadv_hard_iface from one mesh_iface
  to either NULL or a different mesh_iface

Just get rid of it now and start to simplify the code around it.

This RFC is on purpose not Signed-off-by because I just want to restart the
discussion but didn't discuss this with the original author (nor documented
the changes in each patch in detail). And it is also not meant to look like
I've reviewed the changes and Ack it - this is unfortunately something
which I have to do again with this rebased version.

I will later post an range-diff which contains all the changes.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v3:
- fix return kernel-doc for batadv_hardif_enable_interface
- drop merged first patch
- really switch to RFC
- in merged batadv_hardif_enable_interface (as intermediate step), only add
  the hard_iface to the batadv_hardif_list when hard_iface is really
  initialized
  + this list is dropped anyway with the patch "remove global hardif list"
- stop setting "mesh_iface" to NULL on error. it is now only important that
  the hard_iface gets unlinked from the mesh_iface
- first drop the batadv_hardif_list before removing the "safety" state
  BATADV_IF_NOT_IN_USE
- Link to v2: https://patch.msgid.link/20260603-drop-hardif-list-v2-0-5f79821ca333@narfation.org

Changes in v2:
- rebased
- submit as RFC to get the discussion started again
- drop already merged "batman-adv: store hard_iface as iflink private data"
- switch from kzalloc to kzalloc_obj
- update author's mail and name
- fix reference counting for batman_adv_ptype
- Link to v1: https://patch.msgid.link/0b26554afea5203820faef1dfb498af7533a9b5d.1747687504.git.mschiffer@universe-factory.net

---
Nora Schiffer (4):
      batman-adv: only create hardif while a netdev is part of a mesh
      batman-adv: remove global hardif list
      batman-adv: remove BATADV_IF_NOT_IN_USE hardif state
      batman-adv: move hardif generation counter into batadv_priv

 net/batman-adv/bat_iv_ogm.c     |   3 +-
 net/batman-adv/bat_v_elp.c      |   3 +-
 net/batman-adv/hard-interface.c | 146 +++++++++++++---------------------------
 net/batman-adv/hard-interface.h |  10 +--
 net/batman-adv/main.c           |   6 --
 net/batman-adv/main.h           |   3 -
 net/batman-adv/mesh-interface.c |  13 +---
 net/batman-adv/netlink.c        |   4 +-
 net/batman-adv/originator.c     |   4 --
 net/batman-adv/types.h          |   6 +-
 10 files changed, 59 insertions(+), 139 deletions(-)
---
base-commit: 7fb5fc7265f6ce4962357c5383873fd2ef9d50d4
change-id: 20260531-drop-hardif-list-bcf812da69dd

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

