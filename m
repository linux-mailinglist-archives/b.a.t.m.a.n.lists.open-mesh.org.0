Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF60248F7F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 18 Aug 2020 22:13:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6F4B3802CA;
	Tue, 18 Aug 2020 22:13:05 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 81F2180278
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 18 Aug 2020 22:13:00 +0200 (CEST)
Subject: Re: [PATCH] batman-adv: bla: use netif_rx_ni when not in interrupt
 context
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>,
 Jussi Kivilinna <jussi.kivilinna@haltian.com>
References: <20200818144610.8094-1-jussi.kivilinna@haltian.com>
From: Antonio Quartulli <a@unstable.cc>
Autocrypt: addr=a@unstable.cc; prefer-encrypt=mutual; keydata=
 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
 qxdgy3a76luREOncW7wRQGcFPk2uYAg=
Message-ID: <987760ed-17d2-d486-5dd1-d40418f62ac1@unstable.cc>
Date: Tue, 18 Aug 2020 22:12:49 +0200
MIME-Version: 1.0
In-Reply-To: <20200818144610.8094-1-jussi.kivilinna@haltian.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1597781581;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=IFeA9wxdWIaMuWcyTCwwB5DyOTWPhBEorqTH+fpP3Rs=;
	b=iOfLYtkko/tBqNEmOMU4+2tR9/PUqxEeUMLVH1ulDn/Q5VPKAOgcO5SlEQPNoQlOtcJd2Y
	KCXfJwOqLLa4rnbP1Af5pfacHa8AuKpX6cAgcr4AU+W6aYC8+GfTgvU5NCXwJpvxINWxx9
	hwcIOCEapbmz0tpEDWoNw3IoHmPUibA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1597781581; a=rsa-sha256;
	cv=none;
	b=vkoquro7+lvHkHa348MCyTf9N126lSfI/lrCKVLlxiyUtKxjntc+R5M87hfmNjwj66Vq8x
	RCl6C8sCYvQk9zhXpVP6qLKdqAp9P2Hd8DzJ8Ye6M4ZlNUBWQNY8xoKYIhfiWb2mxU6zQi
	T5OLmlMAlvpVGCkeqkSlkuTnICIP32U=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of a@unstable.cc designates 5.148.176.60 as permitted sender) smtp.mailfrom=a@unstable.cc
Message-ID-Hash: QIJZKDJBO5H2A5ZB2HS6JL2VIAA36E7U
X-Message-ID-Hash: QIJZKDJBO5H2A5ZB2HS6JL2VIAA36E7U
X-MailFrom: a@unstable.cc
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QIJZKDJBO5H2A5ZB2HS6JL2VIAA36E7U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

On 18/08/2020 16:46, Jussi Kivilinna wrote:
> batadv_bla_send_claim() gets called from worker thread context through
> batadv_bla_periodic_work(), thus netif_rx_ni needs to be used in that
> case. This fixes "NOHZ: local_softirq_pending 08" log messages seen
> when batman-adv is enabled.
> 
> Signed-off-by: Jussi Kivilinna <jussi.kivilinna@haltian.com>
> ---
>  net/batman-adv/bridge_loop_avoidance.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
> index 5c41cc52bc53..ab6cec3c7586 100644
> --- a/net/batman-adv/bridge_loop_avoidance.c
> +++ b/net/batman-adv/bridge_loop_avoidance.c
> @@ -437,7 +437,10 @@ static void batadv_bla_send_claim(struct batadv_priv *bat_priv, u8 *mac,
>  	batadv_add_counter(bat_priv, BATADV_CNT_RX_BYTES,
>  			   skb->len + ETH_HLEN);
>  
> -	netif_rx(skb);
> +	if (in_interrupt())
> +		netif_rx(skb);
> +	else
> +		netif_rx_ni(skb);

What's the downside in calling netif_rx_ni() all the times?
Is there any possible side effect?
(consider this call is not along the fast path)

On top of that, I just checked the definition of in_interrupt() and I
got this comment:

 * Note: due to the BH disabled confusion: in_softirq(),in_interrupt()
really
 *       should not be used in new code.


Check
https://elixir.bootlin.com/linux/latest/source/include/linux/preempt.h#L85

Is that something we should consider or is the comment bogus?


Regards,


>  out:
>  	if (primary_if)
>  		batadv_hardif_put(primary_if);
> 

-- 
Antonio Quartulli
