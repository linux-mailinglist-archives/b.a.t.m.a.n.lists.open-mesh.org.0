Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oElaIDY3+2nUXwMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 14:42:30 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB894DA5EB
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 14:42:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DB38D83C39
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 14:42:29 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778071349;
 b=Vy6CEt+tpwxMho0owwWBMPiXxRtyPHn82wgncbvWMECldMuA6NZwH+IbmGmp3rYm+9GMS
 QOUBRIW5rXhkoDwQkgwBeJerA6oJr2ZXywFNUNPlBdpGHKFoTYRNQpT/VE/JaFUN5kSFEH2
 1OX3i3SBcOXS1N9d8uI2ma/Oc72wbuc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778071349; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=IhCV7KRKQ8AOzPAjZl7LQ9PVGTNSBLwaZEj9Y3bacCE=;
 b=hSGPE84uW71RPwvOhHFHh5HIYiH8H0nmIwRyqSjdeh7bLgEXXv7p+WkeqamLoDpKpb9Aq
 3/+05wRXR3b65RowpPdvgQmtdFlGg9SC5qPAVFvQoaRk3CkpkWwwSFfuI2FXDp5pPK0bkDh
 dsyJbyAua+lDswnhDXt5bdN8bxwdTI0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 29FBA83BFE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 06 May 2026 14:40:37 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778071248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=IhCV7KRKQ8AOzPAjZl7LQ9PVGTNSBLwaZEj9Y3bacCE=;
	b=D82lOmsakB2mJx6V2lfrXbW1DspQkGwV3PanwBQj4DfWsPfZsHSIoSIj+xq3qPi0SgV4/k
	JS3gPbVNm59V9NzWlDGPOWZAAKDtumWzjg0ahgjn+ElP9kBv4BWrF6F2oq12TNveUx/aHa
	jLn7VAlwYMjidyQLPPCTumpz1CpGYmQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VuQpGZ29;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of horms@kernel.org designates
 172.234.252.31 as permitted sender) smtp.mailfrom=horms@kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778071248;
	b=psPCR8AXO3+DNIRz5GIxSy1l3ByKvTgV1cATbWloH01HpcHEiRffL/h9V/pyIePVI3uakx
	Nmsj1YbDYf9o2+wcQadNwWVeC9rSsRNwZbRpLqo+8BEDDoHMoLL5EIjC7BkWPnjd3mFLR0
	DOoyqLfT+iP7rmqnk6Te+UHWKWx6OeQ=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 305CA43479;
	Wed,  6 May 2026 12:40:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0050EC2BCC4;
	Wed,  6 May 2026 12:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778071236;
	bh=HPJqgvmSRfiKw78LZ5qA65mNKPFtkuVJT9wIyurZU5w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VuQpGZ29fQWmFDVFMgiCaABL86t7aTqBqCCXFaMk+SdkvuAEXkMUXBOhGGCYbhU1+
	 ok1/bu8AiUY05XqjEpJ1DaSzgqHCl3LLZ+QFVa6gHDDJEU/X2Y0dP9Hb/lIE1XPfhs
	 G0Smo7U3ED2Y3smvGNtTlbApLCtppX2XrpFdMuRzaGjSFL+YdKcVYl0Db5nKYQ6XL7
	 PY0oeEX9Qk3jKb61Rbth1CUyDx8pX5T9GKslFK1QR20OFvvIs5w92WXYX4QgdbatOw
	 nf99+8/tCVxVzVvKbuGYn2zoX2JZH9Ha4NdcRQLOvX0UcnyZvafXvO7chGVoGkxPEk
	 85ANHeZ0EnS2g==
From: Simon Horman <horms@kernel.org>
To: n05ec@lzu.edu.cn
Cc: 'Simon Horman' <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	netdev@vger.kernel.org,
	marek.lindner@mailbox.org,
	sw@simonwunderlich.de,
	antonio@mandelbit.com,
	sven@narfation.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	yuantan098@gmail.com,
	yifanwucs@gmail.com,
	tomapufckgml@gmail.com,
	bird@lzu.edu.cn,
	wangjiexun2025@gmail.com
Subject: Re: [PATCH net 1/1] batman-adv: stop caching unowned originator
 pointers in BAT IV
Date: Wed,  6 May 2026 13:39:46 +0100
Message-ID: <20260506123952.671718-3-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: 
 <e12a51ee998808be6381780d6aaf32e093dc7d1e.1777692024.git.wangjiexun2025@gmail.com>
References: 
 <e12a51ee998808be6381780d6aaf32e093dc7d1e.1777692024.git.wangjiexun2025@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MailFrom: horms@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation
Message-ID-Hash: HTOHE6BSWD3424ISX4AEMMGTOEB2GYTQ
X-Message-ID-Hash: HTOHE6BSWD3424ISX4AEMMGTOEB2GYTQ
X-Mailman-Approved-At: Wed, 06 May 2026 14:42:11 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HTOHE6BSWD3424ISX4AEMMGTOEB2GYTQ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 1CB894DA5EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.open-mesh.org,vger.kernel.org,mailbox.org,simonwunderlich.de,mandelbit.com,narfation.org,davemloft.net,google.com,redhat.com,gmail.com,lzu.edu.cn];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	R_SPF_NA(0.00)[no SPF record]

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://netdev-ai.bots.linux.dev/sashiko/

I do have concerns that this review needs to be addressed in
order for this patch to progress.

OTOH, there is another AI-generated review of this patch available at
https://sashiko.dev. In that case, I believe the review relates to
a pre-existing condition, and addressing that (or not) can be treated
as a follow-up.

---
batman-adv: stop caching unowned originator pointers in BAT IV

This patch removes the orig_node back-pointer cached inside each BAT IV
neigh_node and resolves the originator on demand via batadv_orig_hash_find()
from the stored neighbor address. Tagged Fixes: c6c8fea29769 and
Cc: stable@kernel.org.

> diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
> index f28e9cbf8ad5..168b413dd18b 100644
> --- a/net/batman-adv/bat_iv_ogm.c
> +++ b/net/batman-adv/bat_iv_ogm.c

[ ... ]

> @@ -1372,8 +1380,8 @@ batadv_iv_ogm_process_per_outif(const struct sk_buff *skb, int ogm_offset,
>  
>  	router = batadv_orig_router_get(orig_node, if_outgoing);
>  	if (router) {
> -		router_router = batadv_orig_router_get(router->orig_node,
> -						       if_outgoing);
> +		router_router = batadv_orig_to_router(bat_priv, router->addr,
> +						      if_outgoing);
>  		router_ifinfo = batadv_neigh_ifinfo_get(router, if_outgoing);
>  	}

Is this replacement semantically equivalent to the original call?

The previous code used batadv_orig_router_get() on the cached orig_node to
fetch router_router. The new code calls batadv_orig_to_router(), which
internally runs batadv_find_router():

    net/batman-adv/originator.c:batadv_orig_to_router() {
        orig_node = batadv_orig_hash_find(bat_priv, orig_addr);
        ...
        neigh_node = batadv_find_router(bat_priv, orig_node, if_outgoing);
        ...
    }

batadv_find_router() has a bonding path that is taken when
recv_if == BATADV_IF_DEFAULT and bonding is enabled:

    net/batman-adv/routing.c:batadv_find_router() {
        ...
        if (!(recv_if == BATADV_IF_DEFAULT &&
              atomic_read(&bat_priv->bonding)))
            return router;

        /* bonding: loop through the list of possible routers ... */
        ...
        if (next_candidate) {
            ...
            batadv_last_bonding_replace(orig_node, next_candidate);
        } else if (first_candidate) {
            ...
            batadv_last_bonding_replace(orig_node, first_candidate);
        } else {
            batadv_last_bonding_replace(orig_node, NULL);
        }
        ...
    }

batadv_iv_ogm_process() invokes batadv_iv_ogm_process_per_outif() once with
BATADV_IF_DEFAULT per received OGM:

    net/batman-adv/bat_iv_ogm.c:batadv_iv_ogm_process() {
        ...
        batadv_iv_ogm_process_per_outif(skb, ogm_offset, orig_node,
                                        if_incoming, BATADV_IF_DEFAULT);
        ...
    }

With bonding enabled, does every received OGM now rotate
orig_node->last_bonding_candidate on the last-hop neighbor's originator via
batadv_last_bonding_replace(), where previously that state was advanced only
from forwarding paths?

And can the bonding candidate selection return a different router_router than
batadv_orig_router_get() would have, which then feeds the subsequent
loop-avoidance check?

    if (router && router_router &&
        (batadv_compare_eth(router->addr, prev_sender)) &&
        !(batadv_compare_eth(ogm_packet->orig, prev_sender)) &&
        (batadv_compare_eth(router->addr, router_router->addr))) {
        ...
        goto out;
    }

The sister helper added by this same patch, batadv_iv_ogm_neigh_ifinfo_sum(),
uses batadv_orig_hash_find() followed by batadv_iv_orig_ifinfo_sum() rather
than batadv_orig_to_router():

> +static u8 batadv_iv_ogm_neigh_ifinfo_sum(struct batadv_priv *bat_priv,
> +					 const struct batadv_neigh_node *neigh_node)
> +{
> +	struct batadv_orig_node *orig_neigh;
> +	u8 sum;
> +
> +	orig_neigh = batadv_orig_hash_find(bat_priv, neigh_node->addr);
> +	if (!orig_neigh)
> +		return 0;
> +
> +	sum = batadv_iv_orig_ifinfo_sum(orig_neigh, neigh_node->if_incoming);
> +	batadv_orig_node_put(orig_neigh);
> +
> +	return sum;
> +}

Would a similar pattern work here, something like:

    orig = batadv_orig_hash_find(bat_priv, router->addr);
    router_router = batadv_orig_router_get(orig, if_outgoing);
    batadv_orig_node_put(orig);

so that the lookup avoids invoking the bonding candidate machinery from the
OGM processing path?

The commit message describes only removing an unowned cached originator
pointer and does not mention a routing or bonding behavior change. Is the
change in router_router resolution intentional, and if so could the commit
message call it out?
