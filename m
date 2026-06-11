Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FazMKKkEK2py1QMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 20:55:37 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF656749B1
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 20:55:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=universe-factory.net header.s=dkim header.b=SkAfFstL;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=reject) header.from=universe-factory.net;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 07E9884229
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 20:55:37 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781204137;
 b=tLrq+2d3STE1rhp5hkJs7Cc/x4+wWhY059gVWFYMJfCn5xbdT57iYB2YweRzEQXBkqsgi
 jYtp6jyL2G9vCAtspjcqqiSc/UbsboRiVo4eLc0bRwyE1/rMfwA0dmZwEd9IY3nRwJPqiRW
 zUMto0LKkyehXoAvnHHl4LNMZ7Zz/P8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781204137; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=oYSOinO3sNZ9cfw/op5+/1xsUIgZSFvH5QqMxCdFBio=;
 b=IzTY2HfeX5xG2F7IdeJMJ0cJVDObYe1Xon+sntove66KmnInNUmhsmffZljbd/296Zi5C
 H2WNUZBDyX3ZF39Oec1e9qLF4KlRj/uKxOn0nbuDvsMz9uyY1DY9/eXt3H53cPt2O9Rc+cw
 RveJQq1duQjONiJZwN052tQPm9IepuE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=universe-factory.net;
 arc=pass;
 dmarc=none
Received: from mail.universe-factory.net (osgiliath.universe-factory.net
 [141.95.161.142])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 89148811D4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 11 Jun 2026 19:50:58 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781200268;
	b=k35Uhim43bGA5Q5H4VsCdCV5Ec9dpwg1zYyNv6a1XwTdRs2n2FvY1Nm6pGZn5kOAMt4kQ5
	03RKUXku5Z+Ppbt2fJGksZscJLkg6+OnSHcpd7ixKdvBuSYIPqnG4z3KjLLyB4jpNOlHdA
	D1fS0rNTIOmuV5WPJAOf/Z2wgeLKVzg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781200268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=oYSOinO3sNZ9cfw/op5+/1xsUIgZSFvH5QqMxCdFBio=;
	b=mCekkKcRzowPVA5pqgM8sK8lO5ktNN1kR5ldl86EYdXd62sYutC1VmaRfp6Oq6L9K+vg/y
	CPV4gqC+sRe1hO5EsWzu6qKwf7p6dw9K6ZxgnAO2w9oNKDVeYS0rOaVda4AFnlO9+36HMm
	GO+Fv5BB/n7/uXxPK1CLPADoFE7hnSE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=universe-factory.net header.s=dkim header.b=SkAfFstL;
	dmarc=pass (policy=reject) header.from=universe-factory.net;
	spf=pass (diktynna.open-mesh.org: domain of neocturne@universe-factory.net
 designates 141.95.161.142 as permitted sender)
 smtp.mailfrom=neocturne@universe-factory.net
Message-ID: <93befbc9-0b42-478b-be4d-65c8f005ddaf@universe-factory.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=universe-factory.net;
	s=dkim; t=1781200256;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oYSOinO3sNZ9cfw/op5+/1xsUIgZSFvH5QqMxCdFBio=;
	b=SkAfFstLlS7YDmjHrWI+m02zf3NU5+yZgk2q9Zue/Vv474AawKST5QkUGCpcqRZumjXubX
	gTCAa34a1P5T1Zvc2MTb4L/TItLWyuRSyCea47+bbrDVbIoEcm6Gs9dG8/lKf8XuwS3k6s
	PNpW091AsNjtK83xLGVh1ZK5n77AbfW8mlW0cGGz4RnkNeNb+ucp/lYQ8AmavCjjEtOwsP
	Mic2/0AtOm/AzDZ+fOa8h2FK9V1bGiYMNjKDt34IvTUvp8KMXsPltj6ypXXp+JhON0iqiL
	u6JG4H98WYbFt8+pJ35an5EmioNcZyQQ8rkqydRYGLBVfarQqLxHChwkEmrCRw==
Date: Thu, 11 Jun 2026 19:50:55 +0200
MIME-Version: 1.0
Subject: Re: [PATCH batadv v2] batman-adv: gw: don't deselect gateway with
 active hardif
Content-Language: en-US-large
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <20260610-gw-disable-check-v2-1-12c96d736410@narfation.org>
From: Nora Schiffer <neocturne@universe-factory.net>
In-Reply-To: <20260610-gw-disable-check-v2-1-12c96d736410@narfation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Bar: ---
X-MailFrom: neocturne@universe-factory.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency
Message-ID-Hash: TCBS7JW53SL7QGJNCL42WTP5TDVLYMAY
X-Message-ID-Hash: TCBS7JW53SL7QGJNCL42WTP5TDVLYMAY
X-Mailman-Approved-At: Thu, 11 Jun 2026 20:54:53 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TCBS7JW53SL7QGJNCL42WTP5TDVLYMAY/>
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
	DMARC_POLICY_ALLOW(-0.50)[universe-factory.net,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[universe-factory.net:s=dkim];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sven@narfation.org,m:b.a.t.m.a.n@lists.open-mesh.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[neocturne@universe-factory.net,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[universe-factory.net:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neocturne@universe-factory.net,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,universe-factory.net:dkim,universe-factory.net:email,universe-factory.net:mid,universe-factory.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CF656749B1

On 10/06/2026 20:35, Sven Eckelmann wrote:
> The batadv_hardif_cnt() was previously checking if there is an
> batadv_hard_iface->mesh_iface which is has the same mesh_iface. And since
> batadv_hardif_disable_interface() was resetting the
> batadv_hard_iface->mesh_iface after this check, it had to verify whether
> *1* interface was still part of the mesh_iface before it started the
> gateway deselection.
> 
> But after batadv_hardif_cnt() is now checking the lower interfaces of
> mesh_iface and batadv_hardif_disable_interface() already removed the
> interface via netdev_upper_dev_unlink() earlier in this function, the check
> must now make sure that *0* interfaces can be found by batadv_hardif_cnt()
> before selected gateway must be deselected. Otherwise the deselection would
> already happen one batadv_hard_iface too early.
> 
> Because a 0 hardif count from batadv_hardif_cnt() is equal to an empty
> list, it is possible to replace the counting with a simple list_empty().
> 
> Fixes: 702c52a87eab ("batman-adv: store hard_iface as iflink private data")
> Signed-off-by: Sven Eckelmann <sven@narfation.org>

Reviewed-by: Nora Schiffer <neocturne@universe-factory.net>

> ---
> Changes in v2:
> - dropped batadv_hardif_cnt, thanks Nora Schiffer
> - Link to v1: https://patch.msgid.link/20260607-gw-disable-check-v1-1-d156beb975ce@narfation.org
> ---
>   net/batman-adv/hard-interface.c | 28 ++--------------------------
>   1 file changed, 2 insertions(+), 26 deletions(-)
> 
> diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
> index 60cee2c2..03d01c20 100644
> --- a/net/batman-adv/hard-interface.c
> +++ b/net/batman-adv/hard-interface.c
> @@ -814,30 +814,6 @@ int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
>   	return ret;
>   }
>   
> -/**
> - * batadv_hardif_cnt() - get number of interfaces enslaved to mesh interface
> - * @mesh_iface: mesh interface to check
> - *
> - * This function is only using RCU for locking - the result can therefore be
> - * off when another function is modifying the list at the same time. The
> - * caller can use the rtnl_lock to make sure that the count is accurate.
> - *
> - * Return: number of connected/enslaved hard interfaces
> - */
> -static size_t batadv_hardif_cnt(struct net_device *mesh_iface)
> -{
> -	struct batadv_hard_iface *hard_iface;
> -	struct list_head *iter;
> -	size_t count = 0;
> -
> -	rcu_read_lock();
> -	netdev_for_each_lower_private_rcu(mesh_iface, hard_iface, iter)
> -		count++;
> -	rcu_read_unlock();
> -
> -	return count;
> -}
> -
>   /**
>    * batadv_hardif_disable_interface() - Remove hard interface from mesh interface
>    * @hard_iface: hard interface to be removed
> @@ -878,8 +854,8 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
>   	netdev_upper_dev_unlink(hard_iface->net_dev, hard_iface->mesh_iface);
>   	batadv_hardif_recalc_extra_skbroom(hard_iface->mesh_iface);
>   
> -	/* nobody uses this interface anymore */
> -	if (batadv_hardif_cnt(hard_iface->mesh_iface) <= 1)
> +	/* nobody uses this mesh interface anymore */
> +	if (list_empty(&hard_iface->mesh_iface->adj_list.lower))
>   		batadv_gw_check_client_stop(bat_priv);
>   
>   	hard_iface->mesh_iface = NULL;
> 
> ---
> base-commit: 385b248dd4e46c4ce022adeb1b13e547d1954901
> change-id: 20260607-gw-disable-check-f3393c3a4989
> 
> Best regards,
> --
> Sven Eckelmann <sven@narfation.org>
> 

