Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B77MOic6QWp9mgkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 17:13:43 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D50C6D4466
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 17:13:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=universe-factory.net header.s=dkim header.b=ihVJXYLL;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=reject) header.from=universe-factory.net;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 73DB88415B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 17:13:43 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782659623;
 b=lVuxcNAcqHe9vauoIOcXVt80aWksBHu3PElm+Af9oSBxAPT7RdoP1YuGK2iEfy/XOWsjh
 THKDKnuZnWFumMr8vokkbLFULm5vX2tDccxuHSEQEkYhTsgpM3rg4ir+mnGCF26Cb8mq5HW
 hxBIJuP1HQJHd5H3GZVYuvbrwiaMjfk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782659623; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9t+F4pDawNhLjwXiGdHps+xtSJxwxtnpKKOmpVZ0Q9Q=;
 b=RmvcBjrqx502jcPXKhqtOe+j57ov7pbQ9a2hm6Utx2GixTElOlU1p76ECsX3Nbp2MzXmn
 3lMiNCm+0zUzP9PEN4evvV12mpnAvHyoS06LdHPMndglFUATvlTOx2r/XKWgKS6FrZlWwxl
 HE9s+WTDdxpyfYlpE3iwG+4eFHTLZ7w=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=universe-factory.net;
 arc=pass;
 dmarc=none
Received: from mail.universe-factory.net (osgiliath.universe-factory.net
 [141.95.161.142])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1E58583F06
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Jun 2026 17:08:06 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782659291;
	b=OoWM1Wh1toJ7eYxpkwZG09Hij2KrWnKRpEZqVekqknm3l6I3Fsn76jCEgjW1cv30eoBSGO
	5RwCiaGmRyq+BOLQOVYuZ0uGtXZGP1OgalyzOH+EthphbtSbKouvN508nVHueYibXd0Is8
	isMYKfI6Ljl2LmXGRwzg6lAt4JPk6xk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782659291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=9t+F4pDawNhLjwXiGdHps+xtSJxwxtnpKKOmpVZ0Q9Q=;
	b=LhLOd4XpL/kaiyZbou0iE6Z3pBvD7IJV80XtAv3aNAOZ4eZYEB7h8vOGMflCf2R8JU1ywX
	CPyPRzQbDsAFV1nstNlOzvli+Ovpx/jbEpxRDiaJ992ZGPyq6JUZwYsQfohS292vxf3GW7
	PzQc+7bHahD6P7dDDCdfF0p6oIbJRU8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=universe-factory.net header.s=dkim header.b=ihVJXYLL;
	spf=pass (diktynna.open-mesh.org: domain of neocturne@universe-factory.net
 designates 141.95.161.142 as permitted sender)
 smtp.mailfrom=neocturne@universe-factory.net;
	dmarc=pass (policy=reject) header.from=universe-factory.net
From: Nora Schiffer <neocturne@universe-factory.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=universe-factory.net;
	s=dkim; t=1782659284;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9t+F4pDawNhLjwXiGdHps+xtSJxwxtnpKKOmpVZ0Q9Q=;
	b=ihVJXYLLLUD2Q3hm6LJaQyv6+Smg0ygvGpXDcs2wsnnfNBsoSodtlWm2V5FroPd3/IV1dJ
	Jo0b8/61GpS88NaqPgYGb1Rf9DnUv+NCeFRXsN9/GiNU8F01rUMPMVB4PPn4sN22CRjFnj
	Z7fsHxAkX/iacFImTGSy/KXg6wC1/ANsE/d7qFMj6lojfNz/2SD9Cv+5HigLpudgxt100Y
	tComYcP14mJOoeoq9A02m6rOf0NlicojBBqjR/RYrh+mGAuLM+nCMryjNbieXvU3i2L4Gb
	DPMQ5mzKag7C/DLqcagCm4qkZpbK39kTMTsBIGbZahaWIkBDq0wpSkzTm5fCmg==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: sven@narfation.org,
	Nora Schiffer <neocturne@universe-factory.net>
Subject: [PATCH batadv v5 0/6] batman-adv: drop global hard interface list
Date: Sun, 28 Jun 2026 17:07:27 +0200
Message-ID: <cover.1782658366.git.neocturne@universe-factory.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Bar: -
X-MailFrom: neocturne@universe-factory.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency
Message-ID-Hash: W6ZNWEKYR6UGDONV4L4Z4S4WV5N7LDCW
X-Message-ID-Hash: W6ZNWEKYR6UGDONV4L4Z4S4WV5N7LDCW
X-Mailman-Approved-At: Sun, 28 Jun 2026 17:11:17 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W6ZNWEKYR6UGDONV4L4Z4S4WV5N7LDCW/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[universe-factory.net,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[universe-factory.net:s=dkim];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:neocturne@universe-factory.net,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[neocturne@universe-factory.net,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[universe-factory.net:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,universe-factory.net:dkim,universe-factory.net:mid,universe-factory.net:from_mime,msgid.link:url];
	FROM_NEQ_ENVFROM(0.00)[neocturne@universe-factory.net,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D50C6D4466

Cover letter from Sven's v4:

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

---

@Sven: Feel free to update the author of "make hard_iface->mesh_iface immutable"
to yourself, as I only pulled your change out into a separate patch.

---

Changes in v5:
- Rebase
- Improve commit description of patch 1
- Further simplify refcounting in enable/disable (holding only 1 ref instead of 3)
- Move immutable hard_iface->mesh_iface change to a separate change
- One new patch with a minor code cleanup
- Sven's follow-up cleanups are not included in this series


Revisions by Sven Eckelmann:

Changes in v4:
- rebase
- don't double-netdev_put in batadv_hardif_enable_interface() error path
  (just let batadv_hardif_put()/batadv_hardif_release() deal with it)
- add patches which cleanup the code after batadv_hard_iface->mesh_iface
  became immutable
- Link to v3: https://patch.msgid.link/20260604-drop-hardif-list-v3-0-e0dfa8c7d602@narfation.org

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


Nora Schiffer (6):
  batman-adv: create hardif only for netdevs that are part of a mesh
  batman-adv: remove global hardif list
  batman-adv: make hard_iface->mesh_iface immutable
  batman-adv: remove BATADV_IF_NOT_IN_USE hardif state
  batman-adv: move hardif generation counter into batadv_priv
  batman-adv: drop unneeded goto and initialization from
    batadv_hardif_disable_interface()

 net/batman-adv/bat_iv_ogm.c     |   3 +-
 net/batman-adv/bat_v_elp.c      |   3 +-
 net/batman-adv/hard-interface.c | 157 +++++++++++---------------------
 net/batman-adv/hard-interface.h |  10 +-
 net/batman-adv/main.c           |   6 --
 net/batman-adv/main.h           |   3 -
 net/batman-adv/mesh-interface.c |  13 +--
 net/batman-adv/netlink.c        |   4 +-
 net/batman-adv/originator.c     |   4 -
 net/batman-adv/types.h          |   6 +-
 10 files changed, 62 insertions(+), 147 deletions(-)

-- 
2.54.0

