Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RJgsBS5RSmo8BQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:42:22 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 97571709FCA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:42:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=kx82PVNd;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6C44E84306
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:42:21 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783255341;
 b=VlnIAPyYAnXVmY5FvBfKJvQHBZGt8gWtoCGXmy/G15VkDySvxKPt3rCuxacqvuw8RzCh7
 W0FpYi2tspphLspq22RvfFsz1uqImqRvz6ypRPDTgLu4CHNpWkgZmKEdOEIIYXM5voA7Ju7
 Pb186Ndy7htjT1N98WXdVemztZT/7Kw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783255341; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=WTdRdMb2dWRLgrnsx19QEh4cFpN7vxHiSHv5BclY2ys=;
 b=GS7PGsNi9GEQo0+rS4Jq9daVnQ5zWAT4pt1u6hqn41Rvvi/N9RSfIxLZpCJIraIh8TXnM
 KnoAjB6IKGIPkOQEu97cXYcTzxRnIxLFW626JUhH5Os4Xjda//UgNYoefdL3zIlVLM4xec9
 1GgpkCHDCEvEjCM/cWVGsRVGBSogilU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 482AF83E1C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 14:42:02 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783255323;
	b=VkLmzQSqRdWcPae7ivpT6hjTh8VQDR4uH3p9lqDavH4KXYHdnc7tX8DSrMJUND3mBEpzjf
	3Sou3ReqOn4IGeqN817wheXF4RoSUS2Eh6qhJApAg36XzTEzZ10ZYbH5vB0m6jg5ySiIf+
	IAHkkp/BOHyvVlghv//Zg79MLwW3mY0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783255323;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=WTdRdMb2dWRLgrnsx19QEh4cFpN7vxHiSHv5BclY2ys=;
	b=RQMU4nu2YgFtSWgYnVyazWNboTltUjk2pNQ++4ZppJIx7WB6EMcCnofBQ1J+9btN9EoRW6
	ezv5nqLkTcQyS1s2BLc2mv5XkxL3kQSMmcKRIJj0c/Gm68paz47AihGdK/+MVvywJeP+Oq
	S4g8JEm60S1pqstJMISZ7Qc9OzLq3oo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=kx82PVNd;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id BB198201CF;
	Sun, 05 Jul 2026 12:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783255321;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WTdRdMb2dWRLgrnsx19QEh4cFpN7vxHiSHv5BclY2ys=;
	b=kx82PVNdEx/Wk+tQokwiSqE++9bu/9kMxa3Yv+K8e0shAcDbMI46dLVkEvxy0Z6lFCLkHw
	wynrgXcjZDi+vyqyHe0cuBixa+l5W8FfVEsVgslnkN6tixXWLP19GPUx8iLkAtJMd75UCU
	tddKqYELNmlDuPY/DETL/OrqP2Rzxak=
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH] batman-adv: fix throughput detection for VLAN
 interfaces
From: Sven Eckelmann <sven@narfation.org>
To: Amitesh Singh <singh.amitesh@gmail.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org, marek.lindner@mailbox.org,
 sw@simonwunderlich.de, antonio@mandelbit.com, sven@narfation.org,
 linux-kernel@vger.kernel.org, amitesh.singh@chargepoint.com
In-Reply-To: <20260705122134.62809-1-singh.amitesh@gmail.com>
References: <20260705122134.62809-1-singh.amitesh@gmail.com>
Date: Sun, 05 Jul 2026 14:41:51 +0200
Message-Id: <178325531132.27339.5219063208417341297.b4-review@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2139; i=sven@narfation.org;
 h=from:subject:message-id; bh=8ggzsxkTYY0lVnQ/q+2RAGM/s7RD1Obhj1qLn96IqoA=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFlegYJLarqbshQEJlwRsVvVdWTjuQfRFxZ93W5zWbrx+
 6MNnJeSOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATucvH8D9acmvNV1Xfy0ov
 DnEvf6vQWMEod33SdlHd5cEF3w6w1dszMrTElJT8z521ZqJT7N7tO4q8ZOMOrJb6r/BpwmTzWcx
 za1gB
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: LSWY6NQGBWF6DUVJVUGBXR4FRCBPOS3Y
X-Message-ID-Hash: LSWY6NQGBWF6DUVJVUGBXR4FRCBPOS3Y
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LSWY6NQGBWF6DUVJVUGBXR4FRCBPOS3Y/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.01 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:singh.amitesh@gmail.com,m:b.a.t.m.a.n@lists.open-mesh.org,m:marek.lindner@mailbox.org,m:sw@simonwunderlich.de,m:antonio@mandelbit.com,m:sven@narfation.org,m:linux-kernel@vger.kernel.org,m:amitesh.singh@chargepoint.com,m:singhamitesh@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97571709FCA

On Sun, 05 Jul 2026 17:51:34 +0530, Amitesh Singh <singh.amitesh@gmail.com> wrote:
> batadv_v_elp_get_throughput() calls __ethtool_get_link_ksettings() to
> determine the link speed of an Ethernet interface. Virtual interfaces
> such as a VLAN on a bridge return success but with SPEED_UNKNOWN, so the
> function falls through to the hardcoded default even when the underlying
> physical device has a known speed.
> 
> Move rtnl_unlock() into each exit branch so the lock is still held
> after the initial query. When the speed is unknown, walk the lower
> device stack with netdev_walk_all_lower_dev() to find the first real
> device that reports a valid speed, which covers DSA ports and physical
> NICs sitting below a VLAN or bridge interface.

Has to be reviewed by someone with B.A.T.M.A.N. V expertise, but:

What makes you think that the found port is then the port something is sent 
out (towards this specific neighbor)? The neighbor could be behind a 10Mbit/
Half port and you just found a 25000Mbit/Full port and stopped
netdev_walk_all_lower_dev

>
>
> diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
> index 6ad6042a..3d4d82c5 100644
> --- a/net/batman-adv/bat_v_elp.c
> +++ b/net/batman-adv/bat_v_elp.c
> @@ -70,6 +70,32 @@ static void batadv_v_elp_start_timer(struct batadv_hard_iface *hard_iface)
> [ ... skip 23 lines ... ]
> +		return 0;
> +
> +	*(u32 *)priv->data = speed * 10;
> +	return 1;
> +}
> +

Duplex handling was not copied to this function

> @@ -177,9 +202,30 @@ static bool batadv_v_elp_get_throughput(struct batadv_hardif_neigh_node *neigh,
> [ ... skip 14 lines ... ]
> +			struct netdev_nested_priv priv = { .data = &throughput };
> +
> +			netdev_walk_all_lower_dev(hard_iface->net_dev,
> +						  batadv_v_elp_lower_dev_throughput,
> +						  &priv);
> +		}

Why this extra scope?

> +		rtnl_unlock();
> +		if (throughput) {
> +			*pthroughput = throughput;
> +			return true;
> +		}

Sashiko review:
https://sashiko.dev/#/patchset/20260705122134.62809-1-singh.amitesh%40gmail.com

-- 
Sven Eckelmann <sven@narfation.org>
