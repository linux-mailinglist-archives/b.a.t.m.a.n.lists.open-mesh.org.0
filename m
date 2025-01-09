Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B72D8A072E5
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  9 Jan 2025 11:24:14 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8F0108426D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  9 Jan 2025 11:24:14 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1736418254;
 b=3xEI0tjpPT2c7NobvTSm06y9332DHCOusAh4RL+c7YQ/xiWsBjTOcsyoEBlLujxWxf4UB
 4W/vLEUQq2JjQkybcFPJ6gym5AUEADAuxuWuCWrijH4JNHvOFQ+0pYKS3BiPJb5z/Kvf6KR
 FIkyvJ9RhpPutaPSLgXPLVXj2Gvoa5w=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1736418254; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JOek8/ofecM/WoJN/XZk/QHKaS/ZACVEVeWm8GsP3pw=;
 b=QjszvnytL4eBxebj1a6e0j3/8xszPTdn6xzS1FX0ZDn+oejbmDgcSk1/mW+drOhCelzH7
 IAjk74is7hyXgJ0qjQHnRKiUEmLFAz+e8lCbyFOUi/3Sl5uVDTeGGkNdE20j+dceZ2gl97Y
 kMEDNrgeriYc+gLkxSLPuOQM/Pz49CA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 148C281619
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  9 Jan 2025 11:23:45 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1736418226;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JOek8/ofecM/WoJN/XZk/QHKaS/ZACVEVeWm8GsP3pw=;
	b=rNafgKMwcnYjhsE8Q4SoJrlQD7IQbjdOqwzvlCSGpLFlJVbu7vGlTn30JH5E7PqhO+ww7J
	0rWxCWTjMM6lWGtb3zs54klmroA7VDMTKoJ9157zsbvSOADRvHqqcGyCTJu2gk5PkDXxbb
	3usCnhauz6nSIWINzoxgJreVx5bB47s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=M5gBDCOu;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1736418226; a=rsa-sha256;
	cv=none;
	b=xCl4bK3ST5VyyeMy7bquAME6vrA2ZOOQ2zfMvzGG9duRnxrWB9VipZyvBwZGiJp+IbGrtW
	ZK7HIh8bsHCNrKyHsU3uahiDD2ZuwvVxmQJJBPGVg6Btz+n/hOCmEqW3e0/OT5znhEQtNc
	FEfFWbs5PnLatWVsQV4HmaXGrN50WtA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1736418225;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JOek8/ofecM/WoJN/XZk/QHKaS/ZACVEVeWm8GsP3pw=;
	b=M5gBDCOugQ6qP85wpfZR9hVRK4UgWHBE7suXbEWQhLiybZn+ZQAXOWTRuGmF0pbLDMyR/1
	5aC0nWqlPc1b/aggoyNh4GbUaxZ/iJ/HxwweNQ02lvFjQpL/k2uhAjiZ8mkNwhLfr7hKHz
	ObcKscNgnD1kEJNKX1bgXdsor80TAdY=
From: Sven Eckelmann <sven@narfation.org>
To: Andrew Strohman <andrew@andrewstrohman.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: fix panic during interface removal
Date: Thu, 09 Jan 2025 11:23:42 +0100
Message-ID: <5533653.Sb9uPGUboI@ripper>
In-Reply-To: 
 <CAA8ajJkhd=CaNoqZ+juKHh8PV975s_vEfLU4xLfwn-Yj+caEPg@mail.gmail.com>
References: 
 <20250109022756.1138030-1-andrew@andrewstrohman.com>
 <1882889.atdPhlSkOF@ripper>
 <CAA8ajJkhd=CaNoqZ+juKHh8PV975s_vEfLU4xLfwn-Yj+caEPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2001838.yKVeVyVuyW";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: L4WGPBM7H4N4BA6SQRDUP24TRHNSEZY6
X-Message-ID-Hash: L4WGPBM7H4N4BA6SQRDUP24TRHNSEZY6
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/L4WGPBM7H4N4BA6SQRDUP24TRHNSEZY6/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2001838.yKVeVyVuyW
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Andrew Strohman <andrew@andrewstrohman.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: fix panic during interface removal
Date: Thu, 09 Jan 2025 11:23:42 +0100
Message-ID: <5533653.Sb9uPGUboI@ripper>
MIME-Version: 1.0

On Thursday, 9 January 2025 11:10:40 CET Andrew Strohman wrote:
> But this got me thinking about the unlikely scenario where the soft if
> netdevice is
> destroyed before this work is run.

I would prefer when you would call cancel_work_sync when metric stuff should 
be stopped. I was expecting to see this somewhere around 
batadv_v_elp_iface_disable after the cancel_work_sync but it seems like it is 
missing there (or in a similar place)

 void batadv_v_elp_iface_disable(struct batadv_hard_iface *hard_iface)
 {
 	cancel_delayed_work_sync(&hard_iface->bat_v.elp_wq);
+	cancel_work_sync(&hard_iface->bat_v.metric_work);
 
 	dev_kfree_skb(hard_iface->bat_v.elp_skb);
 	hard_iface->bat_v.elp_skb = NULL;
 }


The Fixes line for this patch would be:

Fixes: 5c3245172c01 ("batman-adv: ELP - compute the metric based on the estimated throughput")

Kind regards,
	Sven

--nextPart2001838.yKVeVyVuyW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZ3+jrgAKCRBND3cr0xT1
y8f3AP92HgfMmGx2FAa0gjUJvNKrv52F1V9ayIAqeAMlgw6FGwD+IKuJaW/t8hLw
eAjVBqYDCXCLUqg5xKO8MJxkwVZzeAo=
=rMfP
-----END PGP SIGNATURE-----

--nextPart2001838.yKVeVyVuyW--



