Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D45B624EBAE
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 07:49:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8E5C980E1D;
	Sun, 23 Aug 2020 07:49:58 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 369F48017C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 07:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1598161794;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/w9wtTgUFAfnZ/V+ZprD6aGtvFc9a4IfLLPsuWQJwa8=;
	b=Tl7uDJkaV1sBKLE1i4DZRRILEsx66j1H/xU67mec/6LJSE1JN+H9RJl5Hft62fhKIVZRNO
	TnKSdPT++0A8whb0xBMEWLWx/dhuxiIh4Ge3BdEyvNqOx3Pb4IjNrbJ/jm3I9W/uwiwTdD
	Lr4R2kahezFgwrMq5KZ53QEFR9QdSEs=
From: Sven Eckelmann <sven@narfation.org>
To: netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH 0/8] net: batman-adv: delete duplicated words + other fixes
Date: Sun, 23 Aug 2020 07:49:43 +0200
Message-ID: <1676363.I2AznyWB51@sven-edge>
In-Reply-To: <20200822231335.31304-1-rdunlap@infradead.org>
References: <20200822231335.31304-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3238041.zqnHrrKj3g"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598161795;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/w9wtTgUFAfnZ/V+ZprD6aGtvFc9a4IfLLPsuWQJwa8=;
	b=mDehj4INUAwt9rNW+fqPiqUxV3PDGBn+ckYnXKPNFBLu1LzwiV7d+gC0/5b0m3q1/ko/lk
	fke1GI1n5n911JK90SayLZnj8UodGHIgeuRS01/+HW+sakULNQdjVyI+PCgRQ7u+GvzaWw
	4lldScmyqSjsbcW4kiaJtl5yiREXuXM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598161795; a=rsa-sha256;
	cv=none;
	b=aHDT8EY7qAjg78Txvk2TZtvsE3GA9uQDFRJ+bLL+BTXQez/HYAOfI6FW95wOMUU2wuHRZi
	CwMte8VKczNLGq9rm8FE9FCw56ELq+nqyCx3tA27Cc234IjB4Vjc4I/acNHXpj2ATWLAt1
	DZ7ZadleOacj2/ffuC7u+kaK/0FQRXg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Tl7uDJka;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 52JSJORDLQNCFWSYYH3TZMUOASK7QJNS
X-Message-ID-Hash: 52JSJORDLQNCFWSYYH3TZMUOASK7QJNS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/52JSJORDLQNCFWSYYH3TZMUOASK7QJNS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3238041.zqnHrrKj3g
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 23 August 2020 01:13:27 CEST Randy Dunlap wrote:
> Drop repeated words in net/batman-adv/.

Please rebase to only contain the changes not yet in 
https://git.open-mesh.org/linux-merge.git/shortlog/refs/heads/batadv/net-next

Kind regards,
	Sven

--nextPart3238041.zqnHrrKj3g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9CA3cACgkQXYcKB8Em
e0aLPw//YiXX3hTmjuwrfrwU3PH8X7RrNwDqp20IFr7tNag9pBtc9IQARHdT3eEC
GOAFjPOibVyU9keF4fsbXQxUrq4Jux+Jg6AsBAcZLA3hkGcA0kG6fmJTAXey8RWI
qpy4KzVOwaWgeW3J3lR5saOXZIY1FezhgZcJSWeU31lMwJYN4A9W8OvHXKbvCKff
Dqf6+jSCOSgKhlAPe+UVpadajB2z9mgaXYOXquSfHWctlWjJnhUsh3txTWNqSBZi
iWqI1wBXW5qb6WGBKU52c6QaTrVTPEcnFZIFC597oE7L+adUqu+WItcyGHbcUNy5
tEhsjTU1YpumlG984P95SIndAuBkVFpEXON00oOsIdEt+NsjB4VdM6e71EMShaG5
tjBWtMuSXtK35E8ScaMIpr4zXFW53+Etgklq65+K9tV9PEv1LD85hN9fiSzYC0TX
tyCHHS1FEZaCYYWhJZTarBBEm6dxUhBwy1Hnnnc9vlRVPFGsxDg6V1QKXFKoB61q
6cifUHxV9j5paN635O/+9A9cONnBH+ppy4LXfI1rWOmLCg4M8fZFr/QSObvt4dy0
vBa9dYmX4BE6pObHDNatyAFo5pwHobwfyLK4rusiUjtwrt/nW8vKqnDPEUUP4nxl
tMztFtvGBLdXc2V936H6FLKOjS7tukfiq2mc8GsHAO8Y8E3Tpp8=
=Dvr/
-----END PGP SIGNATURE-----

--nextPart3238041.zqnHrrKj3g--


