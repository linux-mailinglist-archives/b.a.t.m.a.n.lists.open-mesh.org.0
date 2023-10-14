Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F077C92F1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 14 Oct 2023 08:24:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A264983252
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 14 Oct 2023 08:24:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1697264692;
 b=FmqBrpZCOYVIpehEZWxLop3CK6JKdtvmN95Gx3es6POaXVW7gJq3B1YMH2F3pZVsU3yJn
 Mse+xti+k8V4Hj5ZPKhjSudwGyhQd+VhwQIMj7sLpla8VEbLgmZkY91pFaieEL5OuGfQ5Cx
 ZEozpFXNzIMJTN3rbw5tLGm74qC7w60=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1697264692; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=yziCWoJwZn+YDGsbPUPyrvevqR0/AuKLmq7uHow7R4E=;
 b=WuhDvQ4AkRGrJ4cnBokn+j1bu4wFFxtqpR9FzJw3mROKQpIknYAxn3pqwOhI7DBvMsXYc
 MvxGR+2HyzdnEHWJzF+FRRT+FlePyQJt3xaBA1D06Z2K+blzfTmvlR5XYP9Off8ELJkvlgo
 qug4qUqszXL98aES1ae/wE7w6W+nBFk=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1EB7D81056
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 14 Oct 2023 08:24:26 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1697264667;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yziCWoJwZn+YDGsbPUPyrvevqR0/AuKLmq7uHow7R4E=;
	b=ksPVptG15lQULKysERAbQ40cxBOiqPI/+T/Xa6FRlypqX6W6BxBH/D8DYDKW9H5pfiavsf
	HHfQFhrusmOG28WPjpiDOn0unDSMRvOnhyqIgzrX3qAxQxFzThVAhPDNJNLT2shRBJW+Hn
	EXzJYLQisVs+NTuDumXBqoYXgRwQx0A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1697264667; a=rsa-sha256;
	cv=none;
	b=gqF37d1AN64shdNf4jVUlBnp6NQlHEg0rLacuAjQzlSq4vOYNFgB1+4xk+rFqZYVHGWA2z
	xHZPKchkKSCuP2XcEe8EN9zdweNSdwbRk7yuIWvz6YE6gyGT9NnNoUMLdO/gIJsJqhzRY+
	kSNiixYwcpQ6gXMeG9chX8C6FVJarz4=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 473DE3F037;
	Sat, 14 Oct 2023 08:24:25 +0200 (CEST)
Date: Sat, 14 Oct 2023 08:24:22 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH RFC 2/2] batman-adv: Better half duplex penalty estimation
Message-ID: <ZSo0FgLjKTOmB_Gx@sellars>
References: <cover.1695904299.git.repk@triplefau.lt>
 <09c086e5e68055e52d1f92ba17d0e921084107e7.1695904299.git.repk@triplefau.lt>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: 
 <09c086e5e68055e52d1f92ba17d0e921084107e7.1695904299.git.repk@triplefau.lt>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: VU34A2RZTVWEQIDWCRCAWP5YLSEMDO2I
X-Message-ID-Hash: VU34A2RZTVWEQIDWCRCAWP5YLSEMDO2I
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VU34A2RZTVWEQIDWCRCAWP5YLSEMDO2I/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, Sep 28, 2023 at 02:39:36PM +0200, Remi Pommarel wrote:
> diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
> index 27597f4cdf3e..9b7d4de182d0 100644
> --- a/net/batman-adv/bat_v_ogm.c
> +++ b/net/batman-adv/bat_v_ogm.c
> @@ -866,10 +866,12 @@ static u32 batadv_v_get_throughput(struct batadv_ogm2_packet *ogm,
[...]
>  
> -	return min_t(u32, lth, oth);
> +	/* OGM throughput was divided by two for retrocompatibility sake */
> +	oth *= 2;
> +	return oth * lth / (oth + lth);

Also looks like we'd have potential integer overflow issues
here as oth, lth and the return value are all u32.

In the worst case (oth + lth) could wrap around to 0 and we'd
divide by zero?
