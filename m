Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNAJCO8H92mfbQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 10:31:43 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C814E4B4E2F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 10:31:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8AD5485A57
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 10:31:42 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777797102;
 b=FwTWhl0afi4opuQ7N866bcIDYICya6Zc7lmYdxW1US0mwCF6xObOJ2AFgGH2GFArLbwEV
 Y1PIelGslgRuDlMkz67jHU8wV3pMqSOLis/usBimExr17TB3OURw3iaTeo1CsKqq7XcvRsZ
 Zz0yo7+MZwFEEjUi3ecOnQdb0wcCl2M=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777797102; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=XTOQamUfUbzlHhKbOnpJ+ZSbw2FCajFGk+eYIoB+kqs=;
 b=y9TZhj+ieD9S/l/ZESrpFwIKxcDuvJS5tFlAT2QN2HQLEg6g1z1Qkg3skCTYNFYyS0N9u
 jsIJFbZy4FSJsKlZMG2RlFWjm6ZlpxdDdPAHz7EM3YjeSCGuMKXLa+xvpSJ4jt4RkLfbcIc
 osLA6Yo1CVEDYFbHMG+WgYtQRJGevoI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id C80D8841FB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 03 May 2026 10:30:51 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777797061;
	b=h7eoQBiC6DHR7PxZ9d3RL7FCDkWkAFFOLGtVyAy0n5EW7baD94uXIznqaZd7KEUQ0/QWPX
	TZ52aosRbTj6dko0bG7yVkR+b14UePbWvijkzq8NFQh6qxvNLa+5SUuAjQ3/XvAb1cyxmo
	aII7rUTCq+NZAaRtxn4P82XILAVSSl0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=a4wIEfje;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777797061;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=XTOQamUfUbzlHhKbOnpJ+ZSbw2FCajFGk+eYIoB+kqs=;
	b=UCqvS1GEdpK8Oh30kRo+5+YubU2WK+tAX0zRiyyOoPTvTh58pRnDOsQJoXKcmUHp4AjcP6
	2F6r3sa2ogTyAx+8+aOGR4cdEieMdR+/k2+kHwJEECO/XSw9DbWz8x6PWagU45ZX+tKJQk
	v/twCGqhKjaVPQ5bjcPCKW+rsKuXibs=
Received: by dvalin.narfation.org (Postfix) id C2B501FF83;
	Sun, 03 May 2026 08:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777797050;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XTOQamUfUbzlHhKbOnpJ+ZSbw2FCajFGk+eYIoB+kqs=;
	b=a4wIEfje0aR1NmV8+qvaul+10jw+p6Qq2p7sxcpFG37RG2VWQJv9F9Wfwg6PJNumOsYRad
	K+QysshPv8yBOPeyUqCqGgyGdPV3sqKjiegx2ttyHUWgaI5NTM0YYXwej2mwdULH2hdtC5
	teUqyomPjWNsGAEvRVoXtl5VRoVUKP8=
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH net 1/1] batman-adv: stop caching unowned originator
 pointers in BAT IV
From: Sven Eckelmann <sven@narfation.org>
To: Ren Wei <n05ec@lzu.edu.cn>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 marek.lindner@mailbox.org, sw@simonwunderlich.de, antonio@mandelbit.com,
 sven@narfation.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org, yuantan098@gmail.com,
 yifanwucs@gmail.com, tomapufckgml@gmail.com, bird@lzu.edu.cn,
 wangjiexun2025@gmail.com
In-Reply-To: 
 <e12a51ee998808be6381780d6aaf32e093dc7d1e.1777692024.git.wangjiexun2025@gmail.com>
References: <cover.1777692024.git.wangjiexun2025@gmail.com>
 <e12a51ee998808be6381780d6aaf32e093dc7d1e.1777692024.git.wangjiexun2025@gmail.com>
Date: Sun, 03 May 2026 10:30:28 +0200
Message-Id: <177779702879.645574.14368201380729825498.b4-review@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1710; i=sven@narfation.org;
 h=from:subject:message-id; bh=xuy7E00c+ImwnU7UKGCuTUi+YywSoQjFOGhNjkdHvk8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJnf2Td2/nRtvDnhioP9nm8TFQ2jE4U/vI7vairRfSsx+
 cLq0t1rO0pZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATWbCYkeHC5ONvlkQsLj4n
 7n9J1ObUjqOnUg9u6Otcvn7dniO+7/c8Y2TYwHt49Z3L7HLGvNdfNjTfdDvbcP/kk0wGH/En4Wv
 XT//GAgA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: WXMK4IIRICYVU3GTU2FF3IY6GR47F67I
X-Message-ID-Hash: WXMK4IIRICYVU3GTU2FF3IY6GR47F67I
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WXMK4IIRICYVU3GTU2FF3IY6GR47F67I/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: C814E4B4E2F
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
	RCPT_COUNT_TWELVE(0.00)[17];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,sashiko.dev:url,lzu.edu.cn:email]

On Sun, 03 May 2026 12:28:58 +0800, Ren Wei <n05ec@lzu.edu.cn> wrote:
> [...]
> Reported-by: Yuan Tan <yuantan098@gmail.com>
> Reported-by: Yifan Wu <yifanwucs@gmail.com>
> Reported-by: Juefei Pu <tomapufckgml@gmail.com>
> Reported-by: Xin Liu <bird@lzu.edu.cn>
> Signed-off-by: Jiexun Wang <wangjiexun2025@gmail.com>
> Signed-off-by: Ren Wei <n05ec@lzu.edu.cn>

This looks half finished from the types perspective: 

net/batman-adv/bat_v_ogm.c:
713 |         if (router && router->orig_node != orig_node && !orig_neigh_router) {

net/batman-adv/originator.c:
697 |         neigh_node->orig_node = orig_node;

net/batman-adv/types.h:

631 |         struct batadv_orig_node *orig_node;


Not sure if __private and ACCESS_PRIVATE() would be an option - just to handle
this non-deref comparison while still allowing a fast comparison of the pointer
value.

I don't want to make this a show-stopper - just a possibility to think about
this for a moment. Especially because I am waiting for some info about the
sashiko.dev "Embargoed" state

>
>
> diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
> index f28e9cbf..168b413d 100644
> --- a/net/batman-adv/bat_iv_ogm.c
> +++ b/net/batman-adv/bat_iv_ogm.c
> @@ -906,6 +899,31 @@ static u8 batadv_iv_orig_ifinfo_sum(struct batadv_orig_node *orig_node,
> [ ... skip 22 lines ... ]
> +	sum = batadv_iv_orig_ifinfo_sum(orig_neigh, neigh_node->if_incoming);
> +	batadv_orig_node_put(orig_neigh);
> +
> +	return sum;
> +}
> +

@Marek, @Simon, Maybe you can also get a good cup of tea and think (besides
performance implications) think about other side effects.

-- 
Sven Eckelmann <sven@narfation.org>
