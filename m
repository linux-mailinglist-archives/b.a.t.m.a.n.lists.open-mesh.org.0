Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENSQOs2CAWq+bwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2026 09:18:37 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C475508FED
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2026 09:18:37 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 66D6085BCB
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2026 09:18:37 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778483917;
 b=fO/tMRdVfQ4JNS4d5VEh/RwnGc5zuNcJ5V3MhFb38YbOTvdvKw/PZkQWsZIGBQcfl5n1q
 8gz8NKmtvj8kr+db6IZRP4xinjJB3mOC1mpwo6Q0gp0o21yRLndL9ASjOVpgYOEIGYqoT6r
 9AuVUsUhd1cNbCqavnt9qComQrGOSBw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778483917; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=vUppsG6Nk+V1SnFrfy5UVpv/9ATyN0zeNdTa+ukahLg=;
 b=GUFL4bDCqd6/npszFcrTRGhPgGjmeJE4ADK+1PdiDoWJDuPvS66201s0hl4bERIJt8OVM
 ABYZUtWnz/LkQOil1MqsH6LyvGvS2n8ub2gY4DNngiYtdcCYHNG+MRBpYGflBnLze8zl+/Z
 PudiDKZf402+2eJXsDCytP6yQxPXGiU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 6E15E83F6A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 May 2026 09:17:43 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778483873;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=vUppsG6Nk+V1SnFrfy5UVpv/9ATyN0zeNdTa+ukahLg=;
	b=Aaq+H32gyh5YQNiJoVJvnU6Uc5Ba/aamih8ygLQk4Qno3E5w3s0P39SIxsyhNuS78Qein4
	h6JNigLw0BoTtTucxyuj87jv7Kqj0rdDJwbheqvNuA9hv4Y2CyLZvBR0gcHUZuN/As1gjJ
	JhVOnkGj49CZm3aPNyYyTolcEgfwqi4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=pKT87js+;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778483873;
	b=gHMDGfJSPFNx862MrJ2dXblFp1F3Q6sHDS0IKZkoW8vZCezS4iLhqJIKs98iZqE1qs9BCA
	dQI3g6H4Xt1dlvMtD+LB/GGJU1ZQHk7htSarasmHBS93Uk5YhNbu4nknCwg23r8u0MbNl7
	UTFMwMDxBvq3a/Ok4YK8170YsA/fqww=
Received: by dvalin.narfation.org (Postfix) id 1756020296;
	Mon, 11 May 2026 07:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778483862;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vUppsG6Nk+V1SnFrfy5UVpv/9ATyN0zeNdTa+ukahLg=;
	b=pKT87js+bXEjY14v9kbVasHGM29zocLQ3yXnNBwU7VgmgDXc/ZON1wdBajpqZ51SikZcpU
	nj4bq8BP4wAI/1LchwMY+0qng9YIjH71cM0pIuCdLLGYGyq8dBiH3i+3uKx4895xdsgi34
	x5ejYmEFr2K31QbPFOKDmUye6GnFoh0=
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH batadv 1/1] batman-adv: fix fragment reassembly length
 accounting
From: Sven Eckelmann <sven@narfation.org>
To: Ren Wei <n05ec@lzu.edu.cn>
Cc: b.a.t.m.a.n@lists.open-mesh.org, marek.lindner@mailbox.org,
 sw@simonwunderlich.de, antonio@mandelbit.com, sven@narfation.org,
 martin@hundeboll.net, yuantan098@gmail.com, yifanwucs@gmail.com,
 tomapufckgml@gmail.com, bird@lzu.edu.cn, caoruide123@gmail.com,
 enjou1224z@gmail.com
In-Reply-To: 
 <42981e0d67fa7d02d39332c17b67aada3112bc3e.1778396146.git.caoruide123@gmail.com>
References: <cover.1778396146.git.caoruide123@gmail.com>
 <42981e0d67fa7d02d39332c17b67aada3112bc3e.1778396146.git.caoruide123@gmail.com>
Date: Mon, 11 May 2026 09:17:34 +0200
Message-Id: <177848385465.4126965.3856031066109630698.b4-review@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2607; i=sven@narfation.org;
 h=from:subject:message-id; bh=yVx0xlPFGUkgsJHspO6YI7xnyar4tFqrboN3KwYJg9I=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmMTZNePZjOely66h7P9Skn+O5GrVug/WCdhpzWWiOBh
 ckhyq1VHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJKEcxMmxmy15W8uPOsUXh
 jd93houYq19M3eaw9Srflv2J6mohXmqMDAeF8nd76lSmb22UOvhz3621Rhoea26rCPjUdapESD7
 ewAgA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: G5G2WL2MZ354OUQY7VZSW4B2YPW3D3XX
X-Message-ID-Hash: G5G2WL2MZ354OUQY7VZSW4B2YPW3D3XX
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/G5G2WL2MZ354OUQY7VZSW4B2YPW3D3XX/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 8C475508FED
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
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.open-mesh.org,mailbox.org,simonwunderlich.de,mandelbit.com,narfation.org,hundeboll.net,gmail.com,lzu.edu.cn];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:email,narfation.org:dkim]
X-Rspamd-Action: no action

On Mon, 11 May 2026 14:52:42 +0800, Ren Wei <n05ec@lzu.edu.cn> wrote:
> diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentation.c
> index f4e45cc2..c6c25be7 100644
> --- a/net/batman-adv/fragmentation.c
> +++ b/net/batman-adv/fragmentation.c
> @@ -80,9 +80,9 @@ void batadv_frag_purge_orig(struct batadv_orig_node *orig_node,
>   *
>   * Return: the maximum size of payload that can be fragmented.
>   */
> -static int batadv_frag_size_limit(void)
> +static u32 batadv_frag_size_limit(void)
>  {
> -	int limit = BATADV_FRAG_MAX_FRAG_SIZE;
> +	u32 limit = BATADV_FRAG_MAX_FRAG_SIZE;

size_t

> @@ -141,8 +141,9 @@ static bool batadv_frag_insert_packet(struct batadv_orig_node *orig_node,
>  	struct batadv_frag_list_entry *frag_entry_new = NULL, *frag_entry_curr;
>  	struct batadv_frag_list_entry *frag_entry_last = NULL;
>  	struct batadv_frag_packet *frag_packet;
> -	u8 bucket;
> +	u32 data_len;

size_t

> @@ -188,7 +190,7 @@ static bool batadv_frag_insert_packet(struct batadv_orig_node *orig_node,
>  		if (frag_entry_curr->no < frag_entry_new->no) {
>  			hlist_add_before(&frag_entry_new->list,
>  					 &frag_entry_curr->list);
> -			chain->size += skb->len - hdr_size;
> +			chain->size += data_len;

Let us ignore for the moment the reality of wifi/ethernet an widen our scope:
The sk_buff len is an unsigned int (equal to u32 for all we care). To make the
"non-truncating type" true, you would need to use a much larger type. Or you
can add a check for the overflow:

bool overflow = false;
...

if (check_add_overflow(chain->size, data_len, &chain->size)) {
	overflow = true;
	goto out;
}

...

if (overflow || chain->size > batadv_frag_size_limit() ||
	...
	/* Clear chain if total size of either the list or the packet
	...


Don't forget to include linux/overflow.h

> @@ -201,7 +203,7 @@ static bool batadv_frag_insert_packet(struct batadv_orig_node *orig_node,
>  	/* Reached the end of the list, so insert after 'frag_entry_last'. */
>  	if (likely(frag_entry_last)) {
>  		hlist_add_behind(&frag_entry_new->list, &frag_entry_last->list);
> -		chain->size += skb->len - hdr_size;
> +		chain->size += data_len;

See above

>
> diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
> index 8fc5fe0e..96ea4c70 100644
> --- a/net/batman-adv/types.h
> +++ b/net/batman-adv/types.h
> @@ -300,7 +300,7 @@ struct batadv_frag_table_entry {
>  	u16 seqno;
>  
>  	/** @size: accumulated size of packets in list */
> -	u16 size;
> +	u32 size;

size_t

-- 
Sven Eckelmann <sven@narfation.org>
