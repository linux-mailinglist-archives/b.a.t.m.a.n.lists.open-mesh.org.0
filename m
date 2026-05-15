Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBJUAe3aBmoxogIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 10:35:57 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C23154B6B1
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 10:35:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F1F168549B
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 10:35:55 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778834155;
 b=F1TIds09O0BOUfo0QMHn1yhtBwTIDNZy20evPWWVR7+fP7zBkj7B9P9UPX41eYZrYa+A4
 Ia8TGHhQp1Xsk6EQLmLL/1dAoLf51I0RyVQ1o9+pN59TtM7LpgffM7VXjt6BR9URpfzUUfg
 D4nhqc9aZp1KkSJTwvaYfLYQuyfPHpo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778834155; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=tI7XohlZO2m/m7VJKIWcb2nCDjHvtnmEIz0HbNJAZOU=;
 b=rjGi1L3xVtGUdmnrK1iEKPIcplQKtHgqWuqdfvBxf0htIosbeVs04ugiOlbq2VV6YfZVN
 HubNo3+x1Rt1ZzwauiVCARicFwTSzk2WNc44eZU+JYKmU0UcJV/oDCn0DofxAK4Oix7rPLs
 gXioLU7TzOWEDf959JDqeE9XFuwaNRA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E0F2E80362
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 May 2026 10:35:09 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778834109;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=tI7XohlZO2m/m7VJKIWcb2nCDjHvtnmEIz0HbNJAZOU=;
	b=e3YWGX0px/qRkKkLzNNwAllVR1PUX+jk2yFb+3T5HjrZsu0u1Xjc28g5Dx8YNgpS7LUPx0
	qImCVxIZ9iYEPNc7cfOtNJ9af8Mk92ZNVSDm9oQX0A92A5mh+/6wo1i7nvNHQmnJEDb7Sy
	iZmd/g29eLypCqk2mejEZbO87t4kYt4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=dMmpXBTD;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778834109;
	b=HiingaU0kNnRLuTS/vLFXcRrnnETo/7L7pWBPG9J515MD+T0uJ4YppHJ8jVjIho9JfC4mR
	TjyHmTMYoUFyXputzK1rnzQRrEk42tzUMB3FKd6wsH/XRG612nmHItFw0pH6pu7Y3gpX7q
	Q3L+80qUmuPREUnKNhLFiJHMQKc3hgs=
Received: by dvalin.narfation.org (Postfix) id 6771520C4F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 May 2026 08:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778834109;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tI7XohlZO2m/m7VJKIWcb2nCDjHvtnmEIz0HbNJAZOU=;
	b=dMmpXBTDL3viETl+UHapSAsitgF8+WYFmbLQwnsoCfPFtyF+wA3g2agybLCrkwz2f0a4my
	yPjBQf/7QnaQd80gGUraWNOF+b+E0PoruykVT2lpJy+M6u1soOCrKjfLuRWXN6o7UX3eXO
	2mHRaBD1JjGF7x5imWDdzDZqkC2FEsc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH RFC batadv] batman-adv: drop batman-adv specific version
 for
 in-tree module
Date: Fri, 15 May 2026 10:35:06 +0200
Message-ID: <6294938.lOV4Wx5bFT@sven-desktop>
In-Reply-To: 
 <20260515-no-upstream-version-bumps-v1-1-6aa349f8e949@narfation.org>
References: 
 <20260515-no-upstream-version-bumps-v1-1-6aa349f8e949@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5128383.31r3eYUQgx";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: 5WRJOABTZI7ENE7IOUSXA6BPTCXMB6IF
X-Message-ID-Hash: 5WRJOABTZI7ENE7IOUSXA6BPTCXMB6IF
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5WRJOABTZI7ENE7IOUSXA6BPTCXMB6IF/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 9C23154B6B1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[narfation.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Action: no action

--nextPart5128383.31r3eYUQgx
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Fri, 15 May 2026 10:35:06 +0200
Message-ID: <6294938.lOV4Wx5bFT@sven-desktop>
MIME-Version: 1.0

On Friday, 15 May 2026 10:00:00 CEST Sven Eckelmann wrote:
> diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
> index 2baf8e2c..5d27175a 100644
> --- a/net/batman-adv/main.c
> +++ b/net/batman-adv/main.c
> @@ -696,6 +696,5 @@ MODULE_LICENSE("GPL");
>  
>  MODULE_AUTHOR(BATADV_DRIVER_AUTHOR);
>  MODULE_DESCRIPTION(BATADV_DRIVER_DESC);
> -MODULE_VERSION(BATADV_SOURCE_VERSION);
>  MODULE_ALIAS_RTNL_LINK("batadv");
>  MODULE_ALIAS_GENL_FAMILY(BATADV_NL_NAME);

I was under the impression that I've removed the check for this version file 
in batctl a while ago - apparently, I haven't. We must therefore keep this 
"MODULE_VERSION" for a while in the in-tree batman-adv. I will do this now...

I will therefore drop this specific part of the patch. It just simplifies the 
patch and will focus only on the version bump.

Regards,
	Sven
--nextPart5128383.31r3eYUQgx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCagbaugAKCRBND3cr0xT1
y/LnAP9MMuoKE32BCzkgDjf2X2mJxqoa711wgeLgjd2mu8xr9AD+Kc9AghGP5NU+
ImKuqYH/hUqIMvZnD1u7Iz4JA3PS2Qw=
=MhVm
-----END PGP SIGNATURE-----

--nextPart5128383.31r3eYUQgx--



