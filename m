Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A7857F735
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 Jul 2022 23:33:57 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D190E83DBD;
	Sun, 24 Jul 2022 23:33:56 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5BD2383D61
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 Jul 2022 23:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1658698271;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=STY0G7UjVAsIewBHvisrVxnFHtCqH1f3rEMAP8NVJFo=;
	b=yYZ8RmsB9S2snpK16i15T2CYsHd+vHUjG/L9+m0nyQR/JcdLzo92upn7/r5gHo6okNIpzE
	6p0H27apnA6z5MpPcuEAVCgPC2WkdGvuPA6M4vPVmC4DOgOaDAaBUYowGA9ebIQeOijIzk
	VHq5PObcAVmxH5lO6MtunZWHmYrMTHU=
From: Sven Eckelmann <sven@narfation.org>
To: linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [for-next][PATCH 17/23] batman-adv: tracing: Use the new __vstring() helper
Date: Sun, 24 Jul 2022 23:31:01 +0200
Message-ID: <8828005.nfsgNN4c79@sven-l14>
In-Reply-To: <20220714164331.060725040@goodmis.org>
References: <20220714164256.403842845@goodmis.org> <20220714164331.060725040@goodmis.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5204823.eLehfEbLRh"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yYZ8RmsB;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1658698272; a=rsa-sha256;
	cv=none;
	b=TS5U7hXe16HQaO3qI0k1mHKQbZpl/76jvaVFJ0L3MQwJi7zKzXMwjpuY0R/Xi7wjiDGc4/
	MvNoQW4FAvZXeKP4Xwu/fv64a+8Ngb69Zq3fhfR4v3DSl14SbF7g35qzCer22RM8xYQSPJ
	HF1sdy0iD6jb2998Nv+07cvb/UtgaNE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1658698272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=STY0G7UjVAsIewBHvisrVxnFHtCqH1f3rEMAP8NVJFo=;
	b=vlpZEKHjbhe+ldDHoF0AdsY9bYnsgnlbzGJnopDOramr03HVUHxTuDdzZ3XNJBm0Dtpmym
	iLQDLAgcNpGsaMS7fbWa9Sb4jUfzRzEs46r92qWjQBhwZMyX64qaGtfrGsMwlnOBybVCv4
	ALym8hNFVKIdU8xmJdw4v0zCt7skXhg=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: I74UG2S5UJTBKQL4NP35QHLFBAZH7ROI
X-Message-ID-Hash: I74UG2S5UJTBKQL4NP35QHLFBAZH7ROI
X-Mailman-Approved-At: Sun, 24 Jul 2022 21:33:54 +0200
CC: Ingo Molnar <mingo@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/I74UG2S5UJTBKQL4NP35QHLFBAZH7ROI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart5204823.eLehfEbLRh
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>
Cc: Ingo Molnar <mingo@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
Subject: Re: [for-next][PATCH 17/23] batman-adv: tracing: Use the new __vstring() helper
Date: Sun, 24 Jul 2022 23:31:01 +0200
Message-ID: <8828005.nfsgNN4c79@sven-l14>
In-Reply-To: <20220714164331.060725040@goodmis.org>
References: <20220714164256.403842845@goodmis.org> <20220714164331.060725040@goodmis.org>

On Thursday, 14 July 2022 18:43:13 CEST Steven Rostedt wrote:
> From: "Steven Rostedt (Google)" <rostedt@goodmis.org>
> 
> Instead of open coding a __dynamic_array() with a fixed length (which
> defeats the purpose of the dynamic array in the first place).

Please also make sure to remove the define of BATADV_MAX_MSG_LEN

Kind regards,
	Sven

[...]
> --- a/net/batman-adv/trace.h
> +++ b/net/batman-adv/trace.h
> @@ -40,16 +40,13 @@ TRACE_EVENT(batadv_dbg,
>  	    TP_STRUCT__entry(
>  		    __string(device, bat_priv->soft_iface->name)
>  		    __string(driver, KBUILD_MODNAME)
> -		    __dynamic_array(char, msg, BATADV_MAX_MSG_LEN)
> +		    __vstring(msg, vaf->fmt, vaf->va)
>  	    ),
>  
>  	    TP_fast_assign(
>  		    __assign_str(device, bat_priv->soft_iface->name);
>  		    __assign_str(driver, KBUILD_MODNAME);
> -		    WARN_ON_ONCE(vsnprintf(__get_dynamic_array(msg),
> -					   BATADV_MAX_MSG_LEN,
> -					   vaf->fmt,
> -					   *vaf->va) >= BATADV_MAX_MSG_LEN);
> +		    __assign_vstr(msg, vaf->fmt, vaf->va);
>  	    ),
>  
>  	    TP_printk(
> 


--nextPart5204823.eLehfEbLRh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmLduhUACgkQXYcKB8Em
e0aflhAAnq0E/OqKeySsgXxGHV1QJ+JeXQfRRXBGdw2v8gJsyCJK6Iq8FohqBmO9
YuNWRE6uw/ZRAdPgx5JqQTuxYVFP/dE0L47RxPviqNAsYJPuRmYNl8AXC9SOJZjq
H1rRbDqVSI8ougx2Z9RH8PnNALSfDjvghQ8t+K3yiVbocdRETwQHvDs4zCD+dJb6
97BXrLlRL41O4U5g25NXpx/OD3PL8aHJsZEF/JkbzSKv3ElyHxiyy3bLnaqYZXOJ
626kdHpgOFHvdun7em66j+l1o9BX97qLdPVkKSe4FCkJvBWH4uy1S8td1+vwrvDm
USDg5WjcvmwsiyqOhNcXLJ/kW5s2PAOdgHZCqYLRn1IdzpbaQA2kX17Rhl+JHoE9
Xj0JPYg409jYFZbVywXdt+BXc3+FGyaxDEMuCke9Er2cslMdEofSwq2XBBlKFAzp
3u3+rX2MgXIyRE7HBiDBlLtCF9rf1qgoXpwztl7Vvkv9AebuEk/igGNKSJW+mRI1
wwqNeKMfsDA+F4lhwlTZzsZzRoxW078Ex7kLqkWoVqM/CTTUaQagc8aUq92YwTll
IUe7PGYVsPketoVWq3EQcvyorWY9QGnuKVxNv0Sgjr+pp4ez0BhK6um40cCRQ6s8
AmTz/TaDt6D7RowsR5k36ymSJ5SNR2cbc2TwZHABSBhdazxVcPc=
=jX4Z
-----END PGP SIGNATURE-----

--nextPart5204823.eLehfEbLRh--


