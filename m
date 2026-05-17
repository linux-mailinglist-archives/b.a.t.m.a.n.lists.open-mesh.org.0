Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPrlNEj+CWqqvwQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 May 2026 19:43:36 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BF6562B7E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 May 2026 19:43:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 15FE1859EC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 May 2026 19:43:36 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779039816;
 b=VDACT9uJ3Zh/vgQfnaZV7bEY5s4N/g69QO6o/AEPWpcdfjIshOfC2mF+COtmrcXZBWp9r
 pyT1d1moL8cZara5Qal5LyETb6v21ONDn6SJGiT+PopY9TDUb1yOvyVGoamzxG6xd0DlnZu
 Im/yrgto7q0SzcYUL3BFoR6GUY/ZWU8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779039816; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=zww9b+D7N/+lRkcVQC0YhmyGT4lRXlzp4OWHhAUL9Nw=;
 b=23XZmHc+rqxycGZ30IHx4ttITXEQExGPa8++uC9uO7ec6792s5+0oSgMbJi5RN93bOY1q
 UOQRVDMdDIfCujxBVYAJ4DN1uysrrLLVNjkm1AcMcJmHe0TvOoseDYn5uykQK964DWxzPMr
 cQdVIRT1xXEYLA36rbCadmz+5AOoizg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=fail;
 arc=pass;
 dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9A6778072F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 17 May 2026 19:43:03 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779039793;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zww9b+D7N/+lRkcVQC0YhmyGT4lRXlzp4OWHhAUL9Nw=;
	b=TRIB29cpF0Mp8nqhYHgy99A2B8/C23ojYZcDs1jZcrT8j1o4o1pPLEn2Rj+IL+MkR9Vsm5
	az04iPLE8b165F3yWkpz2X/zdDQApHnNeCGAAdWXeWdaPiHrylgktauHqmgAkUHwHBll1c
	PwCT9S8HF+iYmSpRFZ9XW4OYRLqwG5k=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779039793;
	b=ok8lh2zyK9VZa6V8UGc98Dx2uX2Nua+5VuPS38tBabuj5+D5XGmJz+Ao0ArDH/E8sbv6ZM
	HW3bPc6cIYmgC86tI2972O8TCyD8YbDWlnXz90daimVGPg0aWLggNZxLBRbvZICQVxFhWX
	5h789dMTs7ecQZ5FOLEcWM6dL2DNtUQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 116.203.183.178 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 807E4542B5A;
	Sun, 17 May 2026 19:43:02 +0200 (CEST)
Date: Sun, 17 May 2026 19:43:01 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH RFC batadv 0/5] batman-adv: allow to specify limits for
 remote learned objects
Message-ID: <agn-JXkIGCucPwaB@sellars>
References: <20260516-resource-limit-v1-0-6f597360ed2b@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260516-resource-limit-v1-0-6f597360ed2b@narfation.org>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: NRQMUG3WTUTINTEHLPMBV7SVIVTKORAV
X-Message-ID-Hash: NRQMUG3WTUTINTEHLPMBV7SVIVTKORAV
X-MailFrom: linus.luessing@c0d3.blue
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NRQMUG3WTUTINTEHLPMBV7SVIVTKORAV/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 74BF6562B7E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[c0d3.blue];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[linus.luessing@c0d3.blue,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Action: no action

On Sat, May 16, 2026 at 02:35:17PM +0200, Sven Eckelmann wrote:
> There are some concerns that an external entity could spam the batman-adv
> related interfaces with random mac addresses. The batman-adv would use more
> and more resources to safe things like neighbors, originators, TT, ... and
> would at some point run out of resources.
> 
> One idea is to limit the number of entries for each resource type could
> have. Things which might need limits
> 
> * orig_node
> * neigh_node
> * tt_local_entry
> * dat_entry
> * bla_backbone_gw
> * bla_claim
> 
> Things which are limited by other things (maybe)
> 
> * hardif_neigh_node
> * gw_node
> * orig_node_vlan
> * orig_info
> 
> Unknown how to handle overly large tt_global_entries:
> 
> * tt_global_entry

For tt_global_entry I think we are currently bound by MTU size and
the maximum of 16 fragments? So ~2000 entries? Which in an IPv6
enabled network, due to one multicast TT entry for each IPv6 address,
would maybe be ~500 hosts. Which isn't much already when considering
that people bridge larger TP-Link Omada / Ubiquiti UniFi setups into
batman-adv at least at Freifunk.

> This approach is also used for the bridge since commit bdb4dfda3b41 ("net:
> bridge: Track and limit dynamically learned FDB entries"). And it is also
> disabled by default.

I agree that it would make sense to agree on similar approaches
for the Linux bridge and batman-adv.

> For the moment, I just want to demonstrate how this might work with some
> example code. I didn't invest any time to actually check out the other
> items in the list. So, please consider these lists as vague suggestions.

Some more, vague thoughts/ideas on what to do when hitting limits:

We now have this new multicast packet type. And have introduced
these "want_all_*" flags. We could also introduce such flags for
unicast. And have a unicast packet delivered to multiple nodes
via the batman-adv multicast packet type.

We could do more "aggregation" of addresses and more broad,
opportunistic delivery when hitting limits.

This could also be useful if some host (accidentally or not)
was using the same MAC address as another host, maybe. To treat
such a unicast MAC address like a multicast one then.


I also would be interested in aggregating/absorption/handover of other
originator('s flags + TT entries) when a node is only connected
via one other node. So that a neighbor node takesover the
responsibility, to save OGM traffic. We have a lot of such leaf
nodes with a single connection in Freifunk setups and could probably
save 2/3 of the OGM traffic by that. And this could be useful for singular nodes with a
cellular modem, to avoid having constant, costly OGM streams to them, by
transparantly, within batman-adv switching them from a full "originator mode",
to a leightweight "TT client mode" with a few ELP hellos or so.


tl;dr: hop-by-hop auto-aggregations should make it harder for an attacker
to DoS from a single position in the network?

Regards, Linus
