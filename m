Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B0141376A83
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 May 2021 21:08:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8950E82C6C;
	Fri,  7 May 2021 21:08:17 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 439348035A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 May 2021 21:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620414494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rbzEzLANPJJUyCe/oaXHF61HC7zLgasW1Xt24dJZS1Q=;
	b=NJGXGydC4oGDNTxPz7uMQDdWRZYFhmtKqi67yl/8l1mv4RHN0FhIKMYOqDdFnqpmb7QNxY
	KpeLi+27f1s7F/H7ZHKadhbFqhcoGi5Up9bdF1Zr61uXu3dzUxB2jtd1b4LMWgZqR/rnNS
	pmk82MP0WLcWnWlBZ1Sid2ursW9GaBU=
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v2 2/2] batctl: Add JSON debug commands
Date: Fri, 07 May 2021 21:08:11 +0200
Message-ID: <3428725.5OVnchzC0Q@sven-l14>
In-Reply-To: <20210507171435.370648-1-asarmanow@gmail.com>
References: <20210507171435.370648-1-asarmanow@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2845734.l1czkIsUkZ"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620414495; a=rsa-sha256;
	cv=none;
	b=PAEEwLtxFx7X5uinRXTyRMJzeeuVMHzgcm4kF9u4RzzQEt9vo0/m2hO1Ri/h8RS/+KXToo
	Hr2zCywtRpXLgaU8EKiII5we/WhI3BAI5V+gFUVKy7nm/k9sllwd8XkWpRIU3WbLOQS2x7
	kqppdN81MJDyLRxZm/FmXYLVucvjsNo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=NJGXGydC;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620414495;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=rbzEzLANPJJUyCe/oaXHF61HC7zLgasW1Xt24dJZS1Q=;
	b=ShoQxlYydIUnH7KNSgwitjB3Lwnq8TNGLVx/qk4HNbsdEmRH+7MW1T8ee8YpF/qeOpqLMY
	+6lpcYla6i27mcyDEAXzhQGK8Rx6XNg9sNABh2pdVMUY/YquRyX5cMVmA1d26BOYNYQiPu
	QQ3bEDHD0j3s4obkHZj7bDygqfFYfns=
Message-ID-Hash: EDSYJPY6XZAGONU5ZA23MJ4XXH3QJVUO
X-Message-ID-Hash: EDSYJPY6XZAGONU5ZA23MJ4XXH3QJVUO
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EDSYJPY6XZAGONU5ZA23MJ4XXH3QJVUO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2845734.l1czkIsUkZ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org, sw@simonwunderlich.de, Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v2 2/2] batctl: Add JSON debug commands
Date: Fri, 07 May 2021 21:08:11 +0200
Message-ID: <3428725.5OVnchzC0Q@sven-l14>
In-Reply-To: <20210507171435.370648-1-asarmanow@gmail.com>
References: <20210507171435.370648-1-asarmanow@gmail.com>

On Friday, 7 May 2021 19:14:35 CEST Alexander Sarmanow wrote:
> --- a/netlink.c
> +++ b/netlink.c
> @@ -363,17 +363,21 @@ static int info_callback(struct nl_msg *msg, void *arg)
>                 else
>                         extra_header = "";
>  
> -               ret = asprintf(&opts->remaining_header,
> -                              "[B.A.T.M.A.N. adv %s, MainIF/MAC: %s/%02x:%02x:%02x:%02x:%02x:%02x (%s/%02x:%02x:%02x:%02x:%02x:%02x %s)%s]\n%s",
> -                              version, primary_if,
> -                              primary_mac[0], primary_mac[1], primary_mac[2],
> -                              primary_mac[3], primary_mac[4], primary_mac[5],
> -                              mesh_name,
> -                              mesh_mac[0], mesh_mac[1], mesh_mac[2],
> -                              mesh_mac[3], mesh_mac[4], mesh_mac[5],
> -                              algo_name, extra_info, extra_header);
> -               if (ret < 0)
> -                       opts->remaining_header = NULL;
> +               if (!opts->is_json) {
> +                       ret = asprintf(&opts->remaining_header,
> +                                      "[B.A.T.M.A.N. adv %s, MainIF/MAC: %s/%02x:%02x:%02x:%02x:%02x:%02x (%s/%02x:%02x:%02x:%02x:%02x:%02x %s)%s]\n%s",
> +                                      version, primary_if,
> +                                      primary_mac[0], primary_mac[1],
> +                                      primary_mac[2], primary_mac[3],
> +                                      primary_mac[4], primary_mac[5],
> +                                      mesh_name,
> +                                      mesh_mac[0], mesh_mac[1], mesh_mac[2],
> +                                      mesh_mac[3], mesh_mac[4], mesh_mac[5],
> +                                      algo_name, extra_info, extra_header);
> +
> +                       if (ret < 0)
> +                               opts->remaining_header = NULL;
> +               }

This is rather bad. You've already queried stuff before. Just make sure that 
you set the  SKIP_HEADER flag and get rid of this is_json.

Kind regards,
	Sven
--nextPart2845734.l1czkIsUkZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCVkBsACgkQXYcKB8Em
e0aDmRAAsSMn6rElEjj7Mdd/ZlVfk09nzvOTk+U9TxIfXnME2F8JOQyeSC/WfFHY
j/+Z1nN0kaFUo6UYlGBN1EQjNYPJksv/lWELE7qGJ2OT/9Tsj9RYesv6F8gqmlL8
KB3h6dNTcOQHss0TuNCpuexiDAx33PvTC42Sm56bmphkxyhXxbbrhgIVsE0eW1/b
7baJLFxeHE0hxboYkNbJlowXOpFp6XFzbXnm2fGhZvz+0jziuxlE2vZ42AfMcIuc
JhJ4nfYsZGEWjTBE+Ptb/g1RB+bRh8ertwvXFPaN2IRU8/drxAh/y/on5FBfP1ID
vFR+ktbpGTXVK+4XWuCOtTy6SnHI5AdSL7VJbl9V6WO248rdhaUerBBL5wqVJzdC
D6jElbNGUd31s/fjtETA251AaxyFDtsyV8WY3EQ2BAgN/iMrPwDTUkL4yFzpbWHe
ugI/z15BAsqIHjourWZqKe7XhuSJ2AT+sslLNOUPLw6tc6ucAQ3pUiocWJa3BypB
UH03UYWgrsi0icUysLnO4RkeoGyR5YN39P/x5Y20OWRxV6kTmauFuWewVR9YH1NW
LnBkSdsZk7gVPQQ8HrKZITqT6Cr1CsSc5my4mwGxoZbL5nF7Y98dRT+Rgp97o5vH
3kCKOHV2Mz9OFo5D3IXSckGRggcY4aP+vdwYON0vMhucpQSYiAo=
=Bnpn
-----END PGP SIGNATURE-----

--nextPart2845734.l1czkIsUkZ--


