Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UzpNDJhlUGqoyAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 05:23:04 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A552B736EF9
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 05:23:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=LqnaJGrC;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5A79C84094
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 05:23:03 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783653783;
 b=m7yenJrGMiM2W9O4M6KKV/agrAm4fmInzwg0SfM2UCVkViVLMub1hTkZOIjaDLWT8WA/W
 tEdCY1pLqjDsCzQ2BoL3YzU0l/1ImCFUCCHpmTH3c3YDr+l+IkbizUYumIlNvNeQy7smyGQ
 yy496mSw1Dn3BKYEwPJ3ZRyHrqnHwZM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783653783; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=FFMSuIWaVepbwMNt0qhxyKhlubXgJXw6AOD0qL724uI=;
 b=O25CcCq0Bfg9aOpbjVNE11w2Yo2uedMAA31vxukuIElxFeE/M95UgR85NY/mR8x0XOaaN
 Nouc5+bqjJERKF9/FFVgCKUM8KBqxbNs3NC/t/sNDCZIRsiZxMkmsn6qtv2TwsZ9XyKyYPb
 GEmVpjNRh3qj7MTZW7IXXQd0/aOMu50=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 159128180A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Jul 2026 05:22:48 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783653769;
	b=Rqm5ATlRQXSUnsHgJ/yHuOpiKnRRHRvtLJwblVbunvYrbgFiDiH0mP+GSB0ZcWn88btC/d
	Lvy97WuPTdrW40GOLxfoZuwbt6hl7AyKH2UzwbcZ/jfBtI2cy22M43AvgOSWThjAsdPxUO
	KMKJrelU1sqjmyMLS4W69OPdY82HuMc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783653769;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=FFMSuIWaVepbwMNt0qhxyKhlubXgJXw6AOD0qL724uI=;
	b=es38tzcCHsyKE1oKD7SoHE7CyEvPUGj8/OVxgGisBPfq3HDZhevDZH2pM7XWY28ekdk9Ye
	QC3Lma5CFpQtzAtGXTjz53aiRDpgaiJqIfEynVR7FSrAqOX3PY1ruDgFBadgGJHlQi2EYX
	pfMy84icHDECoooNT2fQFeB5ochtaks=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=LqnaJGrC;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 92FE6200EE;
	Fri, 10 Jul 2026 03:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783653767;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FFMSuIWaVepbwMNt0qhxyKhlubXgJXw6AOD0qL724uI=;
	b=LqnaJGrCriPmqFg3FqecnS2n0+ToQO8KPfcRX/R8dJHYw8m5hLSevVvmcRlaueMX5JKvpS
	pnvGgFoHwtHYmLEo/lNaPh9ouXmdQW9phHFP1iBBDUszezvv6GOdnxqbSSHqZxEmxSIIbF
	MzeLsucY4Oc82eoNlVucGj11MvodTk0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH batadv 3/3] batman-adv: mcast: linearize skbuff for packet
 generation
Date: Fri, 10 Jul 2026 05:22:37 +0200
Message-ID: <13256198.O9o76ZdvQC@sven-desktop>
In-Reply-To: 
 <20260709-mcast-header-generation-bugs-v1-3-c7c111fa45b6@narfation.org>
References: 
 <20260709-mcast-header-generation-bugs-v1-0-c7c111fa45b6@narfation.org>
 <20260709-mcast-header-generation-bugs-v1-3-c7c111fa45b6@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6336739.DvuYhMxLoT";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: NIXIJH6HL25GFOIYADCYG3UOUTYDMCOP
X-Message-ID-Hash: NIXIJH6HL25GFOIYADCYG3UOUTYDMCOP
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NIXIJH6HL25GFOIYADCYG3UOUTYDMCOP/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sashiko-bot@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	URIBL_MULTI_FAIL(0.00)[narfation.org:server fail,sven-desktop:server fail,diktynna.open-mesh.org:server fail,lists.open-mesh.org:server fail];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A552B736EF9

--nextPart6336739.DvuYhMxLoT
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sashiko <sashiko-bot@kernel.org>
Date: Fri, 10 Jul 2026 05:22:37 +0200
Message-ID: <13256198.O9o76ZdvQC@sven-desktop>
MIME-Version: 1.0

On Thursday, 9 July 2026 21:45:57 CEST Sven Eckelmann wrote:
> batadv_mcast_forw_packet() is not only called by the unsharing+linearizing
> batadv_recv_mcast_packet() handler. When it is called by
> batadv_mcast_forw_mcsend() then it will be unshared but not linearized. The
> SKB_LINEAR_ASSERT() can therefore cause a fatal BUG().
> 
> The batadv_mcast_forw_packet() must handle the linearization itself.
> 
> Reported-by: Sashiko <sashiko-bot@kernel.org>
> Fixes: 8ed36122d709 ("batman-adv: mcast: implement multicast packet reception and forwarding")
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> ---
>  net/batman-adv/multicast_forw.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/net/batman-adv/multicast_forw.c b/net/batman-adv/multicast_forw.c
> index c5b8e2e3..9fbd2876 100644
> --- a/net/batman-adv/multicast_forw.c
> +++ b/net/batman-adv/multicast_forw.c
> @@ -937,8 +937,10 @@ static int batadv_mcast_forw_packet(struct batadv_priv *bat_priv,
>  	u8 *dest;
>  	int ret;
>  
> -	/* (at least) TVLV part needs to be linearized */
> -	SKB_LINEAR_ASSERT(skb);
> +	/* packet needs to be linearized to access the tvlv content */
> +	ret = skb_linearize(skb);
> +	if (ret < 0)
> +		return -ENOMEM;
>  
>  	/* check if batadv_tvlv_mcast_tracker header is within skb length */
>  	if (sizeof(*mcast_tracker) > skb_network_header_len(skb))
> 
> 

We might move this to the same place as the skb_cow fix (see patch 2) because 
batadv_mcast_forw_scrape() has also this assert and following unlinearized-skb 
callchain exists:


batadv_interface_tx
batadv_mcast_forw_mode
batadv_mcast_forw_mode_by_count
batadv_mcast_forw_push
batadv_mcast_forw_push_tvlvs
batadv_mcast_forw_push_dests
batadv_mcast_forw_push_adjust_padding
batadv_mcast_forw_scrape


And this is called before batadv_mcast_forw_packet

Regards,
	Sven
--nextPart6336739.DvuYhMxLoT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCalBlfQAKCRBND3cr0xT1
y703AP99GlUlt/HsN6bp6s9gLoiT7uReCyJYgpl6Gxq+LZTS8wD9GhYdsu0hk6Pw
90BhJsMop0jwcVvDLLZQ9zTSzIp2CQ8=
=CiBg
-----END PGP SIGNATURE-----

--nextPart6336739.DvuYhMxLoT--



