Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 882F9262A4A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Sep 2020 10:30:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4AB8A806FA;
	Wed,  9 Sep 2020 10:30:26 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A0BAB80192
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Sep 2020 10:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1599640223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PljKs9JHsck5Tr7nOMmX+A+p3TJQ19ZkWAqcKbrSGYg=;
	b=2CDLQE1sP/3VSEdbgfo7WkUkoYy1TV+GzSyD/mi/byHiI4q6+K8nawcJTx2XVroT4NZPG4
	mnmlMvCnJL1zflDQ+St53tPkGI0e5Hig5lOSstVxQbHq96u4DqTDInSFARfu8VaEj5eSkX
	HtLV17KfdPB/GnwENY4A8eiJapm2lbs=
From: Sven Eckelmann <sven@narfation.org>
To: Alessandro Bolletta <abolletta@netter.io>
Subject: Re: Running multiple batman-adv namespaces on the same broadcast domain
Date: Wed, 09 Sep 2020 10:30:19 +0200
Message-ID: <34120415.8pMx1AJBNe@ripper>
In-Reply-To: <CADJ1cUSNtDrR-C-L7MHXF3JohbkmBbQBsFzBvBxE2WntUd9Yqw@mail.gmail.com>
References: <CADJ1cUTq=Bpj9SQdS5Y6aXKcPR9XqkxKn_Sj5sRMmN1R=qX_2g@mail.gmail.com> <17582207.Wjj8Q8S2kB@ripper> <CADJ1cUSNtDrR-C-L7MHXF3JohbkmBbQBsFzBvBxE2WntUd9Yqw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3099535.ntOIJHjIdy"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599640223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=PljKs9JHsck5Tr7nOMmX+A+p3TJQ19ZkWAqcKbrSGYg=;
	b=IJ049vuHykWhcUgkSB6ZntKVnt8CaaFh5kW8OWpXJOQ9VKywvvUQwXUrAVRPZTLMIntRBx
	5sqMZ2AelUArcE4rRVe3iZu8D+sRYzlhsrbNwG7TWszXlXkLUr/z1NNKfCAgghBBWZVJ7C
	43r8Pydg8WdfFUzOjmLqi10T2gLzZrU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599640223; a=rsa-sha256;
	cv=none;
	b=apAnecHfWAaqpXE7L7a7NSH6J+1B8+bIoAOJm2shDdOOpfqlma1Cs0tr6rvwIJTGSqPVcd
	PFqNplHZmRPCVi/PtEsn2s335sDveMM9U9TYRG9mkuuNJeYFTPLzJ3kuyHmAvkCgUUvxKP
	+IHny6ikYd9oE6g1UtPh8dRZfo8JoVs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=2CDLQE1s;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: FZNIQPXZG4FXKULXWA2STIYO4ISO2CDS
X-Message-ID-Hash: FZNIQPXZG4FXKULXWA2STIYO4ISO2CDS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FZNIQPXZG4FXKULXWA2STIYO4ISO2CDS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3099535.ntOIJHjIdy
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 9 September 2020 10:20:20 CEST Alessandro Bolletta wrote:
> Just one more info: is there an hard limit for the number of "bat"
> interfaces on the same host?

But yes, running multiple batman-adv interfaces on the same host works fine. I 
am currently using 8 in parallel. The lower/hardif/slave interfaces are using 
VXLAN (to connect some servers in other datacenters), fastd (to connect remote 
"clients") and some other "ethernet" protocol compatible things.

And the hard limit is most likely the number of netdev's the Linux kernel can 
create (id wise and memory wise).

> Moreover, is the multiple batX namespaces a scenario that it is
> supposed to work fine, is it well tested or it still does need some
> love?

I don't like the word "namespaces" here. Because this reverse to a completely
different concept in the linux kernel.

And I don't know what you will end using - so I cannot say if this will work
or is tested.

Kind regards,
	Sven
--nextPart3099535.ntOIJHjIdy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9YkpsACgkQXYcKB8Em
e0Yo3w//eym45hMOsWqm4uh+q9Ms7QWaFfI92RDOHnUpXVwqCT2daQqNlaE8O8PA
lxc+rYMhAgZRwk9jpovuMkGPtcq3y8ThDnEWnhcoKUGqsjXJZ1wVWnPzUoxv9E0y
fogH2/eI2qV1QATCYCd+s7cVAaDoqzquQhTUabDdwFbJELICwqF2kUCtX+wOe6gz
IUqH9zmeSPBLgxEypg90+sOhrlm9tkcTWiHTEjgdOyE0INeU4ZWd0x3ye03l+F9A
bL+pBXQuOVO1bpLFalvIQCRx6FR90IBcJapcoZQRxZJ7siCcQtYttznbQRKx3oRv
dWXsRIjy0MNNFqVfJV6PuwMas1C7TNKCWWCNiMpjp1QCuraUbY6sKgB0NZBUgIRT
Xijek+x95/7HL0lZWlQhTNMs7+rHtUJB047t81Pq8u9EsgOj6hNxpKZ4nm1Wx9U4
xQpIfXqlIvVniLBsVuhUKj5IN4JVDLf6i6QyoffXXfOG0H2m9pYEEkcSgidZOYFR
+2dn6x8U066Y2XbHmr1MsJGBBt21r2x+KmDhVDGHWk68KsmAGCvueDPLo1Z8irOF
0BfBwwsUJ1jgJIXoeA6igmfusRPmhCMiFqPO92/1LrdH7qt4wVSSRfFN2hrO3nEH
8g6plHwObU25ZU45xyQZVMh/NzeYF4yMLqqv8SDFBnPl55HeA9c=
=UE3D
-----END PGP SIGNATURE-----

--nextPart3099535.ntOIJHjIdy--


