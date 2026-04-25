Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKq/HH/P7GlncwAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 Apr 2026 16:28:15 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id F33734669A4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 Apr 2026 16:28:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 75E2185A3C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 Apr 2026 16:28:14 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777127294;
 b=gQxySkY9HjP/3G41HlXdb9SQ/58VyC4pqIF7oFXy7U+lAc4JaJYG4eJABu7+VwLmXyNkT
 C52Q+D+v4KaX90p7719quufuONEyzKzJpqOUIx7pShnyElNEA01ufvMGBN7FWpEam/9wByJ
 Lep2IcCSsDHKDj1zTjvrdyvBOo4ypj0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777127294; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=V6eoI+Q5YMAFhwWdYzQxJXW219gl6YFdQqBxyOL+a/w=;
 b=SOcEiL06va3Or5rgvFyXWC6ZswJbA/0Q87tEnmYEN86NCXJzMfo3xCcY2eEEMq5KhlHh6
 Txd6xIrGIi6HnCkP2IFaCDfa8pfx4zgBrjsuigwY67jMbJkBSTLFrwuEdixPaEeblSmq9Km
 AZeE3VfDRK34/HOIcuFsEfHzXE8ObIg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0614583B7C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 25 Apr 2026 16:27:26 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777127257;
	b=wC/E1/rmxNlCWLEQrcouabR0m9uqVAC91+HkqS3pd5pPhhJLybIVyt6f4SRyfadTbFbD8E
	c/5dhL5/IUyY1T7wrpzRsePp7uUn7+ilce7i9C2steJupCFL8jAZ02YVv6ULOqXr/10IGr
	vq9uR892XGmrzBBdMOHsUW5iEt4vwZE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=POcRUCBB;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777127257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=V6eoI+Q5YMAFhwWdYzQxJXW219gl6YFdQqBxyOL+a/w=;
	b=jMmIFiSpTqaEWAvXfOS8wXdV5FT6j76PyThdiNZEtocjNTqZW6Zc90v5JzK0GrqpGCXX3M
	mkBfVXiII3/uCH6ndJamEt+UDxuehUtUxE6KX+IQvmssB9LCbtxboFGhNAgrDkg7YHOZKG
	ataAA0zKrYd26GBfKJjvpw1mNcrA3nw=
Received: by dvalin.narfation.org (Postfix) id 18BD4214B3;
	Sat, 25 Apr 2026 14:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777127245;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=V6eoI+Q5YMAFhwWdYzQxJXW219gl6YFdQqBxyOL+a/w=;
	b=POcRUCBB5iLtEI37Hm4EOi0x7vLEKQK6XSBuZaRPIn21xi941eMbhtKOdHlzGAZXCEjWn0
	Rm3dbOn5707N87qNZiq6RGvke7Ee8DOHT7uxtGqiiiPCaPpS+S4kFDL38mLWRDKhBAUzv7
	lCg4k1xzPGKH+IVFxt35VG+5x0Ls7vg=
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH net 1/1] batman-adv: stop tp_meter sessions during mesh
 teardown
From: Sven Eckelmann <sven@narfation.org>
To: Ren Wei <n05ec@lzu.edu.cn>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 marek.lindner@mailbox.org, sw@simonwunderlich.de, antonio@mandelbit.com,
 sven@narfation.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org, yuantan098@gmail.com,
 yifanwucs@gmail.com, tomapufckgml@gmail.com, bird@lzu.edu.cn,
 tr0jan@lzu.edu.cn, wangjiexun2025@gmail.com
In-Reply-To: 
 <80ccaa2c7ce0f72c4555b039217834386282aa0e.1776998957.git.wangjiexun2025@gmail.com>
References: <cover.1776998957.git.wangjiexun2025@gmail.com>
 <80ccaa2c7ce0f72c4555b039217834386282aa0e.1776998957.git.wangjiexun2025@gmail.com>
Date: Sat, 25 Apr 2026 16:22:08 +0200
Message-Id: <177712692887.34614.2289598356887428944.b4-review@b4>
X-Mailer: b4 0.15.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2332; i=sven@narfation.org;
 h=from:subject:message-id; bh=f5iw195cLpLKf/7r9atvm0GkP8AHLn0x8lV0OmREZ/Y=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJlvzonF+en1Zq/3M/oTvaTSxCEr4lOGksC7K8H1e9KOh
 dt3+zZ1lLIwiHExyIopsuy5kn9+M/tb+c/TPh6FmcPKBDKEgYtTACYS4MjI8LCo5je//uEl2iXn
 RX6bnNyX2PjpQQCnWvfiwhmTm/hUMhn++wkXZ/wobXKxUKlidzc5uPbn6fSfM+TPLZ75Zt25xfx
 KvAA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: N4UR32S2CWIIQYEOYVYMHL7ZTR6FRIRJ
X-Message-ID-Hash: N4UR32S2CWIIQYEOYVYMHL7ZTR6FRIRJ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N4UR32S2CWIIQYEOYVYMHL7ZTR6FRIRJ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: F33734669A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.open-mesh.org,vger.kernel.org,mailbox.org,simonwunderlich.de,mandelbit.com,narfation.org,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,lzu.edu.cn];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email]

On Sat, 25 Apr 2026 20:59:16 +0800, Ren Wei <n05ec@lzu.edu.cn> wrote:
> [...]
> Reported-by: Juefei Pu <tomapufckgml@gmail.com>
> Reported-by: Xin Liu <bird@lzu.edu.cn>
> Co-developed-by: Luxing Yin <tr0jan@lzu.edu.cn>
> Signed-off-by: Luxing Yin <tr0jan@lzu.edu.cn>
> Signed-off-by: Jiexun Wang <wangjiexun2025@gmail.com>
> Signed-off-by: Ren Wei <n05ec@lzu.edu.cn>

Thanks. I have some minor notes about the patch:

>
>
> diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
> index 2e42f6b3..028cd4e0 100644
> --- a/net/batman-adv/tp_meter.c
> +++ b/net/batman-adv/tp_meter.c
> @@ -947,6 +964,13 @@ void batadv_tp_start(struct batadv_priv *bat_priv, const u8 *dst,
>  
>  	/* look for an already existing test towards this node */
>  	spin_lock_bh(&bat_priv->tp_list_lock);
> +	if (atomic_read(&bat_priv->mesh_state) != BATADV_MESH_ACTIVE) {
> +		spin_unlock_bh(&bat_priv->tp_list_lock);
> +		batadv_tp_batctl_error_notify(BATADV_TP_REASON_DST_UNREACHABLE,
> +					      dst, bat_priv, session_cookie);
> +		return;
> +	}
> +
>  	tp_vars = batadv_tp_list_find(bat_priv, dst);
>  	if (tp_vars) {
>  		spin_unlock_bh(&bat_priv->tp_list_lock);

Hm, this looks a little bit out of place. Maybe split it in a patch for
handling the starting part (this) and the rest (the shutdown handling).

> @@ -966,7 +990,6 @@ void batadv_tp_start(struct batadv_priv *bat_priv, const u8 *dst,
>  					      bat_priv, session_cookie);
>  		return;
>  	}
> -
>  	tp_vars = kmalloc_obj(*tp_vars, GFP_ATOMIC);
>  	if (!tp_vars) {
>  		spin_unlock_bh(&bat_priv->tp_list_lock);

Why was this changed?

> @@ -1342,7 +1362,6 @@ batadv_tp_init_recv(struct batadv_priv *bat_priv,
>  			   "Meter: too many ongoing sessions, aborting (RECV)\n");
>  		goto out_unlock;
>  	}
> -
>  	tp_vars = kmalloc_obj(*tp_vars, GFP_ATOMIC);
>  	if (!tp_vars)
>  		goto out_unlock;

Why was this changed?

> @@ -1478,9 +1500,57 @@ void batadv_tp_meter_recv(struct batadv_priv *bat_priv, struct sk_buff *skb)
> [ ... skip 12 lines ... ]
> +void batadv_tp_stop_all(struct batadv_priv *bat_priv)
> +{
> +	struct batadv_tp_vars *tp_vars[BATADV_TP_MAX_NUM];
> +	struct batadv_tp_vars *tp_var;
> +	int count = 0;
> +	int i;

size_t count = 0;
size_t i;

-- 
Sven Eckelmann <sven@narfation.org>
